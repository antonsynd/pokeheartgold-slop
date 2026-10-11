	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CA9C
	.public ov91_0225CD84

	.text

	thumb_func_start ov91_0225CA9C
ov91_0225CA9C: ; 0x0225CA9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #8
	add r1, r2, #0
	bl ov90_0225886C
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225CAB8
	add r1, r4, #0
	bl ov91_0225CD84
_0225CAB8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov91_0225CA9C

