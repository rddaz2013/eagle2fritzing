#-------------------------------------------------
#
# lbr2svg - convert Eagle libraries to Fritzing
#
#-------------------------------------------------

# change FRITZING_SRC to match your local Fritzing source installation
FRITZING_SRC = ../../fritzing-app/src


INCLUDEPATH += $$FRITZING_SRC

QT += xml \
    xmlpatterns \
    network \
   # gui \
   # widgets \
   # core \

TARGET = lbr2svg
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app
SOURCES += main.cpp \
    lbrapplication.cpp \
    miscutils.cpp \
   # ../brd2svg/brdapplication.cpp \
   # $$FRITZING_SRC/utils/graphicsutils.cpp  \
    $$FRITZING_SRC/utils/textutils.cpp \
    $$FRITZING_SRC/utils/schematicrectconstants.cpp \
    $$FRITZING_SRC/utils/misc.cpp \
    $$FRITZING_SRC/svg/svgfilesplitter.cpp  \
    $$FRITZING_SRC/svg/svgpathlexer.cpp  \    
    $$FRITZING_SRC/svg/svgpathparser.cpp \
    $$FRITZING_SRC/svg/svgpathgrammar.cpp \
    $$FRITZING_SRC/svg/svgpathrunner.cpp  \


HEADERS += lbrapplication.h \
   miscutils.h \
   # ../brd2svg/brdapplication.h \
    $$FRITZING_SRC/installedfonts.h \
    $$FRITZING_SRC/utils/textutils.h \
   # $$FRITZING_SRC/utils/graphicsutils.h  \
    $$FRITZING_SRC/utils/schematicrectconstants.h \
    $$FRITZING_SRC/utils/misc.h \   
    $$FRITZING_SRC/svg/svgfilesplitter.h  \
    $$FRITZING_SRC/svg/svgpathlexer.h  \    
    $$FRITZING_SRC/svg/svgpathparser.h  \
    $$FRITZING_SRC/svg/svgpathgrammar_p.h  \
    $$FRITZING_SRC/svg/svgpathrunner.h  \

RESOURCES +=  $$FRITZING_SRC/../phoenixresources.qrc

win32 {
	DEFINES += _CRT_SECURE_NO_DEPRECATE
}

