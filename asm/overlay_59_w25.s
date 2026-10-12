	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238F58
	.public ov59_02238FB4
	.public ov59_02238FF4
	.public ov59_022390A8
	.public ov59_0223919C
	.public ov59_022393D4
	.public ov59_02239408
	.public ov59_02239428
	.extern ov59_022387D0
	.extern ov59_0223891C
	.extern ov59_02239C90
	.extern ov59_0223C658
	.extern ov59_0223C68C
	.extern ov59_0223C6A8
	.extern ov59_0223C6C4
	.extern ov59_0223C6C6
	.extern ov59_0223C6E0
	.extern ov59_0223C6FC
	.extern ov59_0223C718
	.extern ov59_0223C734
	.extern ov59_0223C770

	.text

	.text
	thumb_func_start ov59_02238F58
ov59_02238F58: ; 0x02238F58
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #0x54]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x6a
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #5
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	mov r2, #0xf
	bic r1, r2
	ldr r2, [r4, #0x40]
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	and r2, r3
	orr r1, r2
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x12]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #0x12]
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov59_02238F58

	thumb_func_start ov59_02238FB4
ov59_02238FB4: ; 0x02238FB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _02238FCC
	cmp r0, #2
	beq _02238FD0
	b _02238FD4
_02238FCC:
	mov r4, #1
	b _02238FDA
_02238FD0:
	mov r4, #0
	b _02238FDA
_02238FD4:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02238FDA:
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	str r0, [r5, #0x40]
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_02238FB4

	thumb_func_start ov59_02238FF4
ov59_02238FF4: ; 0x02238FF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	sub r0, r7, #1
	cmp r0, #1
	bhi _02239062
	mov r4, #0
	add r5, r6, #0
_02239004:
	add r0, r6, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r4, r0
	bne _02239020
	cmp r7, #2
	bne _02239020
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetOamMode
	b _0223902C
_02239020:
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetOamMode
_0223902C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _02239004
	add r0, r6, #0
	mov r1, #0
	bl ov59_0223891C
	add r0, r6, #0
	mov r1, #2
	bl ov59_022387D0
	add r0, r6, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #7
	bhs _022390A6
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl Sprite_SetDrawPriority
	pop {r3, r4, r5, r6, r7, pc}
_02239062:
	mov r7, #0x97
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_0223906A:
	ldr r0, [r4, r7]
	mov r1, #0
	bl Sprite_SetOamMode
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #7
	blt _0223906A
	add r0, r6, #0
	mov r1, #1
	bl ov59_0223891C
	add r0, r6, #0
	mov r1, #0
	bl ov59_022387D0
	add r0, r6, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #7
	bhs _022390A6
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #3
	bl Sprite_SetDrawPriority
_022390A6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_02238FF4

	thumb_func_start ov59_022390A8
ov59_022390A8: ; 0x022390A8
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	ldrh r0, [r4, #0x3e]
	beq _02239132
	cmp r0, #0
	beq _022390BC
	cmp r0, #1
	beq _022390D8
	b _02239198
_022390BC:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	ldrh r0, [r4, #0x3e]
	add r0, r0, #1
	strh r0, [r4, #0x3e]
	b _02239198
_022390D8:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r2, #2
	bl Sprite_OffsetPositionXY
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	sub r2, r1, #1
	bl Sprite_OffsetPositionXY
	add r0, r4, #0
	add r0, #0x51
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x51
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x51
	strb r1, [r0]
	cmp r2, #2
	blo _02239198
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	strh r1, [r4, #0x3e]
	mov r0, #1
	pop {r4, pc}
_02239132:
	cmp r0, #0
	beq _0223913C
	cmp r0, #1
	beq _02239158
	b _02239198
_0223913C:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	ldrh r0, [r4, #0x3e]
	add r0, r0, #1
	strh r0, [r4, #0x3e]
	b _02239198
_02239158:
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r4, r0]
	sub r2, r1, #2
	bl Sprite_OffsetPositionXY
	add r0, r4, #0
	add r0, #0x51
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x51
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x51
	strb r1, [r0]
	cmp r2, #3
	blo _02239198
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	strh r1, [r4, #0x3e]
	mov r0, #1
	pop {r4, pc}
_02239198:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov59_022390A8

	thumb_func_start ov59_0223919C
ov59_0223919C: ; 0x0223919C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7]
	add r5, r1, #0
	mov r1, #0x20
	add r6, r2, #0
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r7, #0
	add r0, #0x4d
	str r7, [r4]
	ldrb r0, [r0]
	cmp r5, #0
	strb r0, [r4, #7]
	bne _022391DA
	add r0, r7, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r7, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	b _022391E0
_022391DA:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r7, r0]
_022391E0:
	str r0, [r4, #0x1c]
	add r1, sp, #8
	ldr r0, [r4, #0x1c]
	add r1, #2
	add r2, sp, #8
	bl Sprite_GetPositionXY
	cmp r6, #0
	bne _02239202
	lsl r0, r5, #2
	add r0, #0xc0
	strh r0, [r4, #8]
	mov r0, #9
	mvn r0, r0
	mul r0, r5
	add r0, #0x60
	b _02239220
_02239202:
	ldrb r0, [r4, #7]
	lsl r1, r0, #2
	ldr r0, _022393C8 ; =ov59_0223C6C4
	ldrh r1, [r0, r1]
	lsl r0, r5, #2
	add r0, r1, r0
	strh r0, [r4, #8]
	ldrb r0, [r4, #7]
	lsl r1, r0, #2
	ldr r0, _022393CC ; =ov59_0223C6C6
	ldrh r1, [r0, r1]
	mov r0, #9
	mvn r0, r0
	mul r0, r5
	add r0, r1, r0
_02239220:
	strh r0, [r4, #0xa]
	mov r0, #8
	ldrsh r2, [r4, r0]
	add r0, sp, #8
	mov r1, #2
	ldrsh r1, [r0, r1]
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	mov r1, #0xa
	ldrsh r2, [r4, r1]
	mov r1, #0
	ldrsh r0, [r0, r1]
	sub r0, r2, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	bpl _02239246
	neg r0, r6
	b _02239248
_02239246:
	add r0, r6, #0
_02239248:
	cmp r5, #0
	bge _02239250
	neg r1, r5
	b _02239252
_02239250:
	add r1, r5, #0
_02239252:
	cmp r1, r0
	blt _0223926C
	cmp r5, #0
	bge _0223925E
	neg r1, r5
	b _02239260
_0223925E:
	add r1, r5, #0
_02239260:
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	strb r0, [r4, #5]
	b _02239280
_0223926C:
	cmp r6, #0
	bge _02239274
	neg r1, r6
	b _02239276
_02239274:
	add r1, r6, #0
_02239276:
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	strb r0, [r4, #5]
_02239280:
	add r1, sp, #8
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0223929C
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022392AA
_0223929C:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022392AA:
	bl _ffix
	str r0, [r4, #0x14]
	add r1, sp, #8
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _022392CC
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022392DA
_022392CC:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022392DA:
	bl _ffix
	str r0, [r4, #0x18]
	mov r0, #0
	strb r0, [r4, #6]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _022392FE
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	str r0, [sp, #4]
	b _0223930E
_022392FE:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
	str r0, [sp, #4]
_0223930E:
	cmp r5, #0
	ble _02239324
	lsl r0, r5, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02239332
_02239324:
	lsl r0, r5, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02239332:
	bl _ffix
	add r5, r0, #0
	ldr r0, [sp, #4]
	bl _ffix
	add r1, r0, #0
	add r0, r5, #0
	bl FX_Div
	str r0, [r4, #0xc]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02239362
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	str r0, [sp]
	b _02239372
_02239362:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
	str r0, [sp]
_02239372:
	cmp r6, #0
	ble _02239388
	lsl r0, r6, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02239396
_02239388:
	lsl r0, r6, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02239396:
	bl _ffix
	add r5, r0, #0
	ldr r0, [sp]
	bl _ffix
	add r1, r0, #0
	add r0, r5, #0
	bl FX_Div
	str r0, [r4, #0x10]
	ldr r0, _022393D0 ; =ov59_02239C90
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add r0, r7, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r7, #0x50
	add r0, r0, #1
	strb r0, [r7]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022393C8: .word ov59_0223C6C4
_022393CC: .word ov59_0223C6C6
_022393D0: .word ov59_02239C90
	thumb_func_end ov59_0223919C

	thumb_func_start ov59_022393D4
ov59_022393D4: ; 0x022393D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022393E6
	bl SpriteSystem_TransferOam
_022393E6:
	bl NNS_GfdDoVramTransfer
	ldr r0, [r4, #0x54]
	bl DoScheduledBgGpuUpdates
	ldr r3, _02239400 ; =0x027E0000
	ldr r1, _02239404 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02239400: .word 0x027E0000
_02239404: .word 0x00003FF8
	thumb_func_end ov59_022393D4

	thumb_func_start ov59_02239408
ov59_02239408: ; 0x02239408
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02239424 ; =ov59_0223C770
	add r3, sp, #0
	mov r2, #5
_02239412:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02239412
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_02239424: .word ov59_0223C770
	thumb_func_end ov59_02239408

	thumb_func_start ov59_02239428
ov59_02239428: ; 0x02239428
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	add r4, r0, #0
	bl ov59_02239408
	ldr r0, [r4]
	bl BgConfig_Alloc
	add r3, sp, #0xa8
	ldr r5, _02239594 ; =ov59_0223C658
	str r0, [r4, #0x54]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _02239598 ; =0x04000304
	ldr r0, _0223959C ; =0xFFFF7FFF
	ldrh r1, [r2]
	ldr r5, _022395A0 ; =ov59_0223C718
	add r3, sp, #0x8c
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395A4 ; =ov59_0223C68C
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395A8 ; =ov59_0223C6A8
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
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395AC ; =ov59_0223C6FC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0x54]
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395B0 ; =ov59_0223C734
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395B4 ; =ov59_0223C6E0
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
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
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02239594: .word ov59_0223C658
_02239598: .word 0x04000304
_0223959C: .word 0xFFFF7FFF
_022395A0: .word ov59_0223C718
_022395A4: .word ov59_0223C68C
_022395A8: .word ov59_0223C6A8
_022395AC: .word ov59_0223C6FC
_022395B0: .word ov59_0223C734
_022395B4: .word ov59_0223C6E0
	thumb_func_end ov59_02239428

