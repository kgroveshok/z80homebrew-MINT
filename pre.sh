#!/bin/sh

for f in constants.asm IOSerial.asm MINT.asm ram.asm ; do

cat $f | tr A-Z a-z | sed 's/\.org /org /g' | sed 's/\.equ/equ/g' | sed 's/ *equ/: equ/g' | sed 's/\([a-z]\) *equ/\1: equ/g'| sed 's/\.if /if /g'| sed 's/\.else /else /g' | sed 's/\.endif/endif /g' >a_$f
done 
z80asm z80homebrew.z80

