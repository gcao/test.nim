import dynlib
import ./types

var lib = load_lib("build/libextension.dylib")
var add = cast[Add](lib.sym_addr("add"))
add(A(name: "first"))
add(A(name: "second"))

assert As.len == 2
