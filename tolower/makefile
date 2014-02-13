#########################################################################
# Open Watcom 1.6 and above
# Makefile for tolower.exe
#
# Michael Greene <greenemk@cox.net>
# November 2006
#
########################################

# Machine type see ow docs
MACHINE= -6r

CC = wcl386
LD = wlink

INCLUDE = $(%watcom)\h;$(%watcom)\h\os2

CFLAGS  = -i=$(INCLUDE) -za99 -d0 -w4 -zq $(MACHINE) -bt=OS2 -mf
LDFLAGS = os2v2 op el

all: tolower.exe

tolower.exe:
  $(CC) -c $(CFLAGS) tolower.c
  $(LD) NAME tolower SYS $(LDFLAGS) FILE tolower.obj

clean : .SYMBOLIC
  -@rm *.obj
  -@rm *.exe
  -@rm *.err
  -@rm *.lst
  -@rm *.map
