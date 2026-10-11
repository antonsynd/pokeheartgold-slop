	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDF68

	.text

	thumb_func_start ov103_021EDF68
ov103_021EDF68: ; 0x021EDF68
	push {r4, r5, r6, lr}
	mov r6, #0x96
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021EDF72:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021EDF7C
	bl ManagedSprite_TickFrame
_021EDF7C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blo _021EDF72
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDF68

