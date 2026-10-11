	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6188
	.extern ov99_021E5B70
	.extern ov99_021E5B90

	.text

	.text
	thumb_func_start ov99_021E6188
ov99_021E6188: ; 0x021E6188
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r6, r1, #0
	add r0, r4, #0
	bl ov98_0221EEFC
	lsl r2, r6, #0x18
	mov r1, #0
	lsr r2, r2, #0x18
	add r7, r0, #0
	bl BufferPokeathlonMedalName
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, [r5, #0x10]
	mov r2, #4
	add r3, r1, #0
	bl ov98_0221EC08
	lsl r2, r6, #0x18
	add r0, r7, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl BufferPokeathlonCourseName
	mov r1, #3
	ldr r0, [r5, #0x10]
	add r2, r1, #0
	mov r3, #1
	bl ov98_0221EBD8
	ldr r0, [r5]
	bl ov99_021E5B70
	cmp r0, #0
	beq _021E6216
	ldr r0, [r5]
	add r1, r6, #0
	bl ov99_021E5B90
	bl ov98_0221EF64
	cmp r0, #0
	bne _021E61F2
	ldr r0, [r5, #0x10]
	mov r1, #4
	mov r2, #5
	mov r3, #1
	bl ov98_0221EBD8
	pop {r3, r4, r5, r6, r7, pc}
_021E61F2:
	cmp r0, #1
	bne _021E6204
	ldr r0, [r5, #0x10]
	mov r1, #4
	mov r2, #6
	mov r3, #1
	bl ov98_0221EBD8
	pop {r3, r4, r5, r6, r7, pc}
_021E6204:
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x40
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	add r0, #0x40
	bl ScheduleWindowCopyToVram
_021E6216:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov99_021E6188

