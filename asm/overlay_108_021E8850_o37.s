	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9850
	.extern ov108_021E9830
	.extern ov108_021EAAC0
	.extern ov108_021EAAE4
	.extern ov108_021EAB00
	.extern ov108_021EAB1C
	.extern ov108_021EAB38
	.extern ov108_021EAB54
	.extern ov108_021EAB70
	.extern ov108_021EAB8C

	.text

	.text
	thumb_func_start ov108_021E9850
ov108_021E9850: ; 0x021E9850
	push {r4, r5, lr}
	sub sp, #0xd4
	add r4, r0, #0
	bl ov108_021E9830
	ldr r2, _021E99E0 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	bl BgConfig_Alloc
	ldr r1, _021E99E4 ; =0x00000438
	add r3, sp, #0xc4
	ldr r5, _021E99E8 ; =ov108_021EAAC0
	str r0, [r4, r1]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E99EC ; =ov108_021EAB54
	add r3, sp, #0xa8
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
	ldr r0, _021E99E4 ; =0x00000438
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #1
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E99F0 ; =ov108_021EAB1C
	add r3, sp, #0x8c
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
	ldr r0, _021E99E4 ; =0x00000438
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #2
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E99F4 ; =ov108_021EAB38
	add r3, sp, #0x70
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
	ldr r0, _021E99E4 ; =0x00000438
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #3
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E99F8 ; =ov108_021EAB8C
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
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #4
	ldr r0, [r4, r0]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #4
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E99FC ; =ov108_021EAAE4
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	ldr r0, _021E99E4 ; =0x00000438
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #5
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E9A00 ; =ov108_021EAB00
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
	ldr r0, _021E99E4 ; =0x00000438
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #6
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E9A04 ; =ov108_021EAB70
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
	ldr r0, _021E99E4 ; =0x00000438
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E99E4 ; =0x00000438
	mov r1, #7
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
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
	ldr r3, [r4]
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add sp, #0xd4
	pop {r4, r5, pc}
	nop
_021E99E0: .word 0x04000304
_021E99E4: .word 0x00000438
_021E99E8: .word ov108_021EAAC0
_021E99EC: .word ov108_021EAB54
_021E99F0: .word ov108_021EAB1C
_021E99F4: .word ov108_021EAB38
_021E99F8: .word ov108_021EAB8C
_021E99FC: .word ov108_021EAAE4
_021E9A00: .word ov108_021EAB00
_021E9A04: .word ov108_021EAB70
	thumb_func_end ov108_021E9850

