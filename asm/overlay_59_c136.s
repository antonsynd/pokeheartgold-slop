	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223C3F0

	.text

	.text
	thumb_func_start ov59_0223C3F0
ov59_0223C3F0: ; 0x0223C3F0
	push {r3, r4, lr}
	sub sp, #4
	bl NNS_G3dInit
	bl G3X_Init
	bl G3X_InitMtxStack
	ldr r0, _0223C45C ; =0x04000060
	ldr r1, _0223C460 ; =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _0223C464 ; =0x0000CFFB
	and r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r4, [r0]
	add r1, r1, #2
	sub r3, #0x1c
	and r4, r2
	mov r2, #8
	orr r2, r4
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _0223C468 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0223C46C ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _0223C470 ; =0xBFFF0000
	str r0, [r1, #0x40]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C45C: .word 0x04000060
_0223C460: .word 0xFFFFCFFD
_0223C464: .word 0x0000CFFB
_0223C468: .word 0x00007FFF
_0223C46C: .word 0x04000540
_0223C470: .word 0xBFFF0000
	thumb_func_end ov59_0223C3F0

