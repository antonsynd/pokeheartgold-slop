	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223568
	.extern ov13_0224DEE0

	.text

	.text
	thumb_func_start ov13_02223568
ov13_02223568: ; 0x02223568
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _022235A0 ; =ov13_0224DEE0
	ldr r0, [r0, #0x18]
	cmp r0, #5
	bne _02223596
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl WCM_SearchAsync
	cmp r0, #3
	bne _02223596
	ldr r0, _022235A0 ; =ov13_0224DEE0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02223596:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_022235A0: .word ov13_0224DEE0
	thumb_func_end ov13_02223568

