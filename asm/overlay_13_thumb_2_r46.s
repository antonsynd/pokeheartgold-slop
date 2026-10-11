	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223C48
	.extern ov13_02223A7C
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02223C48
ov13_02223C48: ; 0x02223C48
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _02223C9C ; =ov13_0224DF30
	ldr r0, [r0, #0x2c]
	cmp r0, #3
	bne _02223C7A
	bl WCM_CleanupAsync
	cmp r0, #3
	beq _02223C6A
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_02223C6A:
	ldr r0, _02223C9C ; =ov13_0224DF30
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02223C7A:
	bl ov13_02223A7C
	cmp r0, #1
	bne _02223C92
	ldr r0, _02223C9C ; =ov13_0224DF30
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02223C92:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_02223C9C: .word ov13_0224DF30
	thumb_func_end ov13_02223C48

