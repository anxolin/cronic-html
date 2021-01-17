#!/bin/bash

[ ! -z "$TRACE_CONTENT" ] && TRACE_TEXT="
<h2>TRACE-ERROR OUTPUT</h2>
<pre>
  $TRACE_CONTENT
</pre>"

cat << _EOF_
<!doctype html>
<html>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>

  <body>
    <h1>Cronic HTML</h1>

    Cronic detected failure or error output for the command:
    <pre>
      $COMMAND
    </pre>

    <h2>RESULT CODE</h2>
    <pre>
    $RESULT
    </pre>

    <h2>ERROR OUTPUT</h2>
    <pre>
    $ERR_CONTENT
    </pre>

    <h2>STANDARD OUTPUT</h2>
    <pre>
      $OUT_CONTENT
    </pre>
    ${TRACE_TEXT:-}
  </body>

</html>

_EOF_
