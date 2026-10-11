	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5BB4
	.public ov99_021E6218

	.text

	thumb_func_start ov99_021E6218
ov99_021E6218: ; 0x021E6218
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x88
	ldr r0, [r5]
	ldr r1, [r1]
	ldr r4, [r5, #0x10]
	bl ov99_021E5BB4
	cmp r0, #0
	beq _021E623C
	ldr r0, [r5, #0x10]
	mov r1, #0xd
	mov r2, #1
	mov r3, #0
	bl ov98_0221EBD8
	pop {r3, r4, r5, pc}
_021E623C:
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0xd0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	add r0, #0xd0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, pc}
	thumb_func_end ov99_021E6218

