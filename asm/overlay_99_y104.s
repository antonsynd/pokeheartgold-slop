	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E9464
	.public ov99_021E94CC
	.extern ov99_021E9430

	.text

	.text
	thumb_func_start ov99_021E9464
ov99_021E9464: ; 0x021E9464
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r6, #0
	bne _021E9476
	bl GF_AssertFail
_021E9476:
	cmp r4, #5
	blt _021E947E
	bl GF_AssertFail
_021E947E:
	ldr r0, [sp, #0x18]
	cmp r0, #3
	blt _021E9488
	bl GF_AssertFail
_021E9488:
	lsl r1, r7, #0x18
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov99_021E9430
	lsl r1, r4, #3
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	lsl r0, r0, #1
	add r0, r1, r0
	ldrh r0, [r0, #2]
	ldr r1, _021E94C4 ; =0xFFFFFE00
	add r3, r2, #0
	lsr r2, r1, #0x16
	and r3, r1
	and r2, r0
	lsr r1, r1, #0x17
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	ldr r1, _021E94C8 ; =0xFFFFC1FF
	asr r0, r0, #0xa
	lsl r0, r0, #0x1b
	and r1, r2
	lsr r0, r0, #0x12
	orr r0, r1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E94C4: .word 0xFFFFFE00
_021E94C8: .word 0xFFFFC1FF
	thumb_func_end ov99_021E9464

	thumb_func_start ov99_021E94CC
ov99_021E94CC: ; 0x021E94CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _021E94DE
	bl GF_AssertFail
_021E94DE:
	cmp r4, #5
	blo _021E94E6
	bl GF_AssertFail
_021E94E6:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	bl ov99_021E9430
	add r1, r4, #0
	bl ov98_0221F01C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov99_021E94CC

