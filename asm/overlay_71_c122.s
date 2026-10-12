	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022497E0
	.extern ov71_0224744C
	.extern ov71_02247610
	.extern ov71_022477EC
	.extern ov71_0224780C
	.extern ov71_0224783C
	.extern ov71_0224BD94

	.text

	.text
	thumb_func_start ov71_022497E0
ov71_022497E0: ; 0x022497E0
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _022498B4 ; =0x04000060
	ldr r1, _022498B8 ; =0xFFFFCFFD
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
	ldr r2, _022498BC ; =0x0000CFFB
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
	ldr r0, _022498C0 ; =ov71_0224BD94
	bl G3X_SetEdgeColorTable
	mov r1, #0
	ldr r0, _022498C4 ; =0x000043FF
	ldr r2, _022498C8 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _022498CC ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _022498D0 ; =0xBFFF0000
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
	ldr r1, _022498D4 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov71_0224744C
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r2, #0x59
	mov r3, #0x1b
	bl ov71_02247610
	ldr r1, _022498D8 ; =0x000018E3
	str r0, [r4, #0x2c]
	add r0, sp, #0x10
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x10
	bl ov71_0224780C
	ldr r0, [r4, #0x28]
	ldr r1, _022498DC ; =0x000007D2
	bl ov71_0224783C
	ldr r0, [r4, #0x28]
	add r1, sp, #0x18
	bl ov71_022477EC
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_022498B4: .word 0x04000060
_022498B8: .word 0xFFFFCFFD
_022498BC: .word 0x0000CFFB
_022498C0: .word ov71_0224BD94
_022498C4: .word 0x000043FF
_022498C8: .word 0x00007FFF
_022498CC: .word 0x04000540
_022498D0: .word 0xBFFF0000
_022498D4: .word 0x04000008
_022498D8: .word 0x000018E3
_022498DC: .word 0x000007D2
	thumb_func_end ov71_022497E0

