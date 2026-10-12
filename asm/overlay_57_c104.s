	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B478

	.text

	.text
	thumb_func_start ov57_0223B478
ov57_0223B478: ; 0x0223B478
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223B500 ; =gSystem
	mov r1, #0x10
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _0223B496
	ldr r0, [r4]
	mov r1, #0xc
	add r0, r0, #1
	str r0, [r4]
	bl _s32_div_f
	str r1, [r4]
	b _0223B4FC
_0223B496:
	mov r1, #0x20
	tst r1, r0
	beq _0223B4AE
	ldr r0, [r4]
	cmp r0, #0
	ble _0223B4A8
	sub r0, r0, #1
	str r0, [r4]
	b _0223B4FC
_0223B4A8:
	mov r0, #0xb
	str r0, [r4]
	b _0223B4FC
_0223B4AE:
	mov r1, #0x40
	tst r1, r0
	beq _0223B4D2
	ldr r1, [r4]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	beq _0223B4CE
	sub r0, r1, #4
	mov r1, #0xc
	str r0, [r4]
	bl _s32_div_f
	str r1, [r4]
	b _0223B4FC
_0223B4CE:
	mov r0, #0
	pop {r4, pc}
_0223B4D2:
	mov r1, #0x80
	tst r0, r1
	beq _0223B4F8
	ldr r1, [r4]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	cmp r0, #2
	beq _0223B4F4
	add r0, r1, #4
	mov r1, #0xc
	str r0, [r4]
	bl _s32_div_f
	str r1, [r4]
	b _0223B4FC
_0223B4F4:
	mov r0, #0
	pop {r4, pc}
_0223B4F8:
	mov r0, #0
	pop {r4, pc}
_0223B4FC:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_0223B500: .word gSystem
	thumb_func_end ov57_0223B478

