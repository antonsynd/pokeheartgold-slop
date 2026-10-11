	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E607C
	.extern ov99_021E5BB4
	.extern ov99_021E5BD8
	.extern ov99_021E5C20
	.extern ov99_021E958C

	.text

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

