	.include "asm/macros.inc"
	.include "overlay_41_02249A40.inc"
	.include "global.inc"
	.public ov41_0224A448
	.extern ov41_0224C094

    .text

	.text
	thumb_func_start ov41_0224A448
ov41_0224A448: ; 0x0224A448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	mov r4, #0xff
	cmp r0, #0
	bne _0224A458
	bl GF_AssertFail
_0224A458:
	add r0, r5, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	beq _0224A48C
	add r0, r5, #0
	add r0, #0x84
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r5, #0
	add r1, #0x84
	ldrh r2, [r1]
	mov r1, #1
	add r0, r5, #0
	eor r2, r1
	ldr r1, _0224A4E4 ; =ov41_0224C094
	add r0, #0x86
	ldrb r1, [r1, r2]
	ldrh r0, [r0]
	add r2, r5, #0
	bl ov41_0224A60C
	pop {r3, r4, r5, pc}
_0224A48C:
	ldr r0, _0224A4E8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	add r2, r1, #0
	tst r2, r0
	beq _0224A49C
	mov r4, #4
	b _0224A4C2
_0224A49C:
	mov r2, #0x40
	tst r2, r1
	beq _0224A4A6
	mov r4, #1
	b _0224A4C2
_0224A4A6:
	mov r2, #0x80
	tst r2, r1
	beq _0224A4B0
	mov r4, #0
	b _0224A4C2
_0224A4B0:
	mov r2, #0x20
	tst r2, r1
	beq _0224A4BA
	mov r4, #2
	b _0224A4C2
_0224A4BA:
	mov r2, #0x10
	tst r1, r2
	beq _0224A4C2
	add r4, r0, #0
_0224A4C2:
	cmp r4, #0xff
	beq _0224A4E2
	add r0, r5, #0
	add r0, #0x86
	strh r4, [r0]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x84
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x86
	ldrh r0, [r0]
	mov r1, #0
	add r2, r5, #0
	bl ov41_0224A60C
_0224A4E2:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0224A4E4: .word ov41_0224C094
_0224A4E8: .word gSystem
	thumb_func_end ov41_0224A448

