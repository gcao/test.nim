type
  A* = ref object
    name*: string

  Add*  = proc(a: A) {.nimcall.}
  Init* = proc(v: ptr seq[A]) {.nimcall.}

var As*: seq[A] = @[]

proc init*(v: ptr seq[A]) =
  echo "In init()"
  echo v[].len
  As = cast[seq[A]](v[])
