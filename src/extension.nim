{.push dynlib exportc.}

import ./types

proc add*(a: A) =
  As.add(a)

export init

{.pop.}
