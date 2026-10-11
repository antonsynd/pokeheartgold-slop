	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6980
	.public ov85_021E6A2C
	.extern ov85_021EA538
	.extern ov85_021EA60C
	.extern ov85_021EA628
	.extern ov85_021EA644
	.extern ov85_021EA660
	.extern ov85_021EA67C

	.text

	.text
	thumb_func_start ov85_021E6980
ov85_021E6980: ; 0x021E6980
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _021E6A10 ; =0x04000060
	ldr r1, _021E6A14 ; =0xFFFFCFFD
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
	ldr r2, _021E6A18 ; =0x0000CFFB
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
	add r3, r4, #0
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	mov r0, #0xda
	ldr r1, _021E6A1C ; =0x00001084
	mov r2, #0
	lsl r0, r0, #4
_021E69CE:
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #8
	blt _021E69CE
	mov r0, #0xda
	lsl r0, r0, #4
	add r0, r4, r0
	bl G3X_SetEdgeColorTable
	ldr r0, _021E6A20 ; =0x00007FFF
	mov r1, #0
	add r2, r0, #0
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _021E6A24 ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _021E6A28 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl GF_3DVramMan_InitFrameTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl GF_3DVramMan_InitFramePlttVramManager
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E6A10: .word 0x04000060
_021E6A14: .word 0xFFFFCFFD
_021E6A18: .word 0x0000CFFB
_021E6A1C: .word 0x00001084
_021E6A20: .word 0x00007FFF
_021E6A24: .word 0x04000540
_021E6A28: .word 0xBFFF0000
	thumb_func_end ov85_021E6980

	thumb_func_start ov85_021E6A2C
ov85_021E6A2C: ; 0x021E6A2C
	push {r4, r5, lr}
	sub sp, #0x9c
	add r4, r0, #0
	mov r0, #0x66
	bl BgConfig_Alloc
	ldr r1, _021E6B48 ; =0x00000D84
	ldr r2, _021E6B4C ; =0x04000304
	str r0, [r4, r1]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	ldr r5, _021E6B50 ; =ov85_021EA538
	orr r0, r1
	strh r0, [r2]
	add r3, sp, #0x8c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E6B54 ; =ov85_021EA60C
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #1
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x66
	bl BG_ClearCharDataRange
	ldr r5, _021E6B58 ; =ov85_021EA628
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #2
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6B5C ; =ov85_021EA644
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #3
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6B60 ; =ov85_021EA660
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #6
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6B64 ; =ov85_021EA67C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #7
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021E6B48: .word 0x00000D84
_021E6B4C: .word 0x04000304
_021E6B50: .word ov85_021EA538
_021E6B54: .word ov85_021EA60C
_021E6B58: .word ov85_021EA628
_021E6B5C: .word ov85_021EA644
_021E6B60: .word ov85_021EA660
_021E6B64: .word ov85_021EA67C
	thumb_func_end ov85_021E6A2C

