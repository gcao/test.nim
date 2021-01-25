type
  A* = ref object
    name*: string

  Add*  = proc(a: A) {.nimcall.}
  Init* = proc(v: ref seq[A]) {.nimcall.}

var As*: ref seq[A]
new(As)

proc init*(v: ref seq[A]) =
  echo "In init()"
  echo v[].len
  As = v
