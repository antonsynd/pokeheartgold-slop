	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225BDAC

	.text

	.text
	thumb_func_start ov27_0225BDAC
ov27_0225BDAC: ; 0x0225BDAC
	ldr r1, _0225BDC4 ; =0x0000051C
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	sub r0, r0, #2
	cmp r0, #4
	bls _0225BDBE
	mov r0, #1
	bx lr
_0225BDBE:
	mov r0, #0
	bx lr
	nop
_0225BDC4: .word 0x0000051C
	thumb_func_end ov27_0225BDAC

