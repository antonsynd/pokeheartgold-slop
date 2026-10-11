	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223D24
	.extern ov13_02223770
	.extern ov13_0224DF30
	.extern ov13_0224DFB0

	.text

	.text
	thumb_func_start ov13_02223D24
ov13_02223D24: ; 0x02223D24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _02223DD0 ; =ov13_0224DF30
	add r0, #0x63
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x28]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _02223DD4 ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2, #0x3c]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x4c]
	add r6, #0xdf
	bic r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	add r5, r5, r1
	ldr r1, [r0, #4]
	sub r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	mov r1, #3
	str r1, [r0]
	ldr r0, _02223DD8 ; =ov13_0224DFB0
	str r7, [r0]
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _02223D98
	sub r3, #0x1f
	ldr r0, [r2, #0x3c]
	add r1, r3, #0
	bl WCM_Init
	cmp r0, #0
	beq _02223D92
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223D92:
	ldr r0, _02223DD0 ; =ov13_0224DF30
	mov r1, #1
	str r1, [r0, #0x2c]
_02223D98:
	ldr r0, _02223DD0 ; =ov13_0224DF30
	ldr r1, [r0, #0x2c]
	cmp r1, #1
	bne _02223DC6
	ldr r0, [r0, #8]
	ldr r1, _02223DDC ; =ov13_02223770
	bl WCM_StartupAsync
	cmp r0, #3
	beq _02223DB6
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223DB6:
	ldr r0, _02223DD0 ; =ov13_0224DF30
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223DC6:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02223DD0: .word ov13_0224DF30
_02223DD4: .word 0x0000231F
_02223DD8: .word ov13_0224DFB0
_02223DDC: .word ov13_02223770
	thumb_func_end ov13_02223D24

