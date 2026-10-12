	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02226F04
	.extern ov07_0221C448
	.extern ov07_02226CB0

	.text

	.text
	thumb_func_start ov07_02226F04
ov07_02226F04: ; 0x02226F04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02226F16
	add r0, r4, #0
	bl ov07_02226CB0
_02226F16:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	blt _02226F6E
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02226F7C ; =0xFFFF1FFF
	and r1, r2
	add r2, r0, #0
	str r1, [r0]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	bic r3, r1
	strh r3, [r2]
	add r2, r0, #0
	add r2, #0x4a
	ldrh r3, [r2]
	bic r3, r1
	strh r3, [r2]
	add r2, r0, #0
	mov r1, #0
	add r2, #0x40
	strh r1, [r2]
	add r0, #0x44
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0xc]
	bl SpriteSystem_DrawSprites
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, pc}
_02226F6E:
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0xc]
	bl SpriteSystem_DrawSprites
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02226F7C: .word 0xFFFF1FFF
	thumb_func_end ov07_02226F04

