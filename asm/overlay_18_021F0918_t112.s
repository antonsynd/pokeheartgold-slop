	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F41C4
	.public ov18_021F42E4
	.public ov18_021F4384
	.extern ov18_021E8AB0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C
	.extern ov18_021F118C
	.extern ov18_021F11C0
	.extern ov18_021F1294
	.extern ov18_021F12C8
	.extern ov18_021F4620
	.extern ov18_021F47C0
	.extern ov18_021F47F8
	.extern ov18_021F4974
	.extern ov18_021F69C0
	.extern ov18_021FA3B0

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F41C4
ov18_021F41C4: ; 0x021F41C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r4, [sp, #0x18]
	bl ov18_021E8B24
	cmp r0, #1
	bne _021F41E4
	mov r0, #0x20
	mov r1, #4
	mov r2, #1
	mov r3, #3
	b _021F422C
_021F41E4:
	add r0, r5, #0
	bl ov18_021E8B0C
	cmp r0, #0x12
	bne _021F4204
	mov r0, #0x24
	add r1, r5, #0
	mul r1, r0
	ldr r0, _021F42DC ; =0x0000190C
	mov r3, #2
	ldr r2, [r6, r0]
	ldrb r0, [r2, r1]
	add r1, r2, r1
	ldrb r1, [r1, #1]
	mov r2, #1
	b _021F422C
_021F4204:
	add r0, r5, #0
	bl ov18_021E8B5C
	cmp r0, #1
	bne _021F4218
	mov r0, #0x23
	mov r1, #8
	mov r2, #2
	mov r3, #1
	b _021F422C
_021F4218:
	mov r0, #0x24
	add r1, r5, #0
	mul r1, r0
	ldr r0, _021F42DC ; =0x0000190C
	ldr r2, [r6, r0]
	add r3, r2, r1
	ldrb r0, [r2, r1]
	ldrb r1, [r3, #1]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #3]
_021F422C:
	cmp r2, #1
	bne _021F4262
	cmp r3, #1
	bne _021F423A
	mov r5, #0
	strb r5, [r4]
	b _021F42AC
_021F423A:
	cmp r3, #2
	bne _021F4244
	mov r5, #6
	strb r5, [r4]
	b _021F42AC
_021F4244:
	cmp r3, #3
	bne _021F424E
	mov r5, #7
	strb r5, [r4]
	b _021F42AC
_021F424E:
	cmp r3, #4
	bne _021F4258
	mov r5, #8
	strb r5, [r4]
	b _021F42AC
_021F4258:
	cmp r3, #5
	bne _021F42AC
	mov r5, #9
	strb r5, [r4]
	b _021F42AC
_021F4262:
	cmp r2, #2
	bne _021F4276
	cmp r3, #1
	bne _021F4270
	mov r5, #1
	strb r5, [r4]
	b _021F42AC
_021F4270:
	mov r5, #0xa
	strb r5, [r4]
	b _021F42AC
_021F4276:
	cmp r2, #3
	bne _021F428A
	cmp r3, #1
	bne _021F4284
	mov r5, #2
	strb r5, [r4]
	b _021F42AC
_021F4284:
	mov r5, #0xb
	strb r5, [r4]
	b _021F42AC
_021F428A:
	cmp r2, #4
	bne _021F4294
	mov r5, #3
	strb r5, [r4]
	b _021F42AC
_021F4294:
	cmp r2, #5
	bne _021F429E
	mov r5, #4
	strb r5, [r4]
	b _021F42AC
_021F429E:
	cmp r2, #6
	bne _021F42A8
	mov r5, #5
	strb r5, [r4]
	b _021F42AC
_021F42A8:
	mov r5, #0
	strb r5, [r4]
_021F42AC:
	lsl r4, r2, #3
	lsr r2, r4, #0x1f
	add r2, r4, r2
	ldr r4, _021F42E0 ; =0x000018C8
	asr r2, r2, #1
	ldrsb r5, [r6, r4]
	mov r4, #0x16
	mul r4, r5
	sub r0, r0, r4
	lsl r0, r0, #3
	add r0, r2, r0
	add r0, #0x40
	lsl r2, r1, #3
	lsl r1, r3, #3
	strh r0, [r7]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r1, r2, r0
	ldr r0, [sp]
	add r1, #0x28
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F42DC: .word 0x0000190C
_021F42E0: .word 0x000018C8
	thumb_func_end ov18_021F41C4

	thumb_func_start ov18_021F42E4
ov18_021F42E4: ; 0x021F42E4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldr r2, _021F437C ; =0x00001908
	mov ip, r1
	ldr r2, [r0, r2]
	lsl r1, r1, #2
	ldrb r7, [r2, r1]
	ldr r2, _021F437C ; =0x00001908
	add r4, r3, #0
	sub r2, #0x40
	ldrsb r3, [r0, r2]
	mov r2, #0x16
	ldr r5, [sp, #0x18]
	mul r2, r3
	sub r2, r7, r2
	lsl r2, r2, #3
	add r2, #0x44
	strh r2, [r6]
	ldr r2, _021F437C ; =0x00001908
	ldr r0, [r0, r2]
	add r0, r0, r1
	ldrb r0, [r0, #1]
	lsl r0, r0, #3
	add r0, #0x2c
	strh r0, [r4]
	mov r0, ip
	bl ov18_021E8B18
	cmp r0, #0x7c
	beq _021F4328
	add r1, r0, #0
	sub r1, #0xb2
	cmp r1, #1
	bhi _021F4336
_021F4328:
	mov r0, #6
	strb r0, [r5]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #4
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021F4336:
	cmp r0, #0x60
	beq _021F4340
	ldr r2, _021F4380 ; =0x000001E7
	cmp r0, r2
	bne _021F4352
_021F4340:
	mov r1, #0
	strb r1, [r5]
	ldrsh r0, [r6, r1]
	add r0, r0, #4
	strh r0, [r6]
	ldrsh r0, [r4, r1]
	add r0, r0, #4
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021F4352:
	cmp r0, #0x71
	beq _021F4366
	add r1, r2, #0
	sub r1, #0xac
	cmp r0, r1
	beq _021F4366
	add r1, r2, #3
	sub r0, r0, r1
	cmp r0, #2
	bhi _021F4374
_021F4366:
	mov r0, #6
	strb r0, [r5]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, #4
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021F4374:
	mov r0, #0
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F437C: .word 0x00001908
_021F4380: .word 0x000001E7
	thumb_func_end ov18_021F42E4

	thumb_func_start ov18_021F4384
ov18_021F4384: ; 0x021F4384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0
	add r3, sp, #0xc
	str r1, [sp, #4]
	mov r1, #2
	add r2, sp, #0x10
	add r3, #2
	add r5, r0, #0
	str r1, [sp]
	bl ov18_021F12C8
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _021F4610 ; =0x000018CA
	ldrsb r1, [r5, r0]
	cmp r1, #0
	bne _021F44A8
	add r0, #0x36
	ldr r0, [r5, r0]
	mov r4, #1
	cmp r0, #1
	ble ov18_021F4478
	add r6, sp, #8
_021F43B4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021E8AB0
	cmp r0, #0
	add r0, sp, #8
	bne _021F43DA
	ldr r1, _021F4614 ; =0x000018FC
	str r0, [sp]
	ldr r2, [r5, r1]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	add r3, sp, #8
	add r0, r5, #0
	add r2, sp, #0xc
	add r3, #2
	bl ov18_021F41C4
	b _021F4400
_021F43DA:
	ldr r1, _021F4614 ; =0x000018FC
	str r0, [sp]
	ldr r1, [r5, r1]
	lsl r7, r4, #2
	add r3, sp, #8
	ldr r1, [r1, r7]
	add r0, r5, #0
	add r2, sp, #0xc
	add r3, #2
	bl ov18_021F42E4
	ldr r0, _021F4614 ; =0x000018FC
	ldr r0, [r5, r0]
	ldr r0, [r0, r7]
	bl ov18_021E8B18
	add r1, sp, #0x14
	bl ov18_021F47C0
_021F4400:
	mov r0, #2
	str r0, [sp]
	mov r2, #4
	mov r3, #2
	add r7, r4, #0
	add r7, #8
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r7, #0
	bl ov18_021F1294
	ldrb r2, [r6]
	add r0, r5, #0
	add r1, r7, #0
	bl ov18_021F118C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov18_021F11C0
	ldrb r0, [r6]
	lsl r1, r0, #1
	ldr r0, _021F4618 ; =ov18_021FA3B0
	add r3, r0, r1
	ldrb r0, [r0, r1]
	lsr r2, r0, #1
	mov r0, #4
	ldrsh r1, [r6, r0]
	mov r0, #8
	ldrsh r7, [r6, r0]
	sub r0, r1, r2
	cmp r7, r0
	blt _021F4468
	add r0, r1, r2
	cmp r7, r0
	bge _021F4468
	ldrb r0, [r3, #1]
	lsr r2, r0, #1
	mov r0, #2
	ldrsh r1, [r6, r0]
	mov r0, #6
	ldrsh r0, [r6, r0]
	sub r3, r1, r2
	cmp r0, r3
	blt _021F4468
	add r1, r1, r2
	cmp r0, r1
	bge _021F4468
	mov r0, #1
	str r0, [sp, #4]
_021F4468:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x19
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	cmp r4, r0
	blt _021F43B4
ov18_021F4478:
	add r4, #8
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, r4, #0
	bl ov18_021F47F8
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021F4490
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021F4492
_021F4490:
	b _021F4602
_021F4492:
	add r1, r4, #0
	add r4, sp, #8
	mov r2, #8
	mov r3, #6
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	bl ov18_021F4974
	str r0, [sp, #4]
	b _021F4602
_021F44A8:
	add r0, r5, #0
	bl ov18_021F4620
	ldr r1, _021F4610 ; =0x000018CA
	add r0, r5, #0
	ldrsb r1, [r5, r1]
	bl ov18_021E8AB0
	cmp r0, #0
	add r0, sp, #8
	ldr r1, _021F4614 ; =0x000018FC
	bne _021F4542
	str r0, [sp]
	ldr r2, [r5, r1]
	sub r1, #0x32
	ldrsb r1, [r5, r1]
	add r3, sp, #8
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r2, sp, #0xc
	add r3, #2
	bl ov18_021F41C4
	mov r4, #2
	str r4, [sp]
	add r3, sp, #8
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r4]
	add r0, r5, #0
	mov r1, #9
	bl ov18_021F1294
	add r2, sp, #8
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #9
	bl ov18_021F118C
	add r0, r5, #0
	mov r1, #9
	mov r2, #1
	bl ov18_021F11C0
	add r0, sp, #8
	ldrb r1, [r0]
	lsl r4, r1, #1
	ldr r1, _021F4618 ; =ov18_021FA3B0
	ldrb r1, [r1, r4]
	lsr r3, r1, #1
	mov r1, #4
	ldrsh r2, [r0, r1]
	mov r1, #8
	ldrsh r1, [r0, r1]
	sub r6, r2, r3
	cmp r1, r6
	blt _021F4602
	add r2, r2, r3
	cmp r1, r2
	bge _021F4602
	ldr r1, _021F461C ; =ov18_021FA3B0 + 1
	mov r2, #2
	ldrb r1, [r1, r4]
	ldrsh r3, [r0, r2]
	mov r2, #6
	ldrsh r2, [r0, r2]
	lsr r1, r1, #1
	sub r0, r3, r1
	cmp r2, r0
	blt _021F4602
	add r0, r3, r1
	cmp r2, r0
	bge _021F4602
	mov r0, #1
	str r0, [sp, #4]
	b _021F4602
_021F4542:
	str r0, [sp]
	ldr r2, [r5, r1]
	sub r1, #0x32
	ldrsb r1, [r5, r1]
	add r3, sp, #8
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r2, sp, #0xc
	add r3, #2
	bl ov18_021F42E4
	ldr r0, _021F4614 ; =0x000018FC
	ldr r1, [r5, r0]
	sub r0, #0x32
	ldrsb r0, [r5, r0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov18_021E8B18
	add r1, sp, #0x14
	bl ov18_021F47C0
	mov r4, #2
	str r4, [sp]
	add r3, sp, #8
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r4]
	add r0, r5, #0
	mov r1, #9
	bl ov18_021F1294
	add r2, sp, #8
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #9
	bl ov18_021F118C
	add r0, r5, #0
	mov r1, #9
	mov r2, #1
	bl ov18_021F11C0
	add r0, sp, #8
	ldrb r1, [r0]
	lsl r4, r1, #1
	ldr r1, _021F4618 ; =ov18_021FA3B0
	ldrb r1, [r1, r4]
	lsr r3, r1, #1
	mov r1, #4
	ldrsh r2, [r0, r1]
	mov r1, #8
	ldrsh r1, [r0, r1]
	sub r6, r2, r3
	cmp r1, r6
	blt _021F45D8
	add r2, r2, r3
	cmp r1, r2
	bge _021F45D8
	ldr r1, _021F461C ; =ov18_021FA3B0 + 1
	mov r2, #2
	ldrb r1, [r1, r4]
	ldrsh r3, [r0, r2]
	mov r2, #6
	ldrsh r2, [r0, r2]
	lsr r1, r1, #1
	sub r0, r3, r1
	cmp r2, r0
	blt _021F45D8
	add r0, r3, r1
	cmp r2, r0
	bge _021F45D8
	mov r0, #1
	str r0, [sp, #4]
_021F45D8:
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0xa
	bl ov18_021F47F8
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021F4602
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021F4602
	add r4, sp, #8
	mov r2, #8
	mov r3, #6
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0xa
	bl ov18_021F4974
	str r0, [sp, #4]
_021F4602:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov18_021F69C0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4610: .word 0x000018CA
_021F4614: .word 0x000018FC
_021F4618: .word ov18_021FA3B0
_021F461C: .word ov18_021FA3B0 + 1
	thumb_func_end ov18_021F4384

