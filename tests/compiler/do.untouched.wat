(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00d\00o\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:do (; 1 ;)
  (local $0 i32)
  loop $continue|0
   global.get $do/n
   i32.const 1
   i32.sub
   global.set $do/n
   global.get $do/m
   i32.const 1
   i32.add
   global.set $do/m
   global.get $do/n
   br_if $continue|0
  end
  global.get $do/n
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $do/m
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  global.set $do/n
  loop $continue|1
   nop
   global.get $do/n
   local.tee $0
   i32.const 1
   i32.sub
   global.set $do/n
   local.get $0
   br_if $continue|1
  end
  global.get $do/n
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  global.set $do/n
  i32.const 0
  global.set $do/m
  loop $continue|2
   global.get $do/n
   i32.const 1
   i32.sub
   global.set $do/n
   global.get $do/m
   i32.const 1
   i32.add
   global.set $do/m
   loop $continue|3
    global.get $do/n
    i32.const 1
    i32.sub
    global.set $do/n
    global.get $do/o
    i32.const 1
    i32.add
    global.set $do/o
    global.get $do/n
    br_if $continue|3
   end
   global.get $do/n
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 24
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $do/o
   i32.const 9
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 25
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $do/n
   br_if $continue|2
  end
  global.get $do/n
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $do/m
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $do/o
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 2 ;)
  call $start:do
 )
)
