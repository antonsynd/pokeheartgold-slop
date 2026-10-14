	.include "macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224B720

	.text

	.text
	thumb_func_start ov71_0224B720
ov71_0224B720: ; 0x0224B720
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _0224B7C8 ; =0x04000060
	ldr r2, _0224B7CC ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0224B7D0 ; =0x0000CFFB
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
	ldr r1, _0224B7D4 ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _0224B7D8 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl GF_3DVramMan_InitFrameTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl GF_3DVramMan_InitFramePlttVramManager
	ldr r3, _0224B7DC ; =NNS_GfdDefaultFuncAllocTexVram
	mov r0, #1
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0224B7E0 ; =NNS_GfdDefaultFuncAllocPlttVram
	add r4, r0, #0
	ldr r3, [r3]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _0224B7E4 ; =0x7FFF0000
	add r6, r0, #0
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl PokepicManager_SetCharBaseAddrAndSize
	ldr r2, _0224B7E8 ; =0xFFFF0000
	lsl r1, r6, #0x10
	and r2, r6
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl PokepicManager_SetPlttBaseAddrAndSize
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0224B7C8: .word 0x04000060
_0224B7CC: .word 0xFFFFCFFD
_0224B7D0: .word 0x0000CFFB
_0224B7D4: .word 0x04000540
_0224B7D8: .word 0xBFFF0000
_0224B7DC: .word NNS_GfdDefaultFuncAllocTexVram
_0224B7E0: .word NNS_GfdDefaultFuncAllocPlttVram
_0224B7E4: .word 0x7FFF0000
_0224B7E8: .word 0xFFFF0000
	thumb_func_end ov71_0224B720

