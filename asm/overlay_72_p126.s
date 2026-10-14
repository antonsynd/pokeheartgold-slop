	.include "macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223AB84
	.extern ov72_0223A738
	.extern ov72_0223A8F0
	.extern ov72_0223AA9C
	.extern ov72_0223ABB0

	.text

	.text
	thumb_func_start ov72_0223AB84
ov72_0223AB84: ; 0x0223AB84
	push {r4, lr}
	add r4, r0, #0
	bl ov72_0223A738
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0223AB9E
	add r0, r4, #0
	bl ov72_0223AA9C
	b _0223ABA4
_0223AB9E:
	add r0, r4, #0
	bl ov72_0223A8F0
_0223ABA4:
	add r0, r4, #0
	bl ov72_0223ABB0
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov72_0223AB84

