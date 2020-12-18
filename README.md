Is this a supported usecase: update global variables from a dynamic library?

types.nim
```
type
  A* = ref object
    name*: string
  Add* = proc(a: A) {.nimcall.}

var As*: seq[A] = @[]
```

extension.nim
```
{.push dynlib exportc.}

import ./types

proc add*(a: A) =
  As.add(a)

{.pop.}
```

main.nim
```
import dynlib
import ./types

var lib = load_lib("build/libextension.dylib")
var add = cast[Add](lib.sym_addr("add"))
add(A(name: "first"))
add(A(name: "second"))

assert As.len == 2    # This assertion fails
```
