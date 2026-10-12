	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E7BC8

	.text

	.text
	thumb_func_start ov68_021E7BC8
ov68_021E7BC8: ; 0x021E7BC8
	push {r3, lr}
	cmp r0, #1
	ldr r0, _021E7BE4 ; =0x04001050
	bne _021E7BDC
	mov r1, #0x1e
	add r2, r1, #0
	sub r2, #0x26
	bl G2x_SetBlendBrightness_
	pop {r3, pc}
_021E7BDC:
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	nop
_021E7BE4: .word 0x04001050
	thumb_func_end ov68_021E7BC8

