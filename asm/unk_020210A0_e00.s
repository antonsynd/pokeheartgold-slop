	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public GF_TouchpadInit
	.extern _021D2198

	.text
	thumb_func_start GF_TouchpadInit
GF_TouchpadInit: ; 0x020210A0
	mov r0, #0
	ldr r3, _020210B8 ; =_021D2198
	add r1, r0, #0
	mov r2, #5
_020210A8:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020210A8
	stmia r3!, {r0, r1}
	str r0, [r3]
	bx lr
	nop
_020210B8: .word _021D2198
	thumb_func_end GF_TouchpadInit

