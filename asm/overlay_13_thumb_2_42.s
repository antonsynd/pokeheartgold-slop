	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022235DC
	.extern ov13_022233CC
	.extern ov13_0224DEE0

	.text

	.text
	thumb_func_start ov13_022235DC
ov13_022235DC: ; 0x022235DC
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02223630 ; =ov13_0224DEE0
	ldr r0, [r0, #0x18]
	cmp r0, #3
	bne _0222360E
	bl WCM_CleanupAsync
	cmp r0, #3
	beq _022235FE
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_022235FE:
	ldr r0, _02223630 ; =ov13_0224DEE0
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_0222360E:
	bl ov13_022233CC
	cmp r0, #1
	bne _02223626
	ldr r0, _02223630 ; =ov13_0224DEE0
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02223626:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_02223630: .word ov13_0224DEE0
	thumb_func_end ov13_022235DC

