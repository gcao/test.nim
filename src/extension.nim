import ./types

{.push dynlib exportc.}

include ./ext_common

proc add*(a: A) =
  echo "In add()"
  echo "As.len = " & $As[].len
  As[].add(a)

{.pop.}
