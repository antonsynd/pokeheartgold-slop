	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222ADB8
	.public ov43_0222C358
	.public ov43_0222C5D8

	.text

	thumb_func_start ov43_0222C358
ov43_0222C358: ; 0x0222C358
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov43_0222C5D8
	cmp r0, #0
	bne _0222C36A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222C36A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov43_0222ADB8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov43_0222C358

