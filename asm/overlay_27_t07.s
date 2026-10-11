	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225A4D0
	.extern ov27_0225BDC8

	.text

	.text
	thumb_func_start ov27_0225A4D0
ov27_0225A4D0: ; 0x0225A4D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov27_0225BDC8
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_GetState
	cmp r0, #1
	beq _0225A4F2
	ldr r0, [r5, #0x10]
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	beq _0225A4F4
_0225A4F2:
	mov r4, #0
_0225A4F4:
	cmp r4, #0
	beq _0225A512
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	b _0225A52A
_0225A512:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0225A52A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov27_0225A4D0

