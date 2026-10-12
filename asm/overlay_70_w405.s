#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022450B8
	.public ov70_022450EC
	.extern ov70_02245018
	.extern ov70_02245084
	.extern ov70_0224600C

	.text

	.text
	thumb_func_start ov70_022450B8
ov70_022450B8: ; 0x022450B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov70_02245018
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #4
	add r2, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_022450B8

	thumb_func_start ov70_022450EC
ov70_022450EC: ; 0x022450EC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	ldr r1, _0224511C ; =ov70_0224600C
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r2, #0
	ldr r0, _02245120 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_02245084
	add r0, r4, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0224511C: .word ov70_0224600C
_02245120: .word 0x00010200
	thumb_func_end ov70_022450EC

