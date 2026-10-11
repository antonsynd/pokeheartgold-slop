	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE078

	.text

	.text
	thumb_func_start ov103_021EE078
ov103_021EE078: ; 0x021EE078
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	mov r1, #0x96
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021EE090
	bl Sprite_DeleteAndFreeResources
	mov r0, #0
	str r0, [r4, r5]
_021EE090:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov103_021EE078

