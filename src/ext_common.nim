proc init*(v: ref seq[A]) =
  echo "In init()"
  echo v[].len
  As = v
