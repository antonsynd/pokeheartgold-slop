	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02245390
	.extern ov83_02246C70

    .text

	.text
	thumb_func_start ov83_02245390
ov83_02245390: ; 0x02245390
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xf]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022453AC
	ldr r0, _022453B8 ; =0x000005F8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_DestroyButtons
	add r0, r4, #0
	bl ov83_02246C70
_022453AC:
	ldr r0, _022453BC ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	pop {r4, pc}
	nop
_022453B8: .word 0x000005F8
_022453BC: .word 0x00000604
	thumb_func_end ov83_02245390

