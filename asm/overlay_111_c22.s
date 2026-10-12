	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E6330
	.public ov111_021E6380
	.public ov111_021E63D0
	.extern ov111_021E6C00
	.extern ov111_021E6C34
	.extern ov111_021E6C68

	.text

	.text
	thumb_func_start ov111_021E6330
ov111_021E6330: ; 0x021E6330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _021E637C ; =ov111_021E6C34
	add r6, r2, #0
	add r5, r3, #0
	add r7, r0, #0
	mov ip, r1
	add r3, sp, #0
	mov r2, #6
_021E6342:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6342
	ldr r0, [r4]
	add r1, sp, #0
	str r0, [r3]
	strh r6, [r1]
	strh r5, [r1, #2]
	add r0, sp, #0x38
	ldrb r2, [r0, #0x14]
	mov r3, #0x83
	lsl r3, r3, #0xe
	str r2, [sp, #8]
	ldrb r0, [r0, #0x10]
	add r2, sp, #0
	strh r0, [r1, #6]
	add r0, r7, #0
	mov r1, ip
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #1
	add r4, r0, #0
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021E637C: .word ov111_021E6C34
	thumb_func_end ov111_021E6330

	thumb_func_start ov111_021E6380
ov111_021E6380: ; 0x021E6380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _021E63CC ; =ov111_021E6C00
	add r5, r2, #0
	add r4, r3, #0
	add r7, r0, #0
	str r1, [sp]
	add r3, sp, #4
	mov r2, #6
_021E6392:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6392
	ldr r0, [r6]
	str r0, [r3]
	add r0, sp, #0x40
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	blo _021E63AA
	bl GF_AssertFail
_021E63AA:
	add r0, sp, #0x40
	ldrb r0, [r0, #0x10]
	mov r3, #0x83
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [sp, #0x18]
	add r0, sp, #4
	strh r5, [r0]
	strh r4, [r0, #2]
	add r0, r7, #0
	add r2, sp, #4
	lsl r3, r3, #0xe
	bl SpriteSystem_NewSpriteWithYOffset
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E63CC: .word ov111_021E6C00
	thumb_func_end ov111_021E6380

	thumb_func_start ov111_021E63D0
ov111_021E63D0: ; 0x021E63D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r1, [sp, #0x14]
	str r0, [sp, #0x2c]
	str r2, [sp, #0x18]
	add r4, r3, #0
	bne _021E63E2
	mov r0, #2
	b _021E63E4
_021E63E2:
	mov r0, #3
_021E63E4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	mov r1, #0x78
	ldr r0, [r0]
	bl Heap_Alloc
	str r0, [sp, #0x28]
	mov r1, #0
	mov r2, #0x78
	bl MI_CpuFill8
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	str r1, [r0]
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	add r1, #0x72
	strh r0, [r1]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r1, #0x74
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r3, #0x72
	ldrsh r2, [r2, r3]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	mov r5, #0x74
	ldrsh r3, [r3, r5]
	ldr r0, [r0, #0xc]
	ldr r1, [r1, #0x10]
	bl ov111_021E6330
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x28]
	str r0, [r1, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r3, #0x72
	ldrsh r2, [r2, r3]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	sub r2, #0x2c
	lsl r2, r2, #0x10
	ldr r3, [sp, #0x28]
	add r4, r5, #0
	ldrsh r3, [r3, r4]
	ldr r0, [r0, #0xc]
	ldr r1, [r1, #0x10]
	sub r3, #8
	lsl r3, r3, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov111_021E6380
	ldr r1, [sp, #0x28]
	ldr r4, _021E64C4 ; =ov111_021E6C68
	str r0, [r1, #8]
	ldr r0, [sp, #0x18]
	add r5, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	mov r7, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	add r5, #0xc
	str r0, [sp, #0x1c]
_021E647E:
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x20]
	mov r3, #0
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r4, #4]
	add r1, r5, #0
	str r0, [sp, #4]
	ldrb r0, [r4, #5]
	str r0, [sp, #8]
	ldrb r0, [r4, #6]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #8]
	str r0, [sp, #0x10]
	ldrsh r6, [r4, r3]
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	add r3, r3, r6
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x24]
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r7, r7, #1
	add r4, #0xa
	add r5, #0x10
	cmp r7, #6
	blt _021E647E
	ldr r0, [sp, #0x28]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E64C4: .word ov111_021E6C68
	thumb_func_end ov111_021E63D0

