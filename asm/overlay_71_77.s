	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022488E4
	.extern ov71_0224744C
	.extern ov71_02247610
	.extern ov71_02247730
	.extern ov71_0224780C
	.extern ov71_0224BD0C
	.extern ov71_0224C0C4
	.extern ov71_0224C0C8

	.text

	.text
	thumb_func_start ov71_022488E4
ov71_022488E4: ; 0x022488E4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _022489C4 ; =0x04000060
	ldr r1, _022489C8 ; =0xFFFFCFFD
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
	ldr r2, _022489CC ; =0x0000CFFB
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
	ldr r0, _022489D0 ; =ov71_0224BD0C
	bl G3X_SetEdgeColorTable
	mov r1, #0
	ldr r0, _022489D4 ; =0x000043FF
	ldr r2, _022489D8 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _022489DC ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _022489E0 ; =0xBFFF0000
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
	ldr r1, _022489E4 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov71_0224744C
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1]
	mov r1, #0
	ldr r0, _022489E8 ; =0xFFFC8800
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #0xc]
	add r0, #0xd4
	ldr r0, [r0]
	mov r2, #0x59
	mov r3, #0x1b
	bl ov71_02247610
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1]
	ldr r1, _022489EC ; =0x0000EBE0
	ldr r0, _022489F0 ; =ov71_0224C0C4
	strh r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	ldr r1, _022489F4 ; =ov71_0224C0C8
	bl ov71_0224780C
	add r4, #0xd8
	mov r1, #7
	ldr r0, [r4]
	lsl r1, r1, #0xa
	bl ov71_02247730
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_022489C4: .word 0x04000060
_022489C8: .word 0xFFFFCFFD
_022489CC: .word 0x0000CFFB
_022489D0: .word ov71_0224BD0C
_022489D4: .word 0x000043FF
_022489D8: .word 0x00007FFF
_022489DC: .word 0x04000540
_022489E0: .word 0xBFFF0000
_022489E4: .word 0x04000008
_022489E8: .word 0xFFFC8800
_022489EC: .word 0x0000EBE0
_022489F0: .word ov71_0224C0C4
_022489F4: .word ov71_0224C0C8
	thumb_func_end ov71_022488E4

