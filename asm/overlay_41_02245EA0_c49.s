	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_022466F0

    .text

	.text
	thumb_func_start ov41_022466F0
ov41_022466F0: ; 0x022466F0
	push {r3, lr}
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02246764 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	ldr r2, _02246768 ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0224676C ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r2, _02246770 ; =0x04000540
	mov r0, #2
	ldr r1, _02246774 ; =0xBFFF0000
	str r0, [r2]
	str r1, [r2, #0x40]
	mov r1, #1
	bl GF_3DVramMan_InitFrameTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl GF_3DVramMan_InitFramePlttVramManager
	pop {r3, pc}
	.balign 4, 0
_02246764: .word 0x04000008
_02246768: .word 0xFFFFCFFD
_0224676C: .word 0x0000CFFB
_02246770: .word 0x04000540
_02246774: .word 0xBFFF0000
	thumb_func_end ov41_022466F0

