	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E821C
	.extern ov102_021E7A58
	.extern ov102_021E8178

	.text

	.text
	thumb_func_start ov102_021E821C
ov102_021E821C: ; 0x021E821C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #1
	bhi _021E8234
	bl ov102_021E7A58
	cmp r0, #0
	beq _021E8234
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E8234:
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E8178
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021E821C

