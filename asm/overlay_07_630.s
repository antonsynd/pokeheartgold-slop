	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02232AFC
	.extern ov07_02232608
	.extern ov07_02232AC0
	.extern ov07_02232C64
	.extern ov07_02234530

	.text

	.text
	thumb_func_start ov07_02232AFC
ov07_02232AFC: ; 0x02232AFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x94
	ldr r0, [r0]
	add r7, r1, #0
	cmp r0, #0
	bne _02232B3A
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0]
	bl ov07_02232608
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _02232B2E
_02232B1C:
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_02015494
	add r4, r4, #1
	cmp r4, r5
	blt _02232B1C
_02232B2E:
	mov r1, #1
	str r1, [r6, #0x5c]
	ldr r0, [r6, #0x14]
	bl sub_02015528
	pop {r3, r4, r5, r6, r7, pc}
_02232B3A:
	ldr r0, [r6, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _02232BA0
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x5c
	add r5, r6, #0
	str r0, [sp]
_02232B4C:
	ldr r0, [r6]
	mov r1, #0x1c
	bl Heap_Alloc
	add r4, r0, #0
	bne _02232B5C
	bl GF_AssertFail
_02232B5C:
	str r7, [r4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldr r0, _02232BA4 ; =ov07_02232C64
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r5, #0x5c]
	ldr r0, [sp]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _02232B7E
	bl GF_AssertFail
_02232B7E:
	ldr r0, [r4, #0x14]
	bl ov07_02234530
	str r0, [r4, #4]
	ldr r0, _02232BA8 ; =ov07_02232AC0
	ldr r2, _02232BAC ; =0x000003E9
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [r6, #0x10]
	add r5, r5, #4
	cmp r7, r0
	blt _02232B4C
_02232BA0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232BA4: .word ov07_02232C64
_02232BA8: .word ov07_02232AC0
_02232BAC: .word 0x000003E9
	thumb_func_end ov07_02232AFC

