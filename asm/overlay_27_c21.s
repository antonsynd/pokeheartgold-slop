	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225A8E8
	.public ov27_0225A9C0
	.extern ov27_0225B398
	.extern ov27_0225B4AC
	.extern ov27_0225BDAC

	.text

	.text
	thumb_func_start ov27_0225A8E8
ov27_0225A8E8: ; 0x0225A8E8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	cmp r1, #0
	beq _0225A9AE
	ldr r1, _0225A9B8 ; =0x0000051C
	ldr r1, [r4, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1c
	cmp r1, #5
	bne _0225A912
	ldr r1, [r4, #0x10]
	add r1, #0xd2
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bne _0225A912
	mov r1, #0
	mvn r1, r1
	bl ov27_0225B398
_0225A912:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	ldr r0, [r4, #0x10]
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	beq _0225A974
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r1, [r4, #0x14]
	add r0, r4, r0
	bl ov27_0225B4AC
	b _0225A982
_0225A974:
	mov r0, #0x39
	lsl r0, r0, #4
	mov r1, #0
	add r0, r4, r0
	mvn r1, r1
	bl ov27_0225B4AC
_0225A982:
	ldr r0, _0225A9B8 ; =0x0000051C
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	cmp r0, #2
	bne _0225A99A
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetOamMode
_0225A99A:
	mov r0, #9
	str r0, [sp]
	ldr r0, _0225A9BC ; =0x04001050
	mov r1, #0
	mov r2, #0x23
	mov r3, #6
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_0225A9AE:
	ldr r0, _0225A9BC ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0225A9B8: .word 0x0000051C
_0225A9BC: .word 0x04001050
	thumb_func_end ov27_0225A8E8

	thumb_func_start ov27_0225A9C0
ov27_0225A9C0: ; 0x0225A9C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov27_0225BDAC
	cmp r0, #0
	bne _0225A9D0
	mov r4, #0
_0225A9D0:
	cmp r4, #0
	beq _0225AA2E
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_Bag_Get
	add r4, r0, #0
	bl Bag_GetRegisteredItem1
	cmp r0, #0
	beq _0225A9EA
	mov r6, #1
	b _0225A9EC
_0225A9EA:
	mov r6, #0
_0225A9EC:
	add r0, r4, #0
	bl Bag_GetRegisteredItem2
	cmp r0, #0
	beq _0225A9FA
	mov r4, #1
	b _0225A9FC
_0225A9FA:
	mov r4, #0
_0225A9FC:
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Sprite_SetDrawFlag
	pop {r4, r5, r6, pc}
_0225AA2E:
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	pop {r4, r5, r6, pc}
	thumb_func_end ov27_0225A9C0

