#!/bin/sh		
FILE=$1		
(python pyminifier.py "$FILE" > /tmp/tmpf 2>/dev/null)
if [[ -s "/tmp/tmpf" ]] ; then
	cat /tmp/tmpf >> "$FILE"
fi;
