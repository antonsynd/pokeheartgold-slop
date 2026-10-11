	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AB20
	.public ov43_0222C32C
	.public ov43_0222C550
	.public ov43_0222C620

	.text

	thumb_func_start ov43_0222C32C
ov43_0222C32C: ; 0x0222C32C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov43_0222C620
	add r2, r0, #0
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	ldr r1, [r5, #4]
	add r0, r4, #0
	add r3, r6, #0
	bl ov43_0222AB20
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x39
	add r3, r6, #0
	bl ov43_0222C550
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222C32C

