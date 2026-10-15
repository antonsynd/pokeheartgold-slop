	.include "macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7D0C
	.extern ov102_021E7A58
	.extern ov102_021E7C84

	.text

	.text
	thumb_func_start ov102_021E7D0C
ov102_021E7D0C: ; 0x021E7D0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #0
	bne _021E7D24
	bl ov102_021E7A58
	cmp r0, #0
	beq _021E7D24
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7D24:
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E7C84
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021E7D0C

