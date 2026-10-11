	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E64C8
	.public ov56_021E64F4
	.public ov56_021E6514
	.extern _021E6DD4
	.extern ov56_021E660C
	.extern ov56_021E692C
	.extern ov56_021E6A7C
	.extern ov56_021E6D90
	.extern ov56_021E6E58
	.extern ov56_021E6E80

	.text

	.text
	thumb_func_start ov56_021E64C8
ov56_021E64C8: ; 0x021E64C8
	push {r4, lr}
	add r4, r0, #0
	bl ov56_021E6D90
	add r0, r4, #0
	add r0, #0x24
	beq _021E64DC
	ldr r0, [r4, #0x20]
	bl DestroyMsgData
_021E64DC:
	add r0, r4, #0
	bl ov56_021E6A7C
	add r0, r4, #0
	bl ov56_021E692C
	add r0, r4, #0
	bl ov56_021E660C
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov56_021E64C8

	thumb_func_start ov56_021E64F4
ov56_021E64F4: ; 0x021E64F4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E6510 ; =ov56_021E6E58
	add r3, sp, #0
	mov r2, #5
_021E64FE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E64FE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E6510: .word ov56_021E6E58
	thumb_func_end ov56_021E64F4

	thumb_func_start ov56_021E6514
ov56_021E6514: ; 0x021E6514
	push {r4, r5, lr}
	sub sp, #0x9c
	add r4, r0, #0
	bl ov56_021E64F4
	ldr r0, [r4]
	bl BgConfig_Alloc
	add r3, sp, #0
	ldr r5, _021E65FC ; =_021E6DD4
	str r0, [r4, #0x18]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _021E6600 ; =0x04000304
	ldr r0, _021E6604 ; =0xFFFF7FFF
	ldrh r1, [r2]
	ldr r5, _021E6608 ; =ov56_021E6E80
	add r3, sp, #0x10
	and r0, r1
	strh r0, [r2]
	mov r2, #0x11
_021E654A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E654A
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	ldr r0, [r4, #0x18]
	add r2, sp, #0x10
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r2, sp, #0x2c
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r2, sp, #0x48
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x18]
	mov r1, #3
	add r2, sp, #0x64
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x18]
	mov r1, #4
	add r2, sp, #0x80
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	ldr r3, [r4]
	mov r1, #0x20
	add r2, r0, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021E65FC: .word _021E6DD4
_021E6600: .word 0x04000304
_021E6604: .word 0xFFFF7FFF
_021E6608: .word ov56_021E6E80
	thumb_func_end ov56_021E6514

