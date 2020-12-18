type
  A* = ref object
    name*: string
  Add* = proc(a: A) {.nimcall.}

var As*: seq[A] = @[]
