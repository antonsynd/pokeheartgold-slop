#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public _02246800
	.public ov70_02237F38
	.public ov70_02237F58
	.public ov70_02237F64
	.public ov70_02237FB4
	.public ov70_02238008
	.public ov70_02238058
	.public ov70_022380A8
	.public ov70_022380EC
	.public ov70_02238360
	.public ov70_022460A0
	.public ov70_022460EC
	.public ov70_0224613C
	.public ov70_02246184
	.public ov70_022461D0
	.public ov70_0224621C
	.public ov70_0224680C
	.public ov70_02246814
	.public ov70_02246900
	.public ov70_0224693C

	.text

	thumb_func_start ov70_02237F38
ov70_02237F38: ; 0x02237F38
	ldr r1, _02237F54 ; =_02246800
	ldr r0, [r1]
	cmp r0, #1
	beq _02237F46
	cmp r0, #0x18
	beq _02237F4A
	b _02237F50
_02237F46:
	mov r0, #1
	bx lr
_02237F4A:
	mov r0, #1
	str r0, [r1]
	bx lr
_02237F50:
	mov r0, #0
	bx lr
	.balign 4, 0
_02237F54: .word _02246800
	thumb_func_end ov70_02237F38

	thumb_func_start ov70_02237F58
ov70_02237F58: ; 0x02237F58
	ldr r0, _02237F60 ; =_02246800
	ldr r0, [r0, #4]
	bx lr
	nop
_02237F60: .word _02246800
	thumb_func_end ov70_02237F58

	thumb_func_start ov70_02237F64
ov70_02237F64: ; 0x02237F64
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0x49
	ldr r0, _02237FA4 ; =ov70_02246814
	lsl r2, r2, #2
	bl memcpy
	bl ov38_0221BE84
	mov r0, #2
	str r0, [sp]
	mov r2, #0x49
	ldr r0, _02237FA8 ; =ov70_022460A0
	ldr r1, _02237FA4 ; =ov70_02246814
	ldr r3, _02237FAC ; =ov70_0224693C
	lsl r2, r2, #2
	bl ov70_02238360
	cmp r0, #0
	beq _02237F94
	ldr r0, _02237FB0 ; =_02246800
	mov r1, #2
	str r1, [r0]
	pop {r3, pc}
_02237F94:
	ldr r0, _02237FB0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
	.balign 4, 0
_02237FA4: .word ov70_02246814
_02237FA8: .word ov70_022460A0
_02237FAC: .word ov70_0224693C
_02237FB0: .word _02246800
	thumb_func_end ov70_02237F64

	thumb_func_start ov70_02237FB4
ov70_02237FB4: ; 0x02237FB4
	push {r3, lr}
	ldr r0, _02237FF4 ; =ov70_0224680C
	ldr r2, _02237FF8 ; =ov70_02246814
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [r2]
	str r0, [r2, #4]
	bl ov38_0221BE84
	mov r0, #2
	str r0, [sp]
	ldr r0, _02237FFC ; =ov70_022460EC
	ldr r1, _02237FF8 ; =ov70_02246814
	ldr r3, _02238000 ; =ov70_0224693C
	mov r2, #8
	bl ov70_02238360
	cmp r0, #0
	beq _02237FE2
	ldr r0, _02238004 ; =_02246800
	mov r1, #4
	str r1, [r0]
	pop {r3, pc}
_02237FE2:
	ldr r0, _02238004 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
	nop
_02237FF4: .word ov70_0224680C
_02237FF8: .word ov70_02246814
_02237FFC: .word ov70_022460EC
_02238000: .word ov70_0224693C
_02238004: .word _02246800
	thumb_func_end ov70_02237FB4

	thumb_func_start ov70_02238008
ov70_02238008: ; 0x02238008
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _02238048 ; =ov70_02246900
	str r4, [r0, #0x40]
	bl ov38_0221BE84
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, _0223804C ; =ov70_0224613C
	ldr r1, _02238050 ; =ov70_02246814
	mov r2, #0
	add r3, r4, #0
	bl ov70_02238360
	cmp r0, #0
	beq _02238036
	ldr r0, _02238054 ; =_02246800
	mov r1, #6
	str r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
_02238036:
	ldr r0, _02238054 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02238048: .word ov70_02246900
_0223804C: .word ov70_0224613C
_02238050: .word ov70_02246814
_02238054: .word _02246800
	thumb_func_end ov70_02238008

	thumb_func_start ov70_02238058
ov70_02238058: ; 0x02238058
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _02238098 ; =ov70_02246900
	str r4, [r0, #0x40]
	bl ov38_0221BE84
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp]
	ldr r0, _0223809C ; =ov70_02246184
	ldr r1, _022380A0 ; =ov70_02246814
	mov r2, #0
	add r3, r4, #0
	bl ov70_02238360
	cmp r0, #0
	beq _02238086
	ldr r0, _022380A4 ; =_02246800
	mov r1, #8
	str r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
_02238086:
	ldr r0, _022380A4 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02238098: .word ov70_02246900
_0223809C: .word ov70_02246184
_022380A0: .word ov70_02246814
_022380A4: .word _02246800
	thumb_func_end ov70_02238058

	thumb_func_start ov70_022380A8
ov70_022380A8: ; 0x022380A8
	push {r3, lr}
	bl ov38_0221BE84
	mov r0, #2
	str r0, [sp]
	ldr r0, _022380DC ; =ov70_022461D0
	ldr r1, _022380E0 ; =ov70_02246814
	ldr r3, _022380E4 ; =ov70_0224693C
	mov r2, #0
	bl ov70_02238360
	cmp r0, #0
	beq _022380CA
	ldr r0, _022380E8 ; =_02246800
	mov r1, #0xa
	str r1, [r0]
	pop {r3, pc}
_022380CA:
	ldr r0, _022380E8 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
	nop
_022380DC: .word ov70_022461D0
_022380E0: .word ov70_02246814
_022380E4: .word ov70_0224693C
_022380E8: .word _02246800
	thumb_func_end ov70_022380A8

	thumb_func_start ov70_022380EC
ov70_022380EC: ; 0x022380EC
	push {r3, lr}
	bl ov38_0221BE84
	mov r0, #2
	str r0, [sp]
	ldr r0, _02238120 ; =ov70_0224621C
	ldr r1, _02238124 ; =ov70_02246814
	ldr r3, _02238128 ; =ov70_0224693C
	mov r2, #0
	bl ov70_02238360
	cmp r0, #0
	beq _0223810E
	ldr r0, _0223812C ; =_02246800
	mov r1, #0xc
	str r1, [r0]
	pop {r3, pc}
_0223810E:
	ldr r0, _0223812C ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
	nop
_02238120: .word ov70_0224621C
_02238124: .word ov70_02246814
_02238128: .word ov70_0224693C
_0223812C: .word _02246800
	thumb_func_end ov70_022380EC

