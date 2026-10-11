	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022228A4
	.extern ov13_0224DD80

	.text

	.text
	thumb_func_start ov13_022228A4
ov13_022228A4: ; 0x022228A4
	push {r3, lr}
	cmp r1, #0
	ble _022228B4
	add r0, r1, #0
	ldr r1, _022228B8 ; =ov13_0224DD80
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
_022228B4:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_022228B8: .word ov13_0224DD80
	thumb_func_end ov13_022228A4

