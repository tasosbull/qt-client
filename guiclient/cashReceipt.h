/*
 * This file is part of the xTuple ERP: PostBooks Edition, a free and
 * open source Enterprise Resource Planning software suite,
 * Copyright (c) 1999-2014 by OpenMFG LLC, d/b/a xTuple.
 * It is licensed to you under the Common Public Attribution License
 * version 1.0, the full text of which (including xTuple-specific Exhibits)
 * is available at www.xtuple.com/CPAL.  By using this software, you agree
 * to be bound by its terms.
 */

#ifndef CASHRECEIPT_H
#define CASHRECEIPT_H

#include "guiclient.h"
#include "xwidget.h"
#include <parameter.h>

#include "ui_cashReceipt.h"

class cashReceipt : public XWidget, public Ui::cashReceipt
{
    Q_OBJECT

public:
    cashReceipt(QWidget* parent = 0, const char* name = 0, Qt::WindowFlags fl = Qt::Window);
    ~cashReceipt();
    virtual bool save( bool partial );

public slots:
    virtual SetResponse set(const ParameterList & pParams );
    virtual void close();
    virtual void populate();
    virtual void sAdd();
    virtual void sApply();
    virtual void sApplyLineBalance();
    virtual void sApplyToBalance();
    virtual void sChangeCurrency( int newId );
    virtual void sClear();
    virtual void sDelete();
    virtual void sEdit();
    virtual void sEditCreditCard();
    virtual void sFillApplyList();
    virtual void sFillMiscList();
    virtual void sMoveDown();
    virtual void sMoveUp();
    virtual void sNewCreditCard();
    virtual void sPopulateCustomerInfo(int = 0);
    virtual void sSave();
    virtual void sUpdateBalance();
    virtual void sViewCreditCard();
    virtual void setCreditCard();
    virtual void sDateChanged();
    virtual void sHandleAltExchRate();
    virtual void sUpdateGainLoss();

    virtual ParameterList getParams();
    virtual void grpFillApplyList();
    virtual void updateCustomerGroup();
    virtual void activateButtons(bool c=true);

protected slots:
    virtual void languageChange();
    virtual void sSearchDocNumChanged();


private:
    int     _mode;
    int     _transType;
    int     _cashrcptid;
    bool    _ccEdit;
    QString _origFunds;
    bool    _overapplied;
    bool    _posted;
    QDate   _mindate;

};

#endif // CASHRECEIPT_H
