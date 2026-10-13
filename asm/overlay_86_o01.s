	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E5A40
	.extern ov86_021E5B38
	.extern ov86_021E5BA0
	.extern ov86_021E5C94
	.extern ov86_021E5E90
	.extern ov86_021E703C

	.text

	.text
	thumb_func_start ov86_021E5A40
ov86_021E5A40: ; 0x021E5A40
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021E5A5A
	cmp r1, #1
	beq _021E5A6E
	cmp r1, #2
	beq _021E5A82
	b _021E5A8E
_021E5A5A:
	bl ov86_021E5B38
	cmp r0, #1
	bne _021E5A8E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov86_021E5E90
	b _021E5A8E
_021E5A6E:
	bl ov86_021E5BA0
	cmp r0, #1
	bne _021E5A8E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov86_021E5E90
	b _021E5A8E
_021E5A82:
	bl ov86_021E5C94
	cmp r0, #1
	bne _021E5A8E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5A8E:
	add r0, r4, #0
	bl ov86_021E703C
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl SpriteSystem_DrawSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov86_021E5A40

