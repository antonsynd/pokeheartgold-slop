	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225E0F4
	.public ov28_0225E1A4
	.public ov28_0225E31C
	.public ov28_0225E374
	.public ov28_0225E3BC
	.public ov28_0225E424
	.public ov28_0225E43C
	.extern ov28_0225DD58
	.extern ov28_0225DE04
	.extern ov28_0225DE78
	.extern ov28_0225DE88
	.extern ov28_0225DEB0
	.extern ov28_0225DF14
	.extern ov28_0225DFBC
	.extern ov28_0225E060
	.extern ov28_0225EA90
	.extern ov28_0225EAAC
	.extern ov28_0225EB84

	.text

	.text
	thumb_func_start ov28_0225E0F4
ov28_0225E0F4: ; 0x0225E0F4
	push {r4, r5, r6, lr}
	mov r1, #0x82
	add r5, r0, #0
	lsl r1, r1, #2
	ldrsh r0, [r5, r1]
	lsl r6, r0, #3
	add r0, r1, #2
	ldrsh r0, [r5, r0]
	add r6, #0x54
	lsl r4, r0, #3
	add r0, r1, #0
	add r0, #0xc
	add r1, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r4, #0x64
	sub r0, r6, r0
	sub r1, r4, r1
	bl ov28_0225DE78
	bl ov28_0225DE88
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0xc
	add r2, r6, #0
	sub r1, #8
	ldr r0, [r5, r0]
	add r2, #0xa
	sub r0, r2, r0
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r2, #0xc
	sub r1, r2, r1
	bl ov28_0225DE78
	bl ov28_0225DE88
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x18
	add r2, r6, #0
	sub r1, #0x14
	ldr r0, [r5, r0]
	sub r2, #0xc
	sub r0, r2, r0
	ldr r1, [r5, r1]
	sub r2, r4, #4
	sub r1, r2, r1
	bl ov28_0225DE78
	bl ov28_0225DE88
	mov r1, #0x8e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x24
	sub r1, #0x20
	ldr r0, [r5, r0]
	sub r6, #8
	ldr r1, [r5, r1]
	sub r4, #8
	sub r0, r6, r0
	sub r1, r4, r1
	bl ov28_0225DE78
	bl ov28_0225DE88
	mov r1, #0x91
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #8
	ldrh r2, [r5, r0]
	ldr r0, _0225E1A0 ; =0xFFFF8000
	add r1, #8
	and r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r5, r1]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225E1A0: .word 0xFFFF8000
	thumb_func_end ov28_0225E0F4

	thumb_func_start ov28_0225E1A4
ov28_0225E1A4: ; 0x0225E1A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	bl ov28_0225DD58
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	bne _0225E1C8
	add r0, r6, #0
	bl ov28_0225DEB0
	mov r0, #0x21
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
	b _0225E236
_0225E1C8:
	sub r0, r0, #4
	ldrsh r0, [r6, r0]
	bl abs
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, _0225E310 ; =0x0000020A
	ldrsh r0, [r6, r0]
	bl abs
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r4, #8
	bgt _0225E1F8
	cmp r0, #8
	bgt _0225E1F8
	add r0, r6, #0
	bl ov28_0225E0F4
	mov r0, #0x21
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r6, r0]
	b _0225E236
_0225E1F8:
	cmp r4, #0xc
	bgt _0225E210
	cmp r0, #0xc
	bgt _0225E210
	add r0, r6, #0
	bl ov28_0225E060
	mov r0, #0x21
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r6, r0]
	b _0225E236
_0225E210:
	cmp r4, #0x11
	bgt _0225E228
	cmp r0, #0x11
	bgt _0225E228
	add r0, r6, #0
	bl ov28_0225DFBC
	mov r0, #0x21
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r6, r0]
	b _0225E236
_0225E228:
	add r0, r6, #0
	bl ov28_0225DF14
	mov r0, #0x21
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r6, r0]
_0225E236:
	mov r1, #0x93
	lsl r1, r1, #2
	ldrh r0, [r6, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _0225E27E
	mov r2, #0x22
	lsl r2, r2, #4
	mov r0, #0
	add r1, r6, #0
	sub r3, r2, #4
	add r4, r2, #0
	add r5, r2, #4
_0225E250:
	ldr r7, [r1, r2]
	add r0, r0, #1
	str r7, [r1, r3]
	ldr r7, [r1, r4]
	str r7, [r1, r5]
	add r1, #0xc
	cmp r0, #4
	blo _0225E250
	mov r1, #0x93
	lsl r1, r1, #2
	ldrh r2, [r6, r1]
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r2
	strh r0, [r6, r1]
	ldrh r2, [r6, r1]
	ldr r0, _0225E314 ; =0xFFFF8000
	add sp, #8
	and r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r6, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0225E27E:
	mov r0, #0
	sub r1, #0x30
	str r0, [sp]
	add r0, r6, r1
	add r4, r6, #0
	str r0, [sp, #4]
_0225E28A:
	mov r0, #0x22
	lsl r0, r0, #4
	mov r1, #0x5a
	ldr r0, [r4, r0]
	lsl r1, r1, #2
	bl _u32_div_f
	mov r0, #0x22
	lsl r0, r0, #4
	str r1, [r4, r0]
	sub r0, r0, #4
	mov r1, #0x5a
	ldr r0, [r4, r0]
	lsl r1, r1, #2
	bl _u32_div_f
	mov r0, #0x87
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r5, [r4, r0]
	add r0, r0, #4
	ldr r7, [r4, r0]
	sub r0, r7, r5
	bl abs
	cmp r0, #0xb4
	blt _0225E2EA
	cmp r7, r5
	bls _0225E2D6
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0xb4
	add r1, r1, r0
	mov r0, #0x87
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0225E2EA
_0225E2D6:
	cmp r7, r5
	bhs _0225E2EA
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r0, #0xb8
	add r1, r1, r0
	mov r0, #0x22
	lsl r0, r0, #4
	str r1, [r4, r0]
_0225E2EA:
	mov r1, #0x21
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	ldr r0, [sp, #4]
	lsl r2, r1, #2
	ldr r1, _0225E318 ; =ov28_0225EAAC
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [sp, #4]
	add r4, #0xc
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #4
	blo _0225E28A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E310: .word 0x0000020A
_0225E314: .word 0xFFFF8000
_0225E318: .word ov28_0225EAAC
	thumb_func_end ov28_0225E1A4

	thumb_func_start ov28_0225E31C
ov28_0225E31C: ; 0x0225E31C
	push {r3, r4}
	cmp r1, #0
	blt _0225E356
	mov r2, #0x21
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	ldr r3, _0225E368 ; =ov28_0225EB84
	ldrb r3, [r3, r4]
	mul r3, r1
	add r1, r2, #0
	add r1, #0x3e
	ldrsh r1, [r0, r1]
	add r3, r1, r3
	add r1, r2, #0
	add r1, #0x3e
	strh r3, [r0, r1]
	ldr r1, [r0, r2]
	lsl r3, r1, #1
	ldr r1, _0225E36C ; =ov28_0225EA90
	ldrb r3, [r1, r3]
	add r1, r2, #0
	add r1, #0x3e
	ldrsh r1, [r0, r1]
	cmp r1, r3
	ble _0225E362
	add r2, #0x3e
	strh r3, [r0, r2]
	pop {r3, r4}
	bx lr
_0225E356:
	ldr r1, _0225E370 ; =0x0000024E
	ldrsh r2, [r0, r1]
	cmp r2, #0
	ble _0225E362
	sub r2, r2, #1
	strh r2, [r0, r1]
_0225E362:
	pop {r3, r4}
	bx lr
	nop
_0225E368: .word ov28_0225EB84
_0225E36C: .word ov28_0225EA90
_0225E370: .word 0x0000024E
	thumb_func_end ov28_0225E31C

	thumb_func_start ov28_0225E374
ov28_0225E374: ; 0x0225E374
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r6, r2, #0
	lsl r2, r1, #1
	ldr r1, _0225E3B4 ; =ov28_0225EA90
	ldrb r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x3e
	ldrsh r1, [r5, r1]
	cmp r1, r2
	ble _0225E396
	add r0, #0x3e
	strh r2, [r5, r0]
_0225E396:
	ldr r0, _0225E3B8 ; =0x0000024E
	mov r1, #0xa
	ldrsh r0, [r5, r0]
	bl _s32_div_f
	mov r1, #1
	and r0, r1
	strh r0, [r4]
	ldr r0, _0225E3B8 ; =0x0000024E
	mov r1, #0x14
	ldrsh r0, [r5, r0]
	bl _s32_div_f
	strh r0, [r6]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225E3B4: .word ov28_0225EA90
_0225E3B8: .word 0x0000024E
	thumb_func_end ov28_0225E374

	thumb_func_start ov28_0225E3BC
ov28_0225E3BC: ; 0x0225E3BC
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0225E420 ; =0x0000024E
	add r5, r0, #0
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0225E3E2
	mov r4, #0
	mov r6, #0x19
	add r7, r4, #0
	lsl r6, r6, #4
_0225E3D0:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _0225E3D0
	pop {r3, r4, r5, r6, r7, pc}
_0225E3E2:
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ov28_0225E374
	mov r7, #0x19
	mov r4, #0
	add r6, sp, #0
	lsl r7, r7, #4
_0225E3F4:
	mov r0, #0x19
	ldrh r1, [r6]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Sprite_SetPalIndexRespectVramOffset
	mov r0, #0x19
	lsl r0, r0, #4
	ldrh r1, [r6, #2]
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, r7]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _0225E3F4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E420: .word 0x0000024E
	thumb_func_end ov28_0225E3BC

	thumb_func_start ov28_0225E424
ov28_0225E424: ; 0x0225E424
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl GF_DegreeToSinCosIdx
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	bl Sprite_SetRotationAndAffineType
	pop {r4, pc}
	thumb_func_end ov28_0225E424

	thumb_func_start ov28_0225E43C
ov28_0225E43C: ; 0x0225E43C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	lsl r2, r1, #0x11
	lsr r4, r2, #0x11
	beq _0225E50E
	ldr r2, _0225E514 ; =0xFFFF8000
	lsr r3, r2, #0x10
	add r3, r4, r3
	lsl r3, r3, #0x10
	and r1, r2
	lsr r3, r3, #0x10
	lsr r2, r2, #0x11
	and r2, r3
	orr r1, r2
	strh r1, [r5, r0]
	ldrh r1, [r5, r0]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	bne _0225E4B0
	mov r6, #0
	add r4, r5, #0
	add r7, sp, #4
_0225E470:
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
	mov r1, #0x87
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl ov28_0225DE04
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl Sprite_SetMatrix
	mov r0, #0x19
	mov r1, #0x87
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl ov28_0225E424
	add r6, r6, #1
	add r5, #0xc
	add r4, r4, #4
	cmp r6, #4
	blo _0225E470
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0225E4B0:
	mov r1, #0
	sub r0, #0x30
	str r1, [sp]
	add r4, r5, #0
	add r6, r5, #0
	add r7, r5, r0
_0225E4BC:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	str r1, [r4, r0]
	mov r1, #0x87
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, sp, #4
	bl ov28_0225DE04
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	add r1, sp, #4
	bl Sprite_SetMatrix
	mov r0, #0x19
	mov r1, #0x87
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r6, r0]
	ldr r1, [r4, r1]
	bl ov28_0225E424
	mov r1, #0x21
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r7, #0
	lsl r2, r1, #2
	ldr r1, _0225E518 ; =ov28_0225EAAC
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [sp]
	add r4, #0xc
	add r0, r0, #1
	add r6, r6, #4
	add r7, #0xc
	str r0, [sp]
	cmp r0, #4
	blo _0225E4BC
_0225E50E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E514: .word 0xFFFF8000
_0225E518: .word ov28_0225EAAC
	thumb_func_end ov28_0225E43C

