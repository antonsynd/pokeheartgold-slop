	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F51CC
	.public ov18_021F5238
	.public ov18_021F52A4
	.public ov18_021F5310
	.public ov18_021F537C
	.public ov18_021F53E8
	.public ov18_021F5454
	.public ov18_021F54C0
	.public ov18_021F555C
	.extern ov18_021F11C0
	.extern ov18_021F1294
	.extern ov18_021F12C8
	.extern ov18_021F5000
	.extern ov18_021F5198

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
	thumb_func_start ov18_021F51CC
ov18_021F51CC: ; 0x021F51CC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021F51DC
	cmp r0, #1
	beq _021F51FA
	b _021F522A
_021F51DC:
	ldr r0, _021F5230 ; =0x000008EB
	bl PlaySE
	mov r2, #0x1f
	mvn r2, r2
	mov r1, #1
	add r3, r2, #0
	add r0, r4, #0
	lsl r1, r1, #8
	sub r3, #0xc0
	bl ov18_021F5198
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F51FA:
	ldr r1, [r4]
	ldr r0, _021F5234 ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F5234 ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r1, r0, #0
	ldr r0, [r4]
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021F522A
	mov r0, #0
	pop {r4, pc}
_021F522A:
	mov r0, #1
	pop {r4, pc}
	nop
_021F5230: .word 0x000008EB
_021F5234: .word 0x0000068C
	thumb_func_end ov18_021F51CC

	thumb_func_start ov18_021F5238
ov18_021F5238: ; 0x021F5238
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021F5248
	cmp r0, #1
	beq _021F5266
	b _021F5296
_021F5248:
	ldr r0, _021F529C ; =0x000008EB
	bl PlaySE
	mov r2, #0x1f
	mvn r2, r2
	mov r1, #0x12
	add r3, r2, #0
	add r0, r4, #0
	lsl r1, r1, #4
	sub r3, #0xe0
	bl ov18_021F5198
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F5266:
	ldr r1, [r4]
	ldr r0, _021F52A0 ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F52A0 ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r1, r0, #0
	ldr r0, [r4]
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021F5296
	mov r0, #0
	pop {r4, pc}
_021F5296:
	mov r0, #1
	pop {r4, pc}
	nop
_021F529C: .word 0x000008EB
_021F52A0: .word 0x0000068C
	thumb_func_end ov18_021F5238

	thumb_func_start ov18_021F52A4
ov18_021F52A4: ; 0x021F52A4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021F52B4
	cmp r0, #1
	beq _021F52D0
	b _021F5300
_021F52B4:
	ldr r0, _021F5304 ; =0x000008EB
	bl PlaySE
	mov r1, #5
	mov r2, #0x1f
	ldr r3, _021F5308 ; =0xFFFFFEE0
	add r0, r4, #0
	lsl r1, r1, #6
	mvn r2, r2
	bl ov18_021F5198
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F52D0:
	ldr r1, [r4]
	ldr r0, _021F530C ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F530C ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r1, r0, #0
	ldr r0, [r4]
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021F5300
	mov r0, #0
	pop {r4, pc}
_021F5300:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F5304: .word 0x000008EB
_021F5308: .word 0xFFFFFEE0
_021F530C: .word 0x0000068C
	thumb_func_end ov18_021F52A4

	thumb_func_start ov18_021F5310
ov18_021F5310: ; 0x021F5310
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021F5320
	cmp r0, #1
	beq _021F533C
	b _021F536C
_021F5320:
	ldr r0, _021F5370 ; =0x000008EB
	bl PlaySE
	mov r1, #0x16
	mov r2, #0x1f
	ldr r3, _021F5374 ; =0xFFFFFEC0
	add r0, r4, #0
	lsl r1, r1, #4
	mvn r2, r2
	bl ov18_021F5198
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F533C:
	ldr r1, [r4]
	ldr r0, _021F5378 ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F5378 ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r1, r0, #0
	ldr r0, [r4]
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021F536C
	mov r0, #0
	pop {r4, pc}
_021F536C:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F5370: .word 0x000008EB
_021F5374: .word 0xFFFFFEC0
_021F5378: .word 0x0000068C
	thumb_func_end ov18_021F5310

	thumb_func_start ov18_021F537C
ov18_021F537C: ; 0x021F537C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021F538C
	cmp r0, #1
	beq _021F53A8
	b _021F53D8
_021F538C:
	ldr r0, _021F53DC ; =0x000008EB
	bl PlaySE
	mov r1, #6
	mov r2, #0x1f
	ldr r3, _021F53E0 ; =0xFFFFFEA0
	add r0, r4, #0
	lsl r1, r1, #6
	mvn r2, r2
	bl ov18_021F5198
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F53A8:
	ldr r1, [r4]
	ldr r0, _021F53E4 ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F53E4 ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r1, r0, #0
	ldr r0, [r4]
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021F53D8
	mov r0, #0
	pop {r4, pc}
_021F53D8:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F53DC: .word 0x000008EB
_021F53E0: .word 0xFFFFFEA0
_021F53E4: .word 0x0000068C
	thumb_func_end ov18_021F537C

	thumb_func_start ov18_021F53E8
ov18_021F53E8: ; 0x021F53E8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021F53F8
	cmp r0, #1
	beq _021F5414
	b _021F5444
_021F53F8:
	ldr r0, _021F5448 ; =0x000008EB
	bl PlaySE
	mov r1, #7
	mov r2, #0x3f
	ldr r3, _021F544C ; =0xFFFFFEC0
	add r0, r4, #0
	lsl r1, r1, #6
	mvn r2, r2
	bl ov18_021F5198
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F5414:
	ldr r1, [r4]
	ldr r0, _021F5450 ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F5450 ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r1, r0, #0
	ldr r0, [r4]
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021F5444
	mov r0, #0
	pop {r4, pc}
_021F5444:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F5448: .word 0x000008EB
_021F544C: .word 0xFFFFFEC0
_021F5450: .word 0x0000068C
	thumb_func_end ov18_021F53E8

	thumb_func_start ov18_021F5454
ov18_021F5454: ; 0x021F5454
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021F5464
	cmp r0, #1
	beq _021F5480
	b _021F54B0
_021F5464:
	ldr r0, _021F54B4 ; =0x000008EB
	bl PlaySE
	mov r1, #2
	mov r2, #0x3f
	ldr r3, _021F54B8 ; =0xFFFFFE80
	add r0, r4, #0
	lsl r1, r1, #8
	mvn r2, r2
	bl ov18_021F5198
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
_021F5480:
	ldr r1, [r4]
	ldr r0, _021F54BC ; =0x0000068C
	ldr r0, [r1, r0]
	ldr r1, [r4, #0xc]
	bl ManagedSprite_OffsetAffineZRotation
	ldr r1, [r4]
	ldr r0, _021F54BC ; =0x0000068C
	ldr r0, [r1, r0]
	bl ManagedSprite_GetRotation
	add r1, r0, #0
	ldr r0, [r4]
	bl ov18_021F5000
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021F54B0
	mov r0, #0
	pop {r4, pc}
_021F54B0:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F54B4: .word 0x000008EB
_021F54B8: .word 0xFFFFFE80
_021F54BC: .word 0x0000068C
	thumb_func_end ov18_021F5454

	thumb_func_start ov18_021F54C0
ov18_021F54C0: ; 0x021F54C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	strh r1, [r4, #0x18]
	strh r2, [r4, #0x1a]
	mov r0, #1
	str r0, [sp]
	add r2, sp, #8
	ldr r0, [r4]
	mov r1, #2
	add r2, #2
	add r3, sp, #8
	bl ov18_021F12C8
	mov r0, #1
	str r0, [sp]
	add r2, sp, #4
	ldr r0, [r4]
	mov r1, #4
	add r2, #2
	add r3, sp, #4
	bl ov18_021F12C8
	add r1, sp, #4
	mov r2, #4
	mov r0, #0
	ldrsh r3, [r1, r2]
	ldrsh r0, [r1, r0]
	cmp r3, r0
	bge _021F552E
	mov r0, #2
	strh r0, [r4, #0x1c]
	mov r0, #8
	strh r0, [r4, #0x1e]
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	bl ov18_021F11C0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4]
	add r4, sp, #4
	mov r3, #4
	ldrsh r3, [r4, r3]
	mov r2, #6
	ldrsh r2, [r4, r2]
	add r3, #0xc0
	lsl r3, r3, #0x10
	mov r1, #3
	asr r3, r3, #0x10
	bl ov18_021F1294
	add sp, #0xc
	pop {r3, r4, pc}
_021F552E:
	strh r2, [r4, #0x1c]
	mov r0, #9
	strh r0, [r4, #0x1e]
	ldr r0, [r4]
	mov r1, #5
	mov r2, #1
	bl ov18_021F11C0
	mov r2, #2
	str r2, [sp]
	ldr r0, [r4]
	add r4, sp, #4
	mov r3, #0
	ldrsh r3, [r4, r3]
	ldrsh r2, [r4, r2]
	mov r1, #5
	add r3, #0xc0
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bl ov18_021F1294
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov18_021F54C0

	thumb_func_start ov18_021F555C
ov18_021F555C: ; 0x021F555C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	add r2, sp, #4
	ldrh r1, [r4, #0x1c]
	ldr r0, [r4]
	add r2, #2
	add r3, sp, #4
	bl ov18_021F12C8
	mov r0, #0x18
	add r5, sp, #4
	mov r3, #0
	ldrsh r1, [r5, r3]
	ldrsh r0, [r4, r0]
	mov r2, #2
	add r0, r1, r0
	strh r0, [r5]
	mov r0, #1
	str r0, [sp]
	ldrh r1, [r4, #0x1c]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r4]
	bl ov18_021F1294
	mov r0, #2
	str r0, [sp]
	ldrh r1, [r4, #0x1c]
	add r2, sp, #4
	ldr r0, [r4]
	add r1, r1, #1
	add r2, #2
	add r3, sp, #4
	bl ov18_021F12C8
	mov r3, #0
	mov r0, #0x18
	ldrsh r1, [r5, r3]
	ldrsh r0, [r4, r0]
	mov r2, #2
	add r0, r1, r0
	strh r0, [r5]
	str r2, [sp]
	ldrh r1, [r4, #0x1c]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r4]
	add r1, r1, #1
	bl ov18_021F1294
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0x18]
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021F555C

