	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public HandleFadeUpdateFrame
	.extern DoFadeUpdateFrame
	.extern HandleEndFade
	.extern _021D0EF4
	.extern _021D1034

	.text
	thumb_func_start HandleFadeUpdateFrame
HandleFadeUpdateFrame: ; 0x0200FB2C
	push {r4, lr}
	ldr r0, _0200FB54 ; =_021D1034
	ldr r4, _0200FB58 ; =_021D0EF4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _0200FB50
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #0
	add r1, #0x14
	add r2, #0x44
	bl DoFadeUpdateFrame
	cmp r0, #1
	bne _0200FB50
	add r0, r4, #0
	bl HandleEndFade
_0200FB50:
	pop {r4, pc}
	nop
_0200FB54: .word _021D1034
_0200FB58: .word _021D0EF4
	thumb_func_end HandleFadeUpdateFrame

