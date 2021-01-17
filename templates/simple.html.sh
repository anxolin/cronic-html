#!/bin/bash

[ ! -z "$TRACE_CONTENT" ] && TRACE_TEXT="
<h2>🔎 TRACE-ERROR OUTPUT</h2>
<pre>
  $TRACE_CONTENT
</pre>"

# Color RESULT CODE (success/error)
[[ "$RESULT" == "0" ]] && RESULT_COLOR="#00af91" || RESULT_COLOR="#ff4073"

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
     <span style="font-size: 16px; background-color: $RESULT_COLOR; color: #fff; padding: 10px; font-weight: 600; margin: 0 0 10px 0; display: inline-block; width: 35px; text-align: center;">
      $RESULT
    </span>

    <h2>❌ ERROR OUTPUT</h2>
    <pre>
      $ERR_CONTENT
    </pre>

    <h2>✏️ STANDARD OUTPUT</h2>
    <pre>
      $OUT_CONTENT
    </pre>
    ${TRACE_TEXT:-}
  </body>

</html>
_EOF_
