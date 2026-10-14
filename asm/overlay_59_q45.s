	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022390A8

	.text

	.text
	thumb_func_start ov59_022390A8
ov59_022390A8: ; 0x022390A8
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	ldrh r0, [r4, #0x3e]
	beq _02239132
	cmp r0, #0
	beq _022390BC
	cmp r0, #1
	beq _022390D8
	b _02239198
_022390BC:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	ldrh r0, [r4, #0x3e]
	add r0, r0, #1
	strh r0, [r4, #0x3e]
	b _02239198
_022390D8:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r2, #2
	bl Sprite_OffsetPositionXY
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	sub r2, r1, #1
	bl Sprite_OffsetPositionXY
	add r0, r4, #0
	add r0, #0x51
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x51
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x51
	strb r1, [r0]
	cmp r2, #2
	blo _02239198
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	strh r1, [r4, #0x3e]
	mov r0, #1
	pop {r4, pc}
_02239132:
	cmp r0, #0
	beq _0223913C
	cmp r0, #1
	beq _02239158
	b _02239198
_0223913C:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	ldrh r0, [r4, #0x3e]
	add r0, r0, #1
	strh r0, [r4, #0x3e]
	b _02239198
_02239158:
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r4, r0]
	sub r2, r1, #2
	bl Sprite_OffsetPositionXY
	add r0, r4, #0
	add r0, #0x51
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x51
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x51
	strb r1, [r0]
	cmp r2, #3
	blo _02239198
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	strh r1, [r4, #0x3e]
	mov r0, #1
	pop {r4, pc}
_02239198:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov59_022390A8

