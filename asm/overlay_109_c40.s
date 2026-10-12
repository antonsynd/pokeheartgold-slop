	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E694C
	.extern ov109_021E692C
	.extern ov109_021E78B8
	.extern ov109_021E790C
	.extern ov109_021E7928
	.extern ov109_021E7944
	.extern ov109_021E7960
	.extern ov109_021E797C
	.extern ov109_021E7998
	.extern ov109_021E79B4

	.text

	.text
	thumb_func_start ov109_021E694C
ov109_021E694C: ; 0x021E694C
	push {r4, r5, lr}
	sub sp, #0xd4
	add r4, r0, #0
	bl ov109_021E692C
	ldr r0, [r4]
	bl BgConfig_Alloc
	add r3, sp, #0xc4
	ldr r5, _021E6AD4 ; =ov109_021E78B8
	str r0, [r4, #0x14]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _021E6AD8 ; =0x04000304
	ldr r0, _021E6ADC ; =0xFFFF7FFF
	ldrh r1, [r2]
	ldr r5, _021E6AE0 ; =ov109_021E7944
	add r3, sp, #0xa8
	and r0, r1
	strh r0, [r2]
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	ldr r0, [r4, #0x14]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6AE4 ; =ov109_021E797C
	add r3, sp, #0x8c
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
	ldr r0, [r4, #0x14]
	mov r3, #2
	bl InitBgFromTemplate
	ldr r0, [r4, #0x14]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6AE8 ; =ov109_021E7998
	add r3, sp, #0x70
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
	ldr r0, [r4, #0x14]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x14]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6AEC ; =ov109_021E790C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	mov r1, #0
	ldr r0, [r4, #0x14]
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6AF0 ; =ov109_021E7928
	add r3, sp, #0x38
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
	ldr r0, [r4, #0x14]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6AF4 ; =ov109_021E7960
	add r3, sp, #0x1c
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
	ldr r0, [r4, #0x14]
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6AF8 ; =ov109_021E79B4
	add r3, sp, #0
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
	ldr r0, [r4, #0x14]
	mov r3, #2
	bl InitBgFromTemplate
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r3, [r4]
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	mov r0, #0
	ldr r3, [r4]
	mov r1, #0x20
	add r2, r0, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #3
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	mov r2, #0
	ldr r0, [r4, #0x14]
	mov r1, #7
	sub r3, r2, #4
	bl BgSetPosTextAndCommit
	add sp, #0xd4
	pop {r4, r5, pc}
	.balign 4, 0
_021E6AD4: .word ov109_021E78B8
_021E6AD8: .word 0x04000304
_021E6ADC: .word 0xFFFF7FFF
_021E6AE0: .word ov109_021E7944
_021E6AE4: .word ov109_021E797C
_021E6AE8: .word ov109_021E7998
_021E6AEC: .word ov109_021E790C
_021E6AF0: .word ov109_021E7928
_021E6AF4: .word ov109_021E7960
_021E6AF8: .word ov109_021E79B4
	thumb_func_end ov109_021E694C

