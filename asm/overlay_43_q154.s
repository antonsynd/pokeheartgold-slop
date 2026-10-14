	.include "macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DF1C

	.text

	.text
	thumb_func_start ov43_0222DF1C
ov43_0222DF1C: ; 0x0222DF1C
	push {r3, r4, r5, r6, r7, lr}
	lsl r1, r1, #2
	add r5, r0, r1
	ldr r0, [r5, #0x2c]
	mov r6, #0
	cmp r0, #0
	bls _0222DF4A
	add r4, r6, #0
	add r7, r6, #0
_0222DF2E:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	add r0, r0, r4
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x2c]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blo _0222DF2E
_0222DF4A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222DF1C

