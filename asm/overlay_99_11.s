	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5B70
	.public ov99_021E5B90
	.public ov99_021E5BB4
	.public ov99_021E5BD8
	.public ov99_021E5C20
	.public ov99_021E5C4C
	.public ov99_021E607C
	.public ov99_021E6144
	.public ov99_021E6188
	.public ov99_021E958C

	.text

	thumb_func_start ov99_021E607C
ov99_021E607C: ; 0x021E607C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r7, r1, #0
	bl ov98_0221EEFC
	ldr r4, _021E6140 ; =ov99_021E958C
	str r0, [sp, #8]
	mov r6, #0
_021E6090:
	lsl r2, r6, #0x18
	ldr r0, [r5]
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ov99_021E5C20
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r0, [sp, #8]
	mov r1, #1
	lsr r2, r2, #0x18
	bl BufferPokeathlonEventName
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r1, [r4]
	mov r2, #0xa
	add r3, r6, #1
	bl ov98_0221ECD0
	ldr r0, [r5]
	add r1, r7, #0
	bl ov99_021E5BB4
	cmp r0, #0
	beq _021E60EC
	lsl r2, r6, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl ov99_021E5BD8
	add r3, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r1, [r4, #4]
	mov r2, #8
	bl ov98_0221ECD0
	b _021E60F8
_021E60EC:
	ldr r0, [r5, #0x10]
	ldr r1, [r4, #4]
	mov r2, #9
	mov r3, #0
	bl ov98_0221EBD8
_021E60F8:
	add r6, r6, #1
	add r4, #8
	cmp r6, #3
	blt _021E6090
	ldr r0, [r5]
	add r1, r7, #0
	bl ov99_021E5BB4
	cmp r0, #0
	beq _021E612E
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #3
	bl ov99_021E5BD8
	add r3, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0xc
	mov r2, #8
	bl ov98_0221ECD0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E612E:
	ldr r0, [r5, #0x10]
	mov r1, #0xc
	mov r2, #9
	mov r3, #0
	bl ov98_0221EBD8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E6140: .word ov99_021E958C
	thumb_func_end ov99_021E607C

	thumb_func_start ov99_021E6144
ov99_021E6144: ; 0x021E6144
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x10]
	add r7, r1, #0
	mov r4, #0
_021E614E:
	cmp r7, #0
	beq _021E6174
	add r1, r6, #0
	add r1, #0x88
	ldr r1, [r1]
	lsl r2, r4, #0x18
	lsl r1, r1, #0x18
	ldr r0, [r6]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov99_021E5C4C
	add r1, r4, #0
	add r2, r0, #0
	add r0, r5, #0
	add r1, #0xe
	bl ov98_0221EE28
	b _021E617E
_021E6174:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xe
	bl ov98_0221EE84
_021E617E:
	add r4, r4, #1
	cmp r4, #3
	blt _021E614E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov99_021E6144

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

