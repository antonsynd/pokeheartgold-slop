#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EE80
	.public ov45_0222EEB8
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222EE80
ov45_0222EE80: ; 0x0222EE80
	push {r3, lr}
	ldr r0, _0222EEB4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EE8E
	bl GF_AssertFail
_0222EE8E:
	ldr r0, _0222EEB4 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x61
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	pop {r3, pc}
	.balign 4, 0
_0222EEB4: .word _022577C0
	thumb_func_end ov45_0222EE80

	thumb_func_start ov45_0222EEB8
ov45_0222EEB8: ; 0x0222EEB8
	push {r3, lr}
	ldr r0, _0222EEEC ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EEC6
	bl GF_AssertFail
_0222EEC6:
	ldr r0, _0222EEEC ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	pop {r3, pc}
	.balign 4, 0
_0222EEEC: .word _022577C0
	thumb_func_end ov45_0222EEB8

