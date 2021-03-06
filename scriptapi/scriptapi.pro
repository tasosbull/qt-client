include( ../global.pri )
TARGET = xtuplescriptapi
TEMPLATE = lib
CONFIG += qt \
    warn_on \
    staticlib

QT += core network printsupport script sql webkit webkitwidgets widgets xml

greaterThan (QT_MAJOR_VERSION, 4) {
  QT += websockets webchannel serialport
}

DBFILE = scriptapi.db
LANGUAGE = C++
INCLUDEPATH += $${XTUPLE_DIR}/common          $${XTUPLE_BLD}/common \
               $${XTUPLE_DIR}/widgets         $${XTUPLE_BLD}/widgets \
               $${XTUPLE_DIR}/widgets/tmp/lib $${XTUPLE_BLD}/widgets/tmp/lib \
               $${XTUPLE_DIR}/scriptapi       $${XTUPLE_BLD}/scriptapi \


INCLUDEPATH = $$unique(INCLUDEPATH)
DEPENDPATH += $${INCLUDEPATH}
DESTDIR = ../lib
MOC_DIR = tmp
OBJECTS_DIR = tmp
UI_DIR = tmp

HEADERS += setupscriptapi.h \
    include.h \
    scriptapi_internal.h \
    metasqlhighlighterproto.h \
    orreportproto.h \
    parameterlistsetup.h \
    qabstractsocketproto.h \
    qactionproto.h \
    qapplicationproto.h \
    qboxlayoutproto.h \
    qbufferproto.h \
    qbytearrayproto.h \
    qcoreapplicationproto.h \
    qcryptographichashproto.h \
    qdialogbuttonboxproto.h \
    qdialogsetup.h \
    qdirproto.h \
    qdockwidgetproto.h \
    qdomattrproto.h \
    qdomcdatasectionproto.h \
    qdomcharacterdataproto.h \
    qdomcommentproto.h \
    qdomdocumentfragmentproto.h \
    qdomdocumentproto.h \
    qdomdocumenttypeproto.h \
    qdomelementproto.h \
    qdomentityproto.h \
    qdomentityreferenceproto.h \
    qdomimplementationproto.h \
    qdomnamednodemapproto.h \
    qdomnodelistproto.h \
    qdomnodeproto.h \
    qdomnotationproto.h \
    qdomprocessinginstructionproto.h \
    qdomtextproto.h \
    qdoublevalidatorproto.h \
    qintvalidatorproto.h \
    qeventproto.h \
    qfileproto.h \
    qfileinfoproto.h \
    qfontproto.h \
    qformlayoutproto.h \
    qgridlayoutproto.h \
    qhostaddressproto.h \
    qhostinfoproto.h \
    qiconproto.h \
    qiodeviceproto.h \
    qitemdelegateproto.h \
    qjsondocumentproto.h \
    qjsonobjectproto.h \
    qjsonvalueproto.h \
    qlayoutproto.h \
    qlayoutitemproto.h \
    qmainwindowproto.h \
    qmenuproto.h \
    qmessageboxsetup.h \
    qnetworkaccessmanagerproto.h \
    qnetworkinterfaceproto.h \
    qnetworkreplyproto.h \
    qnetworkrequestproto.h \
    qobjectproto.h \
    qprinterproto.h \
    qprocessproto.h     \
    qprocessenvironmentproto.h     \
    qpushbuttonproto.h \
    qserialportproto.h \
    qserialportinfoproto.h \
    qsizepolicyproto.h \
    qspaceritemproto.h \
    qsqldatabaseproto.h \
    qsqldriverproto.h \
    qsqlerrorproto.h \
    qsqlrecordproto.h \
    qsslcertificateextensionproto.h \
    qsslcertificateproto.h \
    qsslcipherproto.h \
    qsslconfigurationproto.h \
    qsslellipticcurveproto.h \
    qsslerrorproto.h \
    qsslkeyproto.h \
    qsslpresharedkeyauthenticatorproto.h \
    qsslproto.h \
    qsslsocketproto.h \
    qstackedwidgetproto.h \
    qtabwidgetproto.h \
    qtcpserverproto.h \
    qtcpsocketproto.h \
    qtextdocumentproto.h \
    qtexteditproto.h \
    qtimerproto.h \
    qtoolbarproto.h \
    qtoolbuttonproto.h \
    qtreewidgetitemproto.h \
    qtsetup.h \
    qudpsocketproto.h \
    qurlproto.h \
    qurlqueryproto.h \
    quuidproto.h \
    qvalidatorproto.h \
    qwebchannelproto.h \
    qwebelementproto.h \
    qwebelementcollectionproto.h \
    qwebframeproto.h \
    qwebpageproto.h \
    qwebsecurityoriginproto.h \
    qwebsettingsproto.h \
    qwebsocketcorsauthenticatorproto.h \
    qwebsocketproto.h             \
    qwebsocketprotocolproto.h     \
    qwebsocketserverproto.h       \
    qwebviewproto.h \
    qwidgetproto.h \
    xdatawidgetmapperproto.h \
    xsqltablemodelproto.h \
    xsqlqueryproto.h \
    addressclustersetup.h \
    alarmssetup.h \
    char.h \
    clineeditsetup.h \
    commentssetup.h \
    contactwidgetsetup.h \
    crmacctlineeditsetup.h \
    currdisplaysetup.h \
    documentssetup.h \
    glclustersetup.h \
    itemlineeditsetup.h \
    jsconsole.h \
    orderlineeditsetup.h \
    parametereditproto.h \
    parametergroupsetup.h \
    projectlineeditsetup.h \
    ralineeditsetup.h \
    revisionlineeditsetup.h \
    screensetup.h \
    shipmentclusterlineeditsetup.h \
    vendorgroupsetup.h \
    wcomboboxsetup.h \
    webchanneltransport.h \
    womatlclustersetup.h \
    xdateeditsetup.h \
    ../widgets/xt.h \
    xvariantsetup.h \
    xwebsync_p.h \
    xwebsync.h

SOURCES += setupscriptapi.cpp \
    include.cpp \
    metasqlhighlighterproto.cpp \
    orreportproto.cpp \
    parameterlistsetup.cpp \
    qabstractsocketproto.cpp \
    qactionproto.cpp \
    qapplicationproto.cpp \
    qboxlayoutproto.cpp \
    qbufferproto.cpp \
    qbytearrayproto.cpp \
    qcoreapplicationproto.cpp \
    qcryptographichashproto.cpp \
    qdialogbuttonboxproto.cpp \
    qdialogsetup.cpp \
    qdirproto.cpp \
    qdockwidgetproto.cpp \
    qdomattrproto.cpp \
    qdomcdatasectionproto.cpp \
    qdomcharacterdataproto.cpp \
    qdomcommentproto.cpp \
    qdomdocumentfragmentproto.cpp \
    qdomdocumentproto.cpp \
    qdomdocumenttypeproto.cpp \
    qdomelementproto.cpp \
    qdomentityproto.cpp \
    qdomentityreferenceproto.cpp \
    qdomimplementationproto.cpp \
    qdomnamednodemapproto.cpp \
    qdomnodelistproto.cpp \
    qdomnodeproto.cpp \
    qdomnotationproto.cpp \
    qdomprocessinginstructionproto.cpp \
    qdomtextproto.cpp \
    qdoublevalidatorproto.cpp \
    qintvalidatorproto.cpp \
    qeventproto.cpp \
    qfileproto.cpp \
    qfileinfoproto.cpp \
    qfontproto.cpp \
    qformlayoutproto.cpp \
    qgridlayoutproto.cpp \
    qhostaddressproto.cpp \
    qhostinfoproto.cpp \
    qiconproto.cpp \
    qiodeviceproto.cpp \
    qitemdelegateproto.cpp \
    qjsondocumentproto.cpp \
    qjsonobjectproto.cpp \
    qjsonvalueproto.cpp \
    qlayoutitemproto.cpp \
    qlayoutproto.cpp \
    qmainwindowproto.cpp \
    qmenuproto.cpp \
    qmessageboxsetup.cpp \
    qnetworkaccessmanagerproto.cpp \
    qnetworkinterfaceproto.cpp \
    qnetworkreplyproto.cpp \
    qnetworkrequestproto.cpp \
    qobjectproto.cpp \
    qprinterproto.cpp \
    qprocessproto.cpp \
    qprocessenvironmentproto.cpp \
    qpushbuttonproto.cpp \
    qserialportproto.cpp \
    qserialportinfoproto.cpp \
    qsizepolicyproto.cpp \
    qspaceritemproto.cpp \
    qsqldatabaseproto.cpp \
    qsqldriverproto.cpp \
    qsqlerrorproto.cpp \
    qsqlrecordproto.cpp \
    qsslcertificateextensionproto.cpp \
    qsslcertificateproto.cpp \
    qsslcipherproto.cpp \
    qsslconfigurationproto.cpp \
    qsslellipticcurveproto.cpp \
    qsslerrorproto.cpp \
    qsslkeyproto.cpp \
    qsslpresharedkeyauthenticatorproto.cpp \
    qsslproto.cpp \
    qsslsocketproto.cpp \
    qstackedwidgetproto.cpp \
    qtabwidgetproto.cpp \
    qtcpserverproto.cpp \
    qtcpsocketproto.cpp \
    qtextdocumentproto.cpp \
    qtexteditproto.cpp \
    qtimerproto.cpp \
    qtoolbarproto.cpp \
    qtoolbuttonproto.cpp \
    qtreewidgetitemproto.cpp \
    qtsetup.cpp \
    qudpsocketproto.cpp \
    qurlproto.cpp \
    qurlqueryproto.cpp \
    quuidproto.cpp \
    qvalidatorproto.cpp \
    qwebchannelproto.cpp \
    qwebelementproto.cpp \
    qwebelementcollectionproto.cpp \
    qwebframeproto.cpp \
    qwebpageproto.cpp \
    qwebsecurityoriginproto.cpp \
    qwebsettingsproto.cpp \
    qwebsocketcorsauthenticatorproto.cpp \
    qwebsocketproto.cpp           \
    qwebsocketprotocolproto.cpp   \
    qwebsocketserverproto.cpp     \
    qwebviewproto.cpp \
    qwidgetproto.cpp \
    xdatawidgetmapperproto.cpp \
    xsqltablemodelproto.cpp \
    xsqlqueryproto.cpp \
    addressclustersetup.cpp \
    alarmssetup.cpp \
    char.cpp \
    clineeditsetup.cpp \
    commentssetup.cpp \
    contactwidgetsetup.cpp \
    crmacctlineeditsetup.cpp \
    currdisplaysetup.cpp \
    documentssetup.cpp \
    glclustersetup.cpp \
    itemlineeditsetup.cpp \
    jsconsole.cpp \
    orderlineeditsetup.cpp \
    parametereditproto.cpp \
    parametergroupsetup.cpp \
    projectlineeditsetup.cpp \
    ralineeditsetup.cpp \
    revisionlineeditsetup.cpp \
    screensetup.cpp \
    shipmentclusterlineeditsetup.cpp \
    vendorgroupsetup.cpp \
    wcomboboxsetup.cpp \
    webchanneltransport.cpp \
    womatlclustersetup.cpp \
    xdateeditsetup.cpp \
    ../widgets/xt.cpp \
    xvariantsetup.cpp \
    xwebsync.cpp
