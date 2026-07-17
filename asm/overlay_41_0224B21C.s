	.include "asm/macros.inc"
	.include "overlay_41_0224B21C.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_0224B21C
ov41_0224B21C: ; 0x0224B21C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r4, r1, #0
	cmp r0, #0
	beq _0224B22C
	bl SysTask_Destroy
_0224B22C:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0224B236
	bl SysTask_Destroy
_0224B236:
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_0224B084
	ldr r0, [r5, #0x18]
	bl ov41_0224AD84
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x94
	bl memset
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224B21C

	thumb_func_start ov41_0224B250
ov41_0224B250: ; 0x0224B250
	push {r4, lr}
	add r4, r0, #0
	bl ov41_0224B310
	add r0, r4, #0
	bl ov41_0224B270
	add r0, r4, #0
	bl ov41_0224B298
	add r4, #0x30
	add r0, r4, #0
	bl ov41_0224B450
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B250

	thumb_func_start ov41_0224B270
ov41_0224B270: ; 0x0224B270
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	ldr r2, [r1]
	ldr r1, [r0, #0x1c]
	cmp r1, r2
	beq _0224B290
	str r2, [r0, #0x1c]
	cmp r2, #0xa
	bgt _0224B290
	add r1, r0, #0
	add r1, #0x30
	bl ov41_0224B374
	ldr r0, _0224B294 ; =0x00000682
	bl PlaySE
_0224B290:
	pop {r3, pc}
	nop
_0224B294: .word 0x00000682
	thumb_func_end ov41_0224B270

	thumb_func_start ov41_0224B298
ov41_0224B298: ; 0x0224B298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r1, #1
	str r0, [sp]
	mov r0, #0xa
	add r4, r1, #0
	mul r4, r0
	mov r7, #0
	add r5, r6, #0
_0224B2AE:
	ldr r0, [sp]
	add r1, r4, #0
	bl _s32_div_f
	str r0, [sp, #4]
	cmp r0, #0xa
	ble _0224B2C0
	bl GF_AssertFail
_0224B2C0:
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #4]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	mul r1, r4
	sub r0, r0, r1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _0224B302
	ldr r0, [r6, #0x1c]
	cmp r0, #0xa
	bgt _0224B302
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl Sprite_SetPalIndexRespectVramOffset
	cmp r7, #1
	bne _0224B302
	add r1, r6, #0
	add r1, #0x90
	mov r0, #1
	str r0, [r1]
_0224B302:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _0224B2AE
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B298

	thumb_func_start ov41_0224B310
ov41_0224B310: ; 0x0224B310
	ldr r1, [r0, #0x20]
	sub r1, r1, #1
	bmi _0224B318
	str r1, [r0, #0x20]
_0224B318:
	bx lr
	.balign 4, 0
	thumb_func_end ov41_0224B310

	thumb_func_start ov41_0224B31C
ov41_0224B31C: ; 0x0224B31C
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov41_0224B31C

	thumb_func_start ov41_0224B32C
ov41_0224B32C: ; 0x0224B32C
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _0224B36C
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0224B36C:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B32C

	thumb_func_start ov41_0224B374
ov41_0224B374: ; 0x0224B374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x3a
	mov r0, #2
	lsl r1, r1, #0xc
	lsl r0, r0, #0x14
	ldr r4, [sp, #4]
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	ldr r6, [sp]
	mov r7, #0
	mov r5, #0x67
	str r0, [sp, #8]
_0224B396:
	ldr r0, [r6, #0x10]
	mov r1, #2
	str r0, [r4, #4]
	bl Sprite_SetAffineOverwriteMode
	ldr r2, [sp, #8]
	str r5, [sp, #0xc]
	lsl r0, r5, #0xc
	add r2, #0xc
	add r3, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	str r2, [sp, #8]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r7, r7, #1
	str r0, [r2]
	add r6, r6, #4
	add r4, r4, #4
	add r5, #0x18
	cmp r7, #2
	blt _0224B396
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	mov r0, #0xa
	sub r0, r0, r1
	cmp r0, #0
	ble _0224B3F0
	lsl r0, r0, #0xc
	ldr r2, _0224B44C ; =0x00000266
	asr r1, r0, #0x1f
	mov r3, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	lsl r0, r2, #1
	add r4, r1, r0
	b _0224B3F4
_0224B3F0:
	mov r4, #1
	lsl r4, r4, #0xc
_0224B3F4:
	ldr r0, [sp, #4]
	mov r2, #1
	add r0, #0x24
	add r1, r4, #0
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl ov41_0224B31C
	mov r2, #6
	asr r1, r4, #0x1f
	add r0, r4, #0
	lsl r2, r2, #0xe
	mov r3, #0
	bl _ll_mul
	mov r3, #2
	mov r2, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	mov r0, #6
	lsl r0, r0, #0xe
	sub r4, r1, r0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r0, #0x38
	mov r3, #0x10
	bl ov41_0224B31C
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r0, #0x4c
	mov r2, #0
	mov r3, #0x10
	bl ov41_0224B31C
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224B44C: .word 0x00000266
	thumb_func_end ov41_0224B374

	thumb_func_start ov41_0224B450
ov41_0224B450: ; 0x0224B450
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0224B4E2
	add r0, r5, #0
	add r0, #0x24
	bl ov41_0224B32C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov41_0224B32C
	add r0, r5, #0
	add r0, #0x4c
	bl ov41_0224B32C
	ldr r0, [r5, #0x24]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl Sprite_SetAffineScale
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl Sprite_SetAffineScale
	add r6, r5, #0
	add r6, #0xc
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r1, [sp]
	ldr r0, [r5, #0x38]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl Sprite_SetMatrix
	add r6, r5, #0
	add r6, #0x18
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	add r1, r2, #0
	bl Sprite_SetMatrix
	cmp r4, #0
	beq _0224B4E2
	mov r0, #0
	str r0, [r5]
_0224B4E2:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B450

	thumb_func_start ov41_0224B4E8
ov41_0224B4E8: ; 0x0224B4E8
	push {r3, lr}
	sub sp, #0x10
	add r3, r1, #0
	stmia r0!, {r1}
	add r3, #0x48
	str r3, [sp]
	ldr r1, [r1, #0x74]
	lsl r1, r1, #2
	add r1, #0x89
	str r1, [sp, #4]
	mov r1, #0x10
	str r1, [sp, #8]
	add r1, sp, #0
	str r2, [sp, #0xc]
	bl ov41_02249CE0
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov41_0224B4E8

	thumb_func_start ov41_0224B50C
ov41_0224B50C: ; 0x0224B50C
	ldr r3, _0224B514 ; =ov41_02249CF8
	add r0, r0, #4
	mov r1, #1
	bx r3
	.balign 4, 0
_0224B514: .word ov41_02249CF8
	thumb_func_end ov41_0224B50C

	thumb_func_start ov41_0224B518
ov41_0224B518: ; 0x0224B518
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ov41_02249D60
	mov r1, #0x1c
	mov r0, #0
_0224B526:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0224B526
	pop {r4, pc}
	thumb_func_end ov41_0224B518

	thumb_func_start ov41_0224B530
ov41_0224B530: ; 0x0224B530
	push {r3, r4, lr}
	sub sp, #0x6c
	add r2, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r2, #0
	bl ov41_0224B8DC
	add r0, sp, #0
	add r1, r4, #0
	bl ov41_0224B8F0
	add r0, sp, #0
	bl ov41_0224B630
	add sp, #0x6c
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B530

	thumb_func_start ov41_0224B554
ov41_0224B554: ; 0x0224B554
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0224B56A
	sub r0, #0x48
	add r0, r4, r0
	bl ov41_0224B50C
_0224B56A:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0224B57A
	add r0, r4, #0
	bl ov41_0224B720
_0224B57A:
	pop {r4, pc}
	thumb_func_end ov41_0224B554

	thumb_func_start ov41_0224B57C
ov41_0224B57C: ; 0x0224B57C
	push {r4, lr}
	mov r1, #0x26
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0224B58E
	bl ov41_0224B878
_0224B58E:
	add r0, r4, #0
	bl ov41_0224B85C
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov41_02245ECC
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov41_022499DC
	add r0, r4, #0
	bl ov41_0224B754
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B57C

	thumb_func_start ov41_0224B5C8
ov41_0224B5C8: ; 0x0224B5C8
	ldr r3, _0224B5CC ; =ov41_022465CC
	bx r3
	.balign 4, 0
_0224B5CC: .word ov41_022465CC
	thumb_func_end ov41_0224B5C8

	thumb_func_start ov41_0224B5D0
ov41_0224B5D0: ; 0x0224B5D0
	mov r2, #0x99
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov41_0224B5D0

	thumb_func_start ov41_0224B5D8
ov41_0224B5D8: ; 0x0224B5D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	mov r2, #0x19
	add r4, r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	add r1, r2, #0
	add r0, r5, r2
	str r6, [sp]
	add r1, #0xac
	add r2, #0xb0
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r3, r4, #0
	bl ov41_02248120
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224B620
	mov r3, #0x88
	ldr r0, [r5, #0x40]
	mov r1, #2
	mov r2, #0
	sub r3, r3, r4
	bl BgSetPosTextAndCommit
	mov r3, #0x10
	ldr r0, [r5, #0x40]
	mov r1, #2
	mov r2, #3
	sub r3, r3, r6
	bl BgSetPosTextAndCommit
_0224B620:
	mov r0, #0x8f
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B5D8

	thumb_func_start ov41_0224B630
ov41_0224B630: ; 0x0224B630
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x9a
	ldr r0, [r5, #0x68]
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0x9a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	mov r0, #0x8e
	ldr r1, [r5, #0x68]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x68]
	bl AllocMonZeroed
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5]
	ldr r1, [r4, r1]
	bl sub_0202BEF4
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0224B6CC
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x68]
	add r0, r4, #0
	bl ov41_02246544
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r5, #0x68]
	add r0, r4, r0
	mov r1, #0x15
	bl ov41_022499B4
	ldr r1, [r5, #0x68]
	mov r0, #0x14
	bl ov41_02245EA0
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0224B780
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0224B848
	mov r1, #0x86
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x88
	ldr r2, [r5, #0x68]
	add r1, r4, r1
	bl ov41_0224B4E8
	mov r0, #0x26
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0224B888
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224B630

	thumb_func_start ov41_0224B6CC
ov41_0224B6CC: ; 0x0224B6CC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	add r5, r0, #0
	mov r0, #0x1a
	bl NARC_New
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _0224B71C ; =0x000002CE
	add r1, sp, #0
	str r0, [sp]
	mov r0, #0x76
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	ldr r0, [r4, #0x68]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	add r0, r5, #0
	bl ov41_02246518
	ldr r3, [r4, #0x68]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, r4, #0
	bl ov41_0224B938
	add r0, r5, #0
	add r1, sp, #0x10
	bl ov41_02246250
	add r0, sp, #0x10
	bl ov41_022463D4
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0224B71C: .word 0x000002CE
	thumb_func_end ov41_0224B6CC

	thumb_func_start ov41_0224B720
ov41_0224B720: ; 0x0224B720
	push {r3, r4, lr}
	sub sp, #4
	mov r3, #0x25
	lsl r3, r3, #4
	add r1, r0, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	ldr r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xc
	ldr r1, [r0, r1]
	add r1, r2, r1
	add r2, r3, #0
	sub r2, #0x10
	ldr r4, [r0, r2]
	add r2, r3, #0
	sub r2, #8
	sub r3, r3, #4
	ldr r2, [r0, r2]
	ldrh r3, [r0, r3]
	add r2, r4, r2
	bl ov41_022465D8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov41_0224B720

	thumb_func_start ov41_0224B754
ov41_0224B754: ; 0x0224B754
	push {r4, lr}
	add r4, r0, #0
	bl ov41_0224626C
	add r0, r4, #0
	bl ov41_02246594
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224B772
	add r0, r4, #0
	bl ov41_022465C0
_0224B772:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl NARC_Delete
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B754

	thumb_func_start ov41_0224B780
ov41_0224B780: ; 0x0224B780
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	add r2, sp, #0x28
	mov r0, #0
	add r7, r1, #0
	add r3, r2, #0
	add r1, r0, #0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	str r0, [r3]
	ldr r0, [r5]
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x3c]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x40]
	add r1, r0, #0
	sub r1, #8
	add r1, r5, r1
	str r1, [sp, #0x44]
	mov r1, #0x15
	add r0, r0, #4
	str r1, [sp, #0x48]
	add r0, r5, r0
	add r1, r2, #0
	bl ov41_02247F3C
	ldr r0, [r7]
	bl sub_0202BEE4
	add r6, r0, #0
	ldr r0, [r7]
	bl sub_0202BEEC
	add r4, r0, #0
	ldr r0, [r7]
	bl sub_0202BEDC
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0x68]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, #0xa4
	ldr r1, [r5, r1]
	add r2, sp, #0x18
	add r3, r6, #0
	bl ov41_02247FAC
	ldr r0, [r7, #0x54]
	mov r6, #0
	cmp r0, #0
	ble _0224B844
	add r4, r7, #0
_0224B80A:
	ldr r0, [r4, #4]
	bl sub_0202BEFC
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_0202BF00
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	bl sub_0202BF04
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl sub_0202BF08
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, r0
	bl ov41_02248044
	ldr r0, [r7, #0x54]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0224B80A
_0224B844:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224B780

	thumb_func_start ov41_0224B848
ov41_0224B848: ; 0x0224B848
	add r2, r1, #0
	mov r1, #0x19
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r2, #0x5c]
	ldr r3, _0224B858 ; =ov41_0224825C
	ldr r2, [r2, #0x68]
	bx r3
	.balign 4, 0
_0224B858: .word ov41_0224825C
	thumb_func_end ov41_0224B848

	thumb_func_start ov41_0224B85C
ov41_0224B85C: ; 0x0224B85C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov41_022480E0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov41_02247F90
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B85C

	thumb_func_start ov41_0224B878
ov41_0224B878: ; 0x0224B878
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r3, _0224B884 ; =ov41_022482A8
	add r0, r0, r1
	bx r3
	nop
_0224B884: .word ov41_022482A8
	thumb_func_end ov41_0224B878

	thumb_func_start ov41_0224B888
ov41_0224B888: ; 0x0224B888
	push {r3, r4, r5, lr}
	add r3, r1, #0
	mov r1, #0x8f
	add r4, r0, #0
	mov r2, #0x48
	lsl r1, r1, #2
	str r2, [r4, r1]
	mov r5, #0x38
	add r2, r1, #4
	str r5, [r4, r2]
	add r2, r1, #0
	add r2, #8
	str r5, [r4, r2]
	add r2, r1, #0
	mov r5, #0x40
	add r2, #0xc
	str r5, [r4, r2]
	lsl r2, r5, #6
	add r5, r1, #0
	add r5, #0x14
	str r2, [r4, r5]
	add r5, r1, #0
	add r5, #0x18
	str r2, [r4, r5]
	add r5, r1, #0
	add r5, #0x1c
	str r2, [r4, r5]
	mov r2, #0
	add r1, #0x10
	strh r2, [r4, r1]
	ldr r1, [r3, #0x60]
	ldr r2, [r3, #0x64]
	bl ov41_0224B5D8
	mov r0, #0x97
	ldr r1, _0224B8D8 ; =0x00007FFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0224B8D8: .word 0x00007FFF
	thumb_func_end ov41_0224B888

	thumb_func_start ov41_0224B8DC
ov41_0224B8DC: ; 0x0224B8DC
	ldr r2, [r1]
	str r2, [r0, #0x58]
	ldr r2, [r1, #4]
	str r2, [r0, #0x60]
	ldr r2, [r1, #8]
	str r2, [r0, #0x64]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x68]
	bx lr
	.balign 4, 0
	thumb_func_end ov41_0224B8DC

	thumb_func_start ov41_0224B8F0
ov41_0224B8F0: ; 0x0224B8F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202BE14
	add r6, r5, #0
	str r0, [r5]
	mov r4, #0
	str r4, [r5, #0x54]
	add r6, #0x54
_0224B906:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202BDEC
	cmp r0, #0
	beq _0224B928
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202BE2C
	ldr r1, [r5, #0x54]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_0224B928:
	add r4, r4, #1
	cmp r4, #0xa
	blt _0224B906
	add r0, r7, #0
	bl sub_0202BE80
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224B8F0

	thumb_func_start ov41_0224B938
ov41_0224B938: ; 0x0224B938
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r3, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov41_022464AC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov41_0224B958
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224B938

	thumb_func_start ov41_0224B958
ov41_0224B958: ; 0x0224B958
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r2, #0
	ldr r0, [r0, #0x54]
	add r4, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	ble _0224B9D0
	add r6, r2, #0
_0224B972:
	ldr r0, [r6, #4]
	bl sub_0202BEFC
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl GF2dGfxRawResMan_DoesNotHaveObjWithId
	cmp r0, #1
	bne _0224B9BE
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r1, [sp, #4]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	ldr r3, [sp, #0xc]
	add r1, r5, #1
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc
	add r7, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r2, r5, #0
	bl GF2dGfxRawResMan_AllocObj
	ldr r1, [r4]
	lsl r5, r5, #3
	add r1, r1, r5
	add r0, r7, #0
	add r1, r1, #4
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #4]
	ldr r1, [r0]
	ldr r0, [r4]
	str r1, [r0, r5]
_0224B9BE:
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x54]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _0224B972
_0224B9D0:
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	ldr r0, [sp, #4]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #0
	ldr r3, [sp, #0xc]
	add r2, r1, #0
	bl GfGfxLoader_LoadFromOpenNarc
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	mov r2, #0
	bl GF2dGfxRawResMan_AllocObj
	ldr r1, [r4, #8]
	add r0, r5, #0
	add r1, r1, #4
	bl NNS_G2dGetUnpackedPaletteData
	ldr r0, [sp, #4]
	ldr r1, [r0]
	ldr r0, [r4, #8]
	str r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #3
	str r1, [r0, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B958

	thumb_func_start AccessoryPortrait_Init
AccessoryPortrait_Init: ; 0x0224BA10
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #2
	add r4, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r1, #0x1a
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0xd
	bl OverlayManager_CreateAndGetData
	mov r2, #0x1a
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	bl memset
	ldr r0, _0224BAC4 ; =ov41_0224BBF0
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl sub_0202B9B8
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	str r0, [r5, #0xc]
	bl ov41_02246130
	ldr r0, _0224BAC8 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0xe
	bl ov41_02246670
	ldr r0, [r5, #0x54]
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r1, [r5]
	add r0, sp, #0
	bl ov41_0224B530
	str r0, [r5, #0x10]
	add r0, r5, #0
	bl ov41_0224BC04
	add r0, r5, #0
	bl ov41_0224BCA4
	add r0, r5, #0
	bl ov41_0224BCF0
	add r0, r5, #0
	bl ov41_0224BDCC
	add r0, r5, #0
	bl ov41_0224BE5C
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224BAC4: .word ov41_0224BBF0
_0224BAC8: .word gSystem + 0x60
	thumb_func_end AccessoryPortrait_Init

	thumb_func_start AccessoryPortrait_Main
AccessoryPortrait_Main: ; 0x0224BACC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	bl Thunk_G3X_Reset
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r5, #0x10]
	bl ov41_0224B554
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add r5, #0x14
	add r0, r5, #0
	bl ov41_022466C8
	ldr r1, [r4]
	cmp r1, #5
	bhi _0224BB96
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BB08: ; jump table
	.short _0224BB14 - _0224BB08 - 2 ; case 0
	.short _0224BB1A - _0224BB08 - 2 ; case 1
	.short _0224BB38 - _0224BB08 - 2 ; case 2
	.short _0224BB48 - _0224BB08 - 2 ; case 3
	.short _0224BB68 - _0224BB08 - 2 ; case 4
	.short _0224BB88 - _0224BB08 - 2 ; case 5
_0224BB14:
	add r0, r1, #1
	str r0, [r4]
	b _0224BB96
_0224BB1A:
	mov r0, #6
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #5
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB38:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224BB96
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB48:
	ldr r0, _0224BB9C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0224BB5A
	bl System_GetTouchNew
	cmp r0, #0
	beq _0224BB96
_0224BB5A:
	ldr r0, _0224BBA0 ; =0x000005DD
	bl PlaySE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB68:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224BB96
_0224BB88:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224BB96
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224BB96:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0224BB9C: .word gSystem
_0224BBA0: .word 0x000005DD
	thumb_func_end AccessoryPortrait_Main

	thumb_func_start AccessoryPortrait_Exit
AccessoryPortrait_Exit: ; 0x0224BBA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov41_0224B57C
	add r0, r4, #0
	bl ov41_0224BD8C
	add r0, r4, #0
	bl ov41_0224BE34
	add r4, #0x14
	add r0, r4, #0
	bl ov41_02246698
	bl ov41_02246150
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0xd
	bl Heap_Destroy
	mov r0, #0xe
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end AccessoryPortrait_Exit

	thumb_func_start ov41_0224BBF0
ov41_0224BBF0: ; 0x0224BBF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov41_0224B5C8
	add r4, #0x14
	add r0, r4, #0
	bl ov41_022466B8
	pop {r4, pc}
	thumb_func_end ov41_0224BBF0

	thumb_func_start ov41_0224BC04
ov41_0224BC04: ; 0x0224BC04
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x7e
	mov r2, #0
	mov r3, #0x60
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x54]
	mov r1, #0x7d
	mov r3, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x1a
	mov r1, #0x80
	mov r2, #0
	add r3, sp, #0x10
	bl GfGfxLoader_GetScrnData
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
	ldrh r0, [r2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl LoadRectToBgTilemapRect
	ldr r1, [sp, #0x10]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl BgTilemapRectChangePalette
	add r0, r4, #0
	bl Heap_Free
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov41_0224BC04

	thumb_func_start ov41_0224BCA4
ov41_0224BCA4: ; 0x0224BCA4
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xef
	mov r2, #4
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xef
	mov r1, #9
	mov r3, #4
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xef
	mov r1, #1
	mov r3, #4
	bl GfGfxLoader_LoadCharData
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov41_0224BCA4

	thumb_func_start ov41_0224BCF0
ov41_0224BCF0: ; 0x0224BCF0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp, #4]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe9
	mov r3, #0
	bl ov41_022462E4
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp, #8]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xea
	mov r3, #0
	bl ov41_02246304
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe8
	mov r3, #0
	bl ov41_02246328
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe7
	mov r3, #0
	bl ov41_02246344
	mov r0, #0x64
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	mov r2, #0
	mov r3, #0x90
	bl ov41_02246280
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl Sprite_SetPriority
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov41_0224BCF0

	thumb_func_start ov41_0224BD8C
ov41_0224BD8C: ; 0x0224BD8C
	push {r4, lr}
	mov r1, #0xfa
	add r4, r0, #0
	add r0, #0x14
	lsl r1, r1, #2
	bl ov41_02246360
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov41_02246374
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov41_02246388
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov41_0224639C
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_Delete
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224BD8C

	thumb_func_start ov41_0224BDCC
ov41_0224BDCC: ; 0x0224BDCC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0xe
	mov r1, #1
	bl AllocWindows
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x54]
	ldr r1, [r4, r1]
	mov r2, #3
	mov r3, #0
	bl AddWindowParameterized
	mov r0, #0
	mov r1, #0xa0
	mov r2, #0xe
	bl LoadFontPal0
	mov r0, #3
	mov r1, #0
	bl SetBgPriority
	mov r0, #0
	mov r1, #2
	bl SetBgPriority
	mov r0, #1
	add r1, r0, #0
	bl SetBgPriority
	mov r1, #3
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224BDCC

