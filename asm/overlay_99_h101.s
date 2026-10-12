	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8198
	.public ov99_021E8224
	.extern ov99_021E7150
	.extern ov99_021E718C
	.extern ov99_021E724C

	.text

	.text
	thumb_func_start ov99_021E8198
ov99_021E8198: ; 0x021E8198
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	mov r0, #0
	add r2, sp, #0x10
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [sp, #8]
	str r0, [r2]
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp]
_021E81BA:
	ldr r0, [sp]
	mov r4, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r5, #0x30
	str r0, [sp, #0xc]
_021E81C6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r7, r4, r0
	add r0, r7, #2
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x20]
	add r0, sp, #0x10
	strh r5, [r0]
	strh r1, [r0, #2]
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, _021E821C ; =0x00000404
	add r1, sp, #0x10
	ldr r0, [r6, r0]
	bl ov98_0221E6E0
	add r7, #0x14
	lsl r1, r7, #2
	add r2, r6, r1
	ldr r1, _021E8220 ; =0x00000408
	add r4, r4, #1
	add r5, #0x20
	str r0, [r2, r1]
	cmp r4, #6
	blo _021E81C6
	ldr r0, [sp, #4]
	add r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blo _021E81BA
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021E821C: .word 0x00000404
_021E8220: .word 0x00000408
	thumb_func_end ov99_021E8198

	thumb_func_start ov99_021E8224
ov99_021E8224: ; 0x021E8224
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	bl ov98_0221EEFC
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	mov r1, #0xb
	mov r2, #0x7e
	mov r3, #3
	bl ov98_0221EC24
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	mov r2, #0x7f
	mov r3, #1
	bl ov98_0221EC08
	mov r2, #0
	mov r1, #4
	str r2, [sp]
	str r1, [sp, #4]
	lsl r0, r1, #8
	ldr r0, [r5, r0]
	mov r3, #1
	bl ov98_0221EBEC
	mov r7, #1
	mov r4, #0
	lsl r7, r7, #0xa
_021E8270:
	lsl r2, r4, #0x18
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl BufferPokeathlonMedalName
	ldr r0, [r5, r7]
	add r1, r4, #6
	mov r2, #4
	mov r3, #0
	bl ov98_0221EBD8
	add r4, r4, #1
	cmp r4, #5
	blt _021E8270
	add r0, r5, #0
	bl ov99_021E718C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0x80
	add r3, r1, #0
	bl ov98_0221EC08
	add r0, r5, #0
	bl ov99_021E7150
	cmp r0, #0
	beq _021E82E0
	add r0, r5, #0
	bl ov99_021E724C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, #0x71
	mov r3, #1
	bl ov98_0221EC08
_021E82E0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov99_021E8224

