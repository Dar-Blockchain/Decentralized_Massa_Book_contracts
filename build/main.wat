(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32 i32)))
 (type $4 (func (result i32)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (param i32 i64)))
 (type $7 (func (param i32 i32 i32)))
 (type $8 (func))
 (type $9 (func (param i32) (result i64)))
 (type $10 (func (param i32 i64) (result i32)))
 (type $11 (func (param i32 i64 i32) (result i32)))
 (type $12 (func (param i32 i32 i32 i32) (result i32)))
 (type $13 (func (param i64) (result i32)))
 (type $14 (func (param i32 i32 i32 i32)))
 (type $15 (func (param i32 i32 i64)))
 (type $16 (func (param i32 i32 i32 i64) (result i32)))
 (type $17 (func (result i64)))
 (type $18 (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $19 (func (param i64 i32 i32 i32 i32 i32 i64) (result i32)))
 (type $20 (func (param i64 i32) (result i32)))
 (type $21 (func (param i64 i32 i32 i32 i64) (result i32)))
 (type $22 (func (param i64 i32 i64 i64) (result i32)))
 (type $23 (func (param i64 i64 i32 i32 i32 i32 i64 i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "massa" "assembly_script_has_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has (param i32) (result i32)))
 (import "massa" "assembly_script_get_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get (param i32) (result i32)))
 (import "massa" "assembly_script_get_call_stack" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callStack (result i32)))
 (import "massa" "assembly_script_set_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set (param i32 i32)))
 (import "massa" "assembly_script_generate_event" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.generateEvent (param i32)))
 (import "massa" "assembly_script_call" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.call (param i32 i32 i32 i64) (result i32)))
 (import "massa" "assembly_script_get_time" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time (result i64)))
 (import "massa" "assembly_script_delete_data" (func $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.del (param i32)))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/@massalabs/as-types/assembly/argument/NoArg (mut i32) (i32.const 0))
 (global $assembly/contracts/storage/profileMap (mut i32) (i32.const 0))
 (global $assembly/contracts/storage/postMap (mut i32) (i32.const 0))
 (global $assembly/contracts/storage/repostsMap (mut i32) (i32.const 0))
 (global $assembly/contracts/storage/likesMap (mut i32) (i32.const 0))
 (global $assembly/contracts/storage/commentsMap (mut i32) (i32.const 0))
 (global $assembly/contracts/storage/followsMap (mut i32) (i32.const 0))
 (global $assembly/contracts/storage/usersFollowsMap (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 11408))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 44396))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $3 (i32.const 1196) ",")
 (data $3.1 (i32.const 1208) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $4 (i32.const 1244) "<")
 (data $4.1 (i32.const 1256) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) ",")
 (data $8.1 (i32.const 1448) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $9 (i32.const 1484) "<")
 (data $9.1 (i32.const 1496) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $10 (i32.const 1548) "\1c")
 (data $10.1 (i32.const 1560) "\05")
 (data $11 (i32.const 1580) "\1c")
 (data $11.1 (i32.const 1592) "\02\00\00\00\04\00\00\00:\00:")
 (data $12 (i32.const 1612) "\1c")
 (data $12.1 (i32.const 1624) "\02\00\00\00\n\00\00\00O\00W\00N\00E\00R")
 (data $13 (i32.const 1644) ",")
 (data $13.1 (i32.const 1656) "\02\00\00\00\18\00\00\00C\00H\00A\00N\00G\00E\00_\00O\00W\00N\00E\00R")
 (data $14 (i32.const 1692) ",")
 (data $14.1 (i32.const 1704) "\02\00\00\00\18\00\00\00_\00U\00s\00e\00r\00A\00d\00d\00r\00e\00s\00s")
 (data $15 (i32.const 1740) "\1c")
 (data $15.1 (i32.const 1752) "\02\00\00\00\0c\00\00\00p\00o\00s\00t\00I\00d")
 (data $16 (i32.const 1772) "\1c")
 (data $16.1 (i32.const 1784) "\02\00\00\00\0c\00\00\00l\00i\00k\00e\00I\00d")
 (data $17 (i32.const 1804) ",")
 (data $17.1 (i32.const 1816) "\02\00\00\00\12\00\00\00c\00o\00m\00m\00e\00n\00t\00I\00d")
 (data $18 (i32.const 1852) ",")
 (data $18.1 (i32.const 1864) "\02\00\00\00\10\00\00\00f\00o\00l\00l\00o\00w\00I\00d")
 (data $19 (i32.const 1900) "\1c")
 (data $19.1 (i32.const 1912) "\02")
 (data $20 (i32.const 1932) ",")
 (data $20.1 (i32.const 1944) "\02\00\00\00\0e\00\00\00p\00r\00o\00f\00i\00l\00e")
 (data $21 (i32.const 1980) "\1c")
 (data $21.1 (i32.const 1992) "\02\00\00\00\08\00\00\00p\00o\00s\00t")
 (data $22 (i32.const 2012) ",")
 (data $22.1 (i32.const 2024) "\02\00\00\00\0e\00\00\00r\00e\00p\00o\00s\00t\00s")
 (data $23 (i32.const 2060) ",")
 (data $23.1 (i32.const 2072) "\02\00\00\00\10\00\00\00l\00i\00k\00e\00s\00M\00a\00p")
 (data $24 (i32.const 2108) ",")
 (data $24.1 (i32.const 2120) "\02\00\00\00\10\00\00\00c\00o\00m\00m\00e\00n\00t\00s")
 (data $25 (i32.const 2156) ",")
 (data $25.1 (i32.const 2168) "\02\00\00\00\0e\00\00\00f\00o\00l\00l\00o\00w\00s")
 (data $26 (i32.const 2204) ",")
 (data $26.1 (i32.const 2216) "\02\00\00\00\16\00\00\00u\00s\00e\00r\00F\00o\00l\00l\00o\00w\00s")
 (data $27 (i32.const 2252) "\8c")
 (data $27.1 (i32.const 2264) "\02\00\00\00n\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\003\002\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $28 (i32.const 2396) "|")
 (data $28.1 (i32.const 2408) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $29 (i32.const 2524) "l")
 (data $29.1 (i32.const 2536) "\02\00\00\00V\00\00\00~\00l\00i\00b\00/\00@\00m\00a\00s\00s\00a\00l\00a\00b\00s\00/\00a\00s\00-\00t\00y\00p\00e\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00r\00e\00s\00u\00l\00t\00.\00t\00s")
 (data $30 (i32.const 2636) "\8c")
 (data $30.1 (i32.const 2648) "\02\00\00\00t\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00s\00t\00r\00i\00n\00g\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $31 (i32.const 2780) ",")
 (data $31.1 (i32.const 2792) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $32 (i32.const 2828) "<")
 (data $32.1 (i32.const 2840) "\02\00\00\00*\00\00\00U\00s\00e\00r\00 \00a\00d\00d\00r\00e\00s\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $33 (i32.const 2892) "\1c")
 (data $33.1 (i32.const 2904) "\02\00\00\00\04\00\00\00:\00 ")
 (data $34 (i32.const 2924) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $35 (i32.const 2956) "<")
 (data $35.1 (i32.const 2968) "\02\00\00\00&\00\00\00F\00i\00r\00s\00t\00 \00n\00a\00m\00e\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $36 (i32.const 3020) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $37 (i32.const 3052) "<")
 (data $37.1 (i32.const 3064) "\02\00\00\00$\00\00\00L\00a\00s\00t\00 \00n\00a\00m\00e\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $38 (i32.const 3116) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $39 (i32.const 3148) ",")
 (data $39.1 (i32.const 3160) "\02\00\00\00\18\00\00\00B\00i\00o\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $40 (i32.const 3196) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $41 (i32.const 3228) ",")
 (data $41.1 (i32.const 3240) "\02\00\00\00\1c\00\00\00P\00h\00o\00t\00o\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $42 (i32.const 3276) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $43 (i32.const 3308) "<")
 (data $43.1 (i32.const 3320) "\02\00\00\00 \00\00\00C\00o\00u\00n\00t\00r\00y\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $44 (i32.const 3372) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $45 (i32.const 3404) ",")
 (data $45.1 (i32.const 3416) "\02\00\00\00\1a\00\00\00C\00i\00t\00y\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $46 (i32.const 3452) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $47 (i32.const 3484) "<")
 (data $47.1 (i32.const 3496) "\02\00\00\00\"\00\00\00T\00e\00l\00e\00g\00r\00a\00m\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $48 (i32.const 3548) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $49 (i32.const 3580) "<")
 (data $49.1 (i32.const 3592) "\02\00\00\00\"\00\00\00X\00 \00h\00a\00n\00d\00l\00e\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $50 (i32.const 3644) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $51 (i32.const 3676) "\1c")
 (data $51.1 (i32.const 3688) "\05")
 (data $52 (i32.const 3708) "<")
 (data $52.1 (i32.const 3720) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $53 (i32.const 3772) "<")
 (data $53.1 (i32.const 3784) "\02\00\00\00 \00\00\00O\00w\00n\00e\00r\00 \00i\00s\00 \00n\00o\00t\00 \00s\00e\00t")
 (data $54 (i32.const 3836) "l")
 (data $54.1 (i32.const 3848) "\02\00\00\00\\\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00u\00t\00i\00l\00s\00/\00o\00w\00n\00e\00r\00s\00h\00i\00p\00-\00i\00n\00t\00e\00r\00n\00a\00l\00.\00t\00s")
 (data $55 (i32.const 3948) "\1c")
 (data $55.1 (i32.const 3960) "\02\00\00\00\02\00\00\00,")
 (data $56 (i32.const 3980) ",")
 (data $56.1 (i32.const 3992) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $57 (i32.const 4028) "\1c")
 (data $57.1 (i32.const 4040) "\1b\00\00\00\08\00\00\00\01")
 (data $58 (i32.const 4060) "|")
 (data $58.1 (i32.const 4072) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $59 (i32.const 4188) "L")
 (data $59.1 (i32.const 4200) "\02\00\00\00.\00\00\00C\00a\00l\00l\00e\00r\00 \00i\00s\00 \00n\00o\00t\00 \00t\00h\00e\00 \00o\00w\00n\00e\00r")
 (data $60 (i32.const 4268) "\1c")
 (data $60.1 (i32.const 4280) "\02\00\00\00\02\00\00\00:")
 (data $61 (i32.const 4300) "\1c")
 (data $61.1 (i32.const 4312) "\02\00\00\00\0c\00\00\00s\00i\00z\00e\00:\00:")
 (data $62 (i32.const 4332) "<")
 (data $62.1 (i32.const 4344) "\02\00\00\00\"\00\00\00m\00a\00p\00 \00s\00i\00z\00e\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $63 (i32.const 4396) "\\")
 (data $63.1 (i32.const 4408) "\02\00\00\00F\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00r\00a\00r\00i\00e\00s\00/\00P\00e\00r\00s\00i\00s\00t\00e\00n\00t\00M\00a\00p\00.\00t\00s")
 (data $64 (i32.const 4492) "|")
 (data $64.1 (i32.const 4504) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $65 (i32.const 4620) "<")
 (data $65.1 (i32.const 4632) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $66 (i32.const 4684) "\1c")
 (data $66.1 (i32.const 4696) "\02\00\00\00\02\00\00\000")
 (data $67 (i32.const 4716) "\\")
 (data $67.1 (i32.const 4728) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $68 (i32.const 4812) "<")
 (data $68.1 (i32.const 4824) "\02\00\00\00 \00\00\00C\00o\00n\00t\00r\00a\00c\00t\00D\00e\00p\00l\00o\00y\00e\00d")
 (data $69 (i32.const 4876) "l")
 (data $69.1 (i32.const 4888) "\02\00\00\00\\\00\00\00n\00e\00w\00O\00w\00n\00e\00r\00A\00d\00d\00r\00e\00s\00s\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00i\00s\00 \00m\00i\00s\00s\00i\00n\00g\00 \00o\00r\00 \00i\00n\00v\00a\00l\00i\00d")
 (data $70 (i32.const 4988) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $71 (i32.const 5020) "<")
 (data $71.1 (i32.const 5032) "\02\00\00\00\"\00\00\00T\00r\00a\00n\00s\00f\00e\00r\00O\00w\00n\00e\00r\00s\00h\00i\00p")
 (data $72 (i32.const 5084) "L")
 (data $72.1 (i32.const 5096) "\02\00\00\00:\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00a\00d\00d\00r\00e\00s\00s")
 (data $73 (i32.const 5164) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $74 (i32.const 5196) "\\")
 (data $74.1 (i32.const 5208) "\02\00\00\00>\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00f\00i\00r\00s\00t\00n\00a\00m\00e")
 (data $75 (i32.const 5292) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $76 (i32.const 5324) "L")
 (data $76.1 (i32.const 5336) "\02\00\00\00<\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00l\00a\00s\00t\00N\00a\00m\00e")
 (data $77 (i32.const 5404) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $78 (i32.const 5436) "L")
 (data $78.1 (i32.const 5448) "\02\00\00\002\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00b\00i\00o")
 (data $79 (i32.const 5516) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $80 (i32.const 5548) "L")
 (data $80.1 (i32.const 5560) "\02\00\00\008\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00a\00v\00a\00t\00a\00r")
 (data $81 (i32.const 5628) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $82 (i32.const 5660) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $83 (i32.const 5692) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $84 (i32.const 5724) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $85 (i32.const 5756) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $86 (i32.const 5788) "\1c")
 (data $86.1 (i32.const 5800) "\02\00\00\00\0c\00\00\00o\00b\00j\00e\00c\00t")
 (data $87 (i32.const 5820) "L")
 (data $87.1 (i32.const 5832) "\02\00\00\002\00\00\00C\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00o\00b\00j\00e\00c\00t\00 ")
 (data $88 (i32.const 5900) "|")
 (data $88.1 (i32.const 5912) "\02\00\00\00l\00\00\00C\00a\00l\00l\00e\00r\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00h\00a\00v\00e\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00t\00h\00i\00s\00 \00p\00r\00o\00f\00i\00l\00e")
 (data $89 (i32.const 6028) "L")
 (data $89.1 (i32.const 6040) "\02\00\00\004\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00m\00a\00i\00n\00.\00t\00s")
 (data $90 (i32.const 6108) ",")
 (data $90.1 (i32.const 6120) "\02\00\00\00\1a\00\00\00U\00p\00d\00a\00t\00e\00P\00r\00o\00f\00i\00l\00e")
 (data $91 (i32.const 6156) ",")
 (data $91.1 (i32.const 6168) "\02\00\00\00\1c\00\00\00N\00o\00 \00p\00o\00s\00t\00s\00 \00f\00o\00u\00n\00d")
 (data $92 (i32.const 6204) "\8c")
 (data $92.1 (i32.const 6216) "\02\00\00\00n\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\006\004\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $93 (i32.const 6348) "L")
 (data $93.1 (i32.const 6360) "\02\00\00\000\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00i\00d")
 (data $94 (i32.const 6428) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $95 (i32.const 6460) "L")
 (data $95.1 (i32.const 6472) "\02\00\00\008\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00a\00u\00t\00h\00o\00r")
 (data $96 (i32.const 6540) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $97 (i32.const 6572) "\\")
 (data $97.1 (i32.const 6584) "\02\00\00\00B\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00a\00u\00t\00h\00o\00r\00 \00N\00a\00m\00e")
 (data $98 (i32.const 6668) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $99 (i32.const 6700) "\\")
 (data $99.1 (i32.const 6712) "\02\00\00\00F\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00a\00u\00t\00h\00o\00r\00 \00A\00v\00a\00t\00a\00r")
 (data $100 (i32.const 6796) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $101 (i32.const 6828) "L")
 (data $101.1 (i32.const 6840) "\02\00\00\00:\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00c\00o\00n\00t\00e\00n\00t")
 (data $102 (i32.const 6908) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $103 (i32.const 6940) "L")
 (data $103.1 (i32.const 6952) "\02\00\00\006\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00i\00m\00a\00g\00e")
 (data $104 (i32.const 7020) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $105 (i32.const 7052) "\8c")
 (data $105.1 (i32.const 7064) "\02\00\00\00p\00\00\00c\00a\00n\00\'\00t\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00b\00o\00o\00l\00 \00f\00r\00o\00m\00 \00g\00i\00v\00e\00n\00 \00a\00r\00g\00u\00m\00e\00n\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $106 (i32.const 7196) "L")
 (data $106.1 (i32.const 7208) "\02\00\00\00<\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00i\00s\00R\00e\00p\00o\00s\00t")
 (data $107 (i32.const 7276) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $108 (i32.const 7308) "\\")
 (data $108.1 (i32.const 7320) "\02\00\00\00H\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00r\00e\00p\00o\00s\00t\00e\00d\00P\00o\00s\00t\00I\00d")
 (data $109 (i32.const 7404) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $110 (i32.const 7436) "<")
 (data $110.1 (i32.const 7448) "\02\00\00\00(\00\00\00P\00a\00g\00e\00 \00n\00u\00m\00b\00e\00r\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $111 (i32.const 7500) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $112 (i32.const 7532) "\1c")
 (data $112.1 (i32.const 7544) "\01")
 (data $113 (i32.const 7564) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $114 (i32.const 7596) "L")
 (data $114.1 (i32.const 7608) "\02\00\00\00<\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00f\00o\00l\00l\00o\00w\00e\00r")
 (data $115 (i32.const 7676) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $116 (i32.const 7708) "L")
 (data $116.1 (i32.const 7720) "\02\00\00\00<\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00f\00o\00l\00l\00o\00w\00e\00d")
 (data $117 (i32.const 7788) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $118 (i32.const 7820) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $119 (i32.const 7852) "\\")
 (data $119.1 (i32.const 7864) "\02\00\00\00>\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00c\00r\00e\00a\00t\00e\00d\00A\00t")
 (data $120 (i32.const 7948) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $121 (i32.const 7980) ",")
 (data $121.1 (i32.const 7992) "\02\00\00\00\16\00\00\00g\00e\00t\00L\00a\00s\00t\00P\00o\00s\00t")
 (data $122 (i32.const 8028) "\1c")
 (data $122.1 (i32.const 8040) "\05")
 (data $123 (i32.const 8060) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $124 (i32.const 8092) "\1c")
 (data $124.1 (i32.const 8104) "\01")
 (data $125 (i32.const 8124) ",")
 (data $125.1 (i32.const 8136) "\02\00\00\00\14\00\00\00g\00e\00t\00P\00r\00o\00f\00i\00l\00e")
 (data $126 (i32.const 8172) "\1c")
 (data $126.1 (i32.const 8184) "\05")
 (data $127 (i32.const 8204) ",")
 (data $127.1 (i32.const 8216) "\02\00\00\00\1a\00\00\00F\00o\00l\00l\00o\00w\00P\00r\00o\00f\00i\00l\00e")
 (data $128 (i32.const 8252) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00@\06")
 (data $129 (i32.const 8284) "\\")
 (data $129.1 (i32.const 8296) "\02\00\00\00F\00\00\00U\00s\00e\00r\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00l\00l\00o\00w\00i\00n\00g\00 \00t\00h\00i\00s\00 \00p\00r\00o\00f\00i\00l\00e\00.")
 (data $130 (i32.const 8380) "<")
 (data $130.1 (i32.const 8392) "\02\00\00\00\1e\00\00\00U\00n\00f\00o\00l\00l\00o\00w\00P\00r\00o\00f\00i\00l\00e")
 (data $131 (i32.const 8444) "\1c")
 (data $131.1 (i32.const 8456) "\01")
 (data $132 (i32.const 8476) "\1c")
 (data $132.1 (i32.const 8488) "\05")
 (data $133 (i32.const 8508) "\1c")
 (data $133.1 (i32.const 8520) "\01")
 (data $134 (i32.const 8540) "|")
 (data $134.1 (i32.const 8552) "\02\00\00\00f\00\00\00U\00s\00e\00r\00 \00h\00a\00s\00 \00n\00o\00 \00p\00r\00o\00f\00i\00l\00e\00.\00 \00P\00l\00e\00a\00s\00e\00 \00c\00r\00e\00a\00t\00e\00 \00a\00 \00p\00r\00o\00f\00i\00l\00e\00 \00f\00i\00r\00s\00t\00.")
 (data $135 (i32.const 8668) "\1c")
 (data $135.1 (i32.const 8680) "\02\00\00\00\02\00\00\00 ")
 (data $136 (i32.const 8700) ",")
 (data $136.1 (i32.const 8712) "\02\00\00\00\14\00\00\00C\00r\00e\00a\00t\00e\00P\00o\00s\00t")
 (data $137 (i32.const 8748) "<")
 (data $137.1 (i32.const 8760) "\02\00\00\00&\00\00\00P\00o\00s\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $138 (i32.const 8812) "l")
 (data $138.1 (i32.const 8824) "\02\00\00\00T\00\00\00U\00s\00e\00r\00 \00h\00a\00s\00 \00n\00o\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00t\00h\00i\00s\00 \00p\00o\00s\00t")
 (data $139 (i32.const 8924) ",")
 (data $139.1 (i32.const 8936) "\02\00\00\00\14\00\00\00U\00p\00d\00a\00t\00e\00P\00o\00s\00t")
 (data $140 (i32.const 8972) ",")
 (data $140.1 (i32.const 8984) "\02\00\00\00\1c\00\00\00P\00o\00s\00t\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $141 (i32.const 9020) "l")
 (data $141.1 (i32.const 9032) "\02\00\00\00X\00\00\00C\00a\00l\00l\00e\00r\00 \00h\00a\00s\00 \00n\00o\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00 \00t\00o\00 \00d\00e\00l\00e\00t\00e\00 \00t\00h\00i\00s\00 \00p\00o\00s\00t")
 (data $142 (i32.const 9132) ",")
 (data $142.1 (i32.const 9144) "\02\00\00\00\14\00\00\00D\00e\00l\00e\00t\00e\00P\00o\00s\00t")
 (data $143 (i32.const 9180) "<")
 (data $143.1 (i32.const 9192) "\02\00\00\00 \00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00p\00a\00g\00e\00 \00i\00d")
 (data $144 (i32.const 9244) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $145 (i32.const 9276) "L")
 (data $145.1 (i32.const 9288) "\02\00\00\006\00\00\00P\00a\00g\00e\00 \00n\00u\00m\00b\00e\00r\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $146 (i32.const 9356) "\1c")
 (data $146.1 (i32.const 9368) "\01")
 (data $147 (i32.const 9388) "\1c")
 (data $147.1 (i32.const 9400) "\01")
 (data $148 (i32.const 9420) "\1c")
 (data $148.1 (i32.const 9432) "\01")
 (data $149 (i32.const 9452) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $150 (i32.const 9484) "\\")
 (data $150.1 (i32.const 9496) "\02\00\00\00B\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00u\00s\00e\00r\00A\00d\00d\00r\00e\00s\00s")
 (data $151 (i32.const 9580) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $152 (i32.const 9612) "L")
 (data $152.1 (i32.const 9624) "\02\00\00\008\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00p\00o\00s\00t\00I\00d")
 (data $153 (i32.const 9692) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $154 (i32.const 9724) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $155 (i32.const 9756) "\\")
 (data $155.1 (i32.const 9768) "\02\00\00\00@\00\00\00U\00s\00e\00r\00 \00h\00a\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00l\00i\00k\00e\00d\00 \00t\00h\00i\00s\00 \00p\00o\00s\00t")
 (data $156 (i32.const 9852) ",")
 (data $156.1 (i32.const 9864) "\02\00\00\00\10\00\00\00L\00i\00k\00e\00P\00o\00s\00t")
 (data $157 (i32.const 9900) "L")
 (data $157.1 (i32.const 9912) "\02\00\00\008\00\00\00U\00s\00e\00r\00 \00h\00a\00s\00 \00n\00o\00t\00 \00l\00i\00k\00e\00d\00 \00t\00h\00i\00s\00 \00p\00o\00s\00t")
 (data $158 (i32.const 9980) ",")
 (data $158.1 (i32.const 9992) "\02\00\00\00\14\00\00\00U\00n\00l\00i\00k\00e\00P\00o\00s\00t")
 (data $159 (i32.const 10028) "\1c")
 (data $159.1 (i32.const 10040) "\01")
 (data $160 (i32.const 10060) "\1c")
 (data $160.1 (i32.const 10072) "\01")
 (data $161 (i32.const 10092) "L")
 (data $161.1 (i32.const 10104) "\02\00\00\000\00\00\00P\00a\00r\00e\00n\00t\00 \00c\00o\00m\00m\00e\00n\00t\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $162 (i32.const 10172) ",")
 (data $162.1 (i32.const 10184) "\02\00\00\00\14\00\00\00A\00d\00d\00C\00o\00m\00m\00e\00n\00t")
 (data $163 (i32.const 10220) "\1c")
 (data $163.1 (i32.const 10232) "\02\00\00\00\08\00\00\00n\00u\00l\00l")
 (data $164 (i32.const 10252) "\1c")
 (data $164.1 (i32.const 10264) "\01")
 (data $165 (i32.const 10284) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $166 (i32.const 10316) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $167 (i32.const 10348) "\\")
 (data $167.1 (i32.const 10360) "\02\00\00\00>\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00c\00o\00m\00m\00e\00n\00t\00e\00r")
 (data $168 (i32.const 10444) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
<<<<<<< HEAD
 (data $169 (i32.const 10476) "\\")
 (data $169.1 (i32.const 10488) "\02\00\00\00F\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00c\00o\00m\00m\00e\00n\00t\00e\00r\00N\00a\00m\00e")
 (data $170 (i32.const 10572) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $171 (i32.const 10604) "\\")
 (data $171.1 (i32.const 10616) "\02\00\00\00J\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00c\00o\00m\00m\00e\00n\00t\00e\00r\00A\00v\00a\00t\00a\00r")
 (data $172 (i32.const 10700) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $173 (i32.const 10732) "L")
 (data $173.1 (i32.const 10744) "\02\00\00\004\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00t\00e\00x\00t")
 (data $174 (i32.const 10812) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $175 (i32.const 10844) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $176 (i32.const 10876) "L")
 (data $176.1 (i32.const 10888) "\02\00\00\00<\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00p\00a\00r\00e\00n\00t\00I\00d")
=======
 (data $169 (i32.const 10476) "L")
 (data $169.1 (i32.const 10488) "\02\00\00\004\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00t\00e\00x\00t")
 (data $170 (i32.const 10556) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $171 (i32.const 10588) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $172 (i32.const 10620) "L")
 (data $172.1 (i32.const 10632) "\02\00\00\00<\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00p\00a\00r\00e\00n\00t\00I\00d")
 (data $173 (i32.const 10700) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $174 (i32.const 10732) "\\")
 (data $174.1 (i32.const 10744) "\02\00\00\00F\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00c\00o\00m\00m\00e\00n\00t\00e\00r\00N\00a\00m\00e")
 (data $175 (i32.const 10828) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $176 (i32.const 10860) "\\")
 (data $176.1 (i32.const 10872) "\02\00\00\00J\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00e\00s\00e\00r\00i\00a\00l\00i\00z\00e\00 \00c\00o\00m\00m\00e\00n\00t\00e\00r\00A\00v\00a\00t\00a\00r")
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
 (data $177 (i32.const 10956) "\1c\00\00\00\03\00\00\00\00\00\00\00\18\00\00\00\0c\00\00\00\00\00\00\00`\0b")
 (data $178 (i32.const 10988) "\1c")
 (data $178.1 (i32.const 11000) "\05")
 (data $179 (i32.const 11020) "<")
 (data $179.1 (i32.const 11032) "\02\00\00\00\"\00\00\00C\00o\00m\00m\00e\00n\00t\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $180 (i32.const 11084) "\1c")
 (data $180.1 (i32.const 11096) "\01")
 (data $181 (i32.const 11116) "|")
 (data $181.1 (i32.const 11128) "\02\00\00\00^\00\00\00C\00a\00l\00l\00e\00r\00 \00h\00a\00s\00 \00n\00o\00 \00p\00e\00r\00m\00i\00s\00s\00i\00o\00n\00 \00t\00o\00 \00d\00e\00l\00e\00t\00e\00 \00t\00h\00i\00s\00 \00c\00o\00m\00m\00e\00n\00t")
 (data $182 (i32.const 11244) "\1c")
 (data $182.1 (i32.const 11256) "\01")
 (data $183 (i32.const 11276) "<")
 (data $183.1 (i32.const 11288) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $184 (i32.const 11340) "<")
 (data $184.1 (i32.const 11352) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $185 (i32.const 11408) "6\00\00\00 \00\00\00 \00\00\00 ")
 (data $185.1 (i32.const 11432) "d\00\00\00\02\01\00\00\00\00\00\00 ")
 (data $185.2 (i32.const 11500) "B\00\00\00\02\t\00\00\04A\00\00\02A\00\00\02A\00\00\00\00\00\00A")
 (data $185.3 (i32.const 11536) " \00\00\00 \00\00\00 ")
 (data $185.4 (i32.const 11560) "\02A")
 (data $185.5 (i32.const 11572) "\02A\00\00\02A\00\00\00\00\00\00B\00\00\00\02\01\00\00\02\02\00\00\02\n\00\00\02\19\00\00\02\1a\00\00\02A\00\00\02A\00\00\02A\00\00\02A")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $~lib/@massalabs/massa-as-sdk/assembly/std/context/json2Address~anonymous|0)
 (export "getOwnerAddress" (func $assembly/contracts/main/getOwnerAddress))
 (export "getLastPost" (func $assembly/contracts/main/getLastPost))
 (export "getAllComments" (func $assembly/contracts/main/getAllComments))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "constructor" (func $export:assembly/contracts/main/constructor))
 (export "transferOwnership" (func $export:assembly/contracts/main/transferOwnership))
 (export "getProfile" (func $export:assembly/contracts/main/getProfile))
 (export "updateProfile" (func $export:assembly/contracts/main/updateProfile))
 (export "getFollowedProfilesLastPosts" (func $export:assembly/contracts/main/getFollowedProfilesLastPosts))
 (export "getFollowedProfiles" (func $export:assembly/contracts/main/getFollowedProfiles))
 (export "followProfile" (func $export:assembly/contracts/main/followProfile))
 (export "unfollowProfile" (func $export:assembly/contracts/main/unfollowProfile))
 (export "getAllUserFollowers" (func $export:assembly/contracts/main/getAllUserFollowers))
 (export "getAllUserFollowings" (func $export:assembly/contracts/main/getAllUserFollowings))
 (export "createPost" (func $export:assembly/contracts/main/createPost))
 (export "updatePost" (func $export:assembly/contracts/main/updatePost))
 (export "deletePost" (func $export:assembly/contracts/main/deletePost))
 (export "getPosts" (func $export:assembly/contracts/main/getPosts))
 (export "getUserPosts" (func $export:assembly/contracts/main/getUserPosts))
 (export "getPost" (func $export:assembly/contracts/main/getPost))
 (export "getUserRepostedPosts" (func $export:assembly/contracts/main/getUserRepostedPosts))
 (export "likePost" (func $export:assembly/contracts/main/likePost))
 (export "unlikePost" (func $export:assembly/contracts/main/unlikePost))
 (export "getUserLikedPosts" (func $export:assembly/contracts/main/getUserLikedPosts))
 (export "getPostLikedUsers" (func $export:assembly/contracts/main/getPostLikedUsers))
 (export "addPostComment" (func $export:assembly/contracts/main/addPostComment))
 (export "getPostComments" (func $export:assembly/contracts/main/getPostComments))
 (export "getCommentReplies" (func $export:assembly/contracts/main/getCommentReplies))
 (export "removeComment" (func $export:assembly/contracts/main/removeComment))
 (start $~start)
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   i32.eqz
   local.get $0
   i32.const 44396
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1056
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 11408
   i32.load
   i32.gt_u
   if
    i32.const 1152
    i32.const 1216
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 11412
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $2
  select
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   call $~lib/rt/itcms/Object#get:color
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 1456
  call $~lib/rt/itcms/__visit
  i32.const 4080
  call $~lib/rt/itcms/__visit
  i32.const 1264
  call $~lib/rt/itcms/__visit
  i32.const 11296
  call $~lib/rt/itcms/__visit
  i32.const 11360
  call $~lib/rt/itcms/__visit
  i32.const 3728
  call $~lib/rt/itcms/__visit
  i32.const 4736
  call $~lib/rt/itcms/__visit
  i32.const 1632
  call $~lib/rt/itcms/__visit
  i32.const 1664
  call $~lib/rt/itcms/__visit
  i32.const 1712
  call $~lib/rt/itcms/__visit
  i32.const 1760
  call $~lib/rt/itcms/__visit
  i32.const 1792
  call $~lib/rt/itcms/__visit
  i32.const 1824
  call $~lib/rt/itcms/__visit
  i32.const 1872
  call $~lib/rt/itcms/__visit
  global.get $assembly/contracts/storage/profileMap
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/storage/postMap
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/storage/repostsMap
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/storage/likesMap
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/storage/commentsMap
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/storage/followsMap
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/contracts/storage/usersFollowsMap
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1600
  call $~lib/rt/itcms/__visit
  global.get $~lib/@massalabs/as-types/assembly/argument/NoArg
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1600
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  call $~lib/rt/itcms/Object#get:next
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $4
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $3
  if
   local.get $3
   local.get $5
   call $~lib/rt/itcms/Object#set:prev
  end
  local.get $5
  if
   local.get $5
   local.get $3
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $4
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  if
   local.get $3
   local.get $1
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 44400
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  i32.const 45968
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 44400
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $1
      i32.const 4
      i32.shl
      local.get $0
      i32.add
      i32.const 2
      i32.shl
      i32.const 44400
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 44400
  i32.const 45972
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 44400
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 44396
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.ne
    if
     i32.const 0
     i32.const 1056
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 44396
    i32.lt_u
    if
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:nextWithColor
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:prev
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     call $~lib/rt/itcms/Object#get:size
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $1
     i32.const 44396
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $2
      local.get $1
      i32.const 4
      i32.sub
      local.set $0
      local.get $1
      i32.const 15
      i32.and
      i32.const 1
      local.get $1
      select
      if (result i32)
       i32.const 1
      else
       local.get $0
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      local.get $0
      i32.load
      i32.const 1
      i32.or
      call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
      local.get $2
      local.get $0
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/roundSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.const 27
  local.get $0
  i32.clz
  i32.sub
  i32.shl
  i32.add
  i32.const 1
  i32.sub
  local.get $0
  local.get $0
  i32.const 536870910
  i32.lt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   call $~lib/rt/tlsf/roundSize
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1264
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $1
    call $~lib/rt/tlsf/roundSize
   else
    local.get $1
   end
   local.set $2
   memory.size
   local.tee $3
   local.get $2
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $3
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $3
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $3
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $3
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $1
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $2
   i32.const 4
   i32.add
   local.get $1
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  end
  local.get $2
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1264
   i32.const 1056
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$35
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$35
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $2
  if
   local.get $1
   local.get $2
   local.get $0
   memory.copy
  end
  local.get $1
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix" (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<u8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  loop $while-continue|0
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $2
       i32.const 56320
       i32.lt_u
       local.get $0
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
       i32.and
       if
        local.get $0
        i32.load16_u offset=2
        local.tee $4
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $1
         local.get $2
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.const 65536
         i32.add
         local.get $4
         i32.const 1023
         i32.and
         i32.or
         local.tee $2
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 24
         i32.shl
         local.get $2
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 16
         i32.shl
         i32.or
         local.get $2
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 8
         i32.shl
         i32.or
         local.get $2
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         i32.or
         i32.store
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
       i32.const 3728
       i32.const 2800
       i32.const 742
       i32.const 49
       call $~lib/builtins/abort
       unreachable
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $assembly/structs/profile/Profile#set:lastName (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/structs/profile/Profile#set:avatar (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/structs/profile/Profile#set:bio (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/structs/profile/Profile#set:country (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/structs/profile/Profile#set:city (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/structs/profile/Profile#set:telegram (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/structs/profile/Profile#set:xHandle (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/numbers/u64ToBytes (param $0 i64) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  loop $do-loop|0
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i32.const 10
   i32.div_u
   local.tee $1
   br_if $do-loop|0
  end
 )
 (func $~lib/number/I32#toString (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  call $~lib/util/number/decimalCount32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 1
  local.get $0
  call $~lib/util/number/utoa_dec_simple<u32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/numbers/u32ToBytes (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/structs/post/Post#set:id (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $assembly/structs/post/Post#set:isRepost (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=28
 )
 (func $assembly/structs/post/Post#set:repostedPostId (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=32
 )
 (func $assembly/structs/post/Post#set:createdAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=40
 )
 (func $assembly/structs/follow/Follow#set:createdAt (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=24
 )
 (func $assembly/structs/like/Like#set:postId (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $assembly/structs/comment/Comment#set:postId (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=8
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 11296
    i32.const 1056
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 11360
   i32.const 1056
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $0
   call $~lib/rt/itcms/Object#unlink
   local.get $0
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/@massalabs/as-types/assembly/serializable/Serializable#serialize@override (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $default
   block $case5
    block $case4
     block $case3
      block $case2
       block $case1
        block $case0
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         i32.const 7
         i32.sub
         br_table $case0 $default $case5 $default $case1 $default $default $case3 $default $case2 $default $case4 $default
        end
        local.get $0
        call $assembly/structs/profile/Profile#serialize
        return
       end
       local.get $0
       call $assembly/structs/post/Post#serialize
       return
      end
      local.get $0
      call $assembly/structs/comment/Comment#serialize
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 28
     i32.sub
     global.set $~lib/memory/__stack_pointer
     call $~stack_check
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 28
     memory.fill
     i32.const 0
     global.set $~argumentsLength
     call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     local.get $1
     local.get $0
     i64.load
     call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $2
     i32.store offset=16
     local.get $1
     local.get $2
     call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>"
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     local.get $1
     local.get $0
     i64.load offset=16
     call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $1
     local.get $0
     i64.load offset=24
     call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 28
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $0
    call $assembly/structs/follow/Follow#serialize
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   i32.const 0
   global.set $~argumentsLength
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  unreachable
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32)
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/structs/like/Like~visit (param $0 i32)
  local.get $0
  i32.load offset=8
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner1
   block $folding-inner5
    block $folding-inner4
     block $folding-inner3
      block $folding-inner2
       block $folding-inner0
        block $invalid
         block $~lib/@massalabs/as-types/assembly/result/Result<u64>
          block $~lib/as-bignum/assembly/integer/u256/u256
           block $~lib/as-bignum/assembly/integer/u128/u128
            block $~lib/as-bignum/assembly/integer/i128/i128
             block $~lib/typedarray/Uint8Array
              block $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>
               block $~lib/staticarray/StaticArray<~lib/string/String>
                block $assembly/structs/follow/Follow
                 block $assembly/structs/comment/Comment
                  block $assembly/structs/like/Like
                   block $assembly/structs/post/Post
                    block $~lib/@massalabs/as-types/assembly/serializable/Serializable
                     block $assembly/structs/profile/Profile
                      block $~lib/staticarray/StaticArray<u8>
                       block $~lib/string/String
                        block $~lib/arraybuffer/ArrayBuffer
                         block $~lib/object/Object
                          local.get $0
                          i32.const 8
                          i32.sub
                          i32.load
                          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner5 $~lib/staticarray/StaticArray<u8> $folding-inner2 $assembly/structs/profile/Profile $~lib/@massalabs/as-types/assembly/serializable/Serializable $folding-inner0 $folding-inner0 $assembly/structs/post/Post $folding-inner0 $folding-inner0 $assembly/structs/like/Like $folding-inner0 $assembly/structs/comment/Comment $folding-inner0 $assembly/structs/follow/Follow $folding-inner0 $folding-inner3 $folding-inner5 $folding-inner2 $folding-inner2 $~lib/staticarray/StaticArray<~lib/string/String> $folding-inner4 $folding-inner4 $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/@massalabs/massa-as-sdk/assembly/std/address/Address> $~lib/typedarray/Uint8Array $folding-inner3 $folding-inner5 $~lib/as-bignum/assembly/integer/i128/i128 $~lib/as-bignum/assembly/integer/u128/u128 $~lib/as-bignum/assembly/integer/u256/u256 $folding-inner3 $~lib/@massalabs/as-types/assembly/result/Result<u64> $folding-inner5 $folding-inner4 $folding-inner3 $folding-inner0 $folding-inner4 $folding-inner4 $folding-inner3 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner3 $invalid
                         end
                         return
                        end
                        return
                       end
                       return
                      end
                      return
                     end
                     local.get $0
                     i32.load
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=4
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=8
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=12
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=16
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=20
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=24
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=28
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=32
                     local.tee $0
                     if
                      local.get $0
                      call $~lib/rt/itcms/__visit
                     end
                     return
                    end
                    return
                   end
                   local.get $0
                   i32.load offset=8
                   local.tee $1
                   if
                    local.get $1
                    call $~lib/rt/itcms/__visit
                   end
                   local.get $0
                   i32.load offset=12
                   local.tee $1
                   if
                    local.get $1
                    call $~lib/rt/itcms/__visit
                   end
                   local.get $0
                   i32.load offset=16
                   local.tee $1
                   if
                    local.get $1
                    call $~lib/rt/itcms/__visit
                   end
                   local.get $0
                   i32.load offset=20
                   local.tee $1
                   if
                    local.get $1
                    call $~lib/rt/itcms/__visit
                   end
                   local.get $0
                   i32.load offset=24
                   local.tee $0
                   if
                    local.get $0
                    call $~lib/rt/itcms/__visit
                   end
                   return
                  end
                  local.get $0
                  call $assembly/structs/like/Like~visit
                  return
                 end
                 local.get $0
                 i32.load offset=16
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=20
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=24
                 local.tee $1
                 if
                  local.get $1
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load offset=28
                 local.tee $0
                 if
                  local.get $0
                  call $~lib/rt/itcms/__visit
                 end
                 return
                end
                local.get $0
                i32.load offset=8
                local.tee $1
                if
                 local.get $1
                 call $~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=12
                local.tee $1
                if
                 local.get $1
                 call $~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=16
                local.tee $0
                if
                 local.get $0
                 call $~lib/rt/itcms/__visit
                end
                return
               end
               local.get $0
               local.get $0
               i32.const 20
               i32.sub
               i32.load offset=16
               i32.add
               local.set $1
               loop $while-continue|0
                local.get $0
                local.get $1
                i32.lt_u
                if
                 local.get $0
                 i32.load
                 local.tee $2
                 if
                  local.get $2
                  call $~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.const 4
                 i32.add
                 local.set $0
                 br $while-continue|0
                end
               end
               return
              end
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.sub
              global.set $~lib/memory/__stack_pointer
              call $~stack_check
              global.get $~lib/memory/__stack_pointer
              i32.const 0
              i32.store
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store
              local.get $0
              i32.load offset=4
              call $~lib/rt/itcms/__visit
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.add
              global.set $~lib/memory/__stack_pointer
              return
             end
             local.get $0
             call $~lib/arraybuffer/ArrayBufferView~visit
             return
            end
            return
           end
           return
          end
          return
         end
         local.get $0
         call $assembly/structs/like/Like~visit
         return
        end
        unreachable
       end
       local.get $0
       call $~lib/arraybuffer/ArrayBufferView~visit
       return
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      br $folding-inner1
     end
     local.get $0
     i32.load
     local.tee $1
     if
      local.get $1
      call $~lib/rt/itcms/__visit
     end
     br $folding-inner5
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    local.set $3
    loop $while-continue|00
     local.get $1
     local.get $3
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $2
      if
       local.get $2
       call $~lib/rt/itcms/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|00
     end
    end
    br $folding-inner1
   end
   local.get $0
   i32.load offset=4
   local.tee $0
   if
    local.get $0
    call $~lib/rt/itcms/__visit
   end
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  i32.const 1104
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  i32.const 44396
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1312
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1344
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  global.set $~lib/@massalabs/as-types/assembly/argument/NoArg
  call $start:assembly/contracts/storage
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 11628
  i32.lt_s
  if
   i32.const 44416
   i32.const 44464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $2
  local.get $3
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $2of2
   block $0of2
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of2 $2of2 $2of2 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   i32.const 1568
   call $~lib/rt/__newBuffer
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  block $folding-inner0
   local.get $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $4
   local.get $3
   i32.add
   local.tee $2
   i32.eqz
   if
    i32.const 1920
    local.set $2
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   local.get $0
   local.get $3
   memory.copy
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#constructor" (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  i32.store offset=16
  local.get $0
  i32.const 1600
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $start:assembly/contracts/storage
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1952
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  i32.store offset=16
  i32.const 1952
  i32.const 1600
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $assembly/contracts/storage/profileMap
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 12
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  i32.store offset=16
  i32.const 2000
  i32.const 1600
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $assembly/contracts/storage/postMap
  global.get $~lib/memory/__stack_pointer
  i32.const 2032
  i32.store
  i32.const 2032
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#constructor"
  global.set $assembly/contracts/storage/repostsMap
  global.get $~lib/memory/__stack_pointer
  i32.const 2080
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 15
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2080
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  i32.store offset=16
  i32.const 2080
  i32.const 1600
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $assembly/contracts/storage/likesMap
  global.get $~lib/memory/__stack_pointer
  i32.const 2128
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 17
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2128
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  i32.store offset=16
  i32.const 2128
  i32.const 1600
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $assembly/contracts/storage/commentsMap
  global.get $~lib/memory/__stack_pointer
  i32.const 2176
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 19
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2176
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1600
  i32.store offset=16
  i32.const 2176
  i32.const 1600
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $assembly/contracts/storage/followsMap
  global.get $~lib/memory/__stack_pointer
  i32.const 2224
  i32.store
  i32.const 2224
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#constructor"
  global.set $assembly/contracts/storage/usersFollowsMap
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 21
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<u8>#slice<~lib/array/Array<u8>> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  i32.const 22
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#getNextData (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $4
  local.get $0
  i32.load
  local.get $1
  i32.add
  call $~lib/staticarray/StaticArray<u8>#slice<~lib/array/Array<u8>>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $3
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load
  local.get $1
  i32.add
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__not (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/string/String#get:length
   i32.eqz
  else
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 20
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   i32.eqz
   if
    i32.const 1920
    local.set $0
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   call $~lib/string/String.UTF8.decodeUnsafe
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 4
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $3
   i32.store
   local.get $3
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $2
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 2272
    i32.store
    i32.const 0
    i32.const 2272
    call $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 4
   call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<u32>#constructor
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $1
  i32.store
  block $folding-inner2
   block $folding-inner1
    block $folding-inner00
     local.get $1
     call $~lib/string/String.__not
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/string/String.__not
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.load offset=4
       local.tee $0
       i32.store offset=28
       local.get $0
       i32.eqz
       br_if $folding-inner00
       br $folding-inner2
      end
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=32
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $1
      local.get $2
      i32.load
      i32.add
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.store
      local.get $3
      call $~lib/staticarray/StaticArray<u8>#get:length
      local.get $1
      i32.lt_s
     else
      i32.const 1
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 1920
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 2656
      i32.store offset=16
      i32.const 1920
      i32.const 2656
      call $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
      local.set $0
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=4
     local.tee $3
     i32.store offset=44
     local.get $3
     call $~lib/string/String.__not
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.load offset=4
      local.tee $0
      i32.store offset=52
      local.get $0
      i32.eqz
      br_if $folding-inner00
      br $folding-inner2
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=56
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=44
     local.get $0
     local.get $2
     i32.load
     call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString
     local.tee $0
     i32.store offset=60
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 0
     call $~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
     local.set $0
     br $folding-inner1
    end
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const -64
   i32.sub
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  local.get $0
  i32.const 2544
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $folding-inner0
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $2
    br $folding-inner0
   end
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/string/String#get:length
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/string/String#get:length
   local.get $3
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 0
   local.get $1
   local.get $3
   call $~lib/util/string/compareImpl
   i32.eqz
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__ne (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  block $folding-inner0
   local.get $1
   i32.const 1
   i32.sub
   local.tee $4
   i32.const 0
   i32.lt_s
   if
    i32.const 1920
    local.set $0
    br $folding-inner0
   end
   local.get $4
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    call $~lib/string/String.__ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
    else
     i32.const 1920
     local.set $0
    end
    br $folding-inner0
   end
   i32.const 1920
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/string/String#get:length
   local.set $6
   loop $for-loop|0
    local.get $4
    local.get $5
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     call $~lib/string/String.__ne
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $3
      call $~lib/string/String.__concat
      local.tee $1
      i32.store offset=8
     end
     local.get $6
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $2
      call $~lib/string/String.__concat
      local.tee $1
      i32.store offset=8
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/string/String.__ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $0
    call $~lib/string/String.__concat
    local.tee $1
    i32.store offset=8
   end
   local.get $1
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store
  local.get $0
  local.get $1
  i32.const 1920
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.tee $1
  i32.store
  block $folding-inner0
   local.get $1
   call $~lib/string/String#get:length
   i32.eqz
   if
    i32.const 0
    i32.const 5
    i32.const 3696
    call $~lib/rt/__newBuffer
    local.set $0
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.add
   local.set $3
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $2
     i32.load16_u
     local.tee $4
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 1
      i32.add
     else
      local.get $4
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
      else
       local.get $4
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
       i32.and
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $0
       i32.const 3
       i32.add
      end
     end
     local.set $0
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $1
   call $~lib/string/String#get:length
   local.get $0
   call $~lib/string/String.UTF8.encodeUnsafe
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/string/String> (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  i32.store offset=4
  i32.const 1632
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 4000
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.tee $2
   i32.const 1073741820
   local.get $3
   i32.const 1
   i32.shl
   local.tee $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   local.get $1
   local.get $3
   i32.lt_u
   select
   local.tee $1
   call $~lib/rt/itcms/__renew
   local.tee $3
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $3
    i32.store
    local.get $0
    local.get $3
    i32.store offset=4
    local.get $0
    local.get $3
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1152
    i32.const 4000
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/itcms/Object#set:rtId
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:rtId
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#split (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $2
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 1
      i32.const 2
      i32.const 26
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=4
      i32.store offset=4
      local.get $1
      i32.const 0
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__set
      global.get $~lib/memory/__stack_pointer
      i32.const 40
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      return
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/string/String#get:length
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     i32.const 2147483647
     local.get $2
     local.get $2
     i32.const 0
     i32.lt_s
     select
     local.set $7
     local.get $1
     call $~lib/string/String#get:length
     local.tee $8
     if
      local.get $5
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 1
       i32.const 2
       i32.const 26
       i32.const 0
       call $~lib/rt/__newArray
       local.tee $0
       i32.store offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       local.get $0
       i32.load offset=4
       i32.const 1920
       i32.store
       br $folding-inner1
      end
     else
      local.get $5
      i32.eqz
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.get $5
      local.get $7
      local.get $5
      local.get $7
      i32.lt_s
      select
      local.tee $2
      i32.const 2
      i32.const 26
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $3
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $3
      i32.load offset=4
      local.set $4
      i32.const 0
      local.set $1
      loop $for-loop|0
       local.get $1
       local.get $2
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 2
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $5
        i32.store offset=16
        local.get $5
        local.get $0
        local.get $1
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
        i32.store16
        local.get $4
        local.get $1
        i32.const 2
        i32.shl
        i32.add
        local.get $5
        i32.store
        local.get $3
        local.get $5
        i32.const 1
        call $~lib/rt/itcms/__link
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 40
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $3
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 2
     i32.const 26
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $6
     i32.store offset=24
     loop $while-continue|1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      block $folding-inner10
       local.get $1
       call $~lib/string/String#get:length
       local.tee $9
       i32.eqz
       if
        i32.const 0
        local.set $2
        br $folding-inner10
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       call $~lib/string/String#get:length
       local.tee $10
       if
        local.get $3
        i32.const 0
        local.get $3
        i32.const 0
        i32.gt_s
        select
        local.tee $2
        local.get $10
        local.get $2
        local.get $10
        i32.lt_s
        select
        local.set $2
        local.get $10
        local.get $9
        i32.sub
        local.set $10
        loop $for-loop|01
         local.get $2
         local.get $10
         i32.le_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store offset=4
          local.get $0
          local.get $2
          local.get $1
          local.get $9
          call $~lib/util/string/compareImpl
          i32.eqz
          br_if $folding-inner10
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $for-loop|01
         end
        end
       end
       i32.const -1
       local.set $2
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $2
      i32.const -1
      i32.xor
      if
       local.get $2
       local.get $3
       i32.sub
       local.tee $9
       i32.const 0
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1
        i32.shl
        local.tee $9
        i32.const 2
        call $~lib/rt/itcms/__new
        local.tee $10
        i32.store offset=32
        local.get $10
        local.get $0
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        local.get $9
        memory.copy
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=28
        local.get $6
        local.get $10
        call $~lib/array/Array<~lib/string/String>#push
       else
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        i32.const 1920
        i32.store offset=28
        local.get $6
        i32.const 1920
        call $~lib/array/Array<~lib/string/String>#push
       end
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $7
       i32.eq
       br_if $folding-inner2
       local.get $2
       local.get $8
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=28
      local.get $6
      local.get $0
      call $~lib/array/Array<~lib/string/String>#push
      br $folding-inner2
     end
     local.get $5
     local.get $3
     i32.sub
     local.tee $1
     i32.const 0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.shl
      local.tee $1
      i32.const 2
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store offset=36
      local.get $2
      local.get $0
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      memory.copy
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=28
      local.get $6
      local.get $2
      call $~lib/array/Array<~lib/string/String>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 1920
      i32.store offset=28
      local.get $6
      i32.const 1920
      call $~lib/array/Array<~lib/string/String>#push
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 40
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    i32.const 0
    i32.const 2
    i32.const 26
    i32.const 0
    call $~lib/rt/__newArray
    local.set $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 9
  call $byn$mgfn-shared$~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 1
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  local.get $2
  i32.const 1
  i32.gt_s
  select
  local.tee $4
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.lt_s
  select
  local.tee $1
  local.get $1
  local.get $4
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $3
  block $folding-inner0
   local.get $4
   local.get $1
   local.get $1
   local.get $4
   i32.lt_s
   select
   i32.const 1
   i32.shl
   local.tee $1
   local.get $3
   i32.sub
   local.tee $4
   i32.eqz
   if
    i32.const 1920
    local.set $0
    br $folding-inner0
   end
   local.get $3
   i32.eqz
   local.get $1
   local.get $2
   i32.const 1
   i32.shl
   i32.eq
   i32.and
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=4
   local.get $1
   local.get $0
   local.get $3
   i32.add
   local.get $4
   memory.copy
   local.get $1
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/json2Address~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.sub
  call $~lib/string/String#substring
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#map<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $4
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $3
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 2
    i32.shl
    local.tee $5
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.tee $6
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    i32.const 3
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    local.get $6
    local.get $2
    local.get $0
    i32.const 4048
    i32.load
    call_indirect (type $5)
    local.tee $6
    i32.store offset=16
    local.get $4
    local.get $5
    i32.add
    local.get $6
    i32.store
    local.get $1
    local.get $6
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/json2Address (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $3
  local.get $0
  call $~lib/string/String#get:length
  i32.const 2
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0
   local.get $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
   local.tee $1
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.sub
   local.tee $4
   local.get $1
   local.get $4
   i32.lt_s
   select
   i32.const 1
   i32.shl
   local.tee $4
   i32.const 0
   i32.le_s
   if
    i32.const 1920
    local.set $1
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=4
   local.get $1
   local.get $0
   i32.const 2
   i32.add
   local.get $4
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  i32.const 3968
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 3968
  i32.store offset=4
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $0
   end
   i32.const 2147483647
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  call $~lib/string/String#split
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4048
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<~lib/string/String>#map<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.callStack
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/json2Address
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1152
   i32.const 4000
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 4080
   i32.const 4000
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
  i32.const 2
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/addressStack
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   i32.const 2
   i32.sub
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
   local.set $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/utils/ownership-internal/_onlyOwner
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/string/String>
  i32.eqz
  if
   i32.const 3792
   i32.const 3856
   i32.const 48
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 4208
   i32.const 3856
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String> (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/toDatastoreFormat<~lib/string/String>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4288
  i32.store offset=12
  local.get $0
  i32.const 4288
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 3968
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=12
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 3968
  i32.store
  local.get $2
  local.get $1
  i32.const 3968
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/string/String#concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/utils/ownership-internal/_setOwner (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/string/String>
  if
   call $assembly/contracts/utils/ownership-internal/_onlyOwner
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 1632
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
  global.get $~lib/memory/__stack_pointer
  i32.const 1664
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  i32.store offset=16
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<~lib/string/String>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  i32.const 1664
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/structs/profile/Profile#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (result i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $9
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $9
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $9
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $9
  local.get $2
  call $assembly/structs/profile/Profile#set:lastName
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $9
  local.get $3
  call $assembly/structs/profile/Profile#set:avatar
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $9
  local.get $4
  call $assembly/structs/profile/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $9
  local.get $5
  call $assembly/structs/profile/Profile#set:country
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $9
  local.get $6
  call $assembly/structs/profile/Profile#set:city
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $9
  local.get $7
  call $assembly/structs/profile/Profile#set:telegram
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $9
  local.get $8
  call $assembly/structs/profile/Profile#set:xHandle
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_keySize" (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4320
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=8
  i32.const 4320
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.has
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>> (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.get
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU64 (param $0 i32) (result i64)
  (local $1 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size" (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_keySize"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  if (result i64)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_keySize"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU64
  else
   i64.const 0
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_key" (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains" (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_key"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>> (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.set
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
  i64.const -1
  i64.eq
  if
   i32.const 4352
   i32.const 4416
   i32.const 286
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_keySize"
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
   i64.const 1
   i64.add
   call $~lib/@massalabs/as-types/assembly/serialization/numbers/u64ToBytes
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $3
   local.get $4
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_key"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@massalabs/as-types/assembly/serializable/Serializable#serialize@override
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/constructor (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 380
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 380
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2848
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $3
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 2848
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=4
     local.tee $1
     i32.store offset=32
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     i32.const 2944
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 2848
     i32.store offset=24
     i32.const 2944
     i32.const 0
     i32.const 2848
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 2944
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 2944
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 2944
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 2944
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $1
    local.get $2
    i32.load
    local.tee $1
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $3
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 2976
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $4
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 2976
     i32.store offset=64
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load offset=4
     local.tee $1
     i32.store offset=68
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=72
     global.get $~lib/memory/__stack_pointer
     i32.const 3040
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 2976
     i32.store offset=24
     i32.const 3040
     i32.const 0
     i32.const 2976
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3040
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3040
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3040
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3040
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $2
    local.get $3
    i32.load
    local.tee $2
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $4
    i32.store offset=84
    global.get $~lib/memory/__stack_pointer
    i32.const 3072
    i32.store offset=88
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=92
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=96
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $5
    i32.store
    local.get $5
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3072
     i32.store offset=100
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.tee $1
     i32.store offset=104
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=108
     global.get $~lib/memory/__stack_pointer
     i32.const 3136
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3072
     i32.store offset=24
     i32.const 3136
     i32.const 0
     i32.const 3072
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3136
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3136
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3136
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3136
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $3
    local.get $4
    i32.load
    local.tee $3
    i32.store offset=116
    global.get $~lib/memory/__stack_pointer
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $5
    i32.store offset=120
    global.get $~lib/memory/__stack_pointer
    i32.const 3168
    i32.store offset=124
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=128
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=132
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $6
    i32.store
    local.get $6
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3168
     i32.store offset=136
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=4
     local.tee $1
     i32.store offset=140
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=144
     global.get $~lib/memory/__stack_pointer
     i32.const 3216
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3168
     i32.store offset=24
     i32.const 3216
     i32.const 0
     i32.const 3168
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3216
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3216
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3216
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3216
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=148
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $4
    local.get $5
    i32.load
    local.tee $4
    i32.store offset=152
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $6
    i32.store offset=156
    global.get $~lib/memory/__stack_pointer
    i32.const 3248
    i32.store offset=160
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=164
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=168
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load offset=4
    local.tee $7
    i32.store
    local.get $7
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3248
     i32.store offset=172
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.load offset=4
     local.tee $1
     i32.store offset=176
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=180
     global.get $~lib/memory/__stack_pointer
     i32.const 3296
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3248
     i32.store offset=24
     i32.const 3296
     i32.const 0
     i32.const 3248
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3296
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3296
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3296
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3296
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=184
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $5
    local.get $6
    i32.load
    local.tee $5
    i32.store offset=188
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $7
    i32.store offset=192
    global.get $~lib/memory/__stack_pointer
    i32.const 3328
    i32.store offset=196
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=200
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=204
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load offset=4
    local.tee $8
    i32.store
    local.get $8
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3328
     i32.store offset=208
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load offset=4
     local.tee $1
     i32.store offset=212
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=216
     global.get $~lib/memory/__stack_pointer
     i32.const 3392
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3328
     i32.store offset=24
     i32.const 3392
     i32.const 0
     i32.const 3328
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3392
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3392
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3392
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3392
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=220
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $6
    local.get $7
    i32.load
    local.tee $6
    i32.store offset=224
    global.get $~lib/memory/__stack_pointer
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $8
    i32.store offset=228
    global.get $~lib/memory/__stack_pointer
    i32.const 3424
    i32.store offset=232
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=236
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=240
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load offset=4
    local.tee $9
    i32.store
    local.get $9
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3424
     i32.store offset=244
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.load offset=4
     local.tee $1
     i32.store offset=248
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=252
     global.get $~lib/memory/__stack_pointer
     i32.const 3472
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3424
     i32.store offset=24
     i32.const 3472
     i32.const 0
     i32.const 3424
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3472
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3472
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3472
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3472
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=256
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $7
    local.get $8
    i32.load
    local.tee $7
    i32.store offset=260
    global.get $~lib/memory/__stack_pointer
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $9
    i32.store offset=264
    global.get $~lib/memory/__stack_pointer
    i32.const 3504
    i32.store offset=268
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=272
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=276
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.load offset=4
    local.tee $10
    i32.store
    local.get $10
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3504
     i32.store offset=280
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.load offset=4
     local.tee $1
     i32.store offset=284
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=288
     global.get $~lib/memory/__stack_pointer
     i32.const 3568
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3504
     i32.store offset=24
     i32.const 3568
     i32.const 0
     i32.const 3504
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3568
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3568
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3568
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3568
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=292
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $8
    local.get $9
    i32.load
    local.tee $8
    i32.store offset=296
    global.get $~lib/memory/__stack_pointer
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $0
    i32.store offset=300
    global.get $~lib/memory/__stack_pointer
    i32.const 3600
    i32.store offset=304
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=308
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=312
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $10
    i32.store
    local.get $10
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3600
     i32.store offset=316
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.store offset=320
     local.get $1
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=324
     global.get $~lib/memory/__stack_pointer
     i32.const 3664
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3600
     i32.store offset=24
     i32.const 3664
     i32.const 0
     i32.const 3600
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 3664
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 3664
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=24
     i32.const 3664
     i32.const 2
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 3664
     i32.store
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=328
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $9
    local.get $0
    i32.load
    local.tee $0
    i32.store offset=332
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $assembly/contracts/utils/ownership-internal/_setOwner
    global.get $~lib/memory/__stack_pointer
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=364
    local.get $1
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=336
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=340
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=344
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=348
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=352
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=356
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=360
    local.get $9
    local.get $10
    local.get $2
    local.get $3
    local.get $5
    local.get $4
    local.get $6
    local.get $7
    local.get $8
    local.get $0
    call $assembly/structs/profile/Profile#constructor
    local.tee $0
    i32.store offset=368
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/profileMap
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=336
    local.get $2
    local.get $1
    local.get $0
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set"
    global.get $~lib/memory/__stack_pointer
    i32.const 1712
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=24
    i32.const 1712
    local.get $1
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 1760
    i32.store
    call $~lib/number/I32#toString
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    i32.const 1760
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 1792
    i32.store
    call $~lib/number/I32#toString
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    i32.const 1792
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 1824
    i32.store
    call $~lib/number/I32#toString
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    i32.const 1824
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 1872
    i32.store
    call $~lib/number/I32#toString
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    i32.const 1872
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 4832
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 2
    i32.const 26
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $0
    i32.store offset=372
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    i32.store offset=376
    local.get $0
    i32.const 0
    local.get $1
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=336
    i32.const 4832
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
    global.get $~lib/memory/__stack_pointer
    i32.const 380
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 2416
   i32.const 2544
   i32.const 52
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=24
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  i32.const 2544
  i32.const 52
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.tee $3
  local.get $2
  i32.add
  local.tee $4
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 178
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=4
  local.get $4
  local.get $0
  local.get $2
  memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>" (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=8
  local.get $1
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/u32ToBytes
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $2
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#serialize (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/utils/ownership/setOwner (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4896
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4896
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 5008
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4896
   i32.store offset=24
   i32.const 5008
   i32.const 0
   i32.const 4896
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 5008
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   i32.const 5008
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 5008
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=24
   i32.const 5008
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2544
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.load
  local.tee $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/utils/ownership-internal/_setOwner
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/transferOwnership (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  call $assembly/contracts/utils/ownership-internal/_onlyOwner
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   local.tee $0
   i32.store offset=24
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.load
  local.tee $0
  i32.store offset=32
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  local.get $2
  local.get $0
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/contracts/utils/ownership/setOwner
  global.get $~lib/memory/__stack_pointer
  i32.const 5040
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  i32.store offset=48
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $2
  i32.const 1
  local.get $0
  call $~lib/array/Array<~lib/string/String>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=36
  i32.const 5040
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/structs/profile/Profile#constructor@varargs (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 76
  memory.fill
  block $9of9
   block $8of9
    block $7of9
     block $6of9
      block $5of9
       block $4of9
        block $3of9
         block $2of9
          block $1of9
           block $0of9
            block $outOfRange
             global.get $~argumentsLength
             br_table $0of9 $1of9 $2of9 $3of9 $4of9 $5of9 $6of9 $7of9 $8of9 $9of9 $outOfRange
            end
            unreachable
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 1920
           i32.store
           global.get $~lib/memory/__stack_pointer
           i32.const 1920
           call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
           local.tee $0
           i32.store offset=4
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 1920
          i32.store offset=8
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 1920
         i32.store offset=12
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 1920
        i32.store offset=16
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 1920
       i32.store offset=20
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 1920
      i32.store offset=24
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store offset=28
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=32
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=36
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=64
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=72
  local.get $0
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i32.const 1920
  call $assembly/structs/profile/Profile#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 30
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#get:offset (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/profile/Profile#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 312
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 312
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 5104
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store offset=16
  block $folding-inner0
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5104
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=44
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 5184
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 5104
    i32.store offset=36
    i32.const 5184
    i32.const 0
    i32.const 5104
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5184
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    i32.const 5184
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5184
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=36
    i32.const 5184
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=12
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   i32.const 5216
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5216
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=76
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 5312
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 5216
    i32.store offset=16
    i32.const 5312
    i32.const 0
    i32.const 5216
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5312
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5312
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5312
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5312
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 5344
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5344
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 5424
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 5344
    i32.store offset=16
    i32.const 5424
    i32.const 0
    i32.const 5344
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5424
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5424
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5424
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5424
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:lastName
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   i32.const 5456
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5456
    i32.store offset=136
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=140
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=144
    global.get $~lib/memory/__stack_pointer
    i32.const 5536
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 5456
    i32.store offset=16
    i32.const 5536
    i32.const 0
    i32.const 5456
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5536
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5536
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5536
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5536
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:bio
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   i32.const 5568
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5568
    i32.store offset=168
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=172
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=176
    global.get $~lib/memory/__stack_pointer
    i32.const 5648
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 5568
    i32.store offset=16
    i32.const 5648
    i32.const 0
    i32.const 5568
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5648
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5648
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5648
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5648
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:avatar
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=184
   global.get $~lib/memory/__stack_pointer
   i32.const 3328
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=196
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3328
    i32.store offset=200
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=204
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=208
    global.get $~lib/memory/__stack_pointer
    i32.const 5680
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3328
    i32.store offset=16
    i32.const 5680
    i32.const 0
    i32.const 3328
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5680
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5680
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5680
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5680
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=212
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:country
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   i32.const 3424
   i32.store offset=220
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=228
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3424
    i32.store offset=232
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=236
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=240
    global.get $~lib/memory/__stack_pointer
    i32.const 5712
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3424
    i32.store offset=16
    i32.const 5712
    i32.const 0
    i32.const 3424
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5712
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5712
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5712
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5712
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:city
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=248
   global.get $~lib/memory/__stack_pointer
   i32.const 3504
   i32.store offset=252
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=256
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=260
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3504
    i32.store offset=264
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=268
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=272
    global.get $~lib/memory/__stack_pointer
    i32.const 5744
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3504
    i32.store offset=16
    i32.const 5744
    i32.const 0
    i32.const 3504
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5744
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5744
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5744
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5744
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:telegram
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=280
   global.get $~lib/memory/__stack_pointer
   i32.const 3600
   i32.store offset=284
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=288
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=292
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3600
    i32.store offset=296
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=300
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=304
    global.get $~lib/memory/__stack_pointer
    i32.const 5776
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 3600
    i32.store offset=16
    i32.const 5776
    i32.const 0
    i32.const 3600
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5776
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 5776
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 5776
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    i32.const 5776
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=308
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:xHandle
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 312
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2416
  i32.const 2544
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/profile/Profile>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 29
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/profile/Profile> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=24
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  call $assembly/structs/profile/Profile#constructor@varargs
  local.tee $1
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/structs/profile/Profile#deserialize
  local.tee $2
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 5840
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5808
    i32.store offset=12
    i32.const 5840
    i32.const 5808
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/profile/Profile>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=56
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/profile/Profile>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#get" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   local.get $0
   local.get $1
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_key"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/profile/Profile>
   local.tee $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=28
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $1
  call $~lib/@massalabs/as-types/assembly/serializable/Serializable#serialize@override
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/profile/Profile#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 80
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 80
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=76
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=72
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=64
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=56
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.store offset=48
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=40
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store offset=32
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=24
  local.tee $2
  i32.store offset=24
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=28
  local.tee $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=32
  local.tee $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 80
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getProfile (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 72
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load
  local.tee $1
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/profileMap
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=60
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=64
  call $assembly/structs/profile/Profile#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  local.get $2
  local.get $3
  local.get $1
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#get"
  local.tee $0
  i32.store offset=68
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/structs/profile/Profile#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getOwnerAddress (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1632
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/updateProfile (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/profile/Profile>
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $1
  i32.store offset=32
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=36
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=36
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $2
  local.get $3
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1632
   i32.store offset=36
   i32.const 1632
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $2
   local.get $3
   call $~lib/string/String.__eq
  end
  i32.eqz
  if
   i32.const 5920
   i32.const 6048
   i32.const 152
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/profileMap
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=40
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  local.get $2
  local.get $3
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set"
  global.get $~lib/memory/__stack_pointer
  i32.const 6128
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=40
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  call $~lib/array/Array<~lib/string/String>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  i32.const 6128
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/string/strtol<i64> (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.tee $2
   i32.load16_u
   local.set $0
   loop $while-continue|0
    block $__inlined_func$~lib/util/string/isSpace$215 (result i32)
     local.get $0
     i32.const 128
     i32.or
     i32.const 160
     i32.eq
     local.get $0
     i32.const 9
     i32.sub
     i32.const 4
     i32.le_u
     i32.or
     local.get $0
     i32.const 5760
     i32.lt_u
     br_if $__inlined_func$~lib/util/string/isSpace$215
     drop
     i32.const 1
     local.get $0
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace$215
     drop
     i32.const 1
     local.get $0
     i32.const 5760
     i32.eq
     local.get $0
     i32.const 8232
     i32.eq
     i32.or
     local.get $0
     i32.const 8233
     i32.eq
     local.get $0
     i32.const 8239
     i32.eq
     i32.or
     i32.or
     local.get $0
     i32.const 8287
     i32.eq
     local.get $0
     i32.const 12288
     i32.eq
     i32.or
     local.get $0
     i32.const 65279
     i32.eq
     i32.or
     i32.or
     br_if $__inlined_func$~lib/util/string/isSpace$215
     drop
     i32.const 0
    end
    if
     local.get $2
     i32.const 2
     i32.add
     local.tee $2
     i32.load16_u
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
   i64.const 1
   local.set $4
   local.get $0
   i32.const 45
   i32.eq
   local.tee $7
   local.get $0
   i32.const 43
   i32.eq
   i32.or
   if (result i32)
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.eqz
    br_if $folding-inner0
    i64.const -1
    i64.const 1
    local.get $7
    select
    local.set $4
    local.get $2
    i32.const 2
    i32.add
    local.tee $2
    i32.load16_u
   else
    local.get $0
   end
   i32.const 48
   i32.eq
   local.get $1
   i32.const 2
   i32.gt_s
   i32.and
   if
    block $break|1
     block $case2|1
      block $case1|1
       local.get $2
       i32.load16_u offset=2
       i32.const 32
       i32.or
       local.tee $0
       i32.const 98
       i32.ne
       if
        local.get $0
        i32.const 111
        i32.eq
        br_if $case1|1
        local.get $0
        i32.const 120
        i32.eq
        br_if $case2|1
        br $break|1
       end
       local.get $2
       i32.const 4
       i32.add
       local.set $2
       local.get $1
       i32.const 2
       i32.sub
       local.set $1
       i32.const 2
       local.set $3
       br $break|1
      end
      local.get $2
      i32.const 4
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.sub
      local.set $1
      i32.const 8
      local.set $3
      br $break|1
     end
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.sub
     local.set $1
     i32.const 16
     local.set $3
    end
   end
   local.get $3
   i32.const 10
   local.get $3
   select
   local.set $3
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     block $while-break|2
      local.get $2
      i32.load16_u
      local.tee $8
      i32.const 48
      i32.sub
      local.tee $0
      local.get $8
      i32.const 55
      i32.sub
      local.get $8
      i32.const 87
      i32.sub
      local.get $8
      local.get $8
      i32.const 97
      i32.sub
      i32.const 25
      i32.le_u
      select
      local.get $8
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      select
      local.get $0
      i32.const 10
      i32.lt_u
      select
      local.tee $0
      local.get $3
      i32.ge_u
      if
       local.get $1
       local.get $7
       i32.eq
       br_if $folding-inner0
       br $while-break|2
      end
      local.get $0
      i64.extend_i32_u
      local.get $5
      local.get $3
      i64.extend_i32_s
      i64.mul
      i64.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      br $while-continue|2
     end
    end
   end
   local.get $4
   local.get $5
   i64.mul
   local.set $6
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $assembly/structs/post/Post#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (result i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $7
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $0
  call $assembly/structs/post/Post#set:id
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $7
  local.get $1
  call $assembly/structs/profile/Profile#set:lastName
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $7
  local.get $2
  call $assembly/structs/profile/Profile#set:avatar
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $7
  local.get $3
  call $assembly/structs/profile/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $7
  local.get $4
  call $assembly/structs/profile/Profile#set:country
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $7
  local.get $5
  call $assembly/structs/profile/Profile#set:city
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $assembly/structs/post/Post#set:isRepost
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  call $assembly/structs/post/Post#set:repostedPostId
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $6
  call $assembly/structs/post/Post#set:createdAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $assembly/structs/post/Post#constructor@varargs (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  block $9of9
   block $5of9
    block $4of9
     block $3of9
      block $2of9
       block $1of9
        block $outOfRange
         global.get $~argumentsLength
         br_table $1of9 $1of9 $2of9 $3of9 $4of9 $5of9 $9of9 $9of9 $9of9 $9of9 $outOfRange
        end
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 1920
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1920
       call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
       local.tee $0
       i32.store offset=4
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 1920
      i32.store offset=8
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store offset=12
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=20
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=40
  i64.const 0
  local.get $0
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i64.const 0
  call $assembly/structs/post/Post#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 35
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  call $assembly/structs/post/Post#set:id
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $assembly/structs/profile/Profile#set:lastName
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextU64 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 8
   i32.add
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6224
    i32.store
    i64.const 0
    i32.const 6224
    call $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 8
   call $~lib/@massalabs/as-types/assembly/argument/Args#getNextData
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU64
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<u64>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<bool>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 36
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextBool (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner0 (result i32)
   local.get $0
   i32.load
   i32.const 1
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $2
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7072
    i32.store
    i32.const 0
    i32.const 7072
    call $~lib/@massalabs/as-types/assembly/result/Result<bool>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load
   local.tee $0
   i32.const 1
   i32.add
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $0
   i32.le_u
   if
    i32.const 1152
    i32.const 1504
    i32.const 78
    i32.const 41
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.add
   i32.load8_u
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.eqz
   i32.eqz
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<bool>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/post/Post#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 304
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 304
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6368
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $4
  i32.store offset=8
  block $folding-inner0
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 6448
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=28
    i32.const 6448
    i32.const 0
    i32.const 6368
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6448
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 6448
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6448
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 6448
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/post/Post#set:id
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 6480
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $4
   i32.store offset=48
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6480
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=76
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 6560
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 6480
    i32.store offset=68
    i32.const 6560
    i32.const 0
    i32.const 6480
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6560
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    i32.const 6560
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6560
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=68
    i32.const 6560
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=28
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:lastName
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 6592
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $4
   i32.store offset=28
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6592
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 6688
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6592
    i32.store offset=48
    i32.const 6688
    i32.const 0
    i32.const 6592
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6688
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    i32.const 6688
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6688
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=48
    i32.const 6688
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:avatar
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   i32.const 6720
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $4
   i32.store offset=28
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6720
    i32.store offset=136
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=140
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=144
    global.get $~lib/memory/__stack_pointer
    i32.const 6816
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6720
    i32.store offset=48
    i32.const 6816
    i32.const 0
    i32.const 6720
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6816
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    i32.const 6816
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6816
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=48
    i32.const 6816
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:bio
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   i32.const 6848
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $4
   i32.store offset=28
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6848
    i32.store offset=168
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=172
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=176
    global.get $~lib/memory/__stack_pointer
    i32.const 6928
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6848
    i32.store offset=48
    i32.const 6928
    i32.const 0
    i32.const 6848
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6928
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    i32.const 6928
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 6928
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=48
    i32.const 6928
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:country
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=184
   global.get $~lib/memory/__stack_pointer
   i32.const 6960
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=196
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $4
   i32.store offset=28
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6960
    i32.store offset=200
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=204
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=208
    global.get $~lib/memory/__stack_pointer
    i32.const 7040
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6960
    i32.store offset=48
    i32.const 7040
    i32.const 0
    i32.const 6960
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7040
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    i32.const 7040
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7040
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=48
    i32.const 7040
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=212
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:city
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextBool
   local.tee $2
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   i32.const 7216
   i32.store offset=220
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=228
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $4
   i32.store offset=8
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7216
    i32.store offset=232
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=236
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=240
    global.get $~lib/memory/__stack_pointer
    i32.const 7296
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 7216
    i32.store offset=28
    i32.const 7296
    i32.const 0
    i32.const 7216
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7296
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7296
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7296
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 7296
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.load8_u
   call $assembly/structs/post/Post#set:isRepost
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=248
   global.get $~lib/memory/__stack_pointer
   i32.const 7328
   i32.store offset=252
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=256
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=260
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $4
   i32.store offset=8
   local.get $4
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7328
    i32.store offset=264
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=268
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=272
    global.get $~lib/memory/__stack_pointer
    i32.const 7424
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 7328
    i32.store offset=28
    i32.const 7424
    i32.const 0
    i32.const 7328
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7424
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7424
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7424
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 7424
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/post/Post#set:repostedPostId
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=280
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=284
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $4
   i32.store offset=8
   local.get $0
   local.get $4
   call $~lib/string/String.__not
   if (result i64)
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=288
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=292
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=8
    local.get $0
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=8
     local.tee $0
     i32.store offset=296
     local.get $0
     i32.eqz
     if
      i32.const 2416
      i32.const 2544
      i32.const 70
      i32.const 21
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 2544
     i32.const 70
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=300
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    local.get $2
    i64.load
   else
    i64.const 0
   end
   call $assembly/structs/post/Post#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 304
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2416
  i32.const 2544
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/post/Post>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 34
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/post/Post> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=12
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $assembly/structs/post/Post#constructor@varargs
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/structs/post/Post#deserialize
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 5840
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5808
    i32.store offset=12
    i32.const 5840
    i32.const 5808
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/post/Post>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/post/Post>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   local.get $0
   local.get $1
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_key"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/post/Post>
   local.tee $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=28
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>" (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=8
  local.get $1
  call $~lib/@massalabs/as-types/assembly/serialization/numbers/u64ToBytes
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<bool,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.eqz
  if
   i32.const 1152
   i32.const 1504
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  i32.const 0
  i32.ne
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $3
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/post/Post#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=60
  local.get $1
  local.get $0
  i64.load
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=52
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=44
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.store offset=36
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store offset=28
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=24
  local.tee $2
  i32.store offset=20
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $1
  local.get $0
  i32.load8_u offset=28
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<bool,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $0
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getLastPost (result i32)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.tee $1
  i64.const 1
  i64.eq
  if
   i32.const 6176
   i32.const 6048
   i32.const 169
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $2
  local.get $1
  i64.const 1
  i64.sub
  call $~lib/util/number/utoa64
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=28
  i32.const 0
  global.set $~argumentsLength
  call $assembly/structs/post/Post#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $2
  local.get $3
  local.get $4
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/structs/post/Post#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/follow/Follow#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 18
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $0
  call $assembly/structs/post/Post#set:id
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $5
  local.get $1
  call $assembly/structs/profile/Profile#set:lastName
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $5
  local.get $2
  call $assembly/structs/profile/Profile#set:avatar
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $5
  local.get $3
  call $assembly/structs/profile/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $4
  call $assembly/structs/follow/Follow#set:createdAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/structs/follow/Follow#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  block $5of5
   block $3of5
    block $2of5
     block $1of5
      block $outOfRange
       global.get $~argumentsLength
       br_table $1of5 $1of5 $2of5 $3of5 $5of5 $5of5 $outOfRange
      end
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
     local.tee $0
     i32.store offset=4
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.tee $1
    i32.store offset=8
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.tee $2
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  i64.const 0
  local.get $0
  local.get $1
  local.get $2
  i64.const 0
  call $assembly/structs/follow/Follow#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key" (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $1
  call $~lib/util/number/utoa64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains" (param $0 i32) (param $1 i64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/has<~lib/staticarray/StaticArray<u8>>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/follow/Follow#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 184
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 184
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6368
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $3
  i32.store offset=8
  block $folding-inner0
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 7584
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=28
    i32.const 7584
    i32.const 0
    i32.const 6368
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7584
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7584
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7584
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 7584
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/post/Post#set:id
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 7616
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=48
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7616
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=76
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 7696
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 7616
    i32.store offset=68
    i32.const 7696
    i32.const 0
    i32.const 7616
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7696
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    i32.const 7696
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7696
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=68
    i32.const 7696
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=28
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:lastName
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 7728
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=48
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7728
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 7808
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 7728
    i32.store offset=68
    i32.const 7808
    i32.const 0
    i32.const 7728
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7808
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    i32.const 7808
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7808
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=68
    i32.const 7808
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=28
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:avatar
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   i32.const 7728
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=48
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7728
    i32.store offset=136
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=140
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=144
    global.get $~lib/memory/__stack_pointer
    i32.const 7840
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 7728
    i32.store offset=68
    i32.const 7840
    i32.const 0
    i32.const 7728
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7840
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    i32.const 7840
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7840
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=68
    i32.const 7840
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=28
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:bio
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   i32.const 7872
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7872
    i32.store offset=168
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=172
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=176
    global.get $~lib/memory/__stack_pointer
    i32.const 7968
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 7872
    i32.store offset=28
    i32.const 7968
    i32.const 0
    i32.const 7872
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7968
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 7968
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 7968
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 7968
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/follow/Follow#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 184
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2416
  i32.const 2544
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/follow/Follow>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 38
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/follow/Follow> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $assembly/structs/follow/Follow#constructor@varargs
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/structs/follow/Follow#deserialize
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store offset=4
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 5840
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 5808
    i32.store offset=28
    i32.const 5840
    i32.const 5808
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/follow/Follow>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/follow/Follow>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#get" (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains"
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   local.get $1
   call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/follow/Follow>
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=24
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/contracts/interfaces/IProfile/IProfile#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 39
  call $byn$mgfn-shared$~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/contract/calls/call (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  i64.const 0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.call
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/interfaces/IProfile/IProfile#getLastPost (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8000
  i32.store offset=4
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $2
  i32.const 8000
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/contract/calls/call
  local.tee $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/post/Post>
  local.tee $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=28
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/post/Post> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 8048
  call $~lib/rt/__newBuffer
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $6
    local.get $5
    call $assembly/structs/post/Post#serialize
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getFollowedProfilesLastPosts (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 72
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 7456
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.store
  local.get $3
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 7456
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $3
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 7520
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7456
   i32.store offset=24
   i32.const 7520
   i32.const 0
   i32.const 7456
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 7520
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   i32.const 7520
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 7520
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=24
   i32.const 7520
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2544
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 37
  i32.const 7552
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=48
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/followsMap
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $5
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/follow/Follow#constructor@varargs
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    local.get $5
    local.get $4
    local.get $1
    local.get $0
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#get"
    local.tee $0
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $0
    i32.store offset=56
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $4
    local.get $0
    call $assembly/contracts/interfaces/IProfile/IProfile#constructor
    local.tee $0
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $assembly/contracts/interfaces/IProfile/IProfile#getLastPost
    local.tee $0
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    local.get $3
    local.get $0
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=56
  local.get $0
  local.get $3
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/post/Post>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/interfaces/IProfile/IProfile#getProfile (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8144
  i32.store offset=4
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  local.get $3
  local.get $1
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.const 8144
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/contract/calls/call
  local.tee $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/profile/Profile>
  local.tee $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=32
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/profile/Profile> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 8192
  call $~lib/rt/__newBuffer
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $6
    local.get $5
    call $assembly/structs/profile/Profile#serialize
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getFollowedProfiles (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 72
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 7456
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.store
  local.get $3
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 7456
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $3
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 8080
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7456
   i32.store offset=24
   i32.const 8080
   i32.const 0
   i32.const 7456
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8080
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   i32.const 8080
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 8080
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=24
   i32.const 8080
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2544
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 40
  i32.const 8112
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=48
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/followsMap
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $4
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/follow/Follow#constructor@varargs
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=24
    local.get $4
    local.get $3
    local.get $1
    local.get $5
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#get"
    local.tee $3
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=12
    local.tee $5
    i32.store offset=56
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=24
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $4
    local.get $5
    call $assembly/contracts/interfaces/IProfile/IProfile#constructor
    local.tee $4
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=16
    local.tee $3
    i32.store offset=56
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=24
    local.get $5
    local.get $4
    local.get $3
    call $assembly/contracts/interfaces/IProfile/IProfile#getProfile
    local.tee $3
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=24
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=56
  local.get $3
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/profile/Profile>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 72
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_increaseSize" (param $0 i32) (param $1 i64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains"
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_keySize"
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
   i64.const 1
   i64.add
   call $~lib/@massalabs/as-types/assembly/serialization/numbers/u64ToBytes
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/followProfile (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 80
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 80
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $4
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $4
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load offset=4
     local.tee $0
     i32.store offset=20
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $2
    local.get $3
    i32.load
    local.tee $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $0
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $4
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=40
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 1872
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1872
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
    local.tee $0
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/util/string/strtol<i64>
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.set $4
    call $assembly/contracts/main/getOwnerAddress
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=64
    local.get $0
    call $~lib/@massalabs/as-types/assembly/serialization/strings/bytesToString
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=60
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=60
    local.get $2
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=60
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=56
    local.get $4
    local.get $1
    local.get $5
    local.get $0
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
    call $assembly/structs/follow/Follow#constructor
    local.tee $0
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/followsMap
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
    i64.const -1
    i64.eq
    if
     i32.const 4352
     i32.const 4416
     i32.const 286
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $1
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_increaseSize"
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $1
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    local.get $0
    call $~lib/@massalabs/as-types/assembly/serializable/Serializable#serialize@override
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $3
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1872
    i32.store
    local.get $1
    i64.const 1
    i64.add
    call $~lib/util/number/utoa64
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    i32.const 1872
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 8224
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 3
    i32.const 2
    i32.const 26
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $0
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    i32.store offset=76
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=60
    local.get $0
    i32.const 0
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $0
    i32.const 1
    local.get $2
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $0
    i32.const 2
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
    call $~lib/util/number/utoa64
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=56
    i32.const 8224
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
    global.get $~lib/memory/__stack_pointer
    i32.const 80
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 2416
   i32.const 2544
   i32.const 70
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2544
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@massalabs/massa-as-sdk/assembly/std/storage/del<~lib/staticarray/StaticArray<u8>> (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.del
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#_decreaseSize" (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
  i64.const 0
  i64.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_keySize"
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
   i64.const 1
   i64.sub
   call $~lib/@massalabs/as-types/assembly/serialization/numbers/u64ToBytes
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#delete" (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_key"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/del<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#_decreaseSize"
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#delete" (param $0 i32) (param $1 i64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/del<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#_decreaseSize"
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/unfollowProfile (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $3
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.set $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=32
  local.get $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8272
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  i32.const 8272
  i32.const 0
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 8272
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  i32.const 8272
  i32.const 2
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 8272
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=12
  i32.const 8272
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  local.get $3
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/usersFollowsMap
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  block $folding-inner0 (result i64)
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   call $~stack_check
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   i64.const 0
   local.get $2
   local.get $3
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
   i32.eqz
   br_if $folding-inner0
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $2
   local.get $3
   call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#_key"
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/@massalabs/as-types/assembly/serialization/numbers/bytesToU64
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  i64.eqz
  if
   i32.const 8304
   i32.const 6048
   i32.const 271
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/usersFollowsMap
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $2
  local.get $3
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#delete"
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/followsMap
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#delete"
  global.get $~lib/memory/__stack_pointer
  i32.const 8400
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 3
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  i32.store offset=44
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=48
  local.get $2
  i32.const 0
  local.get $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $2
  i32.const 1
  local.get $0
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $2
  i32.const 2
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
  call $~lib/util/number/utoa64
  call $~lib/array/Array<~lib/string/String>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  i32.const 8400
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/structs/follow/Follow#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  local.get $1
  local.get $0
  i64.load
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=28
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.store offset=20
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.store offset=12
  local.get $1
  local.get $2
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>"
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i64.load offset=24
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/follow/Follow> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 8496
  call $~lib/rt/__newBuffer
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $6
    local.get $5
    call $assembly/structs/follow/Follow#serialize
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getAllUserFollowers (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $3
  local.get $0
  i32.load
  local.tee $3
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 41
  i32.const 8464
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=36
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/followsMap
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $6
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/follow/Follow#constructor@varargs
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $6
    local.get $5
    local.get $1
    local.get $0
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#get"
    local.tee $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $5
    i32.store offset=44
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    local.get $5
    local.get $3
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     local.get $4
     local.get $0
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=44
  local.get $0
  local.get $4
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/follow/Follow>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getAllUserFollowings (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $3
  local.get $0
  i32.load
  local.tee $3
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1872
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 41
  i32.const 8528
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=36
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/followsMap
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $6
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/follow/Follow#constructor@varargs
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $6
    local.get $5
    local.get $1
    local.get $0
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#get"
    local.tee $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $5
    i32.store offset=44
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    local.get $5
    local.get $3
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     local.get $4
     local.get $0
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=44
  local.get $0
  local.get $4
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/follow/Follow>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/createPost (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 108
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 108
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/profileMap
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=16
  local.get $5
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=40
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=44
  call $assembly/structs/profile/Profile#constructor@varargs
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $4
  local.get $3
  local.get $5
  local.get $6
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#get"
  local.tee $4
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load
  local.tee $3
  i32.store offset=12
  local.get $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $3
  local.get $5
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 8560
   i32.const 6048
   i32.const 343
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $5
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.load offset=4
  local.tee $6
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $6
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=4
     local.tee $0
     i32.store offset=60
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $3
    local.get $5
    i32.load
    local.tee $5
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $0
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $6
    i32.store
    local.get $6
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=80
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=84
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    local.tee $6
    i32.store offset=88
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 1760
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1760
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
    local.tee $0
    i32.store offset=92
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/util/string/strtol<i64>
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.set $7
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $3
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    i32.const 8688
    i32.store offset=36
    local.get $3
    i32.const 8688
    call $~lib/string/String.__concat
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=8
    local.tee $8
    i32.store offset=28
    local.get $3
    local.get $8
    call $~lib/string/String.__concat
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=12
    local.tee $4
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=20
    local.get $7
    local.get $1
    local.get $0
    local.get $3
    local.get $4
    local.get $5
    local.get $6
    local.get $2
    call $assembly/structs/post/Post#constructor
    local.tee $0
    i32.store offset=96
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $3
    i32.store
    local.get $1
    call $~lib/util/number/utoa64
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $4
    local.get $0
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set"
    global.get $~lib/memory/__stack_pointer
    i32.const 1760
    i32.store
    local.get $1
    i64.const 1
    i64.add
    call $~lib/util/number/utoa64
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    i32.const 1760
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 8720
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5
    i32.const 2
    i32.const 26
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $3
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=4
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $3
    i32.const 0
    local.get $0
    i64.load
    call $~lib/util/number/utoa64
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $4
    i32.store offset=16
    local.get $3
    i32.const 1
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $3
    i32.const 2
    local.get $0
    i32.load offset=20
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $3
    i32.const 3
    local.get $0
    i32.load offset=24
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $3
    i32.const 4
    local.get $0
    i64.load offset=40
    call $~lib/util/number/utoa64
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    i32.const 8720
    local.get $3
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
    global.get $~lib/memory/__stack_pointer
    i32.const 108
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 2416
   i32.const 2544
   i32.const 70
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2544
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/contracts/main/updatePost (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 100
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $3
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $3
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=8
     local.tee $0
     i32.store offset=20
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    i64.load
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $3
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $4
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load offset=4
     local.tee $0
     i32.store offset=36
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $2
    local.get $3
    i32.load
    local.tee $2
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $0
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $4
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=56
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    local.tee $3
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $0
    i32.store
    local.get $1
    call $~lib/util/number/utoa64
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=16
    local.get $0
    local.get $4
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
    i32.eqz
    if
     i32.const 8768
     i32.const 6048
     i32.const 388
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $5
    local.get $1
    call $~lib/util/number/utoa64
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=84
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/post/Post#constructor@varargs
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    local.get $5
    local.get $4
    local.get $6
    local.get $0
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
    local.tee $0
    i32.store offset=88
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i64.load
    i64.ne
    if
     i32.const 8768
     i32.const 6048
     i32.const 392
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $4
    i32.store offset=68
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=68
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=16
    local.get $4
    local.get $5
    call $~lib/string/String.__eq
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=72
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $4
     i32.store offset=68
     local.get $4
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1632
     i32.store offset=68
     i32.const 1632
     call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=16
     local.get $4
     local.get $5
     call $~lib/string/String.__eq
    end
    i32.eqz
    if
     i32.const 8832
     i32.const 6048
     i32.const 394
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $2
    call $assembly/structs/profile/Profile#set:country
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    local.get $0
    local.get $3
    call $assembly/structs/profile/Profile#set:city
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $4
    i32.store
    local.get $1
    call $~lib/util/number/utoa64
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    local.get $4
    local.get $5
    local.get $0
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set"
    global.get $~lib/memory/__stack_pointer
    i32.const 8944
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 3
    i32.const 2
    i32.const 26
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $0
    i32.store offset=92
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    i32.store offset=96
    local.get $0
    i32.const 0
    local.get $1
    call $~lib/util/number/utoa64
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $0
    i32.const 1
    local.get $2
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $0
    i32.const 2
    local.get $3
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    i32.const 8944
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
    global.get $~lib/memory/__stack_pointer
    i32.const 100
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 2416
   i32.const 2544
   i32.const 70
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2544
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/contracts/main/deletePost (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 60
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $0
  i32.store
  local.get $1
  call $~lib/util/number/utoa64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $0
  local.get $2
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
  i32.eqz
  if
   i32.const 8992
   i32.const 6048
   i32.const 478
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $3
  local.get $1
  call $~lib/util/number/utoa64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=44
  i32.const 0
  global.set $~argumentsLength
  call $assembly/structs/post/Post#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=28
  local.get $3
  local.get $0
  local.get $2
  local.get $4
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
  local.tee $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.store offset=28
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $0
  local.get $2
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 1632
   i32.store offset=28
   i32.const 1632
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $0
   local.get $2
   call $~lib/string/String.__eq
  end
  i32.eqz
  if
   i32.const 9040
   i32.const 6048
   i32.const 482
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $0
  i32.store
  local.get $1
  call $~lib/util/number/utoa64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $0
  local.get $2
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,u64>#delete"
  global.get $~lib/memory/__stack_pointer
  i32.const 9152
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=56
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/util/number/utoa64
  call $~lib/array/Array<~lib/string/String>#__set
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
  local.get $0
  i32.const 1
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  call $~lib/array/Array<~lib/string/String>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  i32.const 9152
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/getPosts (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 76
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 9200
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.store
  local.get $3
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 9200
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.set $3
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 52
    i32.const 32
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 9264
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 9200
   i32.store offset=24
   i32.const 9264
   i32.const 0
   i32.const 9200
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 9264
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   i32.const 9264
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   global.get $~lib/memory/__stack_pointer
   i32.const 9264
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=24
   i32.const 9264
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2544
   i32.const 52
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  i64.const 10
  i64.mul
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  i64.const 1
  i64.sub
  local.tee $1
  local.get $2
  i64.le_u
  if
   i32.const 9296
   i32.const 6048
   i32.const 515
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i64.const 10
  i64.add
  local.tee $5
  i64.ge_u
  if
   local.get $5
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 37
  i32.const 9376
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=48
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.gt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $0
    local.get $2
    i64.const 1
    i64.add
    local.tee $2
    call $~lib/util/number/utoa64
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=68
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/post/Post#constructor@varargs
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=52
    local.get $0
    local.get $4
    local.get $6
    local.get $7
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
    local.tee $0
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    local.get $3
    local.get $0
    call $~lib/array/Array<~lib/string/String>#push
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=52
  local.get $0
  local.get $3
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/post/Post>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getUserPosts (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.add
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $3
  local.get $0
  i32.load
  local.tee $5
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 37
  i32.const 9408
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=36
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $6
    local.get $1
    call $~lib/util/number/utoa64
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=56
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/post/Post#constructor@varargs
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=40
    local.get $6
    local.get $3
    local.get $4
    local.get $7
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
    local.tee $3
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=8
    local.tee $4
    i32.store offset=40
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=16
    local.get $4
    local.get $5
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=16
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  local.get $3
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/post/Post>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const -64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getPost (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/util/string/strtol<i64>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=24
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i64.load
  local.tee $1
  i64.le_u
  if
   i32.const 8992
   i32.const 6048
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $3
  local.get $1
  call $~lib/util/number/utoa64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=48
  i32.const 0
  global.set $~argumentsLength
  call $assembly/structs/post/Post#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=32
  local.get $3
  local.get $0
  local.get $2
  local.get $4
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
  local.tee $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/structs/post/Post#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/_getUserRepostedPosts (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1760
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/util/string/strtol<i64>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 37
  i32.const 9440
  call $~lib/rt/__newArray
  local.tee $5
  i32.store offset=8
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $6
    local.get $1
    call $~lib/util/number/utoa64
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=32
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/post/Post#constructor@varargs
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=16
    local.get $6
    local.get $3
    local.get $4
    local.get $7
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
    local.tee $3
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=8
    local.tee $4
    i32.store offset=16
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $0
    call $~lib/string/String.__eq
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     i32.load8_u offset=28
    else
     i32.const 0
    end
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     i64.load offset=32
     i64.const 0
     i64.ne
    else
     i32.const 0
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $5
     local.get $3
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/contracts/main/getUserRepostedPosts (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.load
  local.tee $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/contracts/main/_getUserRepostedPosts
  local.tee $0
  i32.store offset=32
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  local.get $1
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/post/Post>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/like/Like#constructor (param $0 i64) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 14
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $0
  call $assembly/structs/post/Post#set:id
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $4
  local.get $1
  call $assembly/structs/profile/Profile#set:lastName
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $2
  call $assembly/structs/like/Like#set:postId
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $3
  call $assembly/structs/follow/Follow#set:createdAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/structs/like/Like#constructor@varargs (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $4of4
   block $1of4
    block $outOfRange
     global.get $~argumentsLength
     br_table $1of4 $1of4 $4of4 $4of4 $4of4 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.tee $0
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  i64.const 0
  local.get $0
  i64.const 0
  i64.const 0
  call $assembly/structs/like/Like#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/like/Like#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 152
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 152
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6368
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $3
  i32.store offset=8
  block $folding-inner0
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 9472
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=28
    i32.const 9472
    i32.const 0
    i32.const 6368
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9472
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 9472
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9472
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 9472
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/post/Post#set:id
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 9504
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=48
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 9504
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=76
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 9600
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 9504
    i32.store offset=68
    i32.const 9600
    i32.const 0
    i32.const 9504
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9600
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=68
    i32.const 9600
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9600
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=68
    i32.const 9600
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=28
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:lastName
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 9632
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 9632
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 9712
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 9632
    i32.store offset=28
    i32.const 9712
    i32.const 0
    i32.const 9632
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9712
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 9712
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9712
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 9712
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/like/Like#set:postId
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   i32.const 7872
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7872
    i32.store offset=136
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=140
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=144
    global.get $~lib/memory/__stack_pointer
    i32.const 9744
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 7872
    i32.store offset=28
    i32.const 9744
    i32.const 0
    i32.const 7872
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9744
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 9744
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 9744
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 9744
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/follow/Follow#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 152
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2416
  i32.const 2544
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/like/Like>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 42
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/like/Like> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $assembly/structs/like/Like#constructor@varargs
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/structs/like/Like#deserialize
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store offset=4
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 5840
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 5808
    i32.store offset=28
    i32.const 5840
    i32.const 5808
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/like/Like>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/like/Like>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/like/Like>#get" (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains"
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   local.get $1
   call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/like/Like>
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=24
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/contracts/main/likePost (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 60
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $5
  i32.store
  local.get $5
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.set $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $0
  local.get $5
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.tee $5
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $0
  i32.store
  local.get $2
  call $~lib/util/number/utoa64
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $0
  local.get $6
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
  i32.eqz
  if
   i32.const 8992
   i32.const 6048
   i32.const 627
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i64.gt_u
   if
    block $for-break0
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/contracts/storage/likesMap
     local.tee $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.set $7
     i32.const 0
     global.set $~argumentsLength
     call $assembly/structs/like/Like#constructor@varargs
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     local.get $7
     local.get $6
     local.get $3
     local.get $0
     call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/like/Like>#get"
     local.tee $0
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $6
     i32.store offset=40
     local.get $6
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=16
     local.get $6
     local.get $5
     call $~lib/string/String.__eq
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $2
      local.get $0
      i64.load offset=16
      i64.eq
     else
      i32.const 0
     end
     if
      i32.const 1
      local.set $4
      br $for-break0
     end
     local.get $3
     i64.const 1
     i64.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $4
  if
   i32.const 9776
   i32.const 6048
   i32.const 641
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=16
  local.get $5
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $0
  local.get $1
  local.get $4
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
  call $assembly/structs/like/Like#constructor
  local.tee $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/likesMap
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
  i64.const -1
  i64.eq
  if
   i32.const 4352
   i32.const 4416
   i32.const 286
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_increaseSize"
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@massalabs/as-types/assembly/serializable/Serializable#serialize@override
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $4
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store
  local.get $1
  i64.const 1
  i64.add
  call $~lib/util/number/utoa64
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  i32.const 1792
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
  global.get $~lib/memory/__stack_pointer
  i32.const 9872
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=56
  local.get $0
  i32.const 0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $0
  i32.const 1
  local.get $2
  call $~lib/util/number/utoa64
  call $~lib/array/Array<~lib/string/String>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  i32.const 9872
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/unlikePost (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=8
  local.tee $0
  i32.store
  local.get $0
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i64.load
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.set $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $3
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.tee $4
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $7
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $3
  i32.store
  local.get $8
  call $~lib/util/number/utoa64
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $3
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
  i32.eqz
  if
   i32.const 8992
   i32.const 6048
   i32.const 676
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $7
   i64.lt_u
   if
    block $for-break0
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/contracts/storage/likesMap
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.set $0
     i32.const 0
     global.set $~argumentsLength
     call $assembly/structs/like/Like#constructor@varargs
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=16
     local.get $0
     local.get $3
     local.get $2
     local.get $5
     call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/like/Like>#get"
     local.tee $3
     i32.store offset=36
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load offset=8
     local.tee $0
     i32.store offset=40
     local.get $0
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=16
     local.get $0
     local.get $4
     call $~lib/string/String.__eq
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $8
      local.get $3
      i64.load offset=16
      i64.eq
     else
      i32.const 0
     end
     if
      local.get $2
      local.set $1
      i32.const 1
      local.set $6
      br $for-break0
     end
     local.get $2
     i64.const 1
     i64.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $6
  i32.eqz
  if
   i32.const 9920
   i32.const 6048
   i32.const 693
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/likesMap
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#delete"
  global.get $~lib/memory/__stack_pointer
  i32.const 10000
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 3
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=52
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/util/number/utoa64
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $0
  i32.const 1
  local.get $4
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $0
  i32.const 2
  local.get $8
  call $~lib/util/number/utoa64
  call $~lib/array/Array<~lib/string/String>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  i32.const 10000
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/getUserLikedPosts (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 68
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $3
  local.get $0
  i32.load
  local.tee $3
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 37
  i32.const 10048
  call $~lib/rt/__newArray
  local.tee $4
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $2
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/likesMap
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $5
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/like/Like#constructor@varargs
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=16
    local.get $5
    local.get $0
    local.get $1
    local.get $6
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/like/Like>#get"
    local.tee $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $5
    i32.store offset=44
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    local.get $5
    local.get $3
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $5
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/contracts/storage/postMap
     local.tee $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=48
     local.get $0
     i64.load offset=16
     call $~lib/util/number/utoa64
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store offset=48
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store offset=52
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store offset=56
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store offset=60
     i32.const 0
     global.set $~argumentsLength
     call $assembly/structs/post/Post#constructor@varargs
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=44
     local.get $5
     local.get $6
     local.get $7
     local.get $0
     call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/post/Post>#get"
     local.tee $0
     i32.store offset=64
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     local.get $4
     local.get $0
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=44
  local.get $0
  local.get $4
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/post/Post>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/array/Array<~lib/string/String>,void>" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $5
    local.get $6
    call $~lib/@massalabs/as-types/assembly/serialization/strings/stringToBytes
    local.tee $6
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=24
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#get:length
    call $~lib/@massalabs/as-types/assembly/serialization/numbers/u32ToBytes
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=20
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $7
    local.get $2
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#get:length
    i32.const 4
    i32.add
    i32.add
    local.set $4
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $4
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getPostLikedUsers (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1792
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 26
  i32.const 10080
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=32
  i64.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $3
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/likesMap
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $5
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/like/Like#constructor@varargs
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=16
    local.get $5
    local.get $4
    local.get $1
    local.get $6
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/like/Like>#get"
    local.tee $4
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $2
    local.get $4
    i64.load offset=16
    i64.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=8
     local.tee $4
     i32.store offset=40
     local.get $4
     call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=16
     local.get $0
     local.get $4
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  local.get $4
  local.get $0
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/array/Array<~lib/string/String>,void>"
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/comment/Comment#constructor (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (param $7 i64) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.const 16
  call $~lib/rt/itcms/__new
  local.tee $8
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $0
  call $assembly/structs/post/Post#set:id
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $1
  call $assembly/structs/comment/Comment#set:postId
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $8
  local.get $2
  call $assembly/structs/profile/Profile#set:bio
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $8
  local.get $3
  call $assembly/structs/profile/Profile#set:country
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $8
  local.get $4
  call $assembly/structs/profile/Profile#set:city
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $8
  local.get $5
  call $assembly/structs/profile/Profile#set:telegram
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $6
  call $assembly/structs/post/Post#set:repostedPostId
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $7
  call $assembly/structs/post/Post#set:createdAt
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $assembly/contracts/main/addPostComment (param $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
<<<<<<< HEAD
  i32.const 132
=======
  i32.const 144
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
<<<<<<< HEAD
  i32.const 132
=======
  i32.const 144
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $4
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.load offset=8
  local.tee $5
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $5
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=8
     local.tee $0
     i32.store offset=20
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    i64.load
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $5
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $6
    i32.store
    local.get $6
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=4
     local.tee $0
     i32.store offset=36
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $4
    local.get $5
    i32.load
    local.tee $4
    i32.store offset=44
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
    local.tee $6
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load offset=4
    local.tee $7
    i32.store
    local.get $7
    call $~lib/string/String.__not
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.load offset=4
     local.tee $0
     i32.store offset=56
     local.get $0
     i32.eqz
     br_if $folding-inner0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $5
    local.get $6
    i32.load
    local.tee $5
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
    local.tee $0
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/postMap
    local.tee $6
    i32.store
    local.get $3
    call $~lib/util/number/utoa64
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=16
    local.get $6
    local.get $7
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
    i32.eqz
    if
     i32.const 8992
     i32.const 6048
     i32.const 786
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/profileMap
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $6
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=56
    local.get $7
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=80
    i32.const 0
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=84
    call $assembly/structs/profile/Profile#constructor@varargs
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=52
    local.get $6
    local.get $5
    local.get $7
    local.get $8
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#get"
    local.tee $5
    i32.store offset=88
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=56
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load
    local.tee $6
    i32.store offset=52
    local.get $6
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=52
    local.get $7
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=16
    local.get $6
    local.get $7
    call $~lib/string/String.__eq
    i32.eqz
    if
     i32.const 8560
     i32.const 6048
     i32.const 790
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 1824
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1824
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
    local.tee $6
<<<<<<< HEAD
    i32.store offset=92
=======
    i32.store offset=72
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/util/string/strtol<i64>
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
<<<<<<< HEAD
    i32.store offset=96
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=100
=======
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $6
    i32.store
    local.get $6
    call $~lib/string/String.__not
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
<<<<<<< HEAD
     i32.store offset=104
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=108
=======
     i32.store offset=84
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=88
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $6
     i32.store
     local.get $6
     call $~lib/string/String.__not
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $0
<<<<<<< HEAD
      i32.store offset=112
=======
      i32.store offset=92
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
      local.get $0
      i32.eqz
      br_if $folding-inner0
      br $folding-inner1
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
<<<<<<< HEAD
     i32.store offset=116
=======
     i32.store offset=96
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i64.load
     local.set $2
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/contracts/storage/commentsMap
     local.tee $0
     i32.store
     local.get $0
     local.get $2
     call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains"
     i32.eqz
     if
      i32.const 10112
      i32.const 6048
<<<<<<< HEAD
      i32.const 801
=======
      i32.const 794
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.set $0
<<<<<<< HEAD
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $6
=======
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=104
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=100
    local.get $5
    call $assembly/contracts/interfaces/IProfile/IProfile#constructor
    local.set $5
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $6
    global.get $~lib/memory/__stack_pointer
<<<<<<< HEAD
    local.get $5
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $7
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    i32.const 8688
    i32.store offset=72
    local.get $7
    i32.const 8688
    call $~lib/string/String.__concat
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=68
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=8
    local.tee $8
    i32.store offset=64
    local.get $7
    local.get $8
    call $~lib/string/String.__concat
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
=======
    local.get $6
    i32.store offset=100
    local.get $6
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=12
    local.tee $5
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=56
    local.get $0
    local.get $5
    local.get $6
    call $assembly/contracts/interfaces/IProfile/IProfile#getProfile
    local.tee $5
    i32.store offset=108
    global.get $~lib/memory/__stack_pointer
    local.set $6
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=128
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.tee $0
    i32.store offset=120
    global.get $~lib/memory/__stack_pointer
    i32.const 8688
    i32.store offset=124
    local.get $0
    i32.const 8688
    call $~lib/string/String.__concat
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=120
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=8
    local.tee $0
    i32.store offset=116
    local.get $8
    local.get $0
    call $~lib/string/String.__concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=12
    local.tee $5
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=104
    local.get $6
    local.get $1
    local.get $3
<<<<<<< HEAD
    local.get $6
    local.get $7
=======
    local.get $7
    local.get $0
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    local.get $5
    local.get $4
    call $~lib/@massalabs/massa-as-sdk/assembly/env/env/env.time
    local.get $2
    call $assembly/structs/comment/Comment#constructor
    local.tee $0
<<<<<<< HEAD
    i32.store offset=120
=======
    i32.store offset=132
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/commentsMap
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    call $~stack_check
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#size"
    i64.const -1
    i64.eq
    if
     i32.const 4352
     i32.const 4416
     i32.const 286
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $1
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_increaseSize"
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $1
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    local.get $0
    call $~lib/@massalabs/as-types/assembly/serializable/Serializable#serialize@override
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $5
    local.get $6
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/staticarray/StaticArray<u8>>
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1824
    i32.store
    local.get $1
    i64.const 1
    i64.add
    call $~lib/util/number/utoa64
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=16
    i32.const 1824
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/set<~lib/string/String>
    global.get $~lib/memory/__stack_pointer
    i32.const 10192
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 6
    i32.const 2
    i32.const 26
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $5
<<<<<<< HEAD
    i32.store offset=124
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    i32.store offset=128
=======
    i32.store offset=136
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    i32.store offset=140
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    local.get $5
    i32.const 0
    local.get $3
    call $~lib/util/number/utoa64
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $5
    i32.const 1
    local.get $1
    call $~lib/util/number/utoa64
    call $~lib/array/Array<~lib/string/String>#__set
    call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
<<<<<<< HEAD
    i32.store offset=56
=======
    i32.store offset=104
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    local.get $5
    i32.const 2
    local.get $6
    call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $5
    i32.const 3
    local.get $4
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $0
<<<<<<< HEAD
    i32.store offset=56
=======
    i32.store offset=104
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    local.get $5
    i32.const 4
    local.get $0
    i64.load offset=32
    call $~lib/util/number/utoa64
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $5
    i32.const 5
    local.get $2
    i64.const 0
    i64.ne
    if (result i32)
     local.get $2
     call $~lib/util/number/utoa64
    else
     i32.const 10240
    end
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/memory/__stack_pointer
    local.get $5
<<<<<<< HEAD
    i32.store offset=52
=======
    i32.store offset=100
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    i32.const 10192
    local.get $5
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/createEvent
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/@massalabs/massa-as-sdk/assembly/std/utils/events/generateEvent
    global.get $~lib/memory/__stack_pointer
<<<<<<< HEAD
    i32.const 132
=======
    i32.const 144
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 2416
   i32.const 2544
   i32.const 70
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2544
  i32.const 70
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/structs/comment/Comment#constructor@varargs (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  block $8of8
   block $5of8
    block $4of8
     block $3of8
      block $2of8
       block $outOfRange
        global.get $~argumentsLength
        br_table $2of8 $2of8 $2of8 $3of8 $4of8 $5of8 $8of8 $8of8 $8of8 $outOfRange
       end
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 1920
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 1920
      call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
      local.tee $0
      i32.store offset=4
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 1920
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=12
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1920
   i32.store offset=16
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=32
  i64.const 0
  i64.const 0
  local.get $0
  i32.const 1920
  i32.const 1920
  i32.const 1920
  i64.const 0
  i64.const 0
  call $assembly/structs/comment/Comment#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/structs/comment/Comment#deserialize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 280
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 280
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6368
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $3
  i32.store offset=8
  block $folding-inner0
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=36
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 10304
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 6368
    i32.store offset=28
    i32.const 10304
    i32.const 0
    i32.const 6368
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10304
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 10304
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10304
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 10304
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/post/Post#set:id
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   i32.const 9632
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 9632
    i32.store offset=64
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=68
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=72
    global.get $~lib/memory/__stack_pointer
    i32.const 10336
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 9632
    i32.store offset=28
    i32.const 10336
    i32.const 0
    i32.const 9632
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10336
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 10336
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10336
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 10336
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=76
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/comment/Comment#set:postId
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   i32.const 10368
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=80
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 10368
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=108
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=112
    global.get $~lib/memory/__stack_pointer
    i32.const 10464
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 10368
    i32.store offset=100
    i32.const 10464
    i32.const 0
    i32.const 10368
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10464
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=100
    i32.const 10464
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10464
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=100
    i32.const 10464
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=116
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=28
   local.get $2
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:bio
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=120
   global.get $~lib/memory/__stack_pointer
   i32.const 10496
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 10496
    i32.store offset=136
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=140
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=144
    global.get $~lib/memory/__stack_pointer
    i32.const 10592
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 10496
    i32.store offset=80
    i32.const 10592
    i32.const 0
    i32.const 10496
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10592
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    i32.const 10592
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10592
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=80
    i32.const 10592
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:telegram
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   i32.const 10624
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 10624
    i32.store offset=168
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=172
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=176
    global.get $~lib/memory/__stack_pointer
    i32.const 10720
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 10624
    i32.store offset=80
    i32.const 10720
    i32.const 0
    i32.const 10624
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10720
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    i32.const 10720
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10720
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=80
    i32.const 10720
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=180
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
<<<<<<< HEAD
   call $assembly/structs/profile/Profile#set:city
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=184
   global.get $~lib/memory/__stack_pointer
   i32.const 10752
   i32.store offset=188
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=192
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=196
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 10752
    i32.store offset=200
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=204
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=208
    global.get $~lib/memory/__stack_pointer
    i32.const 10832
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 10752
    i32.store offset=80
    i32.const 10832
    i32.const 0
    i32.const 10752
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10832
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    i32.const 10832
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10832
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=80
    i32.const 10832
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=212
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:telegram
=======
   i64.load
   call $assembly/structs/post/Post#set:repostedPostId
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   i32.const 7872
   i32.store offset=220
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=228
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 7872
    i32.store offset=232
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=236
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=240
    global.get $~lib/memory/__stack_pointer
    i32.const 10864
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 7872
    i32.store offset=28
    i32.const 10864
    i32.const 0
    i32.const 7872
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10864
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 10864
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10864
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 10864
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/post/Post#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=216
   global.get $~lib/memory/__stack_pointer
   i32.const 10752
   i32.store offset=220
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=224
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=228
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 10752
    i32.store offset=232
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=236
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=240
    global.get $~lib/memory/__stack_pointer
    i32.const 10848
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 10752
    i32.store offset=80
    i32.const 10848
    i32.const 0
    i32.const 10752
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10848
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    i32.const 10848
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10848
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=80
    i32.const 10848
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=244
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:country
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextString
   local.tee $2
   i32.store offset=248
   global.get $~lib/memory/__stack_pointer
   i32.const 10880
   i32.store offset=252
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=256
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=260
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=28
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 10880
    i32.store offset=264
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=268
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=272
    global.get $~lib/memory/__stack_pointer
    i32.const 10976
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 10880
    i32.store offset=80
    i32.const 10976
    i32.const 0
    i32.const 10880
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10976
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=80
    i32.const 10976
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10976
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=80
    i32.const 10976
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $0
   local.get $2
   call $assembly/structs/profile/Profile#set:city
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
   local.tee $2
   i32.store offset=248
   global.get $~lib/memory/__stack_pointer
   i32.const 10896
   i32.store offset=252
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=256
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=260
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 10896
    i32.store offset=264
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.store offset=268
    local.get $0
    i32.eqz
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=272
    global.get $~lib/memory/__stack_pointer
    i32.const 10976
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 10896
    i32.store offset=28
    i32.const 10976
    i32.const 0
    i32.const 10896
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10976
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=28
    i32.const 10976
    i32.const 2
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 10976
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=28
    i32.const 10976
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2544
    i32.const 52
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=276
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i64.load
   call $assembly/structs/post/Post#set:createdAt
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@massalabs/as-types/assembly/argument/Args#get:offset
   call $~lib/@massalabs/as-types/assembly/result/Result<i32>#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 280
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 2416
  i32.const 2544
  i32.const 52
  i32.const 32
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/comment/Comment>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 53
  call $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/comment/Comment> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=8
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $assembly/structs/comment/Comment#constructor@varargs
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call $assembly/structs/comment/Comment#deserialize
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store
  block $folding-inner0 (result i32)
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 5840
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 5808
    i32.store offset=28
    i32.const 5840
    i32.const 5808
    call $~lib/string/String#concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/comment/Comment>#constructor
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $3
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $0
    i32.store offset=40
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $2
   i32.load
   call $~lib/@massalabs/as-types/assembly/argument/Args#set:_offset
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/result/Result<assembly/structs/comment/Comment>#constructor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/comment/Comment>#get" (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains"
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   local.get $1
   call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#_key"
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/staticarray/StaticArray<u8>>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   call $~lib/@massalabs/as-types/assembly/argument/Args#nextSerializable<assembly/structs/comment/Comment>
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/string/String.__not
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=24
    local.get $0
    i32.eqz
    if
     i32.const 2416
     i32.const 2544
     i32.const 70
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2544
    i32.const 70
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/structs/comment/Comment#serialize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.set $1
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=48
  local.get $2
  local.get $0
  i64.load
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=44
  local.get $2
  local.get $0
  i64.load offset=8
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=32
<<<<<<< HEAD
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $3
  i32.store offset=36
  local.get $2
  local.get $3
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $3
  i32.store offset=28
  local.get $2
  local.get $3
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
=======
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=24
  local.tee $3
  i32.store offset=36
  local.get $2
  local.get $3
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=28
  local.tee $3
  i32.store offset=28
  local.get $2
  local.get $3
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  local.get $2
  local.get $0
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  local.get $2
  local.get $0
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=28
  local.tee $3
  i32.store offset=12
  local.get $2
  local.get $3
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
<<<<<<< HEAD
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i64.load offset=32
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
=======
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=24
  local.tee $0
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $0
<<<<<<< HEAD
  i64.load offset=40
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u64,void>"
=======
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<~lib/string/String,void>"
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
  local.tee $0
  i32.store offset=52
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/comment/Comment> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 11008
  call $~lib/rt/__newBuffer
  local.tee $2
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/@massalabs/massa-as-sdk/assembly/std/address/Address>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $6
    local.get $5
    call $assembly/structs/comment/Comment#serialize
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
    local.tee $2
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  call $"~lib/@massalabs/as-types/assembly/argument/Args#add<u32,void>"
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#concat<~lib/staticarray/StaticArray<u8>>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getPostComments (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/postMap
  local.tee $0
  i32.store
  local.get $2
  call $~lib/util/number/utoa64
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $0
  local.get $4
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#contains"
  i32.eqz
  if
   i32.const 8992
   i32.const 6048
<<<<<<< HEAD
   i32.const 847
=======
   i32.const 840
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 52
  i32.const 10272
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=32
  loop $for-loop|0
   local.get $1
   local.get $3
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/commentsMap
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=44
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/comment/Comment#constructor@varargs
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=16
    local.get $5
    local.get $4
    local.get $1
    local.get $6
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/comment/Comment>#get"
    local.tee $4
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $2
    local.get $4
    i64.load offset=8
    i64.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=16
     local.get $0
     local.get $4
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  local.get $4
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/comment/Comment>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/getCommentReplies (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.store
  local.get $4
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/commentsMap
  local.tee $0
  i32.store
  local.get $0
  local.get $2
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains"
  i32.eqz
  if
   i32.const 11040
   i32.const 6048
<<<<<<< HEAD
   i32.const 881
=======
   i32.const 874
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 52
  i32.const 11104
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=32
  loop $for-loop|0
   local.get $1
   local.get $3
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/commentsMap
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=44
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/comment/Comment#constructor@varargs
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=16
    local.get $5
    local.get $4
    local.get $1
    local.get $6
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/comment/Comment>#get"
    local.tee $4
    i32.store offset=48
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $2
    local.get $4
    i64.load offset=40
    i64.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=16
     local.get $0
     local.get $4
     call $~lib/array/Array<~lib/string/String>#push
    end
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=36
  local.get $4
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/comment/Comment>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/contracts/main/removeComment (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#nextU64
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store
  local.get $2
  call $~lib/string/String.__not
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.eqz
   if
    i32.const 2416
    i32.const 2544
    i32.const 70
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2544
   i32.const 70
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i64.load
  local.set $1
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/commentsMap
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#contains"
  i32.eqz
  if
   i32.const 11040
   i32.const 6048
<<<<<<< HEAD
   i32.const 910
=======
   i32.const 903
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/commentsMap
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 1920
  i32.store offset=36
  i32.const 0
  global.set $~argumentsLength
  call $assembly/structs/comment/Comment#constructor@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $2
  local.get $0
  local.get $1
  local.get $3
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/comment/Comment>#get"
  local.tee $0
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.store offset=28
  local.get $2
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  call $~lib/@massalabs/massa-as-sdk/assembly/std/context/caller
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=28
  local.get $3
  call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $2
  local.get $3
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $0
   i32.store offset=28
   local.get $0
   call $~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1632
   i32.store offset=28
   i32.const 1632
   call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $0
   local.get $2
   call $~lib/string/String.__eq
  end
  i32.eqz
  if
   i32.const 11136
   i32.const 6048
<<<<<<< HEAD
   i32.const 914
=======
   i32.const 907
>>>>>>> 1481f39bb36134921f940197aea2dc71d995abc4
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/contracts/storage/commentsMap
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/follow/Follow>#delete"
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/contracts/main/getAllComments (result i32)
  (local $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1824
  call $~lib/@massalabs/massa-as-sdk/assembly/std/storage/get<~lib/string/String>
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/string/strtol<i64>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 52
  i32.const 11264
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=8
  loop $for-loop|0
   local.get $1
   local.get $2
   i64.lt_u
   if
    global.get $~lib/memory/__stack_pointer
    global.get $assembly/contracts/storage/commentsMap
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    i32.const 1920
    i32.store offset=24
    i32.const 0
    global.set $~argumentsLength
    call $assembly/structs/comment/Comment#constructor@varargs
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    local.get $0
    local.get $4
    local.get $1
    local.get $5
    call $"assembly/libraries/PersistentMap/PersistentMap<u64,assembly/structs/comment/Comment>#get"
    local.tee $0
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $0
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i64.const 1
    i64.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  call $~lib/@massalabs/as-types/assembly/argument/Args#constructor@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $0
  local.get $3
  call $~lib/@massalabs/as-types/assembly/argument/Args#addSerializableObjectArray<assembly/structs/comment/Comment>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@massalabs/as-types/assembly/argument/Args#serialize
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<u8>#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 1
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $3
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $2
  local.get $3
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 2800
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $5
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $6
       i32.or
       i32.store16
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $3
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $5
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        local.get $3
        i32.or
        local.set $3
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $5
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $3
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $3
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $3
        i32.store16
       else
        local.get $1
        local.get $3
        i32.const 65536
        i32.sub
        local.tee $3
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $3
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $1
      local.get $5
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
  local.get $1
  local.get $2
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i64.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 4704
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $1
   call $~lib/util/number/decimalCount32
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $1
   local.get $3
   call $~lib/util/number/utoa_dec_simple<u32>
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i64.const 100000000000
   i64.ge_u
   i32.const 10
   i32.add
   local.get $0
   i64.const 10000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000
   i64.ge_u
   i32.const 13
   i32.add
   local.get $0
   i64.const 10000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 10000000000000000
   i64.ge_u
   i32.const 16
   i32.add
   local.get $0
   i64.const -8446744073709551616
   i64.ge_u
   i32.const 18
   i32.add
   local.get $0
   i64.const 1000000000000000000
   i64.ge_u
   i32.add
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   select
   local.get $0
   i64.const 1000000000000000
   i64.lt_u
   select
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   loop $do-loop|0
    local.get $2
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i64.const 10
    i64.rem_u
    i32.wrap_i64
    i32.const 48
    i32.add
    i32.store16
    local.get $0
    i64.const 10
    i64.div_u
    local.tee $0
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:assembly/contracts/main/constructor (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/transferOwnership (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/transferOwnership
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/getProfile (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getProfile
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/updateProfile (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/updateProfile
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/getFollowedProfilesLastPosts (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getFollowedProfilesLastPosts
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getFollowedProfiles (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getFollowedProfiles
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/followProfile (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/followProfile
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/unfollowProfile (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/unfollowProfile
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/getAllUserFollowers (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getAllUserFollowers
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getAllUserFollowings (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getAllUserFollowings
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/createPost (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/createPost
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/updatePost (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/updatePost
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/deletePost (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/deletePost
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/getPosts (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getPosts
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getUserPosts (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getUserPosts
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getPost (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getPost
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getUserRepostedPosts (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getUserRepostedPosts
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/likePost (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/likePost
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/unlikePost (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/unlikePost
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/getUserLikedPosts (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getUserLikedPosts
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getPostLikedUsers (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getPostLikedUsers
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/addPostComment (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/addPostComment
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/contracts/main/getPostComments (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getPostComments
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/getCommentReplies (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/getCommentReplies
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/contracts/main/removeComment (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/contracts/main/removeComment
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $byn$mgfn-shared$~lib/@massalabs/as-types/assembly/result/Result<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/@massalabs/as-types/assembly/argument/Args#set:serialized
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $byn$mgfn-shared$~lib/@massalabs/massa-as-sdk/assembly/std/address/Address#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $"assembly/libraries/PersistentMap/PersistentMap<~lib/string/String,assembly/structs/profile/Profile>#set:_elementPrefix"
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
