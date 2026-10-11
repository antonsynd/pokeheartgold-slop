	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222D2AC

	.text

	.text
	thumb_func_start ov80_0222D2AC
ov80_0222D2AC: ; 0x0222D2AC
	push {r3, lr}
	ldr r0, _0222D2C8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0222D2C0
	bl System_GetTouchNew
	cmp r0, #0
	beq _0222D2C4
_0222D2C0:
	mov r0, #1
	pop {r3, pc}
_0222D2C4:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0222D2C8: .word gSystem
	thumb_func_end ov80_0222D2AC

