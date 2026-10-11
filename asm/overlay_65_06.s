#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221C414
	.public ov65_0221FB4C

	.text

	thumb_func_start ov65_0221C414
ov65_0221C414: ; 0x0221C414
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, r3, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r6, [sp, #0x28]
	mov r4, #0
	bl Party_GetCount
	cmp r0, #0
	ble _0221C466
	add r7, r6, #1
_0221C430:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r7, r4
	mov r3, #0x1a
	bl ReadMsgData_ExpandPlaceholders
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #8
	mov r3, #0
	bl ov65_0221FB4C
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x10]
	add r5, #0x10
	add r4, r4, #1
	bl Party_GetCount
	cmp r4, r0
	blt _0221C430
_0221C466:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov65_0221C414

