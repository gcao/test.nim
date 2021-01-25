import dynlib
import ./types

var lib = load_lib("build/libextension.dylib")
var init = cast[Init](lib.sym_addr("init"))
echo "Init"
init(As)

echo "Add first from main"
As[].add(A(name: "first"))

var add = cast[Add](lib.sym_addr("add"))
echo "Add second from extension"
add(A(name: "second"))

echo "Validate"
echo "As.len = " & $As[].len
assert As[].len == 2
