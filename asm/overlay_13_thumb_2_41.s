	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022235A4
	.extern ov13_0224DEE0

	.text

	.text
	thumb_func_start ov13_022235A4
ov13_022235A4: ; 0x022235A4
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _022235D8 ; =ov13_0224DEE0
	ldr r0, [r0, #0x18]
	cmp r0, #7
	bne _022235CC
	bl WCM_DisconnectAsync
	cmp r0, #3
	bne _022235CC
	ldr r0, _022235D8 ; =ov13_0224DEE0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_022235CC:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	nop
_022235D8: .word ov13_0224DEE0
	thumb_func_end ov13_022235A4

