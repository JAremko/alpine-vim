#!/bin/sh
FILE=$1
(pyminifier -O "$FILE" > /tmp/tmpf 2>/dev/null)
if [[ -s "/tmp/tmpf" ]] ; then 
	echo "#!/usr/bin/env python" > "$FILE"
	echo "# -*- coding: utf-8 -*-" >> "$FILE"
	grep -v '#!/usr/bin/env python' /tmp/tmpf >> "$FILE"
        chmod 755 "$FILE"
fi;
