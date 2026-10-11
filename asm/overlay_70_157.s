#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E690
	.public ov70_0223F6E4

	.text

	thumb_func_start ov70_0223E690
ov70_0223E690: ; 0x0223E690
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x49
	add r5, r1, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	add r1, sp, #0
	strh r0, [r1, #6]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x6f
	mov r2, #0
	bl GetBoxMonData
	add r1, r0, #1
	add r0, sp, #0
	strb r1, [r0, #8]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl CalcBoxMonLevel
	add r1, sp, #0
	strb r0, [r1, #9]
	add r0, r4, #0
	ldrh r2, [r1, #6]
	add r0, #0xec
	strh r2, [r0]
	add r0, r4, #0
	ldrh r1, [r1, #8]
	add r0, #0xee
	strh r1, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov70_0223F6E4
	mov r0, #0x26
	lsl r0, r0, #4
	add r2, r5, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, #8
	mul r0, r1
	add r0, r2, r0
	bl Mon_GetBoxMon
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl GetBoxMonData
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl GetBoxMonData
	add r0, r0, #1
	add r1, sp, #0
	strb r0, [r1, #2]
	mov r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	add r0, r4, #0
	ldrh r2, [r1]
	add r0, #0xf0
	strh r2, [r0]
	add r0, r4, #0
	ldrh r2, [r1, #2]
	add r0, #0xf2
	add r4, #0xf4
	strh r2, [r0]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov70_0223E690

