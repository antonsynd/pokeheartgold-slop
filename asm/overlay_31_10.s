	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225DAA4
	.extern _0225EF40

	.text

	.text
	thumb_func_start ov31_0225DAA4
ov31_0225DAA4: ; 0x0225DAA4
	push {r4, lr}
	add r4, r1, #0
	beq _0225DAB2
	cmp r4, #1
	beq _0225DAB2
	bl GF_AssertFail
_0225DAB2:
	ldr r0, _0225DAC0 ; =_0225EF40
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r4, pc}
	nop
_0225DAC0: .word _0225EF40
	thumb_func_end ov31_0225DAA4

