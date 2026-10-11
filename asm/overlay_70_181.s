#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F244
	.public ov70_0223F2A0
	.public ov70_0223F2BC
	.public ov70_0223F324
	.public ov70_0223F370
	.public ov70_0223F38C
	.public ov70_02245084
	.public ov70_02245910
	.public ov70_022465EC

	.text

	thumb_func_start ov70_0223F244
ov70_0223F244: ; 0x0223F244
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r3, #0
	beq _0223F276
	add r0, r1, #0
	add r1, r3, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov70_02245084
	add r0, r5, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
_0223F276:
	add r0, r2, #0
	mov r1, #0xad
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov70_02245084
	add r0, r5, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_0223F244

	thumb_func_start ov70_0223F2A0
ov70_0223F2A0: ; 0x0223F2A0
	cmp r0, #1
	bne _0223F2AA
	ldr r0, _0223F2B8 ; =ov70_022465EC
	ldr r0, [r0]
	bx lr
_0223F2AA:
	cmp r0, #2
	bne _0223F2B2
	ldr r0, _0223F2B8 ; =ov70_022465EC
	ldr r1, [r0, #4]
_0223F2B2:
	add r0, r1, #0
	bx lr
	nop
_0223F2B8: .word ov70_022465EC
	thumb_func_end ov70_0223F2A0

	thumb_func_start ov70_0223F2BC
ov70_0223F2BC: ; 0x0223F2BC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r2, #0
	cmp r3, #0
	bne _0223F2CC
	cmp r5, #3
	beq _0223F31C
_0223F2CC:
	add r0, r1, #0
	ldr r1, _0223F320 ; =ov70_02245910
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #3
	ble _0223F2FC
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov70_0223F2A0
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02245084
	b _0223F316
_0223F2FC:
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov70_0223F2A0
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02245084
_0223F316:
	add r0, r4, #0
	bl String_Delete
_0223F31C:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223F320: .word ov70_02245910
	thumb_func_end ov70_0223F2BC

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

