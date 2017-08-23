/*=========================================================================

   Program: ParaView
   Module:    pqTreeView.h

   Copyright (c) 2005-2008 Sandia Corporation, Kitware Inc.
   All rights reserved.

   ParaView is a free software; you can redistribute it and/or modify it
   under the terms of the ParaView license version 1.2.

   See License_v1.2.txt for the full ParaView license.
   A copy of this license can be obtained by contacting
   Kitware Inc.
   28 Corporate Drive
   Clifton Park, NY 12065
   USA

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHORS OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=========================================================================*/

/**
* \file pqTreeView.h
* \date 8/20/2007
*/

#ifndef _pqTreeView_h
#define _pqTreeView_h

#include "pqWidgetsModule.h"
#include <QTreeView>

class PQWIDGETS_EXPORT pqTreeView : public QTreeView
{
  Q_OBJECT

  /**
  * Set the maximum number of rows beyond which this view should show a
  * vertical scroll bar. The pqTreeView will keep on resizing until
  * maximumRowCountBeforeScrolling row to avoid vertical scrolling.
  */
  Q_PROPERTY(int maximumRowCountBeforeScrolling READ maximumRowCountBeforeScrolling WRITE
      setMaximumRowCountBeforeScrolling)

  typedef QTreeView Superclass;

public:
  pqTreeView(QWidget* parent = 0);
  ~pqTreeView() override {}

  bool eventFilter(QObject* object, QEvent* e) override;

  void setModel(QAbstractItemModel* model) override;
  void setRootIndex(const QModelIndex& index) override;

  QSize sizeHint() const override;
  QSize minimumSizeHint() const override;

  void setMaximumRowCountBeforeScrolling(int val) { this->MaximumRowCountBeforeScrolling = val; }
  int maximumRowCountBeforeScrolling() const { return this->MaximumRowCountBeforeScrolling; }

private slots:
  void invalidateLayout();

private:
  int ScrollPadding;
  int MaximumRowCountBeforeScrolling;
};

#endif
