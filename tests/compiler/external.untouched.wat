(module
 (type $FUNCSIG$v (func))
 (import "foo" "var" (global $external/var_ i32))
 (import "external" "foo" (func $external/foo))
 (import "external" "foo.bar" (func $external/foo.bar))
 (import "external" "bar" (func $external/two))
 (import "foo" "baz" (func $external/three))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "foo" (func $external/foo))
 (export "foo.bar" (func $external/foo.bar))
 (export "two" (func $external/two))
 (export "three" (func $external/three))
 (export "var_" (global $external/var_))
 (func $null (; 4 ;) (type $FUNCSIG$v)
  unreachable
 )
)
