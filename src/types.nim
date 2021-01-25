type
  A* = ref object
    name*: string

  Add*  = proc(a: A) {.nimcall.}
  Init* = proc(v: ref seq[A]) {.nimcall.}

var As*: ref seq[A]
new(As)
