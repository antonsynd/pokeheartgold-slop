	.include "macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224ADE4
	.extern ov71_0224744C
	.extern ov71_02247610
	.extern ov71_022476D4
	.extern ov71_02247730
	.extern ov71_0224780C
	.extern ov71_0224782C
	.extern ov71_0224BF0C
	.extern ov71_0224C0D0

	.text

	.text
	thumb_func_start ov71_0224ADE4
ov71_0224ADE4: ; 0x0224ADE4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _0224AEC8 ; =0x04000060
	ldr r1, _0224AECC ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0224AED0 ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0224AED4 ; =ov71_0224BF0C
	bl G3X_SetEdgeColorTable
	mov r1, #0
	ldr r0, _0224AED8 ; =0x000043FF
	ldr r2, _0224AEDC ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _0224AEE0 ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _0224AEE4 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl GF_3DVramMan_InitFrameTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl GF_3DVramMan_InitFramePlttVramManager
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r1, _0224AEE8 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov71_0224744C
	str r0, [r4, #0x20]
	mov r1, #0
	mov r0, #0x23
	str r1, [sp]
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	mov r2, #0x59
	mov r3, #0x1b
	bl ov71_02247610
	str r0, [r4, #0x24]
	ldr r0, _0224AEEC ; =ov71_0224C0D0
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x20]
	ldr r1, _0224AEF0 ; =ov71_0224C0D0
	bl ov71_0224780C
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov71_0224782C
	mov r1, #2
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl ov71_02247730
	ldr r0, [r4, #0x24]
	add r4, #0x28
	add r1, r4, #0
	bl ov71_022476D4
	add sp, #0x10
	pop {r4, pc}
	nop
_0224AEC8: .word 0x04000060
_0224AECC: .word 0xFFFFCFFD
_0224AED0: .word 0x0000CFFB
_0224AED4: .word ov71_0224BF0C
_0224AED8: .word 0x000043FF
_0224AEDC: .word 0x00007FFF
_0224AEE0: .word 0x04000540
_0224AEE4: .word 0xBFFF0000
_0224AEE8: .word 0x04000008
_0224AEEC: .word ov71_0224C0D0
_0224AEF0: .word ov71_0224C0D0
	thumb_func_end ov71_0224ADE4

