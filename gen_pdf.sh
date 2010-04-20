#!/bin/sh

file="estatutos-gusla"
papersize="letter" # a4
option="printer" # screen, prepress, default

latex ${file}.tex
dvips -t ${papersize} -Ppdf ${file}.dvi
ps2pdf -dPDFSETTINGS=/${option} ${file}.ps
