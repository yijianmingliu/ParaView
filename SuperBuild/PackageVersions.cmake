
set(PARAVIEW_MAJOR 3)
set(PARAVIEW_MINOR 14)
set(PARAVIEW_DEPENDENCY_URL http://paraview.org/files/v${PARAVIEW_MAJOR}.${PARAVIEW_MINOR}/dependencies)

set(PARAVIEW_USERS_GUIDE_URL http://paraview.org/files/v${PARAVIEW_MAJOR}.${PARAVIEW_MINOR})
set(PARAVIEW_USERS_GUIDE_PDF_NO_SPACES "ParaViewUsersGuide.v${PARAVIEW_MAJOR}.${PARAVIEW_MINOR}.pdf")
set(PARAVIEW_USERS_GUIDE_PDF "ParaView Users Guide v${PARAVIEW_MAJOR}.${PARAVIEW_MINOR}.pdf")
set(PARAVIEW_USERS_GUIDE_MD5 2c39c7ee95070562d5c81c6a70f9bcce)

set(PYTHON_MAJOR 2)
set(PYTHON_MINOR 7)
set(PYTHON_PATCH 2)
set(PYTHON_VERSION ${PYTHON_MAJOR}.${PYTHON_MINOR}.${PYTHON_PATCH})
set(PYTHON_URL ${PARAVIEW_DEPENDENCY_URL})
set(PYTHON_GZ Python-${PYTHON_VERSION}.tgz)
set(PYTHON_MD5 0ddfe265f1b3d0a8c2459f5bf66894c7)

set(PYVER ${PYTHON_MAJOR}.${PYTHON_MINOR})
set(PYVER_SHORT ${PYTHON_MAJOR}${PYTHON_MINOR})

set(SIP_MAJOR 4)
set(SIP_MINOR 13)
set(SIP_PATCH 0)
set(SIP_VERSION ${SIP_MAJOR}.${SIP_MINOR})
set(SIP_URL http://www.riverbankcomputing.co.uk/static/Downloads/sip4)
set(SIP_GZ sip-${SIP_VERSION}.tar.gz)
set(SIP_MD5 21b4e2cad56e4156df2220143264b8ff)

set(PYQT_MAJOR 4)
set(PYQT_MINOR 8)
set(PYQT_PATCH 6)
set(PYQT_VERSION ${PYQT_MAJOR}.${PYQT_MINOR}.${PYQT_PATCH})
set(PYQT_URL http://www.riverbankcomputing.co.uk/static/Downloads/PyQt4)
set(PYQT_GZ PyQt-x11-gpl-${PYQT_VERSION}.tar.gz)
set(PYQT_MD5 9bfd7b08b8e438b83cc50d5c58191f97)

set(NUMPY_MAJOR 1)
set(NUMPY_MINOR 6)
set(NUMPY_PATCH 1)
set(NUMPY_VERSION ${NUMPY_MAJOR}.${NUMPY_MINOR}.${NUMPY_PATCH})
set(NUMPY_URL ${PARAVIEW_DEPENDENCY_URL})
set(NUMPY_GZ numpy-${NUMPY_MAJOR}.${NUMPY_MINOR}.${NUMPY_PATCH}.tar.gz)
set(NUMPY_MD5 2bce18c08fc4fce461656f0f4dd9103e)

set(distribute_MAJOR 0)
set(distribute_MINOR 6)
set(distribute_PATCH 24)
set(distribute_URL http://pypi.python.org/packages/source/d/distribute/)
set(distribute_GZ distribute-${distribute_MAJOR}.${distribute_MINOR}.${distribute_PATCH}.tar.gz)
set(distribute_MD5 17722b22141aba8235787f79800cc452)

set(yt_MAJOR 2)
set(yt_MINOR 2)
set(yt_PATCH "pv" )
set(yt_URL http://yt-project.org/files/)
set(yt_GZ yt-${yt_MAJOR}.${yt_MINOR}-${yt_PATCH}.tar.gz)
set(yt_MD5 d4cf839afd3da3590b877cd66ab1104d)

set(MPL_MAJOR 1)
set(MPL_MINOR 1)
set(MPL_PATCH 0)
set(MPL_URL http://downloads.sourceforge.net/project/matplotlib/matplotlib/matplotlib-${MPL_MAJOR}.${MPL_MINOR}.${MPL_PATCH})
set(MPL_GZ matplotlib-${MPL_MAJOR}.${MPL_MINOR}.${MPL_PATCH}.tar.gz)
set(MPL_MD5 57a627f30b3b27821f808659889514c2)

set(Cython_MAJOR 0)
set(Cython_MINOR 15)
set(Cython_PATCH 1)
set(Cython_VERSION ${Cython_MAJOR}.${Cython_MINOR}.${Cython_PATCH})
set(Cython_URL http://pypi.python.org/packages/source/C/Cython)
set(Cython_GZ Cython-${Cython_VERSION}.tar.gz)
set(Cython_MD5 171021b3845c9ca8bd6d8185b3cde664)

set(h5py_MAJOR 1)
set(h5py_MINOR 3)
set(h5py_PATCH 1)
set(h5py_VERSION ${h5py_MAJOR}.${h5py_MINOR}.${h5py_PATCH})
set(h5py_URL http://h5py.googlecode.com/files/)
set(h5py_GZ h5py-${h5py_VERSION}.tar.gz)
set(h5py_MD5 cfef84992d33910a06371dc35becb71b)

set(BLAS_URL http://www.netlib.org/blas)
set(BLAS_GZ blas.tgz)

set(BOOST_MAJOR 1)
set(BOOST_MINOR 45)
set(BOOST_PATCH 0)
set(BOOST_VERSION ${BOOST_MAJOR}.${BOOST_MINOR}.${BOOST_PATCH})
set(BOOST_URL ${PARAVIEW_DEPENDENCY_URL})
set(BOOST_GZ boost-${BOOST_VERSION}-cmake.tar.gz)
set(BOOST_MD5 1e506d26d8a74fa46050ab0ce19101cd)

set(LAPACK_MAJOR 3)
set(LAPACK_MINOR 4)
set(LAPACK_PATCH 0)
set(LAPACK_VERSION ${LAPACK_MAJOR}.${LAPACK_MINOR}.${LAPACK_PATCH})
set(LAPACK_URL http://www.netlib.org/lapack)
set(LAPACK_GZ lapack-${LAPACK_VERSION}.tgz)
set(LAPACK_MD5 02d5706ec03ba885fc246e5fa10d8c70)

set(CLAPACK_MAJOR 3)
set(CLAPACK_MINOR 2)
set(CLAPACK_PATCH 1)
set(CLAPACK_VERSION ${CLAPACK_MAJOR}.${CLAPACK_MINOR}.${CLAPACK_PATCH})
set(CLAPACK_URL http://www.netlib.org/clapack)
set(CLAPACK_GZ clapack-${CLAPACK_VERSION}-CMAKE.tgz)
set(CLAPACK_MD5 4fd18eb33f3ff8c5d65a7d43913d661b)

set(FFMPEG_MAJOR 0)
set(FFMPEG_MINOR 6)
set(FFMPEG_PATCH 5)
set(FFMPEG_URL ${PARAVIEW_DEPENDENCY_URL})
set(FFMPEG_GZ ffmpeg-${FFMPEG_MAJOR}.${FFMPEG_MINOR}.${FFMPEG_PATCH}.tar.gz)
set(FFMPEG_MD5 451054dae3b3d33a86c2c48bd12d56e7)

if(WIN32)
  set(MANTA_REVISION 2478)
  set(MANTA_MD5 79f3c48ec5cd83da7789f022b7ffe940)
else()
  set(MANTA_REVISION 2439)
  set(MANTA_MD5 fbf4107fe2f6d7e8a5ae3dda71805bdc)
endif()
set(MANTA_URL http://paraview.org/files/misc)
set(MANTA_GZ manta-r${MANTA_REVISION}.tar.gz)

#http://www.open-mpi.org/software/ompi/v1.5/downloads/openmpi-1.5.4.tar.gz
set(OPENMPI_MAJOR 1)
set(OPENMPI_MINOR 4)
set(OPENMPI_PATCH 4)
set(OPENMPI_VERSION ${OPENMPI_MAJOR}.${OPENMPI_MINOR}.${OPENMPI_PATCH})
set(OPENMPI_URL http://www.open-mpi.org/software/ompi/v${OPENMPI_MAJOR}.${OPENMPI_MINOR}/downloads)
set(OPENMPI_GZ openmpi-${OPENMPI_VERSION}.tar.gz)
set(OPENMPI_MD5 7253c2a43445fbce2bf4f1dfbac113ad)

set(MPICH2_MAJOR 1)
set(MPICH2_MINOR 4)
set(MPICH2_PATCH 1p1)
set(MPICH2_VERSION ${MPICH2_MAJOR}.${MPICH2_MINOR}.${MPICH2_PATCH})
set(MPICH2_URL ${PARAVIEW_DEPENDENCY_URL})
set(MPICH2_GZ mpich2-${MPICH2_VERSION}.tar.gz)
set(MPICH2_MD5 b470666749bcb4a0449a072a18e2c204)

set(QT_MAJOR 4)
set(QT_MINOR 6)
set(QT_PATCH 4)
set(QT_VERSION ${QT_MAJOR}.${QT_MINOR}.${QT_PATCH})
set(QT_URL ${PARAVIEW_DEPENDENCY_URL})
set(QT_GZ qt-everywhere-opensource-src-${QT_VERSION}.tar.gz)
set(QT_MD5 8ac880cc07a130c39607b65efd5e1421)

set(CGNS_MAJOR 2)
set(CGNS_MINOR 5)
set(CGNS_PATCH 5)
set(CGNS_VERSION ${CGNS_MAJOR}.${CGNS_MINOR}.${CGNS_PATCH})
set(CGNS_URL ${PARAVIEW_DEPENDENCY_URL})
set(CGNS_GZ cgnslib_${CGNS_MAJOR}.${CGNS_MINOR}-${CGNS_PATCH}.tar.gz)
set(CGNS_MD5 ae2a2e79b99d41c63e5ed5f661f70fd9)

set(SILO_MAJOR 4)
set(SILO_MINOR 8)
set(SILO_PATCH 0)
set(SILO_VERSION ${SILO_MAJOR}.${SILO_MINOR}.${SILO_PATCH})
set(SILO_URL ${PARAVIEW_DEPENDENCY_URL})
set(SILO_GZ silo-${SILO_MAJOR}.${SILO_MINOR}-bsd.tar.gz)
set(SILO_MD5 03e27c977f34dc6e9a5f3864153c24fe)

set(HDF5_MAJOR 1)
set(HDF5_MINOR 8)
set(HDF5_PATCH 8)
set(HDF5_VERSION ${HDF5_MAJOR}.${HDF5_MINOR}.${HDF5_PATCH})
set(HDF5_URL ${PARAVIEW_DEPENDENCY_URL})
set(HDF5_GZ hdf5-${HDF5_VERSION}.tar.gz)
set(HDF5_MD5 1196e668f5592bfb50d1de162eb16cff)

set(SZIP_MAJOR 2)
set(SZIP_MINOR 1)
set(SZIP_PATCH)
set(SZIP_VERSION ${SZIP_MAJOR}.${SZIP_MINOR})
set(SZIP_URL ${PARAVIEW_DEPENDENCY_URL})
set(SZIP_GZ szip-${SZIP_VERSION}.tar.gz)
set(SZIP_MD5 902f831bcefb69c6b635374424acbead)

set(ZLIB_MAJOR 1)
set(ZLIB_MINOR 2)
set(ZLIB_PATCH 5)
set(ZLIB_VERSION ${ZLIB_MAJOR}.${ZLIB_MINOR}.${ZLIB_PATCH})
set(ZLIB_URL ${PARAVIEW_DEPENDENCY_URL})
set(ZLIB_GZ zlib-${ZLIB_VERSION}.tar.gz)
set(ZLIB_MD5 c735eab2d659a96e5a594c9e8541ad63)

set(PNG_MAJOR 1)
set(PNG_MINOR 5)
set(PNG_PATCH 7)
set(PNG_VERSION ${PNG_MAJOR}.${PNG_MINOR}.${PNG_PATCH})
set(PNG_URL http://paraview.org/files/misc)
set(PNG_GZ libpng-${PNG_VERSION}.tar.gz)
set(PNG_MD5 944b56a84b65d94054cc73d7ff965de8)

if(WIN32)
  set(VRPN_MAJOR 4)
  set(VRPN_MINOR 4)
  set(VRPN_PATCH 2011)
  set(VRPN_VERSION ${VRPN_MAJOR}.${VRPN_MINOR}.${VRPN_PATCH})
  set(VRPN_URL http://paraview.org/files/misc)
  set(VRPN_GZ vrpn-${VRPN_VERSION}.tar.gz)
  set(VRPN_MD5 aa88a400d31fd1290e0b1ba7810ee7c7)
else()
  set(VRPN_MAJOR 07)
  set(VRPN_MINOR 29)
  set(VRPN_VERSION ${VRPN_MAJOR}.${VRPN_MINOR})
  set(VRPN_URL ftp://ftp.cs.unc.edu/pub/packages/GRIP/vrpn)
  set(VRPN_GZ vrpn_${VRPN_MAJOR}_${VRPN_MINOR}.zip)
  set(VRPN_MD5 422f13fc9cbb62d36c96f3cc3b06cec9)
endif()

set(FT_MAJOR 2)
set(FT_MINOR 4)
set(FT_PATCH 8)
set(FT_VERSION ${FT_MAJOR}.${FT_MINOR}.${FT_PATCH})
set(FT_URL http://download.savannah.gnu.org/releases/freetype)
set(FT_GZ freetype-${FT_VERSION}.tar.gz)
set(FT_MD5 9a4abc0ebbd592783208d9c76)

set(VISTRAILS_MAJOR 2)
set(VISTRAILS_MINOR 0)
set(VISTRAILS_VERSION ${VISTRAILS_MAJOR}.${VISTRAILS_MINOR})
set(VISTRAILS_URL http://paraview.org/files/misc)
set(VISTRAILS_GZ VisTrails-${VISTRAILS_VERSION}.tar.gz)
set(VISTRAILS_MD5 e563a4055a353f9540dfeb6292f64bbe)

