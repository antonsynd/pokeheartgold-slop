	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022387E0
	.public ov57_022388E4
	.public ov57_02238958
	.public ov57_02238A00
	.public ov57_02238AC0
	.public ov57_02238AF0
	.public ov57_02238B28
	.public ov57_02238B48
	.public ov57_02238BCC
	.extern ov57_0223BDD4

	.text

	.text
	thumb_func_start ov57_022387E0
ov57_022387E0: ; 0x022387E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x10]
	add r7, r3, #0
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xb
	mov r3, #0x34
	bl NewMsgDataFromNarc
	add r1, r4, #5
	str r0, [sp, #0x14]
	bl NewString_ReadMsgData
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, sp, #0x1c
	mov r2, #0xa
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022388DC ; =0x000F0D02
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, sp, #0x1c
	mov r1, #2
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, sp, #0x1c
	mov r1, #2
	mov r2, #0x34
	bl sub_02013688
	mov r3, #0x9a
	lsl r3, r3, #2
	mov r1, #0xc
	add r6, r4, #0
	mul r6, r1
	add r3, r5, r3
	mov r1, #1
	mov r2, #2
	add r3, r3, r6
	bl sub_02021AC8
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x1c
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	ldr r1, _022388E0 ; =0x00007530
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x38]
	mov r2, #0
	mov r0, #0x9b
	str r2, [sp, #0x3c]
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x18]
	mov r0, #2
	bl FontID_String_GetWidth
	lsr r1, r0, #1
	ldr r0, [sp, #0x10]
	add r7, #0xc0
	sub r0, r0, r1
	str r0, [sp, #0x44]
	mov r0, #1
	str r0, [sp, #0x4c]
	mov r0, #0x28
	str r0, [sp, #0x50]
	mov r0, #2
	str r0, [sp, #0x54]
	mov r0, #0x34
	str r0, [sp, #0x58]
	mov r0, #0x26
	lsl r0, r0, #4
	add r5, r5, r0
	str r7, [sp, #0x48]
	lsl r4, r4, #2
	add r0, sp, #0x2c
	bl sub_020135D8
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x70]
	bl sub_020138E0
	ldr r0, [sp, #0x18]
	bl String_Delete
	ldr r0, [sp, #0x14]
	bl DestroyMsgData
	add r0, sp, #0x1c
	bl RemoveWindow
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022388DC: .word 0x000F0D02
_022388E0: .word 0x00007530
	thumb_func_end ov57_022387E0

	thumb_func_start ov57_022388E4
ov57_022388E4: ; 0x022388E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	add r3, r0, #0
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #4
_022388F8:
	add r2, r7, r3
	add r3, r3, #1
	strb r5, [r2, r0]
	cmp r3, #8
	blt _022388F8
	lsl r0, r1, #3
	str r0, [sp, #8]
_02238906:
	mov r6, #0
	add r4, r7, #0
_0223890A:
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl SealIsOnCapsule
	cmp r0, #0
	bne _0223891E
	add r6, r6, #1
	add r4, #8
	cmp r6, #0xc
	blt _0223890A
_0223891E:
	add r1, r7, r5
	add r1, #0x80
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223892C
	cmp r0, #1
	bne _0223894E
_0223892C:
	ldr r0, [sp]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp]
	cmp r1, r0
	ble _0223894E
	ldr r0, [sp, #4]
	add r2, r5, #1
	add r1, r7, r0
	mov r0, #0x45
	lsl r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	bge _02238954
_0223894E:
	add r5, r5, #1
	cmp r5, #0x51
	blt _02238906
_02238954:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov57_022388E4

	thumb_func_start ov57_02238958
ov57_02238958: ; 0x02238958
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	add r0, #0xdc
	ldr r6, [r0]
	add r0, r7, #0
	add r0, #0xe0
	ldr r5, [r0]
	add r0, r7, #0
	add r0, #0xe8
	ldr r0, [r0]
	mov r4, #0
	str r0, [sp, #0x18]
_02238972:
	mov r0, #0x45
	add r1, r7, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bl sub_02091054
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022389F0 ; =0x000061A8
	add r1, r5, #0
	add r0, r4, r0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x57
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #8
	blt _02238972
	mov r0, #0x57
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022389F4 ; =0x00006597
	mov r1, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBuffer
	mov r0, #1
	str r0, [sp]
	ldr r0, _022389F8 ; =0x0000699D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x57
	mov r3, #0x25
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _022389FC ; =0x00006D83
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x57
	mov r3, #0x23
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022389F0: .word 0x000061A8
_022389F4: .word 0x00006597
_022389F8: .word 0x0000699D
_022389FC: .word 0x00006D83
	thumb_func_end ov57_02238958

	thumb_func_start ov57_02238A00
ov57_02238A00: ; 0x02238A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe0
	ldr r7, [r0]
	add r0, sp, #4
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r4, [r0, #0x26]
	mov r0, #0x3c
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x34]
	mov r0, #1
	str r0, [sp, #0x50]
	sub r0, r0, #2
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	ldr r0, _02238AA8 ; =0x00006597
	str r4, [sp, #0x54]
	str r0, [sp, #0x3c]
	ldr r0, _02238AAC ; =0x0000699D
	str r4, [sp, #0x30]
	str r0, [sp, #0x40]
	ldr r0, _02238AB0 ; =0x00006D83
	str r0, [sp, #0x44]
	ldr r0, _02238AB4 ; =0x00000414
	add r6, r5, r0
_02238A44:
	ldr r0, _02238AB8 ; =0x000061A8
	add r1, r7, #0
	add r0, r4, r0
	str r0, [sp, #0x38]
	ldr r0, [sp]
	add r2, sp, #0x24
	bl SpriteSystem_NewSprite
	add r4, r4, #1
	stmia r6!, {r0}
	cmp r4, #8
	blt _02238A44
	ldr r3, _02238ABC ; =ov57_0223BDD4
	add r2, sp, #4
	mov r1, #0x10
_02238A62:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02238A62
	ldr r7, _02238AB4 ; =0x00000414
	mov r6, #0
	add r4, sp, #4
_02238A74:
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, _02238AB4 ; =0x00000414
	mov r1, #0
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, _02238AB4 ; =0x00000414
	ldr r0, [r5, r0]
	bl ManagedSprite_TickFrame
	ldr r0, [r5, r7]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #8
	blt _02238A74
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238AA8: .word 0x00006597
_02238AAC: .word 0x0000699D
_02238AB0: .word 0x00006D83
_02238AB4: .word 0x00000414
_02238AB8: .word 0x000061A8
_02238ABC: .word ov57_0223BDD4
	thumb_func_end ov57_02238A00

	thumb_func_start ov57_02238AC0
ov57_02238AC0: ; 0x02238AC0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _02238AE8 ; =0x00000414
	mov r4, #0
	add r5, r6, #0
_02238ACA:
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, _02238AEC ; =0x000061A8
	ldr r0, [r0]
	add r1, r4, r1
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r5, r7]
	bl Sprite_DeleteAndFreeResources
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _02238ACA
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238AE8: .word 0x00000414
_02238AEC: .word 0x000061A8
	thumb_func_end ov57_02238AC0

	thumb_func_start ov57_02238AF0
ov57_02238AF0: ; 0x02238AF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x38
	mul r0, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	lsl r0, r1, #4
	neg r0, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r4, #0
_02238B06:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02238B1E
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl ManagedSprite_OffsetPositionXY
_02238B1E:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _02238B06
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov57_02238AF0

	thumb_func_start ov57_02238B28
ov57_02238B28: ; 0x02238B28
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	mov r1, #0
	ldr r0, _02238B44 ; =ov57_02238B48
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x34
	add r3, r1, #0
	bl GF_3DVramMan_Create
	add sp, #8
	pop {r3, pc}
	nop
_02238B44: .word ov57_02238B48
	thumb_func_end ov57_02238B28

	thumb_func_start ov57_02238B48
ov57_02238B48: ; 0x02238B48
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02238BB4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02238BB8 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02238BBC ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _02238BC0 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02238BC4 ; =0xBFFF0000
	ldr r0, _02238BC8 ; =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_02238BB4: .word 0x04000008
_02238BB8: .word 0xFFFFCFFD
_02238BBC: .word 0x0000CFFB
_02238BC0: .word 0x00007FFF
_02238BC4: .word 0xBFFF0000
_02238BC8: .word 0x04000580
	thumb_func_end ov57_02238B48

	thumb_func_start ov57_02238BCC
ov57_02238BCC: ; 0x02238BCC
	push {r3, r4, r5, lr}
	ldr r3, _02238C04 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r0, #2
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _02238C08 ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3]
	mov r0, #0x80
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _02238BF4
	bl GF_AssertFail
_02238BF4:
	cmp r5, #0
	bne _02238BFC
	bl GF_AssertFail
_02238BFC:
	bl sub_02014DA0
	pop {r3, r4, r5, pc}
	nop
_02238C04: .word NNS_GfdDefaultFuncAllocTexVram
_02238C08: .word NNS_GfdDefaultFuncAllocPlttVram
	thumb_func_end ov57_02238BCC

