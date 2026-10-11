	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EC9E8
	.public ov103_021EEB40
	.public ov103_021EEB50
	.public ov103_021EEB6C
	.public ov103_021EEB88
	.public ov103_021EEBA4
	.public ov103_021EEBC0
	.public ov103_021EEBDC
	.public ov103_021EEBF8
	.public ov103_021EEC14

	.text

	thumb_func_start ov103_021EC9E8
ov103_021EC9E8: ; 0x021EC9E8
	push {r3, r4, r5, lr}
	sub sp, #0xf0
	add r4, r0, #0
	mov r0, #0x9d
	bl BgConfig_Alloc
	ldr r1, [r4, #0xc]
	add r3, sp, #0xe0
	ldr r5, _021ECB98 ; =ov103_021EEB40
	str r0, [r1]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021ECB9C ; =ov103_021EEBC0
	add r3, sp, #0xc4
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	ldr r0, [r0]
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #4
	ldr r0, [r0]
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9d
	bl BG_ClearCharDataRange
	ldr r5, _021ECBA0 ; =ov103_021EEBA4
	add r3, sp, #0xa8
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	ldr r0, [r0]
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #5
	ldr r0, [r0]
	bl BgClearTilemapBufferAndCommit
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9d
	bl BG_ClearCharDataRange
	ldr r5, _021ECBA4 ; =ov103_021EEB88
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0xc]
	mov r1, #6
	ldr r0, [r0]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #6
	ldr r0, [r0]
	bl BgClearTilemapBufferAndCommit
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9d
	bl BG_ClearCharDataRange
	ldr r5, _021ECBA8 ; =ov103_021EEC14
	add r3, sp, #0x70
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	ldr r0, [r0]
	bl InitBgFromTemplate
	ldr r5, _021ECBAC ; =ov103_021EEBDC
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	ldr r0, [r4, #0xc]
	add r3, r1, #0
	ldr r0, [r0]
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #0
	ldr r0, [r0]
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x9d
	bl BG_ClearCharDataRange
	ldr r5, _021ECBB0 ; =ov103_021EEB50
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	ldr r0, [r0]
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r0]
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9d
	bl BG_ClearCharDataRange
	ldr r5, _021ECBB4 ; =ov103_021EEB6C
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	ldr r0, [r0]
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #2
	ldr r0, [r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021ECBB8 ; =ov103_021EEBF8
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	ldr r0, [r0]
	bl InitBgFromTemplate
	add sp, #0xf0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ECB98: .word ov103_021EEB40
_021ECB9C: .word ov103_021EEBC0
_021ECBA0: .word ov103_021EEBA4
_021ECBA4: .word ov103_021EEB88
_021ECBA8: .word ov103_021EEC14
_021ECBAC: .word ov103_021EEBDC
_021ECBB0: .word ov103_021EEB50
_021ECBB4: .word ov103_021EEB6C
_021ECBB8: .word ov103_021EEBF8
	thumb_func_end ov103_021EC9E8

