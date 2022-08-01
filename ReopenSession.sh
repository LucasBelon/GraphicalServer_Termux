#!/bin/bash
rm ~/../usr/tmp/.X1-lock
rm ~/../usr/tmp/.X11-unix/X1
vncserver -kill localhost:1
vncserver -kill localhost:2
vncserver -kill localhost:3

vncserver -localhost
