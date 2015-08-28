#!/bin/sh
FILE=$1
(minipy -D -o /tmp/tmpf "$FILE" > /dev/null 2>&1)
if [[ -s "/tmp/tmpf" ]] ; then 
	echo "#!/usr/bin/env python" > "$FILE"
	echo "# -*- coding: utf-8 -*-" >> "$FILE"
	grep -v '#!/usr/bin/env python' /tmp/tmpf >> "$FILE"
  chmod 755 "$FILE"
fi;
