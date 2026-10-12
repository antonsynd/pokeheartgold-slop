#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F324
	.public ov70_0223F370
	.extern ov70_0223F2A0
	.extern ov70_0223F38C
	.extern ov70_02245910

	.text

	.text
	thumb_func_start ov70_0223F324
ov70_0223F324: ; 0x0223F324
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r2, #0
	cmp r3, #0
	bne _0223F334
	cmp r5, #3
	beq _0223F368
_0223F334:
	add r0, r1, #0
	ldr r1, _0223F36C ; =ov70_02245910
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ov70_0223F2A0
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r1, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	add r0, r6, #0
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
_0223F368:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223F36C: .word ov70_02245910
	thumb_func_end ov70_0223F324

	thumb_func_start ov70_0223F370
ov70_0223F370: ; 0x0223F370
	push {r4, lr}
	sub sp, #0x10
	mov r4, #0
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl ov70_0223F38C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov70_0223F370

