	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223C10
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02223C10
ov13_02223C10: ; 0x02223C10
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02223C44 ; =ov13_0224DF30
	ldr r0, [r0, #0x2c]
	cmp r0, #7
	bne _02223C38
	bl WCM_DisconnectAsync
	cmp r0, #3
	bne _02223C38
	ldr r0, _02223C44 ; =ov13_0224DF30
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02223C38:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	nop
_02223C44: .word ov13_0224DF30
	thumb_func_end ov13_02223C10

