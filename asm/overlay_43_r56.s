	.include "macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B374
	.extern ov43_0222B278
	.extern ov43_0222B324

	.text

	.text
	thumb_func_start ov43_0222B374
ov43_0222B374: ; 0x0222B374
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r3, #0
	str r3, [sp]
	add r3, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov43_0222B324
	ldr r1, [sp]
	cmp r1, #0
	beq _0222B396
	mov r1, #1
	add sp, #4
	str r1, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B396:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov43_0222B278
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov43_0222B374

