	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02241E18
	.public ov83_022421E0
	.public ov83_02242814

    .text

	thumb_func_start ov83_02242814
ov83_02242814: ; 0x02242814
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov83_02241E18
	add r0, r4, #0
	add r1, r5, #0
	bl ov83_022421E0
	mov r3, #0x1e
	lsl r3, r3, #6
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0x8c
	ldr r0, [r4, r3]
	add r1, #0x88
	add r3, #0x94
	ldrh r2, [r4, r2]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	bl ov83_02247668
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02242814

