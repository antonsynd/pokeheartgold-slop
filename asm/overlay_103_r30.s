	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED550
	.extern ov103_021EEC78

	.text

	.text
	thumb_func_start ov103_021ED550
ov103_021ED550: ; 0x021ED550
	push {r3, lr}
	ldr r2, [r0, #0x18]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021ED564 ; =ov103_021EEC78
	ldr r1, [r1, r3]
	blx r1
	mov r0, #7
	pop {r3, pc}
	.balign 4, 0
_021ED564: .word ov103_021EEC78
	thumb_func_end ov103_021ED550

