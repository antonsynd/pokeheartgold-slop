#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223A578
	.public ov70_02245084
	.public ov70_02245910
	.public ov70_0224649C

	.text

	thumb_func_start ov70_0223A578
ov70_0223A578: ; 0x0223A578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r1, [sp, #8]
	mov r0, #0x16
	mov r1, #0x3d
	add r7, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x54]
	bl String_New
	str r0, [sp, #0x1c]
	mov r0, #0x12
	mov r1, #0x3d
	bl String_New
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x1c]
	mov r1, #0x77
	bl GetBoxMonData
	mov r2, #0
	ldrsh r0, [r4, r2]
	mov r1, #6
	str r0, [sp, #0x10]
	mov r0, #2
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x14]
	mov r0, #3
	ldrsb r4, [r4, r0]
	ldr r0, [sp, #0x50]
	bl GetBoxMonData
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #0x49
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r2, _0223A71C ; =ov70_02245910
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r2, r1]
	bl NewString_ReadMsgData
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #0x6a
	bl NewString_ReadMsgData
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r1, #3
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	add r3, r1, #0
	bl BufferIntegerAsString
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x6b
	mov r3, #0x3d
	bl ReadMsgData_ExpandPlaceholders
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	bl NewString_ReadMsgData
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x34]
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x18]
	lsr r1, r1, #0x10
	mov r2, #0x3d
	bl GetItemNameIntoString
	add r0, r5, #0
	mov r1, #0x3b
	bl NewString_ReadMsgData
	mov r4, #0
	str r0, [sp, #0x20]
	add r5, r6, #0
	add r7, r4, #0
_0223A630:
	add r0, r5, #0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _0223A630
	mov r2, #0
	ldr r0, _0223A720 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	ldr r0, [sp, #0x14]
	cmp r0, #3
	beq _0223A66E
	mov r3, #0
	ldr r1, _0223A724 ; =ov70_0224649C
	ldr r0, [sp, #0xc]
	str r3, [sp]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x30]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x40
	bl ov70_02245084
_0223A66E:
	mov r2, #0
	ldr r0, _0223A720 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x34]
	add r0, #0x10
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A720 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x2c]
	add r0, #0x20
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A720 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x28]
	add r0, #0x30
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A728 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x40
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A720 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x18]
	add r0, #0x50
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223A728 ; =0x000F0200
	str r2, [sp]
	add r6, #0x60
	str r0, [sp, #4]
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	ldr r0, [sp, #0x24]
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl String_Delete
	ldr r0, [sp, #0x2c]
	bl String_Delete
	ldr r0, [sp, #0x28]
	bl String_Delete
	ldr r0, [sp, #0x30]
	bl String_Delete
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x34]
	bl String_Delete
	ldr r0, [sp, #0x20]
	bl String_Delete
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0223A71C: .word ov70_02245910
_0223A720: .word 0x00010200
_0223A724: .word ov70_0224649C
_0223A728: .word 0x000F0200
	thumb_func_end ov70_0223A578

