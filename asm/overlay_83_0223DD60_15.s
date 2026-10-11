	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240080
	.public ov83_022400BC

    .text

	thumb_func_start ov83_02240080
ov83_02240080: ; 0x02240080
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _022400B2
_0224009E:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov83_022400BC
	add r4, r4, #1
	cmp r4, r6
	blt _0224009E
_022400B2:
	add r0, r7, #0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_02240080

