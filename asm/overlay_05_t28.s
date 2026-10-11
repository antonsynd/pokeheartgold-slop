	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221CE50
	.public ov05_0221CE88
	.public ov05_0221CEB8
	.extern ov05_0221EA78
	.extern ov05_0221EB1C
	.extern ov05_0221EB54
	.extern ov05_0221EB70
	.extern ov05_0221EBA8

	.text

	.text
	thumb_func_start ov05_0221CE50
ov05_0221CE50: ; 0x0221CE50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _0221CE84
	mov r7, #0x66
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x78
_0221CE68:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl Sprite_UpdateAnim
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _0221CE68
_0221CE84:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov05_0221CE50

	thumb_func_start ov05_0221CE88
ov05_0221CE88: ; 0x0221CE88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl DoScheduledBgGpuUpdates
	ldr r0, [r4, #8]
	bl PaletteData_PushTransparentBuffers
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	ldr r3, _0221CEB0 ; =0x027E0000
	ldr r1, _0221CEB4 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0221CEB0: .word 0x027E0000
_0221CEB4: .word 0x00003FF8
	thumb_func_end ov05_0221CE88

	thumb_func_start ov05_0221CEB8
ov05_0221CEB8: ; 0x0221CEB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r5, r0, #0
	ldr r0, _0221CFD4 ; =0x00000BA8
	add r4, r1, #0
	ldr r6, _0221CFD8 ; =ov05_0221EA78
	str r4, [r5, r0]
	add r3, sp, #0x70
	add r7, r2, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	str r4, [sp, #0x7c]
	bl SetBothScreensModesAndDisable
	ldr r6, _0221CFDC ; =ov05_0221EB1C
	add r3, sp, #0x54
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #3
	str r0, [r3]
	ldr r0, [r5, #0xc]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	add r3, #0xfd
	bl ScheduleSetBgPosText
	ldr r6, _0221CFE0 ; =ov05_0221EB54
	add r3, sp, #0x38
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #2
	str r0, [r3]
	ldr r0, [r5, #0xc]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	mov r3, #0xff
	ldr r0, [r5, #0xc]
	mov r1, #2
	mov r2, #0
	mvn r3, r3
	bl ScheduleSetBgPosText
	ldr r6, _0221CFE4 ; =ov05_0221EB70
	add r3, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r5, #0xc]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	cmp r7, #1
	bne _0221CF88
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r2, #3
	mov r3, #0x18
	bl BgSetPosTextAndCommit
_0221CF88:
	cmp r4, #0
	bne _0221CFD0
	ldr r4, _0221CFE8 ; =ov05_0221EBA8
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0
	str r0, [r3]
	ldr r0, [r5, #0xc]
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r0, _0221CFEC ; =0x00000BC8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0221CFC8
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_0221CFC8:
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
_0221CFD0:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221CFD4: .word 0x00000BA8
_0221CFD8: .word ov05_0221EA78
_0221CFDC: .word ov05_0221EB1C
_0221CFE0: .word ov05_0221EB54
_0221CFE4: .word ov05_0221EB70
_0221CFE8: .word ov05_0221EBA8
_0221CFEC: .word 0x00000BC8
	thumb_func_end ov05_0221CEB8

