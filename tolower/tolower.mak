# tolower.mak
# Erstellt von IBM WorkFrame/2 MakeMake um 12:21:41 am 19 Sept 1997
#
# Diese Make-Datei enth„lt folgende Aktionen:
#  Compile::C++ Compiler
#  Link::Linker

.SUFFIXES: .C .obj 

.all: \
    .\tolower.exe

.C.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /I. /Tdp /O /Gd /G5 /Fo"%|dpfF.obj" /C %s

{d:\source}.C.obj:
    @echo " Compile::C++ Compiler "
    icc.exe /I. /Tdp /O /Gd /G5 /Fo"%|dpfF.obj" /C %s

.\tolower.exe: \
    .\TOLOWER.obj \
    {$(LIB)}os2386.lib
    @echo " Link::Linker "
    icc.exe @<<
     /Tdp 
     /B" /de"
     /Fetolower.exe 
     os2386.lib 
     .\TOLOWER.obj
<<

.\TOLOWER.obj: \
    d:\source\TOLOWER.C
