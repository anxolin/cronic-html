#!/bin/bash

[ ! -z "$TRACE_CONTENT" ] && TRACE_TEXT="$NL${NL}TRACE-ERROR OUTPUT:$TRACE_CONTENT$NL"

cat << _EOF_
Cronic detected failure or error output for the command:
$COMMAND

RESULT CODE: $RESULT

ERROR OUTPUT:$ERR_CONTENT

STANDARD OUTPUT:$OUT_CONTENT${TRACE_TEXT:-}
_EOF_

