/*=========================================================================

  Program:   Visualization Toolkit
  Module:    HaloFinderTestHelpers.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkActor.h"
#include "vtkCompositePolyDataMapper2.h"
#include "vtkMaskPoints.h"
#include "vtkNew.h"
#include "vtkPANLHaloFinder.h"
#include "vtkPGenericIOReader.h"
#include "vtkPointData.h"
#include "vtkRenderer.h"
#include "vtkRenderWindow.h"
#include "vtkRenderWindowInteractor.h"
#include "vtkSmartPointer.h"
#include "vtkTestUtilities.h"
#include "vtkThreshold.h"
#include "vtkUnstructuredGrid.h"

#include <set>

namespace HaloFinderTestHelpers {

struct HaloFinderTestVTKObjects {
  HaloFinderTestVTKObjects() {
    renWin = vtkSmartPointer< vtkRenderWindow >::New();
    iren = vtkSmartPointer< vtkRenderWindowInteractor >::New();
    reader = vtkSmartPointer< vtkPGenericIOReader >::New();
    haloFinder = vtkSmartPointer< vtkPANLHaloFinder >::New();
    onlyPointsInHalos = vtkSmartPointer< vtkThreshold >::New();
    maskPoints = vtkSmartPointer< vtkMaskPoints >::New();
    mapper = vtkSmartPointer< vtkCompositePolyDataMapper2 >::New();
  }
  vtkSmartPointer< vtkRenderWindow > renWin;
  vtkSmartPointer< vtkRenderWindowInteractor > iren;
  vtkSmartPointer< vtkPGenericIOReader > reader;
  vtkSmartPointer< vtkPANLHaloFinder > haloFinder;
  vtkSmartPointer< vtkThreshold > onlyPointsInHalos;
  vtkSmartPointer< vtkMaskPoints > maskPoints;
  vtkSmartPointer< vtkCompositePolyDataMapper2 > mapper;
};

std::set< std::string > getFirstOutputArrays()
{
  std::set< std::string > arrayNames;
  arrayNames.insert("vx");
  arrayNames.insert("vy");
  arrayNames.insert("vz");
  arrayNames.insert("id");
  arrayNames.insert("fof_halo_tag");
  return arrayNames;
}

std::set< std::string > getHaloSummaryArrays()
{
  std::set< std::string > arrayNames;
  arrayNames.insert("fof_halo_tag");
  arrayNames.insert("fof_halo_com");
  arrayNames.insert("fof_halo_count");
  arrayNames.insert("fof_halo_mass");
  arrayNames.insert("fof_halo_mean_velocity");
  arrayNames.insert("fof_velocity_dispersion");
  return arrayNames;
}

std::set< std::string > getHaloSummaryWithCenterInfoArrays()
{
  std::set< std::string > arrayNames = getHaloSummaryArrays();
  arrayNames.insert("fof_halo_center");
  return arrayNames;
}

bool pointDataHasTheseArrays(vtkPointData* pd, const std::set< std::string >& arrays)
{
  if (pd->GetNumberOfArrays() != arrays.size())
    {
    return false;
    }
  for (std::set< std::string >::iterator itr = arrays.begin();
       itr != arrays.end(); ++itr)
    {
    if (!pd->HasArray((*itr).c_str()))
      {
      std::cerr << "Point data does not have array: " << *itr << std::endl;
      return false;
      }
    }
  return true;
}

HaloFinderTestVTKObjects SetupHaloFinderTest(int argc, char* argv[])
{
  HaloFinderTestVTKObjects testObjects;
  char* fname =
  vtkTestUtilities::ExpandDataFileName(argc,argv,"genericio/m000.499.allparticles");

  testObjects.reader->SetFileName(fname);
  testObjects.reader->UpdateInformation();
  testObjects.reader->SetXAxisVariableName("x");
  testObjects.reader->SetYAxisVariableName("y");
  testObjects.reader->SetZAxisVariableName("z");
  testObjects.reader->SetPointArrayStatus("vx",1);
  testObjects.reader->SetPointArrayStatus("vy",1);
  testObjects.reader->SetPointArrayStatus("vz",1);
  testObjects.reader->SetPointArrayStatus("id",1);
  testObjects.reader->Update();

  delete[] fname;

  testObjects.haloFinder->SetInputConnection(testObjects.reader->GetOutputPort());
  testObjects.haloFinder->SetRL(128);
  testObjects.haloFinder->SetNP(128);
  testObjects.haloFinder->SetPMin(100);
  testObjects.haloFinder->Update();

  testObjects.onlyPointsInHalos->SetInputConnection(
        testObjects.haloFinder->GetOutputPort(0));
  testObjects.onlyPointsInHalos->SetInputArrayToProcess(
        0,0,0,vtkDataObject::FIELD_ASSOCIATION_POINTS, "fof_halo_tag");
  testObjects.onlyPointsInHalos->ThresholdByUpper(0.0);
  testObjects.onlyPointsInHalos->Update();

  testObjects.maskPoints->SetInputConnection(
        testObjects.onlyPointsInHalos->GetOutputPort());
  testObjects.maskPoints->SetMaximumNumberOfPoints(
        testObjects.haloFinder->GetOutput(0)->GetNumberOfPoints());
  testObjects.maskPoints->SetOnRatio(1);
  testObjects.maskPoints->GenerateVerticesOn();
  testObjects.maskPoints->SingleVertexPerCellOn();
  testObjects.maskPoints->Update();

  // So that this test can be easily modified to reproduce ParaView GUI errors
  testObjects.mapper->SetInputConnection(testObjects.maskPoints->GetOutputPort());
  testObjects.mapper->Update();

  vtkNew< vtkActor > actor;
  actor->SetMapper(testObjects.mapper);

  vtkNew< vtkRenderer > renderer;
  renderer->AddActor(actor.GetPointer());

  testObjects.renWin->AddRenderer(renderer.GetPointer());
  testObjects.renWin->SetSize(300,300);

  testObjects.iren->SetRenderWindow(testObjects.renWin);

  return testObjects;
}

}
