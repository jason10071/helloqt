QT       += core sql

QT       -= gui

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
#CONFIG -= qt

SOURCES += main.cpp

include(deployment.pri)
qtcAddDeployment()

