	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"

    .text

	thumb_func_start ov83_0223DD60
ov83_0223DD60: ; 0x0223DD60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0223DE40 ; =FS_OVERLAY_ID(OVY_80)
	mov r1, #2
	bl HandleLoadOverlay
	bl ov83_0223F1C8
	mov r0, #3
	mov r1, #0x6b
	lsl r2, r0, #0x10
	bl Heap_Create
	ldr r1, _0223DE44 ; =0x0000086C
	add r0, r4, #0
	mov r2, #0x6b
	bl OverlayManager_CreateAndGetData
	ldr r2, _0223DE44 ; =0x0000086C
	mov r1, #0
	add r5, r0, #0
	bl memset
	mov r0, #0x6b
	bl BgConfig_Alloc
	str r0, [r5, #0x4c]
	add r0, r4, #0
	str r4, [r5]
	bl OverlayManager_GetArgs
	add r4, r0, #0
	ldr r1, [r4]
	ldr r0, _0223DE48 ; =0x0000050C
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl sub_02030CC8
	mov r1, #0x51
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl sub_02030E08
	ldr r1, _0223DE4C ; =0x00000514
	add r2, r4, #0
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	add r2, #0x20
	sub r1, #8
	strb r0, [r5, #9]
	mov r0, #0x7a
	lsl r0, r0, #4
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl Save_PlayerData_GetOptionsAddr
	ldr r1, _0223DE50 ; =0x00000508
	str r0, [r5, r1]
	ldr r2, [r4, #0x18]
	ldr r0, _0223DE54 ; =0x000007A4
	str r2, [r5, r0]
	mov r2, #0xff
	strb r2, [r5, #0x12]
	ldrh r2, [r4, #0x28]
	add r0, #0x5e
	strh r2, [r5, r0]
	add r0, r1, #4
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	str r0, [r5, #4]
	ldr r0, _0223DE58 ; =0x000007FF
	mov r3, #0
	mov r2, #1
_0223DDF8:
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _0223DDF8
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223DE10
	mov r0, #3
	b _0223DE12
_0223DE10:
	mov r0, #4
_0223DE12:
	strb r0, [r5, #0x14]
	mov r0, #4
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	sub r0, r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0223DE5C ; =0x00000868
	add r0, r5, r0
	bl ov83_022477E4
	add r0, r5, #0
	bl ov83_0223F200
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223DE3C
	add r0, r5, #0
	bl sub_02096910
_0223DE3C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223DE40: .word FS_OVERLAY_ID(OVY_80)
_0223DE44: .word 0x0000086C
_0223DE48: .word 0x0000050C
_0223DE4C: .word 0x00000514
_0223DE50: .word 0x00000508
_0223DE54: .word 0x000007A4
_0223DE58: .word 0x000007FF
_0223DE5C: .word 0x00000868
	thumb_func_end ov83_0223DD60

	thumb_func_start ov83_0223DE60
ov83_0223DE60: ; 0x0223DE60
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, _0223DFAC ; =0x000007FE
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #1
	bne _0223DEC6
	ldr r2, [r5]
	cmp r2, #1
	bne _0223DEEC
	mov r2, #0
	strb r2, [r4, r1]
	bl ov83_022412A0
	ldr r0, _0223DFB0 ; =0x0000075C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223DE94
	bl ov83_0224753C
	ldrb r1, [r4, #0xe]
	mov r0, #4
	bic r1, r0
	strb r1, [r4, #0xe]
_0223DE94:
	ldr r0, _0223DFB4 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov80_0222A7CC
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov83_02240DA8
	b _0223DEEC
_0223DEC6:
	ldrb r0, [r4, #0x12]
	cmp r0, #0xff
	beq _0223DEEC
	ldr r0, [r5]
	cmp r0, #1
	beq _0223DED6
	cmp r0, #3
	bne _0223DEEC
_0223DED6:
	ldr r0, _0223DFAC ; =0x000007FE
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov83_022412A0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov83_02240DA8
_0223DEEC:
	ldr r0, [r5]
	cmp r0, #4
	bhi _0223DF9A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DEFE: ; jump table
	.short _0223DF08 - _0223DEFE - 2 ; case 0
	.short _0223DF1E - _0223DEFE - 2 ; case 1
	.short _0223DF60 - _0223DEFE - 2 ; case 2
	.short _0223DF76 - _0223DEFE - 2 ; case 3
	.short _0223DF8C - _0223DEFE - 2 ; case 4
_0223DF08:
	add r0, r4, #0
	bl ov83_0223E008
	cmp r0, #1
	bne _0223DF9A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov83_02240DA8
	b _0223DF9A
_0223DF1E:
	add r0, r4, #0
	bl ov83_0223E14C
	cmp r0, #1
	bne _0223DF9A
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0223DF3E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov83_02240DA8
	b _0223DF9A
_0223DF3E:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223DF54
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov83_02240DA8
	b _0223DF9A
_0223DF54:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov83_02240DA8
	b _0223DF9A
_0223DF60:
	add r0, r4, #0
	bl ov83_0223EEA0
	cmp r0, #1
	bne _0223DF9A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov83_02240DA8
	b _0223DF9A
_0223DF76:
	add r0, r4, #0
	bl ov83_0223EFA4
	cmp r0, #1
	bne _0223DF9A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov83_02240DA8
	b _0223DF9A
_0223DF8C:
	add r0, r4, #0
	bl ov83_0223F010
	cmp r0, #1
	bne _0223DF9A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223DF9A:
	add r0, r4, #0
	bl ov83_02241B30
	ldr r0, _0223DFB8 ; =0x00000518
	ldr r0, [r4, r0]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223DFAC: .word 0x000007FE
_0223DFB0: .word 0x0000075C
_0223DFB4: .word 0x00000508
_0223DFB8: .word 0x00000518
	thumb_func_end ov83_0223DE60

	thumb_func_start ov83_0223DFBC
ov83_0223DFBC: ; 0x0223DFBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #4
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	ldr r0, _0223E000 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bl GF_DestroyVramTransferManager
	add r0, r4, #0
	bl ov83_0223F058
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x6b
	bl Heap_Destroy
	ldr r0, _0223E004 ; =FS_OVERLAY_ID(OVY_80)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223E000: .word 0x04000050
_0223E004: .word FS_OVERLAY_ID(OVY_80)
	thumb_func_end ov83_0223DFBC

	thumb_func_start ov83_0223E008
ov83_0223E008: ; 0x0223E008
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _0223E104
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E020: ; jump table
	.short _0223E02A - _0223E020 - 2 ; case 0
	.short _0223E046 - _0223E020 - 2 ; case 1
	.short _0223E06E - _0223E020 - 2 ; case 2
	.short _0223E0B4 - _0223E020 - 2 ; case 3
	.short _0223E0F6 - _0223E020 - 2 ; case 4
_0223E02A:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E03E
	bl sub_02037BEC
	mov r0, #0xd7
	bl sub_02037AC0
_0223E03E:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E046:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E066
	mov r0, #0xd7
	bl sub_02037B38
	cmp r0, #1
	bne _0223E104
	bl sub_02037BEC
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E066:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E06E:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E08E
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ov83_02241368
	cmp r0, #1
	bne _0223E104
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E08E:
	add r0, r4, #0
	bl ov83_0223E10C
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E0B4:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E0EE
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	blo _0223E104
	mov r0, #0
	strb r0, [r4, #0xf]
	add r0, r4, #0
	bl ov83_0223E10C
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E0EE:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E0F6:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223E104
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223E104:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0223E008

	thumb_func_start ov83_0223E10C
ov83_0223E10C: ; 0x0223E10C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x50
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_0224153C
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02241770
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov83_02240080
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x70
	bl ov83_02240170
	add r0, r5, #0
	bl ov83_02240290
	bl GfGfx_BothDispOn
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223E10C

	thumb_func_start ov83_0223E14C
ov83_0223E14C: ; 0x0223E14C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x16
	bls _0223E15C
	bl _0223EE86
_0223E15C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E168: ; jump table
	.short _0223E196 - _0223E168 - 2 ; case 0
	.short _0223E254 - _0223E168 - 2 ; case 1
	.short _0223E2D2 - _0223E168 - 2 ; case 2
	.short _0223E42C - _0223E168 - 2 ; case 3
	.short _0223E608 - _0223E168 - 2 ; case 4
	.short _0223E6BA - _0223E168 - 2 ; case 5
	.short _0223E6CC - _0223E168 - 2 ; case 6
	.short _0223E6F2 - _0223E168 - 2 ; case 7
	.short _0223E714 - _0223E168 - 2 ; case 8
	.short _0223E814 - _0223E168 - 2 ; case 9
	.short _0223E8CA - _0223E168 - 2 ; case 10
	.short _0223EA26 - _0223E168 - 2 ; case 11
	.short _0223EB92 - _0223E168 - 2 ; case 12
	.short _0223EC40 - _0223E168 - 2 ; case 13
	.short _0223EC52 - _0223E168 - 2 ; case 14
	.short _0223EC78 - _0223E168 - 2 ; case 15
	.short _0223ECC0 - _0223E168 - 2 ; case 16
	.short _0223ECDA - _0223E168 - 2 ; case 17
	.short _0223ED00 - _0223E168 - 2 ; case 18
	.short _0223EDC2 - _0223E168 - 2 ; case 19
	.short _0223EDE2 - _0223E168 - 2 ; case 20
	.short _0223EE04 - _0223E168 - 2 ; case 21
	.short _0223EE46 - _0223E168 - 2 ; case 22
_0223E196:
	ldrb r1, [r4, #0xe]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1e
	cmp r1, #1
	bne _0223E1C2
	bl ov83_02240348
	ldr r0, _0223E4F0 ; =0x00000778
	mov r1, #0xcc
	ldr r0, [r4, r0]
	mov r2, #0x64
	bl ov83_02247630
	mov r0, #2
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	add sp, #4
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223E1C2:
	cmp r1, #2
	bne _0223E1E8
	bl ov83_02240384
	ldr r0, _0223E4F0 ; =0x00000778
	mov r1, #0xd3
	ldr r0, [r4, r0]
	mov r2, #0x6a
	bl ov83_02247630
	mov r0, #8
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	add sp, #4
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223E1E8:
	ldr r0, _0223E4F4 ; =0x00000838
	ldr r0, [r4, r0]
	bl ov83_02247AD4
	cmp r0, #4
	bhi _0223E20A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E200: ; jump table
	.short _0223E216 - _0223E200 - 2 ; case 0
	.short _0223E216 - _0223E200 - 2 ; case 1
	.short _0223E216 - _0223E200 - 2 ; case 2
	.short _0223E216 - _0223E200 - 2 ; case 3
	.short _0223E22A - _0223E200 - 2 ; case 4
_0223E20A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223E236
	bl _0223EE86
_0223E216:
	add r0, r4, #0
	bl ov83_022402F4
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	bl _0223EE86
_0223E22A:
	ldr r0, _0223E4F8 ; =0x000005DC
	bl PlaySE
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223E236:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0223E2FA
	ldr r0, _0223E4F4 ; =0x00000838
	ldr r0, [r4, r0]
	bl ov83_02247B04
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #4
	bl ov83_02242AB4
	bl _0223EE86
_0223E254:
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _0223E4F8 ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02242DAC
	cmp r5, #5
	bhi _0223E27A
	bhs _0223E2AA
	cmp r5, #0
	beq _0223E296
	bl _0223EE86
_0223E27A:
	cmp r5, #0xb
	bhi _0223E284
	beq _0223E2BE
	bl _0223EE86
_0223E284:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	blo _0223E2FA
	beq _0223E2BE
	add r0, r0, #1
	cmp r5, r0
	bl _0223EE86
_0223E296:
	add r0, r4, #0
	bl ov83_02240334
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	bl _0223EE86
_0223E2AA:
	add r0, r4, #0
	bl ov83_02240334
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	bl _0223EE86
_0223E2BE:
	add r0, r4, #0
	bl ov83_02240334
	add r0, r4, #0
	bl ov83_02240290
	mov r0, #0
	strb r0, [r4, #8]
	bl _0223EE86
_0223E2D2:
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _0223E4F8 ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02242DFC
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0223E322
	blo _0223E2F6
	b _0223E418
_0223E2F6:
	cmp r5, #0xb
	bls _0223E2FE
_0223E2FA:
	bl _0223EE86
_0223E2FE:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E30A: ; jump table
	.short _0223EE86 - _0223E30A - 2 ; case 0
	.short _0223E32C - _0223E30A - 2 ; case 1
	.short _0223E32C - _0223E30A - 2 ; case 2
	.short _0223E32C - _0223E30A - 2 ; case 3
	.short _0223E3A4 - _0223E30A - 2 ; case 4
	.short _0223EE86 - _0223E30A - 2 ; case 5
	.short _0223EE86 - _0223E30A - 2 ; case 6
	.short _0223EE86 - _0223E30A - 2 ; case 7
	.short _0223EE86 - _0223E30A - 2 ; case 8
	.short _0223EE86 - _0223E30A - 2 ; case 9
	.short _0223EE86 - _0223E30A - 2 ; case 10
	.short _0223E418 - _0223E30A - 2 ; case 11
_0223E322:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bl _0223EE86
_0223E32C:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_0224037C
	ldr r0, _0223E4FC ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	ldr r0, _0223E500 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	ldr r1, _0223E504 ; =0x00000848
	ldr r2, [r4, r1]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0223E508 ; =ov83_02247F4C
	ldr r1, [r1, r3]
	cmp r0, r1
	bhs _0223E378
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E378:
	lsl r3, r2, #1
	ldr r2, _0223E50C ; =ov83_02247D18
	mov r1, #0
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #3
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #3
	strb r0, [r4, #8]
	bl _0223EE86
_0223E3A4:
	ldr r0, _0223E500 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	add r6, r0, #0
	cmp r6, #3
	bne _0223E3C8
	ldr r0, _0223E4F8 ; =0x000005DC
	mov r1, #0
	bl StopSE
	ldr r0, _0223E510 ; =0x000005F3
	bl PlaySE
	bl _0223EE86
_0223E3C8:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov83_0224037C
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	mov r1, #0
	ldr r2, _0223E514 ; =ov83_02247D48
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #4
	strb r0, [r4, #8]
	bl _0223EE86
_0223E418:
	add r0, r4, #0
	bl ov83_0224037C
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	bl _0223EE86
_0223E42C:
	ldr r0, _0223E518 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223E442
	cmp r0, #2
	bne _0223E43E
	b _0223E5F2
_0223E43E:
	bl _0223EE86
_0223E442:
	ldr r0, _0223E518 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _0223E51C ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r6, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl FrontierSave_GetStat
	add r6, r0, #0
	ldr r0, _0223E500 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	ldr r1, _0223E504 ; =0x00000848
	mov r2, #0xc
	ldr r1, [r4, r1]
	add r3, r1, #0
	mul r3, r2
	ldr r2, _0223E508 ; =ov83_02247F4C
	ldr r2, [r2, r3]
	cmp r0, r2
	bhs _0223E4C0
	ldr r0, _0223E4FC ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E4C0:
	ldr r0, _0223E50C ; =ov83_02247D18
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	cmp r6, r0
	bhs _0223E520
	ldr r0, _0223E4FC ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
	.balign 4, 0
_0223E4F0: .word 0x00000778
_0223E4F4: .word 0x00000838
_0223E4F8: .word 0x000005DC
_0223E4FC: .word 0x00000508
_0223E500: .word 0x0000050C
_0223E504: .word 0x00000848
_0223E508: .word ov83_02247F4C
_0223E50C: .word ov83_02247D18
_0223E510: .word 0x000005F3
_0223E514: .word ov83_02247D48
_0223E518: .word 0x0000084C
_0223E51C: .word 0x000007A4
_0223E520:
	cmp r1, #0
	bne _0223E552
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	bne _0223E5AC
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E552:
	cmp r1, #1
	bne _0223E574
	add r0, r5, #0
	bl ov83_022412DC
	cmp r0, #0
	bne _0223E5AC
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E574:
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	bne _0223E5AC
	add r0, r5, #0
	bl ov83_022412DC
	cmp r0, #0
	bne _0223E5AC
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E5AC:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223E5E4
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	sub r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _0223E8D8 ; =ov83_02247D18
	ldrh r2, [r2, r3]
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_022415F4
	mov r0, #0x13
	strb r0, [r4, #8]
	bl _0223EE86
_0223E5E4:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223E5F2:
	ldr r0, _0223E8DC ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	bl _0223EE86
_0223E608:
	ldr r0, _0223E8DC ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223E61C
	cmp r0, #2
	beq _0223E6A6
	bl _0223EE86
_0223E61C:
	ldr r0, _0223E8DC ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r5, r0, #0
	ldr r0, _0223E8E0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	lsl r1, r0, #1
	ldr r0, _0223E8E4 ; =ov83_02247D48
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _0223E67E
	ldr r0, _0223E8E8 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E67E:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223E698
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #4
	bl ov83_02241BC4
	mov r0, #5
	strb r0, [r4, #8]
	b _0223EE86
_0223E698:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223E6A6:
	ldr r0, _0223E8DC ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EE86
_0223E6BA:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov83_02240FAC
	cmp r0, #1
	bne _0223E754
	mov r0, #6
	strb r0, [r4, #8]
	b _0223EE86
_0223E6CC:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223E754
	ldr r0, _0223E8EC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02240348
	ldr r0, _0223E8F0 ; =0x00000778
	mov r1, #0xcc
	ldr r0, [r4, r0]
	mov r2, #0x64
	bl ov83_02247630
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EE86
_0223E6F2:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223E754
	ldr r0, _0223E8EC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EE86
_0223E714:
	ldr r2, _0223E8F4 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _0223E8EC ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02242E88
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0223E756
	bhs _0223E75C
	cmp r5, #8
	bhi _0223E754
	cmp r5, #6
	blo _0223E754
	beq _0223E76E
	cmp r5, #7
	beq _0223E784
	cmp r5, #8
	beq _0223E7C0
_0223E754:
	b _0223EE86
_0223E756:
	add r0, r0, #1
	cmp r5, r0
	b _0223EE86
_0223E75C:
	add r0, r4, #0
	bl ov83_022403B8
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	b _0223EE86
_0223E76E:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_022403B8
	add r0, r4, #0
	mov r1, #6
	bl ov83_022403C0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223E784:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_022403B8
	ldr r0, _0223E8E0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	cmp r0, #1
	bne _0223E7B2
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223E7B2:
	add r0, r4, #0
	mov r1, #7
	bl ov83_022403C0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223E7C0:
	ldr r0, _0223E8E0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	add r6, r0, #0
	cmp r6, #3
	bne _0223E7E2
	ldr r0, _0223E8EC ; =0x000005DC
	mov r1, #0
	bl StopSE
	ldr r0, _0223E8F8 ; =0x000005F3
	bl PlaySE
	b _0223EE86
_0223E7E2:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_022403B8
	mov r1, #0
	ldr r2, _0223E8FC ; =ov83_02247D4E
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #0xc
	strb r0, [r4, #8]
	b _0223EE86
_0223E814:
	ldr r0, _0223E900 ; =0x0000085C
	ldr r0, [r4, r0]
	bl ov83_02247BC4
	add r5, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r5, r0
	bhi _0223E84A
	bhs _0223E8AE
	cmp r5, #8
	bhi _0223E852
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E838: ; jump table
	.short _0223E854 - _0223E838 - 2 ; case 0
	.short _0223E854 - _0223E838 - 2 ; case 1
	.short _0223E854 - _0223E838 - 2 ; case 2
	.short _0223E854 - _0223E838 - 2 ; case 3
	.short _0223E854 - _0223E838 - 2 ; case 4
	.short _0223E854 - _0223E838 - 2 ; case 5
	.short _0223E882 - _0223E838 - 2 ; case 6
	.short _0223E898 - _0223E838 - 2 ; case 7
	.short _0223E8B6 - _0223E838 - 2 ; case 8
_0223E84A:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0223E8B6
_0223E852:
	b _0223EE86
_0223E854:
	ldr r0, _0223E904 ; =0x00000862
	mov r1, #6
	ldrsh r2, [r4, r0]
	mul r1, r2
	add r2, r5, r1
	sub r1, r0, #2
	strb r2, [r4, r1]
	sub r0, r0, #1
	ldrb r1, [r4, r1]
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhs _0223E916
	ldr r0, _0223E908 ; =0x000005DD
	bl PlaySE
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E882:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	add r0, r4, #0
	mov r1, #6
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E898:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E8AE:
	ldr r0, _0223E8EC ; =0x000005DC
	bl PlaySE
	b _0223EE86
_0223E8B6:
	ldr r0, _0223E908 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #8
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E8CA:
	bl ov83_02242F2C
	cmp r0, #1
	beq _0223E916
	ldr r0, _0223E90C ; =0x00000864
	b _0223E910
	nop
_0223E8D8: .word ov83_02247D18
_0223E8DC: .word 0x0000084C
_0223E8E0: .word 0x0000050C
_0223E8E4: .word ov83_02247D48
_0223E8E8: .word 0x00000508
_0223E8EC: .word 0x000005DC
_0223E8F0: .word 0x00000778
_0223E8F4: .word 0x00000868
_0223E8F8: .word 0x000005F3
_0223E8FC: .word ov83_02247D4E
_0223E900: .word 0x0000085C
_0223E904: .word 0x00000862
_0223E908: .word 0x000005DD
_0223E90C: .word 0x00000864
_0223E910:
	ldrh r1, [r4, r0]
	cmp r1, #8
	bls _0223E918
_0223E916:
	b _0223EE86
_0223E918:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223E924: ; jump table
	.short _0223E936 - _0223E924 - 2 ; case 0
	.short _0223E936 - _0223E924 - 2 ; case 1
	.short _0223E936 - _0223E924 - 2 ; case 2
	.short _0223E936 - _0223E924 - 2 ; case 3
	.short _0223E936 - _0223E924 - 2 ; case 4
	.short _0223E936 - _0223E924 - 2 ; case 5
	.short _0223E982 - _0223E924 - 2 ; case 6
	.short _0223E9CA - _0223E924 - 2 ; case 7
	.short _0223EA14 - _0223E924 - 2 ; case 8
_0223E936:
	add r0, r4, #0
	bl ov83_022428A8
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	add r2, r0, #0
	mov r1, #0
	add r0, r4, #0
	mov r3, #3
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #0xb
	strb r0, [r4, #8]
	b _0223EE86
_0223E982:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0223E9A2
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	mov r1, #6
	sub r0, r0, #1
	bl _s32_div_f
	ldr r1, _0223EC88 ; =0x00000862
	strh r0, [r4, r1]
_0223E9A2:
	add r0, r4, #0
	bl ov83_02240664
	add r0, r4, #0
	bl ov83_02240748
	add r0, r4, #0
	bl ov83_022407FC
	ldr r0, _0223EC8C ; =0x0000085C
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022408E0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223E9CA:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	mov r1, #6
	sub r0, r0, #1
	bl _s32_div_f
	ldr r1, _0223EC88 ; =0x00000862
	ldrsh r2, [r4, r1]
	cmp r0, r2
	bge _0223E9EC
	mov r0, #0
	strh r0, [r4, r1]
_0223E9EC:
	add r0, r4, #0
	bl ov83_02240664
	add r0, r4, #0
	bl ov83_02240748
	add r0, r4, #0
	bl ov83_022407FC
	ldr r0, _0223EC8C ; =0x0000085C
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022408E0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223EA14:
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223EA26:
	ldr r0, _0223EC90 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223EA3A
	cmp r0, #2
	bne _0223EA38
	b _0223EB7E
_0223EA38:
	b _0223EE86
_0223EA3A:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	mov r1, #0x86
	lsl r1, r1, #4
	add r5, r0, #0
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	cmp r5, r0
	bhs _0223EA96
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	b _0223EE86
_0223EA96:
	ldr r0, _0223EC94 ; =0x00000804
	mov r1, #6
	ldr r5, [r4, r0]
	mov r2, #0
	add r0, r5, #0
	bl GetMonData
	cmp r0, #0
	bne _0223EB36
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223EB0A
	add r0, r4, #0
	bl ov83_0224042C
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	add r2, r0, #0
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_022416A0
	mov r0, #0x13
	strb r0, [r4, #8]
	b _0223EE86
_0223EB0A:
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	strh r0, [r4, #0x10]
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223EB36:
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov83_02240C60
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl BufferItemNameWithIndefArticle
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x3c
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0x11
	strb r0, [r4, #8]
	b _0223EE86
_0223EB7E:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_0224175C
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223EB92:
	ldr r0, _0223EC90 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223EBA4
	cmp r0, #2
	beq _0223EC2C
	b _0223EE86
_0223EBA4:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r5, r0, #0
	ldr r0, _0223EC98 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	lsl r1, r0, #1
	ldr r0, _0223EC9C ; =ov83_02247D4E
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _0223EC04
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _0223EE86
_0223EC04:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223EC1E
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #8
	bl ov83_02241BC4
	mov r0, #0xd
	strb r0, [r4, #8]
	b _0223EE86
_0223EC1E:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223EC2C:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223EC40:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov83_02240FAC
	cmp r0, #1
	bne _0223ED10
	mov r0, #0xe
	strb r0, [r4, #8]
	b _0223EE86
_0223EC52:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223ECA0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02240384
	ldr r0, _0223ECA4 ; =0x00000778
	mov r1, #0xd3
	ldr r0, [r4, r0]
	mov r2, #0x6a
	bl ov83_02247630
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223EC78:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223ECA0 ; =0x000005DC
	b _0223ECA8
	.balign 4, 0
_0223EC84: .word 0x00000508
_0223EC88: .word 0x00000862
_0223EC8C: .word 0x0000085C
_0223EC90: .word 0x0000084C
_0223EC94: .word 0x00000804
_0223EC98: .word 0x0000050C
_0223EC9C: .word ov83_02247D4E
_0223ECA0: .word 0x000005DC
_0223ECA4: .word 0x00000778
_0223ECA8:
	bl PlaySE
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223ECC0:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_0224175C
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223ECDA:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #0x12
	strb r0, [r4, #8]
	b _0223EE86
_0223ED00:
	ldr r0, _0223EE90 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223ED12
	cmp r0, #2
	beq _0223EDAE
_0223ED10:
	b _0223EE86
_0223ED12:
	ldr r0, _0223EE90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240664
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223ED82
	add r0, r4, #0
	bl ov83_0224042C
	ldr r0, _0223EE94 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	add r2, r0, #0
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_022416A0
	mov r0, #0x13
	strb r0, [r4, #8]
	b _0223EE86
_0223ED82:
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	strh r0, [r4, #0x10]
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223EDAE:
	ldr r0, _0223EE90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_0224175C
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223EDC2:
	ldr r2, _0223EE98 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240FAC
	cmp r0, #1
	bne _0223EE86
	mov r0, #0x14
	strb r0, [r4, #8]
	b _0223EE86
_0223EDE2:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223EE86
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02240290
	mov r0, #0
	strb r0, [r4, #8]
	b _0223EE86
_0223EE04:
	ldr r1, _0223EE9C ; =gSystem
	ldr r3, [r1, #0x48]
	mov r1, #0x20
	add r2, r3, #0
	tst r2, r1
	beq _0223EE18
	sub r1, #0x21
	bl ov83_02241208
	b _0223EE86
_0223EE18:
	mov r1, #0x10
	tst r1, r3
	beq _0223EE26
	mov r1, #1
	bl ov83_02241208
	b _0223EE86
_0223EE26:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223EE86
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02241B18
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	b _0223EE86
_0223EE46:
	ldr r1, _0223EE9C ; =gSystem
	ldr r3, [r1, #0x48]
	mov r1, #0x20
	add r2, r3, #0
	tst r2, r1
	beq _0223EE5A
	sub r1, #0x21
	bl ov83_02241254
	b _0223EE86
_0223EE5A:
	mov r1, #0x10
	tst r1, r3
	beq _0223EE68
	mov r1, #1
	bl ov83_02241254
	b _0223EE86
_0223EE68:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223EE86
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02241B18
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
_0223EE86:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0223EE8C: .word 0x000005DC
_0223EE90: .word 0x0000084C
_0223EE94: .word 0x00000508
_0223EE98: .word 0x00000868
_0223EE9C: .word gSystem
	thumb_func_end ov83_0223E14C

	thumb_func_start ov83_0223EEA0
ov83_0223EEA0: ; 0x0223EEA0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #4
	bhi _0223EF96
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223EEB6: ; jump table
	.short _0223EEC0 - _0223EEB6 - 2 ; case 0
	.short _0223EEF2 - _0223EEB6 - 2 ; case 1
	.short _0223EF1E - _0223EEB6 - 2 ; case 2
	.short _0223EF40 - _0223EEB6 - 2 ; case 3
	.short _0223EF5E - _0223EEB6 - 2 ; case 4
_0223EEC0:
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	ldr r2, _0223EF9C ; =0x00000868
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0xb
	bl ov83_02241368
	cmp r0, #1
	bne _0223EF96
	ldrb r1, [r4, #0xe]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223EF96
_0223EEF2:
	ldrb r1, [r4, #0x12]
	cmp r1, #0xff
	beq _0223EF96
	mov r1, #0
	strb r1, [r4, #0xf]
	ldrb r2, [r4, #0x13]
	cmp r2, #4
	beq _0223EF06
	cmp r2, #8
	bne _0223EF10
_0223EF06:
	ldrb r1, [r4, #0x12]
	add r0, r4, #0
	bl ov83_02241BC4
	b _0223EF16
_0223EF10:
	ldrb r1, [r4, #0x12]
	bl ov83_022418E8
_0223EF16:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223EF96
_0223EF1E:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x12]
	bl ov83_0224776C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240FAC
	cmp r0, #1
	bne _0223EF96
	mov r0, #0x1e
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223EF96
_0223EF40:
	ldrb r0, [r4, #0xb]
	sub r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0223EF96
	bl sub_02037BEC
	mov r0, #0x82
	bl sub_02037AC0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223EF96
_0223EF5E:
	mov r0, #0x82
	bl sub_02037B38
	cmp r0, #1
	bne _0223EF96
	bl sub_02037BEC
	mov r0, #0x6b
	bl sub_020379A0
	mov r0, #0xff
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	bne _0223EF8C
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02240290
_0223EF8C:
	ldr r0, _0223EFA0 ; =0x000007FE
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0223EF96:
	mov r0, #0
	pop {r4, pc}
	nop
_0223EF9C: .word 0x00000868
_0223EFA0: .word 0x000007FE
	thumb_func_end ov83_0223EEA0

	thumb_func_start ov83_0223EFA4
ov83_0223EFA4: ; 0x0223EFA4
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0223EFB8
	cmp r1, #1
	beq _0223EFD0
	cmp r1, #2
	beq _0223EFF2
	b _0223F00C
_0223EFB8:
	mov r1, #0xd
	mov r2, #0
	bl ov83_02241368
	cmp r0, #1
	bne _0223F00C
	mov r0, #0x1e
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F00C
_0223EFD0:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0223EFDA
	sub r0, r0, #1
	strb r0, [r4, #0xb]
_0223EFDA:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0223F00C
	bl sub_02037BEC
	mov r0, #0x83
	bl sub_02037AC0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F00C
_0223EFF2:
	mov r0, #0x83
	bl sub_02037B38
	cmp r0, #1
	bne _0223F00C
	bl sub_02037BEC
	add r4, #0xb0
	add r0, r4, #0
	bl ov83_02241354
	mov r0, #1
	pop {r4, pc}
_0223F00C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov83_0223EFA4

	thumb_func_start ov83_0223F010
ov83_0223F010: ; 0x0223F010
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0223F022
	cmp r0, #1
	beq _0223F042
	b _0223F050
_0223F022:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223F050
_0223F042:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223F050
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223F050:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0223F010

	thumb_func_start ov83_0223F058
ov83_0223F058: ; 0x0223F058
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223F18C ; =0x0000084C
	add r0, r5, r0
	bl ov83_02247858
	ldr r0, _0223F190 ; =0x0000083C
	ldr r0, [r5, r0]
	bl ov83_02247CC4
	ldr r0, _0223F194 ; =0x00000838
	ldr r0, [r5, r0]
	bl ov83_02247A18
	ldr r0, _0223F198 ; =0x00000734
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F19C ; =0x00000738
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1A0 ; =0x00000778
	ldr r0, [r5, r0]
	bl ov83_0224753C
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1A4 ; =0x00000764
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1A8 ; =0x0000077C
	ldr r0, [r5, r0]
	bl ov83_0224753C
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1AC ; =0x0000079C
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r7, r0, #0
	mov r6, #0
	cmp r7, #0
	ble _0223F0EA
	add r4, r5, #0
_0223F0CA:
	ldr r0, _0223F1B0 ; =0x0000073C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _0223F1B4 ; =0x0000074C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _0223F1B8 ; =0x00000768
	ldr r0, [r4, r0]
	bl ov83_0224753C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r7
	blt _0223F0CA
_0223F0EA:
	ldr r7, _0223F1BC ; =0x00000784
	mov r6, #0
	add r4, r5, #0
_0223F0F0:
	ldr r0, [r4, r7]
	bl ov83_0224753C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _0223F0F0
	bl sub_0203A914
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #2
	bl PaletteData_FreeBuffers
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl PaletteData_FreeBuffers
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl PaletteData_Free
	mov r0, #5
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
	add r0, #0x18
	add r0, r5, r0
	bl ov83_022471FC
	ldr r0, [r5, #0x20]
	bl DestroyMsgData
	ldr r0, [r5, #0x1c]
	bl DestroyMsgData
	ldr r0, [r5, #0x24]
	bl MessageFormat_Delete
	ldr r0, [r5, #0x28]
	bl String_Delete
	ldr r0, [r5, #0x2c]
	bl String_Delete
	ldr r0, _0223F1C0 ; =0x00000504
	ldr r0, [r5, r0]
	bl MessagePrinter_Delete
	mov r0, #4
	bl FontID_Release
	mov r6, #0
	add r4, r5, #0
_0223F164:
	ldr r0, [r4, #0x30]
	bl String_Delete
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _0223F164
	add r0, r5, #0
	add r0, #0x50
	mov r1, #0
	bl ov83_0224791C
	ldr r0, [r5, #0x4c]
	bl ov83_0223F734
	ldr r0, _0223F1C4 ; =0x000007A8
	ldr r0, [r5, r0]
	bl NARC_Delete
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F18C: .word 0x0000084C
_0223F190: .word 0x0000083C
_0223F194: .word 0x00000838
_0223F198: .word 0x00000734
_0223F19C: .word 0x00000738
_0223F1A0: .word 0x00000778
_0223F1A4: .word 0x00000764
_0223F1A8: .word 0x0000077C
_0223F1AC: .word 0x0000079C
_0223F1B0: .word 0x0000073C
_0223F1B4: .word 0x0000074C
_0223F1B8: .word 0x00000768
_0223F1BC: .word 0x00000784
_0223F1C0: .word 0x00000504
_0223F1C4: .word 0x000007A8
	thumb_func_end ov83_0223F058

	thumb_func_start ov83_0223F1C8
ov83_0223F1C8: ; 0x0223F1C8
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0223F1F8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _0223F1FC ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	pop {r3, pc}
	.balign 4, 0
_0223F1F8: .word 0xFFFFE0FF
_0223F1FC: .word 0x04001000
	thumb_func_end ov83_0223F1C8

	thumb_func_start ov83_0223F200
ov83_0223F200: ; 0x0223F200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	mov r0, #0xb7
	mov r1, #0x6b
	bl NARC_New
	ldr r1, _0223F594 ; =0x000007A8
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov83_0223F690
	add r0, r5, #0
	bl ov83_0223F70C
	mov r0, #4
	mov r1, #0x6b
	bl FontID_Alloc
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x1f
	mov r3, #0x6b
	bl NewMsgDataFromNarc
	str r0, [r5, #0x20]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xdd
	mov r3, #0x6b
	bl NewMsgDataFromNarc
	str r0, [r5, #0x1c]
	mov r0, #0x6b
	bl MessageFormat_New
	str r0, [r5, #0x24]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x6b
	bl String_New
	str r0, [r5, #0x28]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x6b
	bl String_New
	str r0, [r5, #0x2c]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x20
_0223F268:
	add r0, r7, #0
	mov r1, #0x6b
	bl String_New
	str r0, [r4, #0x30]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _0223F268
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x6b
	bl LoadFontPal0
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x6b
	bl LoadFontPal1
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r3, #0x6b
	bl MessagePrinter_New
	ldr r1, _0223F598 ; =0x00000504
	mov r2, #0
	str r0, [r5, r1]
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0x50
	bl ov83_022478D4
	add r0, sp, #0x30
	add r1, sp, #0x34
	add r3, sp, #0x30
	str r0, [sp]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0x34
	add r3, #2
	bl ov83_02240F7C
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5A0 ; =0x00000734
	str r0, [r5, r1]
	mov r1, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x7c
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5A4 ; =0x00000738
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov83_0224755C
	ldr r0, _0223F5A4 ; =0x00000738
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223F32C
	mov r0, #0x48
	mov r7, #0x40
	str r0, [sp, #0x18]
	b _0223F332
_0223F32C:
	mov r0, #0x28
	mov r7, #0x20
	str r0, [sp, #0x18]
_0223F332:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	mov r6, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bgt _0223F344
	b _0223F45C
_0223F344:
	add r4, r5, #0
_0223F346:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov83_02247454
	ldr r1, _0223F5A8 ; =0x0000074C
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x58
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	str r0, [sp, #0x1c]
	bl GetMonData
	cmp r0, #0
	bne _0223F394
	ldr r0, _0223F5A8 ; =0x0000074C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov83_0224755C
_0223F394:
	ldr r0, [sp, #0x1c]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r5, #0
	bl ov83_022411B0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r5, #0
	bl ov83_022411DC
	mov r1, #0
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov83_02247454
	ldr r1, _0223F5AC ; =0x00000768
	mov r2, #0xa
	str r0, [r4, r1]
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0223F59C ; =0x00000518
	add r1, #0xa
	add r0, r5, r0
	mov r3, #5
	bl ov83_02247454
	ldr r1, _0223F5B0 ; =0x0000073C
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x68
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Party_GetMonByIndex
	add r1, r0, #0
	ldr r0, _0223F5B0 ; =0x0000073C
	ldr r0, [r4, r0]
	bl ov83_022475EC
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r0, #0x40
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r7, #0x40
	cmp r6, r0
	bge _0223F45C
	b _0223F346
_0223F45C:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0x10]
	mov r1, #3
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_022474C4
	ldr r1, _0223F5B4 ; =0x0000079C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	mov r4, #0
	add r6, r5, #0
	add r7, r4, #0
_0223F48C:
	add r1, sp, #0x2c
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0x2c
	bl ov83_02242894
	str r7, [sp]
	add r1, sp, #0x2c
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r3, #4
	str r0, [sp, #4]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r1, r4, #4
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r7, [sp, #0xc]
	add r0, r5, r0
	str r7, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5B8 ; =0x00000784
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #0
	bl ov83_0224755C
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blt _0223F48C
	add r0, r5, #0
	add r1, sp, #0x3c
	add r2, sp, #0x38
	mov r3, #0
	bl ov83_02240E70
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0x10]
	bl ov83_02247454
	mov r1, #0x76
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x3c]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x38]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5BC ; =0x00000764
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223F548
	ldr r0, _0223F5BC ; =0x00000764
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
_0223F548:
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5C0 ; =0x00000778
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	mov r1, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5C4 ; =0x0000077C
	b _0223F5C8
	nop
_0223F594: .word 0x000007A8
_0223F598: .word 0x00000504
_0223F59C: .word 0x00000518
_0223F5A0: .word 0x00000734
_0223F5A4: .word 0x00000738
_0223F5A8: .word 0x0000074C
_0223F5AC: .word 0x00000768
_0223F5B0: .word 0x0000073C
_0223F5B4: .word 0x0000079C
_0223F5B8: .word 0x00000784
_0223F5BC: .word 0x00000764
_0223F5C0: .word 0x00000778
_0223F5C4: .word 0x0000077C
_0223F5C8:
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	add r0, r5, #0
	bl ov83_02241E18
	add r0, r5, #0
	bl ov83_02241FF0
	add r0, r5, #0
	mov r1, #1
	bl ov83_022421E0
	mov r1, #0
	str r1, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0223F67C ; =0x00000518
	str r1, [sp, #0x10]
	mov r1, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_022474C4
	mov r3, #0x1e
	lsl r3, r3, #6
	add r2, r3, #0
	str r0, [r5, r3]
	add r1, r3, #0
	add r2, #0x8c
	ldr r0, [r5, r3]
	add r1, #0x88
	add r3, #0x94
	ldrh r2, [r5, r2]
	ldr r1, [r5, r1]
	ldr r3, [r5, r3]
	bl ov83_02247668
	ldrb r2, [r5, #0x14]
	add r0, r5, #0
	mov r1, #1
	bl ov83_02247A24
	ldr r1, _0223F680 ; =0x00000838
	str r0, [r5, r1]
	ldr r1, _0223F67C ; =0x00000518
	ldr r0, [r5, r1]
	sub r1, #0x18
	ldr r1, [r5, r1]
	bl ov83_02247CB8
	ldr r1, _0223F684 ; =0x0000083C
	str r0, [r5, r1]
	add r1, #0x10
	add r0, r5, r1
	bl ov83_02247844
	bl sub_02037474
	cmp r0, #0
	beq _0223F660
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
_0223F660:
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0223F688 ; =0x04000050
	mov r1, #0
	mov r2, #0xe
	mov r3, #6
	bl G2x_SetBlendAlpha_
	ldr r0, _0223F68C ; =ov83_0223F7A0
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F67C: .word 0x00000518
_0223F680: .word 0x00000838
_0223F684: .word 0x0000083C
_0223F688: .word 0x04000050
_0223F68C: .word ov83_0223F7A0
	thumb_func_end ov83_0223F200

	thumb_func_start ov83_0223F690
ov83_0223F690: ; 0x0223F690
	push {r4, lr}
	ldr r2, _0223F700 ; =0x04000304
	add r4, r0, #0
	ldrh r1, [r2]
	ldr r0, _0223F704 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	bl ov83_0223F7E4
	ldr r0, [r4, #0x4c]
	bl ov83_0223F804
	mov r0, #0x6b
	bl PaletteData_Init
	mov r1, #5
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x6b
	bl PaletteData_AllocBuffers
	mov r0, #5
	lsl r0, r0, #8
	mov r2, #2
	ldr r0, [r4, r0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x6b
	bl PaletteData_AllocBuffers
	add r0, r4, #0
	mov r1, #3
	bl ov83_0223FA00
	bl ov83_0223FA74
	add r0, r4, #0
	mov r1, #2
	bl ov83_0223FAA8
	bl ov83_0223FAF0
	ldr r2, _0223F708 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	add r0, r4, #0
	mov r1, #4
	bl ov83_0223FBEC
	pop {r4, pc}
	.balign 4, 0
_0223F700: .word 0x04000304
_0223F704: .word 0xFFFF7FFF
_0223F708: .word 0x00000868
	thumb_func_end ov83_0223F690

	thumb_func_start ov83_0223F70C
ov83_0223F70C: ; 0x0223F70C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	add r2, r0, #0
	ldr r1, _0223F72C ; =0x000007A4
	ldr r0, _0223F730 ; =0x00000518
	lsl r2, r2, #0x18
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsr r2, r2, #0x18
	bl ov83_02246E08
	pop {r4, pc}
	nop
_0223F72C: .word 0x000007A4
_0223F730: .word 0x00000518
	thumb_func_end ov83_0223F70C

	thumb_func_start ov83_0223F734
ov83_0223F734: ; 0x0223F734
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x1f
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	mov r1, #3
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #2
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #0
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #1
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #4
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #5
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #6
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #7
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	bl Heap_Free
	ldr r2, _0223F79C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	pop {r4, pc}
	nop
_0223F79C: .word 0x04000304
	thumb_func_end ov83_0223F734

	thumb_func_start ov83_0223F7A0
ov83_0223F7A0: ; 0x0223F7A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223F7B2
	bl PaletteData_PushTransparentBuffers
_0223F7B2:
	ldr r0, [r4, #0x4c]
	bl DoScheduledBgGpuUpdates
	ldr r0, _0223F7D8 ; =0x00000868
	add r0, r4, r0
	bl ov83_0224780C
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _0223F7DC ; =0x027E0000
	ldr r1, _0223F7E0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223F7D8: .word 0x00000868
_0223F7DC: .word 0x027E0000
_0223F7E0: .word 0x00003FF8
	thumb_func_end ov83_0223F7A0

	thumb_func_start ov83_0223F7E4
ov83_0223F7E4: ; 0x0223F7E4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223F800 ; =ov83_02247E88
	add r3, sp, #0
	mov r2, #5
_0223F7EE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223F7EE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_0223F800: .word ov83_02247E88
	thumb_func_end ov83_0223F7E4

	thumb_func_start ov83_0223F804
ov83_0223F804: ; 0x0223F804
	push {r3, r4, r5, lr}
	sub sp, #0xf0
	ldr r5, _0223F9D8 ; =ov83_02247D38
	add r3, sp, #0xe0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _0223F9DC ; =ov83_02247DA0
	add r3, sp, #0xc4
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223F9E0 ; =ov83_02247DBC
	add r3, sp, #0xa8
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
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223F9E4 ; =ov83_02247DF4
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223F9E8 ; =ov83_02247E10
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223F9EC ; =ov83_02247E2C
	add r3, sp, #0x54
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223F9F0 ; =ov83_02247E48
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223F9F4 ; =ov83_02247D84
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	add r0, r4, #0
	mov r1, #6
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223F9F8 ; =ov83_02247DD8
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r1, _0223F9FC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add sp, #0xf0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223F9D8: .word ov83_02247D38
_0223F9DC: .word ov83_02247DA0
_0223F9E0: .word ov83_02247DBC
_0223F9E4: .word ov83_02247DF4
_0223F9E8: .word ov83_02247E10
_0223F9EC: .word ov83_02247E2C
_0223F9F0: .word ov83_02247E48
_0223F9F4: .word ov83_02247D84
_0223F9F8: .word ov83_02247DD8
_0223F9FC: .word 0x04000008
	thumb_func_end ov83_0223F804

	thumb_func_start ov83_0223FA00
ov83_0223FA00: ; 0x0223FA00
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FA70 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x22
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223FA4E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FA70 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x23
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0223FA4E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FA70 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x24
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223FA70: .word 0x000007A8
	thumb_func_end ov83_0223FA00

	thumb_func_start ov83_0223FA74
ov83_0223FA74: ; 0x0223FA74
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb7
	mov r1, #0x9c
	add r2, sp, #0
	mov r3, #0x6b
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0xe0
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0xe0
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl Heap_Free
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FA74

	thumb_func_start ov83_0223FAA8
ov83_0223FAA8: ; 0x0223FAA8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FAEC ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x22
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FAEC ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x2a
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223FAEC: .word 0x000007A8
	thumb_func_end ov83_0223FAA8

	thumb_func_start ov83_0223FAF0
ov83_0223FAF0: ; 0x0223FAF0
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb7
	mov r1, #0x9c
	add r2, sp, #0
	mov r3, #0x6b
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl Heap_Free
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FAF0

	thumb_func_start ov83_0223FB24
ov83_0223FB24: ; 0x0223FB24
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FB68 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x22
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FB68 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x2b
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223FB68: .word 0x000007A8
	thumb_func_end ov83_0223FB24

	thumb_func_start ov83_0223FB6C
ov83_0223FB6C: ; 0x0223FB6C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FBE8 ; =0x000007A8
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, r0]
	mov r1, #0x22
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FBE8 ; =0x000007A8
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, r0]
	mov r1, #0x26
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FBE8 ; =0x000007A8
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, r0]
	mov r1, #0x28
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FBE8 ; =0x000007A8
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, r0]
	mov r1, #0x29
	mov r3, #6
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r4, pc}
	nop
_0223FBE8: .word 0x000007A8
	thumb_func_end ov83_0223FB6C

	thumb_func_start ov83_0223FBEC
ov83_0223FBEC: ; 0x0223FBEC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FC44 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x28
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FC44 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x93
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r3, #0
	str r3, [sp]
	mov r0, #0x6b
	str r0, [sp, #4]
	ldr r0, _0223FC44 ; =0x000007A8
	mov r1, #0xbe
	ldr r0, [r5, r0]
	mov r2, #4
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223FC44: .word 0x000007A8
	thumb_func_end ov83_0223FBEC

	thumb_func_start ov83_0223FC48
ov83_0223FC48: ; 0x0223FC48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r5, r0, #0
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FC48

	thumb_func_start ov83_0223FCB4
ov83_0223FCB4: ; 0x0223FCB4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r6, r3, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r3, r6, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r5, r0, #0
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FCB4

	thumb_func_start ov83_0223FD14
ov83_0223FD14: ; 0x0223FD14
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0xb0
	add r2, r4, #0
	bl ov83_0223FC48
	add r5, #0xb0
	add r4, r0, #0
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FD14

	thumb_func_start ov83_0223FD4C
ov83_0223FD4C: ; 0x0223FD4C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferItemName
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x46
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x47
	mov r3, #0x40
	bl ov83_0223FF20
	add r0, r6, #0
	bl GetMonNature
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferNatureName
	mov r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x48
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x49
	mov r3, #0x40
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferAbilityName
	mov r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4a
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4b
	mov r3, #0x40
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa5
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x38
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4c
	mov r3, #1
	bl ov83_0223FF20
	mov r3, #0x38
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4d
	str r3, [sp]
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x38
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4e
	mov r3, #0x58
	bl ov83_0223FF20
	mov r0, #0x38
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4f
	mov r3, #0x90
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x50
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x51
	mov r3, #0x38
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x52
	mov r3, #0x58
	bl ov83_0223FF20
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x53
	mov r3, #0x90
	bl ov83_0223FF20
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x54
	mov r3, #1
	bl ov83_0223FF20
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x55
	mov r3, #0x38
	bl ov83_0223FF20
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_0223FD4C

	thumb_func_start ov83_0223FF20
ov83_0223FF20: ; 0x0223FF20
	push {r4, lr}
	sub sp, #0x18
	add r4, sp, #0x10
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xff
	str r4, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	mov r4, #2
	str r4, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	bl ov83_0223FCB4
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov83_0223FF20

	thumb_func_start ov83_0223FF44
ov83_0223FF44: ; 0x0223FF44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r4, r2, #0
	bl FillWindowPixelBuffer
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r0, #0x42
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x60
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0x43
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x61
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r0, #0x3c
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x62
	bl ov83_0223FFD8
	mov r0, #0x64
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	mov r0, #0x45
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #0x63
	bl ov83_0223FFD8
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_0223FF44

	thumb_func_start ov83_0223FFD8
ov83_0223FFD8: ; 0x0223FFD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	mov r2, #0
	add r7, r3, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl BufferMoveName
	mov r3, #0x18
	add r0, r5, #0
	mul r0, r3
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov83_0223FCB4
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r3, #3
	bl ov83_02240C48
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl ov83_02240C48
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x60
	bl ov83_0223FCB4
	strb r0, [r4, #0xa]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_0223FFD8

	thumb_func_start ov83_02240080
ov83_02240080: ; 0x02240080
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _022400B2
_0224009E:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov83_022400BC
	add r4, r4, #1
	cmp r4, r6
	blt _0224009E
_022400B2:
	add r0, r7, #0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_02240080

	thumb_func_start ov83_022400BC
ov83_022400BC: ; 0x022400BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02240168 ; =0x000007A4
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r7, r3, #0
	bl Party_GetMonByIndex
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022400E2
	mov r0, #0x24
	b _022400E4
_022400E2:
	mov r0, #4
_022400E4:
	cmp r7, #0
	bne _0224010A
	lsl r1, r4, #6
	add r2, r0, r1
	lsl r2, r2, #0x10
	lsr r7, r2, #0x10
	add r2, r0, #0
	add r2, #0x18
	add r2, r2, r1
	add r0, #0x20
	lsl r2, r2, #0x10
	add r0, r0, r1
	lsr r2, r2, #0x10
	lsl r0, r0, #0x10
	str r2, [sp, #0x10]
	lsr r0, r0, #0x10
	mov r4, #1
	str r0, [sp, #0x14]
	b _02240116
_0224010A:
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0x24
	mov r7, #4
	mov r4, #0
	str r0, [sp, #0x14]
_02240116:
	ldr r0, [sp, #0xc]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	str r6, [sp]
	add r1, r0, #0
	str r7, [sp, #4]
	ldr r0, _0224016C ; =0x00000504
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #1
	bl PrintUIntOnWindow
	str r4, [sp]
	ldr r0, _0224016C ; =0x00000504
	ldr r3, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	bl sub_0200CDAC
	ldr r0, [sp, #0xc]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, _0224016C ; =0x00000504
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	mov r3, #0
	bl PrintUIntOnWindow
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240168: .word 0x000007A4
_0224016C: .word 0x00000504
	thumb_func_end ov83_022400BC

	thumb_func_start ov83_02240170
ov83_02240170: ; 0x02240170
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r6, r1, #0
	mov r1, #1
	bl ov80_02237B24
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0224019A
_02240186:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov83_022401A4
	add r4, r4, #1
	cmp r4, r7
	blt _02240186
_0224019A:
	add r0, r6, #0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_02240170

	thumb_func_start ov83_022401A4
ov83_022401A4: ; 0x022401A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r3, [sp, #0x14]
	ldrb r0, [r5, #9]
	str r1, [sp, #0x10]
	add r6, r2, #0
	bl ov80_02237D8C
	cmp r0, #0
	bne _022401C0
	mov r4, #0x28
	mov r7, #0x50
	b _022401C4
_022401C0:
	mov r4, #8
	mov r7, #0x30
_022401C4:
	ldr r0, _02240230 ; =0x000007A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _022401E0
	lsl r0, r6, #6
	add r6, r4, r0
	mov r4, #1
	add r7, r7, r0
	b _022401E6
_022401E0:
	mov r6, #4
	mov r4, #0
	mov r7, #0x30
_022401E6:
	ldr r0, [sp, #0x18]
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, _02240234 ; =0x00000504
	str r4, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200CE7C
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov83_02240D64
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02240230: .word 0x000007A4
_02240234: .word 0x00000504
	thumb_func_end ov83_022401A4

	thumb_func_start ov83_02240238
ov83_02240238: ; 0x02240238
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov80_02237D8C
	cmp r0, #0
	bne _02240252
	mov r1, #0x24
	b _02240254
_02240252:
	mov r1, #4
_02240254:
	lsl r0, r4, #6
	add r4, r1, r0
	mov r0, #0x18
	str r0, [sp]
	mov r0, #9
	mov r1, #0
	lsl r2, r4, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl FillWindowPixelRect
	str r6, [sp]
	str r4, [sp, #4]
	mov r3, #1
	ldr r0, _0224028C ; =0x00000504
	str r3, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #3
	bl PrintUIntOnWindow
	add r0, r6, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0224028C: .word 0x00000504
	thumb_func_end ov83_02240238

	thumb_func_start ov83_02240290
ov83_02240290: ; 0x02240290
	push {r4, lr}
	sub sp, #0x18
	mov r1, #5
	str r1, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #2
	add r4, r0, #0
	str r1, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	add r1, r4, #0
	str r3, [sp, #0x14]
	add r1, #0x60
	mov r2, #6
	bl ov83_0223FC48
	strb r0, [r4, #0xa]
	ldr r0, _022402F0 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02247944
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #5
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	strb r0, [r4, #0xa]
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_022402F0: .word 0x00000508
	thumb_func_end ov83_02240290

	thumb_func_start ov83_022402F4
ov83_022402F4: ; 0x022402F4
	ldr r3, _022402FC ; =ov83_02241354
	add r0, #0xc0
	bx r3
	nop
_022402FC: .word ov83_02241354
	thumb_func_end ov83_022402F4

	thumb_func_start ov83_02240300
ov83_02240300: ; 0x02240300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224032C ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #1
	ldr r0, _02240330 ; =0x00000848
	mvn r1, r1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov83_02242BAC
	add r0, r4, #0
	bl ov83_02242DAC
	pop {r4, pc}
	.balign 4, 0
_0224032C: .word 0x00000508
_02240330: .word 0x00000848
	thumb_func_end ov83_02240300

	thumb_func_start ov83_02240334
ov83_02240334: ; 0x02240334
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02242D5C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02240334

	thumb_func_start ov83_02240348
ov83_02240348: ; 0x02240348
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240374 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #1
	ldr r0, _02240378 ; =0x00000848
	mvn r1, r1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov83_02242BF0
	add r0, r4, #0
	bl ov83_02242DFC
	pop {r4, pc}
	.balign 4, 0
_02240374: .word 0x00000508
_02240378: .word 0x00000848
	thumb_func_end ov83_02240348

	thumb_func_start ov83_0224037C
ov83_0224037C: ; 0x0224037C
	ldr r3, _02240380 ; =ov83_02242D5C
	bx r3
	.balign 4, 0
_02240380: .word ov83_02242D5C
	thumb_func_end ov83_0224037C

	thumb_func_start ov83_02240384
ov83_02240384: ; 0x02240384
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022403B0 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #1
	ldr r0, _022403B4 ; =0x00000848
	mvn r1, r1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov83_02242CAC
	add r0, r4, #0
	bl ov83_02242E88
	pop {r4, pc}
	.balign 4, 0
_022403B0: .word 0x00000508
_022403B4: .word 0x00000848
	thumb_func_end ov83_02240384

	thumb_func_start ov83_022403B8
ov83_022403B8: ; 0x022403B8
	ldr r3, _022403BC ; =ov83_02242D5C
	bx r3
	.balign 4, 0
_022403BC: .word ov83_02242D5C
	thumb_func_end ov83_022403B8

	thumb_func_start ov83_022403C0
ov83_022403C0: ; 0x022403C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xe]
	mov r0, #8
	orr r0, r1
	strb r0, [r5, #0xe]
	add r0, r5, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r5, #0
	add r0, #0xb0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0xe0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	bl ov83_0223FB6C
	ldr r2, _02240428 ; =0x00000868
	mov r0, #2
	mov r1, #1
	add r2, r5, r2
	bl ov83_022477EC
	ldr r2, _02240428 ; =0x00000868
	mov r0, #6
	mov r1, #1
	add r2, r5, r2
	bl ov83_022477EC
	ldr r2, _02240428 ; =0x00000868
	mov r0, #7
	mov r1, #1
	add r2, r5, r2
	bl ov83_022477EC
	mov r0, #0x86
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02240B54
	pop {r3, r4, r5, pc}
	nop
_02240428: .word 0x00000868
	thumb_func_end ov83_022403C0

	thumb_func_start ov83_0224042C
ov83_0224042C: ; 0x0224042C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xe]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022404F8
	add r6, r5, #0
	mov r4, #0
	add r6, #0x50
_02240440:
	add r0, r4, #0
	add r0, #0x30
	lsl r0, r0, #4
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, r4, #1
	cmp r4, #6
	blo _02240440
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x3f
	lsl r0, r0, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r2, _022404FC ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r5, r2
	bl ov83_022477EC
	ldr r2, _022404FC ; =0x00000868
	mov r0, #6
	mov r1, #0
	add r2, r5, r2
	bl ov83_022477EC
	ldr r2, _022404FC ; =0x00000868
	mov r0, #7
	mov r1, #0
	add r2, r5, r2
	bl ov83_022477EC
	ldr r0, _02240500 ; =0x0000085C
	ldr r0, [r5, r0]
	bl ov83_02247A18
	ldr r0, _02240504 ; =0x000004DC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	ldr r0, _02240508 ; =0x0000077C
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
	ldr r0, _0224050C ; =0x0000079C
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
	ldr r7, _02240510 ; =0x00000784
	mov r6, #0
	add r4, r5, #0
_022404D2:
	ldr r0, [r4, r7]
	mov r1, #0
	bl ov83_0224755C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blo _022404D2
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x30
	mov r2, #0x28
	bl ov83_0224759C
	ldrb r1, [r5, #0xe]
	mov r0, #8
	bic r1, r0
	strb r1, [r5, #0xe]
_022404F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022404FC: .word 0x00000868
_02240500: .word 0x0000085C
_02240504: .word 0x000004DC
_02240508: .word 0x0000077C
_0224050C: .word 0x0000079C
_02240510: .word 0x00000784
	thumb_func_end ov83_0224042C

	thumb_func_start ov83_02240514
ov83_02240514: ; 0x02240514
	add r1, r0, #0
	ldr r0, _02240520 ; =0x0000084C
	ldr r3, _02240524 ; =ov83_02247864
	add r0, r1, r0
	ldr r1, [r1, #0x4c]
	bx r3
	.balign 4, 0
_02240520: .word 0x0000084C
_02240524: .word ov83_02247864
	thumb_func_end ov83_02240514

	thumb_func_start ov83_02240528
ov83_02240528: ; 0x02240528
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r4, #6
	ldr r0, _02240658 ; =0x00010200
	bne _02240574
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x6a
	bl ov83_022479E4
	b _0224058C
_02240574:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x6b
	bl ov83_022479E4
_0224058C:
	ldr r0, _0224065C ; =0x0000050C
	ldr r0, [r5, r0]
	bl Save_PlayerData_GetProfile
	add r6, r0, #0
	mov r0, #8
	mov r1, #0x6b
	bl String_New
	add r4, r0, #0
	add r0, r6, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r4, #0
	bl CopyU16ArrayToString
	add r0, r6, #0
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _022405BC
	ldr r0, _02240660 ; =0x00070800
	b _022405C0
_022405BC:
	mov r0, #0xc1
	lsl r0, r0, #0xa
_022405C0:
	mov r2, #0
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov83_02247998
	add r0, r4, #0
	bl String_Delete
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r4, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl FrontierSave_GetStat
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov83_02240C48
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240658 ; =0x00010200
	mov r1, #0x41
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #2
	bl ov83_02241DD8
	mov r0, #0x3f
	lsl r0, r0, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02240658: .word 0x00010200
_0224065C: .word 0x0000050C
_02240660: .word 0x00070800
	thumb_func_end ov83_02240528

	thumb_func_start ov83_02240664
ov83_02240664: ; 0x02240664
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _02240738 ; =0x00000862
	add r4, r5, #0
	ldrsh r1, [r5, r0]
	mov r0, #6
	mov r6, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	lsl r0, r0, #3
	str r0, [sp, #0x14]
	add r4, #0x50
_02240682:
	add r0, r6, #0
	add r0, #0x30
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x18]
	add r1, r0, r6
	ldr r0, _0224073C ; =0x00000861
	ldrb r0, [r5, r0]
	cmp r1, r0
	bge _02240722
	add r0, r6, #0
	add r0, #0x30
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240740 ; =0x00010200
	ldr r2, _02240744 ; =0x000004DC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r5, r2]
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r2, r2, r3
	lsl r7, r6, #3
	ldr r2, [r7, r2]
	add r0, r4, r0
	mov r1, #0
	mov r3, #4
	bl AddTextPrinterParameterizedWithColor
	ldr r1, _02240744 ; =0x000004DC
	add r0, r5, #0
	ldr r2, [r5, r1]
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	add r1, r7, r1
	ldr r1, [r1, #4]
	ldrb r2, [r5, #0x13]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov83_02240EC4
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #2
	bl ov83_02240C48
	ldr r0, [sp, #0x20]
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	sub r0, r0, #4
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _02240740 ; =0x00010200
	ldr r1, [sp, #0x20]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r4, r1
	mov r3, #0x68
	bl ov83_02241DD8
_02240722:
	ldr r0, [sp, #0x1c]
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #6
	blo _02240682
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02240738: .word 0x00000862
_0224073C: .word 0x00000861
_02240740: .word 0x00010200
_02240744: .word 0x000004DC
	thumb_func_end ov83_02240664

	thumb_func_start ov83_02240748
ov83_02240748: ; 0x02240748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _022407E8 ; =0x00000862
	mov r4, #0
	ldrsh r1, [r5, r0]
	mov r0, #6
	str r4, [sp, #4]
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	lsl r0, r7, #3
	add r6, r5, #0
	str r0, [sp]
_02240764:
	ldr r0, _022407EC ; =0x00000861
	ldrb r0, [r5, r0]
	cmp r7, r0
	bhs _022407C8
	ldr r1, _022407F0 ; =0x000004DC
	add r0, r5, #0
	ldr r2, [r5, r1]
	ldr r1, [sp]
	add r2, r1, r2
	ldr r1, [sp, #4]
	add r1, r1, r2
	ldr r1, [r1, #4]
	ldrb r2, [r5, #0x13]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov83_02240F48
	str r0, [sp, #8]
	ldr r0, _022407F4 ; =0x00000518
	ldr r2, [sp, #8]
	add r0, r5, r0
	add r1, r4, #4
	bl ov83_02247264
	ldr r0, _022407F4 ; =0x00000518
	ldr r2, [sp, #8]
	add r0, r5, r0
	add r1, r4, #4
	bl ov83_022472A0
	add r1, sp, #0xc
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0xc
	bl ov83_02242894
	ldr r0, _022407F8 ; =0x00000784
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	ldr r0, [r6, r0]
	bl ov83_02247568
	ldr r0, _022407F8 ; =0x00000784
	mov r1, #1
	ldr r0, [r6, r0]
	bl ov83_0224755C
	b _022407D2
_022407C8:
	ldr r0, _022407F8 ; =0x00000784
	mov r1, #0
	ldr r0, [r6, r0]
	bl ov83_0224755C
_022407D2:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, #8
	add r7, r7, #1
	add r6, r6, #4
	str r0, [sp, #4]
	cmp r4, #6
	blo _02240764
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022407E8: .word 0x00000862
_022407EC: .word 0x00000861
_022407F0: .word 0x000004DC
_022407F4: .word 0x00000518
_022407F8: .word 0x00000784
	thumb_func_end ov83_02240748

	thumb_func_start ov83_022407FC
ov83_022407FC: ; 0x022407FC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x3d
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	ldr r2, _02240880 ; =0x00000862
	str r1, [sp]
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #1
	add r2, r2, #1
	bl ov83_02240C48
	ldr r0, _02240884 ; =0x00000861
	mov r1, #6
	ldrb r0, [r4, r0]
	sub r0, r0, #1
	bl _s32_div_f
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r2, r2, #1
	add r3, r1, #0
	bl ov83_02240C48
	mov r0, #0x3d
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240888 ; =0x00010200
	mov r1, #0x3d
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x67
	bl ov83_02241DD8
	mov r0, #0x3d
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02240880: .word 0x00000862
_02240884: .word 0x00000861
_02240888: .word 0x00010200
	thumb_func_end ov83_022407FC

	thumb_func_start ov83_0224088C
ov83_0224088C: ; 0x0224088C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x3e
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022408DC ; =0x00010200
	lsl r5, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x3e
	lsr r3, r5, #0x1f
	lsl r0, r0, #4
	add r3, r5, r3
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x69
	asr r3, r3, #1
	bl ov83_022479E4
	mov r0, #0x3e
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022408DC: .word 0x00010200
	thumb_func_end ov83_0224088C

	thumb_func_start ov83_022408E0
ov83_022408E0: ; 0x022408E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x42
	lsl r0, r0, #4
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _02240970 ; =0x00000862
	mov r0, #6
	ldrsh r2, [r5, r1]
	sub r1, #0xc6
	mul r0, r2
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	cmp r4, #6
	bhs _02240960
	ldr r0, _02240974 ; =0x00000861
	ldrb r0, [r5, r0]
	cmp r6, r0
	bge _02240960
	ldrb r2, [r5, #0x13]
	add r0, r5, #0
	add r1, r6, #0
	bl ov83_02240F48
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	ldr r0, _02240978 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x42
	lsl r0, r0, #4
	ldr r1, [r5, #0x1c]
	add r0, r5, r0
	add r2, r4, #0
	bl ov83_022479E4
	ldr r0, _0224097C ; =0x00000518
	mov r1, #3
	add r0, r5, r0
	add r2, r4, #0
	bl ov83_02247264
	ldr r0, _0224097C ; =0x00000518
	mov r1, #3
	add r0, r5, r0
	add r2, r4, #0
	bl ov83_022472A0
	ldr r0, _02240980 ; =0x0000079C
	mov r1, #1
	ldr r0, [r5, r0]
	bl ov83_0224755C
_02240960:
	mov r0, #0x42
	lsl r0, r0, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02240970: .word 0x00000862
_02240974: .word 0x00000861
_02240978: .word 0x00010200
_0224097C: .word 0x00000518
_02240980: .word 0x0000079C
	thumb_func_end ov83_022408E0

	thumb_func_start ov83_02240984
ov83_02240984: ; 0x02240984
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x43
	lsl r0, r0, #4
	mov r6, #0x3e
	add r4, r5, r0
	mov r7, #0
_02240994:
	add r0, r4, #0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #0x45
	bls _02240994
	mov r3, #0
	str r3, [sp]
	ldr r0, _02240B34 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x58
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02240B34 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x49
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x46
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02240B34 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x47
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x59
	bl ov83_022479E4
	mov r1, #0
	ldr r2, _02240B38 ; =0x00000818
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0
	str r0, [sp]
	ldr r2, _02240B3C ; =0x0000081A
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #1
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x12
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240B34 ; =0x00010200
	mov r1, #0x12
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x5f
	bl ov83_02241DD8
	ldr r0, _02240B40 ; =0x00000804
	ldr r0, [r5, r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferBoxMonNickname
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02240B34 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x43
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x5b
	bl ov83_02241DD8
	ldr r0, _02240B44 ; =0x0000080E
	ldrb r0, [r5, r0]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _02240AC2
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _02240AA2
	mov r3, #0
	str r3, [sp]
	ldr r0, _02240B48 ; =0x00050600
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x56
	bl ov83_022479E4
	b _02240AC2
_02240AA2:
	cmp r0, #1
	bne _02240AC2
	mov r3, #0
	str r3, [sp]
	mov r0, #0xc1
	str r3, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x57
	bl ov83_022479E4
_02240AC2:
	mov r1, #0
	ldr r2, _02240B4C ; =0x0000080F
	str r1, [sp]
	ldrb r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02240C48
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02240B34 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x5e
	bl ov83_02241DD8
	ldr r2, _02240B50 ; =0x00000812
	ldr r0, [r5, #0x24]
	ldrh r2, [r5, r2]
	mov r1, #0
	bl BufferItemName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02240B34 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x4a
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x47
	bl ov83_02241DD8
	mov r0, #0x43
	lsl r0, r0, #4
	mov r4, #0x3e
	add r5, r5, r0
_02240B22:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x45
	bls _02240B22
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02240B34: .word 0x00010200
_02240B38: .word 0x00000818
_02240B3C: .word 0x0000081A
_02240B40: .word 0x00000804
_02240B44: .word 0x0000080E
_02240B48: .word 0x00050600
_02240B4C: .word 0x0000080F
_02240B50: .word 0x00000812
	thumb_func_end ov83_02240984

	thumb_func_start ov83_02240B54
ov83_02240B54: ; 0x02240B54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xde
	mov r3, #0x6b
	bl NewMsgDataFromNarc
	add r7, r0, #0
	ldr r0, _02240C28 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #1
	bl ov83_0224777C
	ldr r1, [sp]
	cmp r1, #6
	bne _02240B8A
	sub r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02240C2C ; =ov83_02247D12
	ldr r6, _02240C30 ; =ov83_02247F88
	ldrh r1, [r0, r1]
	ldr r0, _02240C34 ; =0x00000861
	strb r1, [r5, r0]
	b _02240B98
_02240B8A:
	sub r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02240C38 ; =ov83_02247D24
	ldr r6, _02240C3C ; =ov83_02247EE0
	ldrh r1, [r0, r1]
	ldr r0, _02240C34 ; =0x00000861
	strb r1, [r5, r0]
_02240B98:
	ldr r0, _02240C34 ; =0x00000861
	mov r1, #0x6b
	ldrb r0, [r5, r0]
	bl ListMenuItems_New
	ldr r1, _02240C40 ; =0x000004DC
	mov r4, #0
	str r0, [r5, r1]
	ldr r0, _02240C34 ; =0x00000861
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02240BCE
_02240BB0:
	ldr r0, _02240C40 ; =0x000004DC
	lsl r2, r4, #1
	ldrh r2, [r6, r2]
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02240C34 ; =0x00000861
	ldrb r0, [r5, r0]
	cmp r4, r0
	blt _02240BB0
_02240BCE:
	add r0, r7, #0
	bl DestroyMsgData
	add r0, r5, #0
	bl ov83_02247B7C
	ldr r1, _02240C44 ; =0x0000085C
	str r0, [r5, r1]
	sub r1, #0xe0
	ldr r0, [r5, r1]
	mov r1, #1
	bl ov83_0224755C
	ldr r1, [sp]
	add r0, r5, #0
	bl ov83_02240528
	add r0, r5, #0
	bl ov83_02240664
	add r0, r5, #0
	bl ov83_02240748
	add r0, r5, #0
	bl ov83_022407FC
	add r0, r5, #0
	bl ov83_0224088C
	add r0, r5, #0
	mov r1, #0
	bl ov83_022408E0
	add r0, r5, #0
	bl ov83_02240984
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x30
	mov r2, #0x48
	bl ov83_0224759C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240C28: .word 0x0000050C
_02240C2C: .word ov83_02247D12
_02240C30: .word ov83_02247F88
_02240C34: .word 0x00000861
_02240C38: .word ov83_02247D24
_02240C3C: .word ov83_02247EE0
_02240C40: .word 0x000004DC
_02240C44: .word 0x0000085C
	thumb_func_end ov83_02240B54

	thumb_func_start ov83_02240C48
ov83_02240C48: ; 0x02240C48
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl BufferIntegerAsString
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02240C48

	thumb_func_start ov83_02240C60
ov83_02240C60: ; 0x02240C60
	ldr r3, _02240C68 ; =BufferBoxMonNickname
	ldr r0, [r0, #0x24]
	bx r3
	nop
_02240C68: .word BufferBoxMonNickname
	thumb_func_end ov83_02240C60

	thumb_func_start ov83_02240C6C
ov83_02240C6C: ; 0x02240C6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02240C88 ; =0x0000050C
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	bl BufferPlayersName
	pop {r3, r4, r5, pc}
	nop
_02240C88: .word 0x0000050C
	thumb_func_end ov83_02240C6C

	thumb_func_start ov83_02240C8C
ov83_02240C8C: ; 0x02240C8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r1, _02240CF4 ; =0x0000050C
	str r2, [sp, #0x10]
	ldr r0, [r0, r1]
	add r6, r3, #0
	bl Save_PlayerData_GetProfile
	add r7, r0, #0
	mov r0, #8
	mov r1, #0x6b
	bl String_New
	add r4, r0, #0
	add r0, r7, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r4, #0
	bl CopyU16ArrayToString
	add r0, r7, #0
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _02240CC6
	ldr r1, _02240CF8 ; =0x00070800
	b _02240CCA
_02240CC6:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_02240CCA:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02240CF4: .word 0x0000050C
_02240CF8: .word 0x00070800
	thumb_func_end ov83_02240C8C

	thumb_func_start ov83_02240CFC
ov83_02240CFC: ; 0x02240CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x18]
	add r6, r3, #0
	bl sub_0203769C
	mov r1, #1
	eor r0, r1
	bl sub_02034818
	str r0, [sp, #0x1c]
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _02240D22
	ldr r4, _02240D60 ; =0x00070800
	b _02240D26
_02240D22:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_02240D26:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl BufferPlayersName
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov83_0223FCB4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240D60: .word 0x00070800
	thumb_func_end ov83_02240CFC

	thumb_func_start ov83_02240D64
ov83_02240D64: ; 0x02240D64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02240D7E
	mov r3, #0x56
	mov r4, #7
	mov r5, #8
	mov r6, #0
	b _02240D8A
_02240D7E:
	cmp r3, #1
	bne _02240DA4
	mov r3, #0x57
	mov r4, #3
	mov r5, #4
	mov r6, #0
_02240D8A:
	str r2, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r7, #0
	bl ov83_0223FCB4
_02240DA4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02240D64

	thumb_func_start ov83_02240DA8
ov83_02240DA8: ; 0x02240DA8
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov83_02240DA8

	thumb_func_start ov83_02240DB0
ov83_02240DB0: ; 0x02240DB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02240DDC ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02240DCE
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0xc
	bl ov83_02241368
_02240DCE:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov83_02240DE0
	pop {r4, pc}
	nop
_02240DDC: .word 0x000005DC
	thumb_func_end ov83_02240DB0

	thumb_func_start ov83_02240DE0
ov83_02240DE0: ; 0x02240DE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bne _02240DF8
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r2, #1
	mov r1, #0
	b _02240E00
_02240DF8:
	ldr r0, _02240E6C ; =0x00000764
	mov r2, #2
	ldr r4, [r5, r0]
	mov r1, #0x11
_02240E00:
	ldrb r0, [r5, #0x15]
	cmp r7, r0
	blo _02240E26
	add r0, r4, #0
	bl ov83_022475D4
	add r0, r4, #0
	mov r1, #0xe0
	mov r2, #0xa0
	bl ov83_02247568
	cmp r6, #0
	bne _02240E68
	add r0, r5, #0
	mov r1, #0
	bl ov83_02242844
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02240E26:
	add r0, r4, #0
	add r1, r2, #0
	bl ov83_022475D4
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	add r3, r7, #0
	bl ov83_02240E70
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov83_02247568
	cmp r6, #0
	bne _02240E68
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	blo _02240E60
	add r0, r5, #0
	mov r1, #1
	bl ov83_02242844
_02240E60:
	add r0, r5, #0
	mov r1, #0
	bl ov83_02242814
_02240E68:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240E6C: .word 0x00000764
	thumb_func_end ov83_02240DE0

	thumb_func_start ov83_02240E70
ov83_02240E70: ; 0x02240E70
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov80_02237D8C
	cmp r0, #1
	bne _02240EA6
	cmp r4, #0
	bne _02240E8C
	mov r0, #0x28
	str r0, [r5]
	b _02240EBE
_02240E8C:
	cmp r4, #1
	bne _02240E96
	mov r0, #0x68
	str r0, [r5]
	b _02240EBE
_02240E96:
	cmp r4, #2
	bne _02240EA0
	mov r0, #0xa8
	str r0, [r5]
	b _02240EBE
_02240EA0:
	mov r0, #0xe8
	str r0, [r5]
	b _02240EBE
_02240EA6:
	cmp r4, #0
	bne _02240EB0
	mov r0, #0x48
	str r0, [r5]
	b _02240EBE
_02240EB0:
	cmp r4, #1
	bne _02240EBA
	mov r0, #0x88
	str r0, [r5]
	b _02240EBE
_02240EBA:
	mov r0, #0xc8
	str r0, [r5]
_02240EBE:
	mov r0, #0x58
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02240E70

	thumb_func_start ov83_02240EC4
ov83_02240EC4: ; 0x02240EC4
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldr r0, _02240EEC ; =0x0000050C
	add r5, r1, #0
	add r4, r2, #0
	ldrb r1, [r3, #9]
	ldr r0, [r3, r0]
	mov r2, #1
	bl ov83_0224777C
	cmp r4, #6
	bne _02240EE4
	ldr r0, _02240EF0 ; =ov83_02247FC8
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02240EE4:
	ldr r0, _02240EF4 ; =ov83_02247F16
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02240EEC: .word 0x0000050C
_02240EF0: .word ov83_02247FC8
_02240EF4: .word ov83_02247F16
	thumb_func_end ov83_02240EC4

	thumb_func_start ov83_02240EF8
ov83_02240EF8: ; 0x02240EF8
	push {r3, lr}
	ldr r3, _02240F38 ; =ov83_02247EE0
	mov r2, #0
_02240EFE:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02240F0C
	ldr r0, _02240F3C ; =ov83_02247F16
	lsl r1, r2, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_02240F0C:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x1b
	blo _02240EFE
	ldr r2, _02240F40 ; =ov83_02247F88
	mov r3, #0
_02240F18:
	ldrh r1, [r2]
	cmp r0, r1
	bne _02240F26
	ldr r0, _02240F44 ; =ov83_02247FC8
	lsl r1, r3, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_02240F26:
	add r3, r3, #1
	add r2, r2, #2
	cmp r3, #0x20
	blo _02240F18
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_02240F38: .word ov83_02247EE0
_02240F3C: .word ov83_02247F16
_02240F40: .word ov83_02247F88
_02240F44: .word ov83_02247FC8
	thumb_func_end ov83_02240EF8

	thumb_func_start ov83_02240F48
ov83_02240F48: ; 0x02240F48
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldr r0, _02240F70 ; =0x0000050C
	add r5, r1, #0
	add r4, r2, #0
	ldrb r1, [r3, #9]
	ldr r0, [r3, r0]
	mov r2, #1
	bl ov83_0224777C
	cmp r4, #6
	bne _02240F68
	ldr r0, _02240F74 ; =ov83_02247F88
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02240F68:
	ldr r0, _02240F78 ; =ov83_02247EE0
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02240F70: .word 0x0000050C
_02240F74: .word ov83_02247F88
_02240F78: .word ov83_02247EE0
	thumb_func_end ov83_02240F48

	thumb_func_start ov83_02240F7C
ov83_02240F7C: ; 0x02240F7C
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x18]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02240F9E
	mov r0, #0x28
	strh r0, [r5]
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02240F9E:
	mov r1, #0
	strh r1, [r5]
	strh r1, [r6]
	mov r0, #0x80
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02240F7C

	thumb_func_start ov83_02240FAC
ov83_02240FAC: ; 0x02240FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r6, r2, #0
	bl ov83_02247768
	add r5, r0, #0
	ldr r0, _0224119C ; =0x000007A4
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	str r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022411B0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022411DC
	add r7, r0, #0
	cmp r6, #0xa
	bls _02241018
	b _02241196
_02241018:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241024: ; jump table
	.short _02241196 - _02241024 - 2 ; case 0
	.short _02241048 - _02241024 - 2 ; case 1
	.short _02241048 - _02241024 - 2 ; case 2
	.short _02241048 - _02241024 - 2 ; case 3
	.short _0224103A - _02241024 - 2 ; case 4
	.short _02241196 - _02241024 - 2 ; case 5
	.short _0224110C - _02241024 - 2 ; case 6
	.short _0224110C - _02241024 - 2 ; case 7
	.short _0224103A - _02241024 - 2 ; case 8
	.short _0224117A - _02241024 - 2 ; case 9
	.short _02241188 - _02241024 - 2 ; case 10
_0224103A:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241048:
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	bne _0224108E
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241064
	mov r1, #0x40
	b _02241066
_02241064:
	mov r1, #0x20
_02241066:
	mov r0, #8
	str r0, [sp]
	lsl r0, r5, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x3e
	str r0, [sp, #8]
	ldr r0, _022411A0 ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _022411A4 ; =0x0000075C
	str r0, [r4, r1]
_0224108E:
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022410AC
	bl ov83_02247624
	cmp r0, #0
	bne _022410AC
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _022411A4 ; =0x0000075C
	mov r1, #0
	str r1, [r4, r0]
_022410AC:
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241196
	ldr r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r1, r4, #0
	add r3, r0, #0
	add r0, r4, #0
	add r1, #0x80
	add r2, r5, #0
	bl ov83_02240238
	ldrb r0, [r4, #0xd]
	cmp r0, r5
	bne _022410E0
	add r0, r4, #0
	bl ov83_02241E18
	add r0, r4, #0
	mov r1, #0
	bl ov83_022421E0
_022410E0:
	lsl r5, r5, #2
	ldr r0, _022411A8 ; =0x00000768
	add r1, r4, r5
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov83_022475D4
	ldr r0, _022411AC ; =0x0000073C
	add r1, r4, r5
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov83_02247600
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224110C:
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	bne _02241152
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241128
	mov r1, #0x40
	b _0224112A
_02241128:
	mov r1, #0x20
_0224112A:
	mov r0, #0x10
	str r0, [sp]
	lsl r0, r5, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x3e
	str r0, [sp, #8]
	ldr r0, _022411A0 ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _022411A4 ; =0x0000075C
	str r0, [r4, r1]
_02241152:
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	bl ov83_02247624
	cmp r0, #0
	bne _02241196
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _022411A4 ; =0x0000075C
	mov r1, #0
	str r1, [r4, r0]
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224117A:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241188:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241196:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224119C: .word 0x000007A4
_022411A0: .word 0x00000518
_022411A4: .word 0x0000075C
_022411A8: .word 0x00000768
_022411AC: .word 0x0000073C
	thumb_func_end ov83_02240FAC

	thumb_func_start ov83_022411B0
ov83_022411B0: ; 0x022411B0
	cmp r1, #4
	bhi _022411D8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022411C0: ; jump table
	.short _022411D8 - _022411C0 - 2 ; case 0
	.short _022411D6 - _022411C0 - 2 ; case 1
	.short _022411D2 - _022411C0 - 2 ; case 2
	.short _022411CE - _022411C0 - 2 ; case 3
	.short _022411CA - _022411C0 - 2 ; case 4
_022411CA:
	mov r0, #1
	bx lr
_022411CE:
	mov r0, #2
	bx lr
_022411D2:
	mov r0, #3
	bx lr
_022411D6:
	mov r0, #4
_022411D8:
	bx lr
	.balign 4, 0
	thumb_func_end ov83_022411B0

	thumb_func_start ov83_022411DC
ov83_022411DC: ; 0x022411DC
	cmp r1, #4
	bhi _02241204
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022411EC: ; jump table
	.short _02241204 - _022411EC - 2 ; case 0
	.short _02241202 - _022411EC - 2 ; case 1
	.short _022411FE - _022411EC - 2 ; case 2
	.short _022411FA - _022411EC - 2 ; case 3
	.short _022411F6 - _022411EC - 2 ; case 4
_022411F6:
	mov r0, #0xf
	bx lr
_022411FA:
	mov r0, #0xf
	bx lr
_022411FE:
	mov r0, #0xe
	bx lr
_02241202:
	mov r0, #0xd
_02241204:
	bx lr
	.balign 4, 0
	thumb_func_end ov83_022411DC

	thumb_func_start ov83_02241208
ov83_02241208: ; 0x02241208
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _02241222
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _02241228
_02241222:
	cmp r1, r0
	blt _02241228
	mov r1, #0
_02241228:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_02240DB0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241250 ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov83_0223FD4C
	pop {r4, pc}
	.balign 4, 0
_02241250: .word 0x000007A4
	thumb_func_end ov83_02241208

	thumb_func_start ov83_02241254
ov83_02241254: ; 0x02241254
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _0224126E
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _02241274
_0224126E:
	cmp r1, r0
	blt _02241274
	mov r1, #0
_02241274:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_02240DB0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _0224129C ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov83_0223FF44
	pop {r4, pc}
	.balign 4, 0
_0224129C: .word 0x000007A4
	thumb_func_end ov83_02241254

	thumb_func_start ov83_022412A0
ov83_022412A0: ; 0x022412A0
	push {r4, lr}
	add r4, r0, #0
	bl ov83_02241730
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02241B18
	ldr r2, _022412D4 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	ldr r0, _022412D8 ; =0x00000778
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov83_0224755C
	pop {r4, pc}
	.balign 4, 0
_022412D4: .word 0x00000868
_022412D8: .word 0x00000778
	thumb_func_end ov83_022412A0

	thumb_func_start ov83_022412DC
ov83_022412DC: ; 0x022412DC
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	mov r1, #0x3a
	add r2, r4, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x42
	add r2, r4, #0
	bl GetMonData
	cmp r6, r0
	beq _022412FC
	mov r4, #1
_022412FC:
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x43
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	beq _02241318
	mov r4, #1
_02241318:
	add r0, r5, #0
	mov r1, #0x3c
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	beq _02241334
	mov r4, #1
_02241334:
	add r0, r5, #0
	mov r1, #0x3d
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x45
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	beq _02241350
	mov r4, #1
_02241350:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_022412DC

	thumb_func_start ov83_02241354
ov83_02241354: ; 0x02241354
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02241354

	thumb_func_start ov83_02241368
ov83_02241368: ; 0x02241368
	push {r3, r4, r5, lr}
	add r3, r1, #0
	sub r3, #0xa
	add r5, r0, #0
	cmp r3, #3
	bhi _022413A6
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02241380: ; jump table
	.short _02241388 - _02241380 - 2 ; case 0
	.short _02241390 - _02241380 - 2 ; case 1
	.short _02241398 - _02241380 - 2 ; case 2
	.short _022413A0 - _02241380 - 2 ; case 3
_02241388:
	mov r4, #0x31
	bl ov83_022413C4
	b _022413A6
_02241390:
	mov r4, #0x32
	bl ov83_0224143C
	b _022413A6
_02241398:
	mov r4, #0x33
	bl ov83_022414CC
	b _022413A6
_022413A0:
	mov r4, #0x34
	bl ov83_02241504
_022413A6:
	ldr r1, _022413C0 ; =0x000007AC
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x28
	bl sub_02037030
	cmp r0, #1
	bne _022413BA
	mov r0, #1
	pop {r3, r4, r5, pc}
_022413BA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022413C0: .word 0x000007AC
	thumb_func_end ov83_02241368

	thumb_func_start ov83_022413C4
ov83_022413C4: ; 0x022413C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02241400 ; =0x0000050C
	add r4, r1, #0
	ldr r0, [r6, r0]
	bl Save_PlayerData_GetProfile
	ldr r1, _02241404 ; =0x000007AC
	strh r4, [r6, r1]
	bl PlayerProfile_GetTrainerGender
	ldr r1, _02241408 ; =0x000007AE
	mov r4, #0
	strh r0, [r6, r1]
	add r5, r6, #4
	sub r7, r1, #2
_022413E4:
	ldr r0, _02241400 ; =0x0000050C
	ldrb r1, [r6, #9]
	lsl r2, r4, #0x18
	ldr r0, [r6, r0]
	lsr r2, r2, #0x18
	bl ov83_0224777C
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _022413E4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241400: .word 0x0000050C
_02241404: .word 0x000007AC
_02241408: .word 0x000007AE
	thumb_func_end ov83_022413C4

	thumb_func_start ov83_0224140C
ov83_0224140C: ; 0x0224140C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xf]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0xf]
	bl sub_0203769C
	cmp r5, r0
	beq _02241436
	ldr r0, _02241438 ; =0x000007FF
	mov r3, #0
	add r5, r6, #4
_02241428:
	ldrh r2, [r5]
	add r1, r4, r3
	add r3, r3, #1
	add r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02241428
_02241436:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02241438: .word 0x000007FF
	thumb_func_end ov83_0224140C

	thumb_func_start ov83_0224143C
ov83_0224143C: ; 0x0224143C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02241470 ; =0x000007AC
	add r4, r2, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0224145A
	ldrb r0, [r5, #0x12]
	cmp r0, #0xff
	bne _0224145A
	strb r4, [r5, #0x12]
_0224145A:
	ldrb r1, [r5, #0x12]
	mov r0, #0x7b
	lsl r0, r0, #4
	strh r1, [r5, r0]
	ldrh r2, [r5, #0x10]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241470: .word 0x000007AC
	thumb_func_end ov83_0224143C

	thumb_func_start ov83_02241474
ov83_02241474: ; 0x02241474
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0xf]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0xf]
	bl sub_0203769C
	cmp r6, r0
	beq _022414C4
	ldrh r1, [r5, #2]
	ldr r0, _022414C8 ; =0x000007FD
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _022414B8
	ldrb r0, [r4, #0x12]
	cmp r0, #0xff
	ldr r0, _022414C8 ; =0x000007FD
	beq _022414A6
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022414A6:
	ldrb r1, [r4, r0]
	ldrb r0, [r4, #0x15]
	add r0, r1, r0
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, pc}
_022414B8:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
_022414C4:
	pop {r4, r5, r6, pc}
	nop
_022414C8: .word 0x000007FD
	thumb_func_end ov83_02241474

	thumb_func_start ov83_022414CC
ov83_022414CC: ; 0x022414CC
	ldr r2, _022414D8 ; =0x000007AC
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	add r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	.balign 4, 0
_022414D8: .word 0x000007AC
	thumb_func_end ov83_022414CC

	thumb_func_start ov83_022414DC
ov83_022414DC: ; 0x022414DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203769C
	cmp r5, r0
	beq _022414FC
	ldrh r0, [r6, #2]
	ldr r1, _02241500 ; =0x000007FC
	mov r2, #1
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ov83_02240DE0
_022414FC:
	pop {r4, r5, r6, pc}
	nop
_02241500: .word 0x000007FC
	thumb_func_end ov83_022414DC

	thumb_func_start ov83_02241504
ov83_02241504: ; 0x02241504
	ldr r1, _0224150C ; =0x000007AC
	mov r2, #1
	strh r2, [r0, r1]
	bx lr
	.balign 4, 0
_0224150C: .word 0x000007AC
	thumb_func_end ov83_02241504

	thumb_func_start ov83_02241510
ov83_02241510: ; 0x02241510
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203769C
	cmp r5, r0
	beq _02241526
	ldrh r1, [r4]
	ldr r0, _02241528 ; =0x000007FE
	strb r1, [r6, r0]
_02241526:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02241528: .word 0x000007FE
	thumb_func_end ov83_02241510

	thumb_func_start ov83_0224152C
ov83_0224152C: ; 0x0224152C
	push {r3, lr}
	mov r2, #0x6b
	str r2, [sp]
	mov r2, #0
	add r3, r2, #0
	bl UseItemOnPokemon
	pop {r3, pc}
	thumb_func_end ov83_0224152C

	thumb_func_start ov83_0224153C
ov83_0224153C: ; 0x0224153C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r5, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov83_02240F7C
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241580
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	add r0, r5, #0
	add r2, r2, #4
	add r3, r3, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov83_02240C8C
	b _022415E8
_02241580:
	bl sub_0203769C
	cmp r0, #0
	add r2, sp, #4
	bne _022415BA
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02240C8C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02240CFC
	b _022415E8
_022415BA:
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02240CFC
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02240C8C
_022415E8:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_0224153C

	thumb_func_start ov83_022415F4
ov83_022415F4: ; 0x022415F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r2, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _0224168C ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	ldr r0, _02241690 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #0
	bl ov83_0224777C
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02240C60
	ldr r0, _02241694 ; =0x00000508
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl ov83_02247944
	sub r1, r4, #1
	lsl r2, r1, #1
	ldr r1, _02241698 ; =_02247D0C
	add r0, r5, #0
	ldrh r1, [r1, r2]
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r5, #0xa]
	cmp r4, #1
	beq _0224165A
	cmp r4, #2
	beq _02241664
	cmp r4, #3
	beq _0224166E
	b _02241680
_0224165A:
	add r0, r6, #0
	mov r1, #0x18
	bl ov83_0224152C
	b _02241684
_02241664:
	add r0, r6, #0
	mov r1, #0x29
	bl ov83_0224152C
	b _02241684
_0224166E:
	add r0, r6, #0
	mov r1, #0x18
	bl ov83_0224152C
	add r0, r6, #0
	mov r1, #0x29
	bl ov83_0224152C
	b _02241684
_02241680:
	bl GF_AssertFail
_02241684:
	ldr r0, _0224169C ; =0x000005EC
	bl PlaySE
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0224168C: .word 0x000007A4
_02241690: .word 0x0000050C
_02241694: .word 0x00000508
_02241698: .word _02247D0C
_0224169C: .word 0x000005EC
	thumb_func_end ov83_022415F4

	thumb_func_start ov83_022416A0
ov83_022416A0: ; 0x022416A0
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r1, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241724 ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	mov r1, #6
	add r2, sp, #0x18
	add r6, r0, #0
	bl SetMonData
	ldrb r0, [r5, #0xd]
	cmp r0, r4
	bne _022416D6
	add r0, r5, #0
	bl ov83_02241E18
	add r0, r5, #0
	mov r1, #0
	bl ov83_022421E0
_022416D6:
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02241728 ; =0x0000074C
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov83_0224755C
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02240C60
	add r2, sp, #0x10
	ldrh r2, [r2, #8]
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl BufferItemName
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r5, #0xa]
	ldr r0, _0224172C ; =0x00000623
	bl PlaySE
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02241724: .word 0x000007A4
_02241728: .word 0x0000074C
_0224172C: .word 0x00000623
	thumb_func_end ov83_022416A0

	thumb_func_start ov83_02241730
ov83_02241730: ; 0x02241730
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xe]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224174E
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_DestroyButtons
	add r0, r4, #0
	bl ov83_02242D5C
_0224174E:
	ldr r0, _02241758 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	pop {r4, pc}
	.balign 4, 0
_02241758: .word 0x0000084C
	thumb_func_end ov83_02241730

	thumb_func_start ov83_0224175C
ov83_0224175C: ; 0x0224175C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_022429E4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0224175C

	thumb_func_start ov83_02241770
ov83_02241770: ; 0x02241770
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, sp, #0x1c
	str r1, [sp]
	add r1, sp, #0x20
	add r3, sp, #0x1c
	add r5, r0, #0
	add r1, #2
	add r2, sp, #0x20
	add r3, #2
	bl ov83_02240F7C
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241806
	add r1, sp, #0x1c
	ldrh r0, [r1, #6]
	add r0, #0x48
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrh r0, [r1, #4]
	mov r1, #0
	add r2, r7, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r6, #0
	bl FillWindowPixelRect
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	str r0, [sp, #0x18]
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x18]
	bl FrontierSave_GetStat
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	add r0, r5, #0
	mov r3, #4
	bl ov83_02240C48
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov83_0223FCB4
	strb r0, [r5, #0xa]
	b _022418D4
_02241806:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x40
	add r3, r1, #0
	bl FillWindowPixelRect
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xc0
	add r3, r1, #0
	bl FillWindowPixelRect
	bl sub_0203769C
	cmp r0, #0
	bne _0224185A
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r6, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl FrontierSave_GetStat
	add r6, r0, #0
	ldr r0, _022418E0 ; =0x00000802
	ldrh r7, [r5, r0]
	b _0224187C
_0224185A:
	ldr r0, _022418E0 ; =0x00000802
	ldrh r6, [r5, r0]
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r7, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl FrontierSave_GetStat
	add r7, r0, #0
_0224187C:
	mov r1, #0
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022418E4 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #2
	bl ov83_02241DD8
	mov r1, #0
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022418E4 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02241DD8
_022418D4:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022418E0: .word 0x00000802
_022418E4: .word 0x00010200
	thumb_func_end ov83_02241770

	thumb_func_start ov83_022418E8
ov83_022418E8: ; 0x022418E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02241A4C ; =0x000005E3
	add r7, r1, #0
	add r5, r2, #0
	bl PlaySE
	ldrb r0, [r4, #0x15]
	add r1, r7, #0
	str r0, [sp]
	bl ov83_0224776C
	str r0, [sp, #4]
	cmp r5, #0xa
	bhi _02241940
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241914: ; jump table
	.short _02241940 - _02241914 - 2 ; case 0
	.short _0224192A - _02241914 - 2 ; case 1
	.short _0224192A - _02241914 - 2 ; case 2
	.short _0224192A - _02241914 - 2 ; case 3
	.short _02241940 - _02241914 - 2 ; case 4
	.short _02241940 - _02241914 - 2 ; case 5
	.short _02241934 - _02241914 - 2 ; case 6
	.short _02241934 - _02241914 - 2 ; case 7
	.short _02241940 - _02241914 - 2 ; case 8
	.short _0224193E - _02241914 - 2 ; case 9
	.short _0224193E - _02241914 - 2 ; case 10
_0224192A:
	sub r0, r5, #1
	lsl r1, r0, #1
	ldr r0, _02241A50 ; =ov83_02247D18
	ldrh r6, [r0, r1]
	b _02241940
_02241934:
	ldrh r0, [r4, #0x10]
	bl ov83_02240EF8
	add r6, r0, #0
	b _02241940
_0224193E:
	mov r6, #0
_02241940:
	bl sub_0203769C
	cmp r0, #0
	bne _02241974
	ldr r0, [sp]
	cmp r7, r0
	bhs _02241962
	add r0, r4, #0
	mov r1, #5
	bl ov83_02240C6C
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r6, #0
	bl ov80_02237FA4
	b _0224199E
_02241962:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241A54 ; =0x00000802
	ldrh r1, [r4, r0]
	sub r1, r1, r6
	strh r1, [r4, r0]
	b _0224199E
_02241974:
	ldr r0, [sp]
	cmp r7, r0
	bhs _0224198C
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241A54 ; =0x00000802
	ldrh r1, [r4, r0]
	sub r1, r1, r6
	strh r1, [r4, r0]
	b _0224199E
_0224198C:
	add r0, r4, #0
	mov r1, #5
	bl ov83_02240C6C
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r6, #0
	bl ov80_02237FA4
_0224199E:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	add r0, r4, #0
	bl ov83_02241730
	add r0, r4, #0
	bl ov83_02241B18
	add r0, r4, #0
	bl ov83_0224042C
	ldr r2, _02241A58 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	cmp r5, #0xa
	bhi _02241A48
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022419DE: ; jump table
	.short _02241A48 - _022419DE - 2 ; case 0
	.short _022419F4 - _022419DE - 2 ; case 1
	.short _022419F4 - _022419DE - 2 ; case 2
	.short _022419F4 - _022419DE - 2 ; case 3
	.short _02241A48 - _022419DE - 2 ; case 4
	.short _02241A48 - _022419DE - 2 ; case 5
	.short _02241A14 - _022419DE - 2 ; case 6
	.short _02241A14 - _022419DE - 2 ; case 7
	.short _02241A48 - _022419DE - 2 ; case 8
	.short _02241A34 - _022419DE - 2 ; case 9
	.short _02241A40 - _022419DE - 2 ; case 10
_022419F4:
	ldr r0, _02241A5C ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r5, #0
	bl ov83_022415F4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241A14:
	ldr r0, _02241A5C ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	ldrh r2, [r4, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_022416A0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241A34:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02241A60
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241A40:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02241ABC
_02241A48:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02241A4C: .word 0x000005E3
_02241A50: .word ov83_02247D18
_02241A54: .word 0x00000802
_02241A58: .word 0x00000868
_02241A5C: .word 0x00000508
	thumb_func_end ov83_022418E8

	thumb_func_start ov83_02241A60
ov83_02241A60: ; 0x02241A60
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #2
	bl ov83_0223FAA8
	add r0, r5, #0
	add r0, #0xb0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0xa0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241AB4 ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r1, r5, #0
	add r2, r0, #0
	add r0, r5, #0
	add r1, #0x90
	bl ov83_0223FD4C
	ldr r2, _02241AB8 ; =0x00000868
	mov r0, #2
	mov r1, #1
	add r2, r5, r2
	bl ov83_022477EC
	pop {r3, r4, r5, pc}
	nop
_02241AB4: .word 0x000007A4
_02241AB8: .word 0x00000868
	thumb_func_end ov83_02241A60

	thumb_func_start ov83_02241ABC
ov83_02241ABC: ; 0x02241ABC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #2
	bl ov83_0223FB24
	add r0, r5, #0
	add r0, #0xb0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0xa0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241B10 ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r1, r5, #0
	add r2, r0, #0
	add r0, r5, #0
	add r1, #0x90
	bl ov83_0223FF44
	ldr r2, _02241B14 ; =0x00000868
	mov r0, #2
	mov r1, #1
	add r2, r5, r2
	bl ov83_022477EC
	pop {r3, r4, r5, pc}
	nop
_02241B10: .word 0x000007A4
_02241B14: .word 0x00000868
	thumb_func_end ov83_02241ABC

	thumb_func_start ov83_02241B18
ov83_02241B18: ; 0x02241B18
	ldr r2, _02241B28 ; =0x00000868
	add r3, r0, #0
	add r2, r3, r2
	ldr r3, _02241B2C ; =ov83_022477EC
	mov r0, #2
	mov r1, #0
	bx r3
	nop
_02241B28: .word 0x00000868
_02241B2C: .word ov83_022477EC
	thumb_func_end ov83_02241B18

	thumb_func_start ov83_02241B30
ov83_02241B30: ; 0x02241B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl ov80_02237B24
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02241BB8
	add r5, r6, #0
_02241B48:
	ldr r0, _02241BBC ; =0x000007A4
	add r1, r4, #0
	ldr r0, [r6, r0]
	bl Party_GetMonByIndex
	str r0, [sp, #4]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov80_0222A43C
	add r1, r0, #0
	ldr r0, _02241BC0 ; =0x0000073C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02241BAE
	bl ov83_02247600
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov83_02247768
	cmp r4, r0
	bne _02241B98
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02241BA4
_02241B98:
	ldr r0, _02241BC0 ; =0x0000073C
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224760C
	b _02241BAE
_02241BA4:
	ldr r0, _02241BC0 ; =0x0000073C
	mov r1, #1
	ldr r0, [r5, r0]
	bl ov83_0224760C
_02241BAE:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _02241B48
_02241BB8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02241BBC: .word 0x000007A4
_02241BC0: .word 0x0000073C
	thumb_func_end ov83_02241B30

	thumb_func_start ov83_02241BC4
ov83_02241BC4: ; 0x02241BC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r2, [sp]
	ldrb r0, [r5, #9]
	add r6, r1, #0
	mov r1, #0
	bl ov80_02237B24
	ldr r0, [sp]
	cmp r0, #4
	beq _02241BE0
	mov r0, #1
	b _02241BE2
_02241BE0:
	mov r0, #0
_02241BE2:
	ldrb r7, [r5, #0x15]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	add r1, r6, #0
	bl ov83_0224776C
	bl sub_0203769C
	cmp r0, #0
	bne _02241CC4
	cmp r6, r7
	bhs _02241C92
	add r0, r5, #0
	mov r1, #5
	bl ov83_02240C6C
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r2, r0, #0
	mov r0, #6
	add r6, r4, #0
	mul r6, r0
	ldr r3, _02241DC8 ; =ov83_02247D48
	lsl r2, r2, #1
	add r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl ov80_02237FA4
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r7, r0, #0
	ldr r0, _02241DC4 ; =0x0000050C
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	str r0, [sp, #8]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	bl sub_0205C268
	add r3, r7, #1
	add r2, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	lsr r3, r3, #0x10
	bl sub_02031108
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	beq _02241C72
	b _02241D8C
_02241C72:
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02241C86
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02241D8C
_02241C86:
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02241D8C
_02241C92:
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241DCC ; =0x000007FF
	add r6, r4, #0
	add r1, r5, r0
	ldrb r7, [r1, r4]
	mov r0, #6
	mul r6, r0
	ldr r0, _02241DCC ; =0x000007FF
	ldr r2, _02241DC8 ; =ov83_02247D48
	add r0, r0, #3
	lsl r3, r7, #1
	add r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	sub r0, r0, r2
	ldr r2, _02241DCC ; =0x000007FF
	add r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	b _02241D8C
_02241CC4:
	cmp r6, r7
	bhs _02241CFA
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241DCC ; =0x000007FF
	add r6, r4, #0
	add r1, r5, r0
	ldrb r7, [r1, r4]
	mov r0, #6
	mul r6, r0
	ldr r0, _02241DCC ; =0x000007FF
	ldr r2, _02241DC8 ; =ov83_02247D48
	add r0, r0, #3
	lsl r3, r7, #1
	add r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	sub r0, r0, r2
	ldr r2, _02241DCC ; =0x000007FF
	add r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	b _02241D8C
_02241CFA:
	add r0, r5, #0
	mov r1, #5
	bl ov83_02240C6C
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r2, r0, #0
	mov r0, #6
	add r6, r4, #0
	mul r6, r0
	ldr r3, _02241DC8 ; =ov83_02247D48
	lsl r2, r2, #1
	add r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl ov80_02237FA4
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r7, r0, #0
	ldr r0, _02241DC4 ; =0x0000050C
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	str r0, [sp, #0x10]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	bl sub_0205C268
	add r3, r7, #1
	add r2, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x10
	bl sub_02031108
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02241D8C
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02241D82
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02241D8C
_02241D82:
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r5, #0xe]
_02241D8C:
	add r0, r5, #0
	bl ov83_02241730
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov83_02241770
	ldr r0, _02241DD0 ; =0x00000508
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl ov83_02247944
	ldr r1, _02241DD4 ; =ov83_02247D5A
	lsl r2, r7, #1
	add r1, r1, r6
	ldrh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r5, #0xa]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02241DC4: .word 0x0000050C
_02241DC8: .word ov83_02247D48
_02241DCC: .word 0x000007FF
_02241DD0: .word 0x00000508
_02241DD4: .word ov83_02247D5A
	thumb_func_end ov83_02241BC4

	thumb_func_start ov83_02241DD8
ov83_02241DD8: ; 0x02241DD8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r1, r3, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r6, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r1, [r5, #0x28]
	add r0, r4, #0
	bl ov83_02247998
	add r0, r6, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_02241DD8

	thumb_func_start ov83_02241E18
ov83_02241E18: ; 0x02241E18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241FA8 ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	bl AcquireMonLock
	str r0, [sp, #4]
	ldr r0, _02241FAC ; =0x00000804
	str r6, [r5, r0]
	add r0, r6, #0
	bl Mon_GetBoxMon
	ldr r1, _02241FB0 ; =0x00000808
	mov r2, #0
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #5
	bl GetMonData
	ldr r1, _02241FB4 ; =0x0000080C
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa1
	bl GetMonData
	ldr r1, _02241FB8 ; =0x0000080F
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa
	bl GetMonData
	mov r1, #0x81
	lsl r1, r1, #4
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GetMonNature
	ldr r1, _02241FBC ; =0x00000811
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #6
	bl GetMonData
	ldr r1, _02241FC0 ; =0x00000812
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa3
	bl GetMonData
	ldr r1, _02241FC4 ; =0x00000818
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa4
	bl GetMonData
	ldr r1, _02241FC8 ; =0x0000081A
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa5
	bl GetMonData
	ldr r1, _02241FCC ; =0x0000081C
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	ldr r1, _02241FD0 ; =0x0000081E
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa6
	bl GetMonData
	mov r1, #0x82
	lsl r1, r1, #4
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl GetMonData
	ldr r1, _02241FD4 ; =0x00000822
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa7
	bl GetMonData
	ldr r1, _02241FD8 ; =0x00000824
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0x70
	bl GetMonData
	ldr r1, _02241FDC ; =0x00000826
	strb r0, [r5, r1]
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl GetMonData
	ldr r1, _02241FE0 ; =0x00000814
	mov r2, #0
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xb0
	bl GetMonData
	cmp r0, #1
	ldr r1, _02241FE4 ; =0x0000080E
	bne _02241F24
	ldrb r2, [r5, r1]
	mov r0, #0x80
	bic r2, r0
	strb r2, [r5, r1]
	b _02241F2C
_02241F24:
	ldrb r2, [r5, r1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r5, r1]
_02241F2C:
	add r0, r6, #0
	bl GetMonGender
	ldr r3, _02241FE4 ; =0x0000080E
	mov r2, #0x7f
	ldrb r1, [r5, r3]
	mov r4, #0
	bic r1, r2
	mov r2, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r5, r3]
_02241F44:
	lsl r0, r4, #1
	add r0, r5, r0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, _02241FE8 ; =0x00000828
	add r7, r5, r4
	strh r0, [r2, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	mov r2, #0
	bl GetMonData
	mov r1, #0x83
	lsl r1, r1, #4
	strb r0, [r7, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	ldr r2, [sp]
	ldr r0, _02241FE8 ; =0x00000828
	lsr r1, r1, #0x18
	ldrh r0, [r2, r0]
	bl GetMoveMaxPP
	ldr r1, _02241FEC ; =0x00000834
	strb r0, [r7, r1]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _02241F44
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ReleaseMonLock
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02241FA8: .word 0x000007A4
_02241FAC: .word 0x00000804
_02241FB0: .word 0x00000808
_02241FB4: .word 0x0000080C
_02241FB8: .word 0x0000080F
_02241FBC: .word 0x00000811
_02241FC0: .word 0x00000812
_02241FC4: .word 0x00000818
_02241FC8: .word 0x0000081A
_02241FCC: .word 0x0000081C
_02241FD0: .word 0x0000081E
_02241FD4: .word 0x00000822
_02241FD8: .word 0x00000824
_02241FDC: .word 0x00000826
_02241FE0: .word 0x00000814
_02241FE4: .word 0x0000080E
_02241FE8: .word 0x00000828
_02241FEC: .word 0x00000834
	thumb_func_end ov83_02241E18

	thumb_func_start ov83_02241FF0
ov83_02241FF0: ; 0x02241FF0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1d
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1f
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x21
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x29
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2b
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x58
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x4a
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x48
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x46
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x59
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x4c
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x50
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x4e
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x52
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _022421DC ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x54
	bl ov83_022479E4
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1d
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1f
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x21
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x29
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2b
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x10
	pop {r4, pc}
	nop
_022421DC: .word 0x00010200
	thumb_func_end ov83_02241FF0

	thumb_func_start ov83_022421E0
ov83_022421E0: ; 0x022421E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	str r1, [sp, #0x14]
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xa
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xb
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2d
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2e
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #3
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x31
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x33
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xd
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _0224262C ; =0x00000804
	ldr r0, [r4, r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl BufferBoxMonNickname
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x5b
	bl ov83_02241DD8
	ldr r0, _02242634 ; =0x0000080E
	ldrb r0, [r4, r0]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _02242354
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _02242334
	mov r3, #0
	str r3, [sp]
	ldr r0, _02242638 ; =0x00050600
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x56
	bl ov83_022479E4
	b _02242354
_02242334:
	cmp r0, #1
	bne _02242354
	mov r3, #0
	str r3, [sp]
	mov r0, #0xc1
	str r3, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x57
	bl ov83_022479E4
_02242354:
	mov r1, #0
	ldr r2, _0224263C ; =0x0000080F
	str r1, [sp]
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x5e
	bl ov83_02241DD8
	mov r2, #0x81
	lsl r2, r2, #4
	ldrb r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl BufferAbilityName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #7
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x4b
	bl ov83_02241DD8
	ldr r2, _02242640 ; =0x00000811
	ldr r0, [r4, #0x24]
	ldrb r2, [r4, r2]
	mov r1, #0
	bl BufferNatureName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x49
	bl ov83_02241DD8
	ldr r2, _02242644 ; =0x00000812
	ldr r0, [r4, #0x24]
	ldrh r2, [r4, r2]
	mov r1, #0
	bl BufferItemName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #2
	lsl r1, r1, #8
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x47
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242648 ; =0x00000818
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0
	str r0, [sp]
	ldr r2, _0224264C ; =0x0000081A
	add r0, r4, #0
	ldrh r2, [r4, r2]
	mov r1, #1
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0x22
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x5f
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242650 ; =0x0000081C
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x4d
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242654 ; =0x0000081E
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0x26
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x51
	bl ov83_02241DD8
	mov r1, #0
	mov r2, #0x82
	str r1, [sp]
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0xa
	lsl r0, r0, #6
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0xa
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x4f
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242658 ; =0x00000822
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0x2a
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x53
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _0224265C ; =0x00000824
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0xb
	lsl r0, r0, #6
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0xb
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x55
	bl ov83_02241DD8
	add r6, r4, #0
	mov r5, #0
	str r4, [sp, #0x1c]
	add r6, #0x50
_02242586:
	ldr r3, [sp, #0x1c]
	ldr r2, _02242660 ; =0x00000828
	ldr r0, [r4, #0x24]
	ldrh r2, [r3, r2]
	add r1, r5, #0
	bl BufferMoveName
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	add r1, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r1, #0x28
	lsl r1, r1, #4
	add r3, r5, #0
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r6, r1
	add r3, #0x60
	bl ov83_02241DD8
	ldr r1, [sp, #0x1c]
	ldr r0, _02242660 ; =0x00000828
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _022425F2
	add r0, r5, #0
	add r0, #0x2c
	lsl r7, r0, #4
	add r0, r6, r7
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	lsl r3, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, r7
	lsr r7, r3, #0x1f
	add r7, r3, r7
	ldr r1, [r4, #0x20]
	mov r2, #0x66
	asr r3, r7, #1
	bl ov83_022479E4
	b _02242712
_022425F2:
	ldr r0, [r4, #0x20]
	mov r1, #0x5a
	bl NewString_ReadMsgData
	str r0, [sp, #0x28]
	mov r0, #0
	ldr r1, [sp, #0x28]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r0, #0x2c
	lsl r7, r0, #4
	add r0, r6, r7
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	ldr r0, _02242630 ; =0x00010200
	b _02242664
	.balign 4, 0
_0224262C: .word 0x00000804
_02242630: .word 0x00010200
_02242634: .word 0x0000080E
_02242638: .word 0x00050600
_0224263C: .word 0x0000080F
_02242640: .word 0x00000811
_02242644: .word 0x00000812
_02242648: .word 0x00000818
_0224264C: .word 0x0000081A
_02242650: .word 0x0000081C
_02242654: .word 0x0000081E
_02242658: .word 0x00000822
_0224265C: .word 0x00000824
_02242660: .word 0x00000828
_02242664:
	ldr r1, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r2, [sp, #0x20]
	add r0, r6, r7
	mov r3, #0
	bl ov83_02247998
	ldr r0, [sp, #0x28]
	bl String_Delete
	add r0, r4, r5
	str r0, [sp, #0x18]
	mov r0, #0
	mov r2, #0x83
	str r0, [sp]
	ldr r3, [sp, #0x18]
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	add r0, r4, #0
	mov r1, #0
	mov r3, #2
	bl ov83_02240C48
	ldr r0, [r4, #0x20]
	mov r1, #0x65
	bl NewString_ReadMsgData
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, [sp, #0x2c]
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [r4, #0x28]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov ip, r0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224280C ; =0x00010200
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [r4, #0x28]
	sub r2, r3, r2
	mov r3, ip
	sub r2, r2, r3
	add r0, r6, r7
	mov r3, #0
	bl ov83_02247998
	ldr r0, [sp, #0x2c]
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x18]
	ldr r2, _02242810 ; =0x00000834
	add r0, r4, #0
	ldrb r2, [r3, r2]
	mov r1, #0
	mov r3, #2
	bl ov83_02240C48
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	mov r3, #0x65
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0224280C ; =0x00010200
	add r1, r6, r7
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	bl ov83_02241DD8
_02242712:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x1c]
	cmp r5, #4
	bhs _02242720
	b _02242586
_02242720:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _02242740
	mov r0, #0x17
	lsl r0, r0, #4
	mov r5, #0x12
	add r4, r4, r0
_0224272E:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x2f
	bls _0224272E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02242740:
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0xa
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0xb
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2d
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2e
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #3
	lsl r0, r0, #8
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x31
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x33
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0xd
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224280C: .word 0x00010200
_02242810: .word 0x00000834
	thumb_func_end ov83_022421E0

	thumb_func_start ov83_02242814
ov83_02242814: ; 0x02242814
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov83_02241E18
	add r0, r4, #0
	add r1, r5, #0
	bl ov83_022421E0
	mov r3, #0x1e
	lsl r3, r3, #6
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0x8c
	ldr r0, [r4, r3]
	add r1, #0x88
	add r3, #0x94
	ldrh r2, [r4, r2]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	bl ov83_02247668
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02242814

	thumb_func_start ov83_02242844
ov83_02242844: ; 0x02242844
	push {r4, r5, r6, lr}
	add r6, r0, #0
	cmp r1, #1
	bne _02242870
	mov r0, #0x17
	lsl r0, r0, #4
	mov r4, #0x12
	add r5, r6, r0
_02242854:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x2f
	bls _02242854
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #1
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
_02242870:
	mov r0, #0x17
	lsl r0, r0, #4
	mov r5, #0x12
	add r4, r6, r0
_02242878:
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x2f
	bls _02242878
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #0
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02242844

	thumb_func_start ov83_02242894
ov83_02242894: ; 0x02242894
	lsl r3, r0, #0x1f
	lsr r3, r3, #0x18
	add r3, #0x14
	strh r3, [r1]
	lsr r1, r0, #1
	mov r0, #0x28
	mul r0, r1
	add r0, #0x38
	strh r0, [r2]
	bx lr
	thumb_func_end ov83_02242894

	thumb_func_start ov83_022428A8
ov83_022428A8: ; 0x022428A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	str r0, [sp, #0x14]
	add r0, #0x50
	add r7, r1, #0
	mov r4, #0
	add r5, r6, #0
	str r0, [sp, #0x14]
_022428BA:
	add r0, r4, #0
	add r0, #0x30
	lsl r1, r0, #4
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	cmp r4, r7
	ldr r0, _022429CC ; =0x00000784
	beq _022428D8
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov83_0224755C
	b _022428E2
_022428D8:
	ldr r0, [r5, r0]
	mov r1, #0x44
	mov r2, #0x4c
	bl ov83_02247568
_022428E2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _022428BA
	ldr r0, _022429D0 ; =0x0000077C
	mov r1, #0
	ldr r0, [r6, r0]
	bl ov83_0224755C
	mov r0, #0x6b
	str r0, [sp]
	ldr r0, _022429D4 ; =0x000007A8
	mov r1, #0x27
	ldr r0, [r6, r0]
	mov r2, #1
	add r3, sp, #0x18
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	ldr r0, [r6, #0x4c]
	mov r1, #2
	add r2, #0xc
	bl LoadRectToBgTilemapRect
	ldr r0, [r6, #0x4c]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _022429D8 ; =0x00000862
	ldr r2, _022429DC ; =0x000004DC
	ldrsh r1, [r6, r0]
	mov r0, #6
	mul r0, r1
	mov r1, #0
	add r0, r0, r7
	lsl r4, r0, #3
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022429E0 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r6, r2]
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r2, [r2, r4]
	add r0, r6, r0
	bl AddTextPrinterParameterizedWithColor
	ldr r1, _022429DC ; =0x000004DC
	ldrb r2, [r6, #0x13]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r1, r1, r4
	ldr r1, [r1, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov83_02240EC4
	add r2, r0, #0
	mov r1, #0
	add r0, r6, #0
	mov r3, #2
	str r1, [sp]
	bl ov83_02240C48
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _022429E0 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r2, [r6, #0x20]
	add r0, r6, #0
	add r1, r6, r1
	mov r3, #0x68
	bl ov83_02241DD8
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r6, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r6, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022429CC: .word 0x00000784
_022429D0: .word 0x0000077C
_022429D4: .word 0x000007A8
_022429D8: .word 0x00000862
_022429DC: .word 0x000004DC
_022429E0: .word 0x00010200
	thumb_func_end ov83_022428A8

	thumb_func_start ov83_022429E4
ov83_022429E4: ; 0x022429E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x6b
	str r0, [sp]
	ldr r0, _02242AA0 ; =0x000007A8
	mov r1, #0x26
	ldr r0, [r6, r0]
	mov r2, #1
	add r3, sp, #0x10
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r0, [r6, #0x4c]
	mov r1, #2
	add r2, #0xc
	bl LoadRectToBgTilemapRect
	ldr r0, [r6, #0x4c]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl Heap_Free
	ldr r0, _02242AA4 ; =0x00000862
	mov r4, #0
	ldrsh r1, [r6, r0]
	mov r0, #6
	add r5, r6, #0
	add r7, r1, #0
	mul r7, r0
_02242A46:
	add r1, sp, #0xc
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0xc
	bl ov83_02242894
	ldr r0, _02242AA8 ; =0x00000784
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	bl ov83_02247568
	ldr r0, _02242AAC ; =0x00000861
	add r1, r7, r4
	ldrb r0, [r6, r0]
	cmp r1, r0
	bhs _02242A76
	ldr r0, _02242AA8 ; =0x00000784
	mov r1, #1
	ldr r0, [r5, r0]
	bl ov83_0224755C
_02242A76:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02242A46
	ldr r0, _02242AB0 ; =0x0000077C
	mov r1, #1
	ldr r0, [r6, r0]
	bl ov83_0224755C
	add r0, r6, #0
	bl ov83_02240664
	add r0, r6, #0
	bl ov83_022407FC
	add r0, r6, #0
	bl ov83_0224088C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02242AA0: .word 0x000007A8
_02242AA4: .word 0x00000862
_02242AA8: .word 0x00000784
_02242AAC: .word 0x00000861
_02242AB0: .word 0x0000077C
	thumb_func_end ov83_022429E4

	thumb_func_start ov83_02242AB4
ov83_02242AB4: ; 0x02242AB4
	ldr r3, _02242ABC ; =ov83_02240DB0
	strb r1, [r0, #0xd]
	strb r2, [r0, #0xc]
	bx r3
	.balign 4, 0
_02242ABC: .word ov83_02240DB0
	thumb_func_end ov83_02242AB4

	thumb_func_start ov83_02242AC0
ov83_02242AC0: ; 0x02242AC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02242ADC ; =0x0000077C
	add r4, r3, #0
	ldr r0, [r5, r0]
	bl ov83_02247568
	ldr r0, _02242ADC ; =0x0000077C
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov83_022475D4
	pop {r3, r4, r5, pc}
	nop
_02242ADC: .word 0x0000077C
	thumb_func_end ov83_02242AC0

	thumb_func_start ov83_02242AE0
ov83_02242AE0: ; 0x02242AE0
	ldr r3, _02242AE8 ; =ov83_022408E0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bx r3
	.balign 4, 0
_02242AE8: .word ov83_022408E0
	thumb_func_end ov83_02242AE0

	thumb_func_start ov83_02242AEC
ov83_02242AEC: ; 0x02242AEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	add r0, #2
	add r1, sp, #4
	add r6, r2, #0
	add r7, r3, #0
	bl ov83_02247988
	ldr r0, _02242B9C ; =_02247D0C
	add r1, sp, #4
	ldrh r2, [r0, #0x1e]
	add r3, sp, #8
	strh r2, [r1, #0x1c]
	ldrh r2, [r0, #0x20]
	strh r2, [r1, #0x1e]
	ldrh r2, [r0, #0x22]
	strh r2, [r1, #0x20]
	ldrh r2, [r0, #0x24]
	strh r2, [r1, #0x22]
	ldrh r2, [r0, #0x26]
	ldrh r0, [r0, #0x28]
	strh r2, [r1, #0x24]
	strh r0, [r1, #0x26]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0x22]
	ldrh r2, [r1]
	add r0, r0, r2
	sub r0, #0x1b
	strh r0, [r1, #0x24]
	strh r2, [r1, #0x26]
	ldrh r0, [r1, #0x1c]
	strh r0, [r1, #4]
	ldrh r0, [r1, #0x1e]
	strh r0, [r1, #6]
	ldrh r0, [r1, #0x20]
	strh r0, [r1, #8]
	ldrh r0, [r1, #0x22]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0x24]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0x26]
	strh r0, [r1, #0xe]
	ldr r0, _02242BA0 ; =0x00000844
	ldr r2, [r5, r0]
	sub r0, #8
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	str r2, [sp, #0x18]
	strb r4, [r1, #0x18]
	add r1, sp, #0x30
	ldrb r1, [r1, #0x10]
	add r2, r6, #0
	str r1, [sp]
	add r1, r3, #0
	ldr r0, [r5, r0]
	add r3, r7, #0
	bl ov83_02247CCC
	mov r1, #0x21
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldrb r1, [r5, #0xe]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02242BA4 ; =0x0000073C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	ldr r0, _02242BA8 ; =0x0000074C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02242B9C: .word _02247D0C
_02242BA0: .word 0x00000844
_02242BA4: .word 0x0000073C
_02242BA8: .word 0x0000074C
	thumb_func_end ov83_02242AEC

	thumb_func_start ov83_02242BAC
ov83_02242BAC: ; 0x02242BAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #3
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242BE8 ; =0x00000844
	ldr r5, _02242BEC ; =ov83_02247D6C
	str r0, [r6, r1]
	mov r4, #0
	add r7, r1, #0
_02242BC2:
	ldr r0, [r6, r7]
	ldr r1, [r6, #0x20]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blo _02242BC2
	mov r0, #0xd
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	mov r2, #0x11
	mov r3, #8
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02242BE8: .word 0x00000844
_02242BEC: .word ov83_02247D6C
	thumb_func_end ov83_02242BAC

	thumb_func_start ov83_02242BF0
ov83_02242BF0: ; 0x02242BF0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242C9C ; =0x00000844
	mov r2, #0
	str r0, [r4, r1]
	ldr r0, _02242CA0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	bl ov83_0224777C
	mov r5, #0
	add r7, r0, #0
	add r6, r5, #0
_02242C12:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02242CA4 ; =ov83_02247F4C
	add r2, r0, r1
	ldr r3, [r2, #8]
	cmp r3, #4
	bhi _02242C6A
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242C2E: ; jump table
	.short _02242C6A - _02242C2E - 2 ; case 0
	.short _02242C38 - _02242C2E - 2 ; case 1
	.short _02242C38 - _02242C2E - 2 ; case 2
	.short _02242C38 - _02242C2E - 2 ; case 3
	.short _02242C52 - _02242C2E - 2 ; case 4
_02242C38:
	ldr r0, [r2]
	cmp r7, r0
	blo _02242C7C
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02242C7C
_02242C52:
	cmp r7, #3
	beq _02242C7C
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02242C7C
_02242C6A:
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02242C7C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _02242C12
	ldr r3, _02242CA8 ; =ov83_02248008
	mov r0, #0xd
	ldrb r3, [r3, r5]
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x11
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242C9C: .word 0x00000844
_02242CA0: .word 0x0000050C
_02242CA4: .word ov83_02247F4C
_02242CA8: .word ov83_02248008
	thumb_func_end ov83_02242BF0

	thumb_func_start ov83_02242CAC
ov83_02242CAC: ; 0x02242CAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242D4C ; =0x00000844
	mov r2, #1
	str r0, [r5, r1]
	ldr r0, _02242D50 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	bl ov83_0224777C
	mov r4, #0
	add r7, r0, #0
	add r6, r4, #0
_02242CCE:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02242D54 ; =ov83_02247EB0
	add r2, r0, r1
	ldr r3, [r2, #8]
	cmp r3, #6
	beq _02242CE8
	cmp r3, #7
	beq _02242CE8
	cmp r3, #8
	beq _02242D02
	b _02242D1A
_02242CE8:
	ldr r0, [r2]
	cmp r7, r0
	blo _02242D2C
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02242D2C
_02242D02:
	cmp r7, #3
	beq _02242D2C
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02242D2C
_02242D1A:
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02242D2C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _02242CCE
	ldr r3, _02242D58 ; =ov83_02248008
	mov r0, #0xd
	ldrb r3, [r3, r4]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x11
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242D4C: .word 0x00000844
_02242D50: .word 0x0000050C
_02242D54: .word ov83_02247EB0
_02242D58: .word ov83_02248008
	thumb_func_end ov83_02242CAC

	thumb_func_start ov83_02242D5C
ov83_02242D5C: ; 0x02242D5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02242DA0 ; =0x0000073C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov83_0224773C
	ldr r0, _02242DA4 ; =0x0000074C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov83_0224773C
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl ov83_02247CE8
	ldr r0, _02242DA8 ; =0x00000844
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	ldrb r1, [r5, #0xe]
	mov r0, #0x10
	bic r1, r0
	strb r1, [r5, #0xe]
	pop {r3, r4, r5, pc}
	nop
_02242DA0: .word 0x0000073C
_02242DA4: .word 0x0000074C
_02242DA8: .word 0x00000844
	thumb_func_end ov83_02242D5C

	thumb_func_start ov83_02242DAC
ov83_02242DAC: ; 0x02242DAC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r1, #0x21
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	add r1, #8
	add r2, #0x24
	ldrb r2, [r2]
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242DF4
	mov r3, #1
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	lsl r5, r2, #1
	ldr r2, _02242DF8 ; =ov83_02247D1E
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r1, r4, #0
	ldrh r2, [r2, r5]
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242DF4:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02242DF8: .word ov83_02247D1E
	thumb_func_end ov83_02242DAC

	thumb_func_start ov83_02242DFC
ov83_02242DFC: ; 0x02242DFC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, #0x24
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242E80
	add r0, r0, #4
	ldr r1, [r4, r0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	cmp r1, #4
	beq _02242E2E
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _02242E4E
	b _02242E52
_02242E2E:
	ldr r0, _02242E84 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	cmp r0, #3
	bne _02242E42
	mov r2, #0x1b
	b _02242E54
_02242E42:
	cmp r0, #1
	bne _02242E4A
	mov r2, #0x19
	b _02242E54
_02242E4A:
	mov r2, #0x1a
	b _02242E54
_02242E4E:
	mov r2, #0x1c
	b _02242E54
_02242E52:
	mov r2, #0x18
_02242E54:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242E80:
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02242E84: .word 0x0000050C
	thumb_func_end ov83_02242DFC

	thumb_func_start ov83_02242E88
ov83_02242E88: ; 0x02242E88
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, #0x24
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242F10
	add r0, r0, #4
	ldr r1, [r4, r0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r0, #6
	beq _02242EBA
	cmp r0, #7
	beq _02242EBE
	cmp r0, #8
	beq _02242EC2
	b _02242EE2
_02242EBA:
	mov r2, #0x30
	b _02242EE4
_02242EBE:
	mov r2, #0x31
	b _02242EE4
_02242EC2:
	ldr r0, _02242F14 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	cmp r0, #3
	bne _02242ED6
	mov r2, #0x34
	b _02242EE4
_02242ED6:
	cmp r0, #1
	bne _02242EDE
	mov r2, #0x32
	b _02242EE4
_02242EDE:
	mov r2, #0x33
	b _02242EE4
_02242EE2:
	mov r2, #0x35
_02242EE4:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242F10:
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02242F14: .word 0x0000050C
	thumb_func_end ov83_02242E88

	thumb_func_start ov83_02242F18
ov83_02242F18: ; 0x02242F18
	ldr r2, _02242F28 ; =0x00000864
	mov r3, #0
	strh r1, [r0, r2]
	add r1, r2, #2
	strb r3, [r0, r1]
	add r1, r2, #3
	strb r3, [r0, r1]
	bx lr
	.balign 4, 0
_02242F28: .word 0x00000864
	thumb_func_end ov83_02242F18

	thumb_func_start ov83_02242F2C
ov83_02242F2C: ; 0x02242F2C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02242FD8 ; =0x00000864
	add r4, r0, #0
	ldrh r0, [r4, r1]
	ldr r2, _02242FDC ; =ov83_02247E64
	lsl r0, r0, #2
	add r3, r2, r0
	add r0, r1, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02242F4E
	cmp r0, #1
	beq _02242F78
	cmp r0, #2
	beq _02242FBA
	b _02242FD0
_02242F4E:
	ldrb r0, [r3, #2]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r3, #3]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r4, #0x4c]
	bl BgTilemapRectChangePalette
	ldr r0, [r4, #0x4c]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _02242FE0 ; =0x00000866
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02242FD0
_02242F78:
	add r0, r1, #3
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #3
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #4
	bne _02242FD0
	ldrb r0, [r3, #2]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r3, #3]
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r4, #0x4c]
	bl BgTilemapRectChangePalette
	ldr r0, [r4, #0x4c]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _02242FE4 ; =0x00000867
	mov r1, #0
	strb r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02242FD0
_02242FBA:
	add r0, r1, #3
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #3
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #2
	bne _02242FD0
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_02242FD0:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02242FD8: .word 0x00000864
_02242FDC: .word ov83_02247E64
_02242FE0: .word 0x00000866
_02242FE4: .word 0x00000867
	thumb_func_end ov83_02242F2C


    .rodata

_02247D0C:
	.byte 0x22, 0x00, 0x23, 0x00
	.byte 0x24, 0x00

ov83_02247D12: ; 0x02247D12
	.byte 0x08, 0x00, 0x08, 0x00, 0x20, 0x00

ov83_02247D18: ; 0x02247D18
	.byte 0x0A, 0x00, 0x08, 0x00, 0x0C, 0x00

ov83_02247D1E: ; 0x02247D1E
	.byte 0x0E, 0x00
	.byte 0x0F, 0x00, 0x12, 0x00

ov83_02247D24: ; 0x02247D24
	.byte 0x0C, 0x00, 0x0C, 0x00, 0x1B, 0x00, 0x03, 0x00, 0x00, 0x0B, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247D38: ; 0x02247D38
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247D48: ; 0x02247D48
	.byte 0x00, 0x00, 0x64, 0x00, 0x64, 0x00

ov83_02247D4E: ; 0x02247D4E
	.byte 0x00, 0x00
	.byte 0x64, 0x00, 0x96, 0x00, 0x00, 0x00, 0x32, 0x00, 0x32, 0x00

ov83_02247D5A: ; 0x02247D5A
	.byte 0x00, 0x00, 0x2A, 0x00, 0x2B, 0x00
	.byte 0x00, 0x00, 0x44, 0x00, 0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247D6C: ; 0x02247D6C
	.byte 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0xFE, 0xFF, 0xFF, 0xFF

ov83_02247D84: ; 0x02247D84
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247DA0: ; 0x02247DA0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247DBC: ; 0x02247DBC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x06
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247DD8: ; 0x02247DD8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x06, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov83_02247DF4: ; 0x02247DF4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247E10: ; 0x02247E10
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1C, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247E2C: ; 0x02247E2C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_02247E48: ; 0x02247E48
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov83_02247E64: ; 0x02247E64
	.byte 0x00, 0x04, 0x10, 0x05, 0x10, 0x04, 0x10, 0x05, 0x00, 0x09, 0x10, 0x05
	.byte 0x10, 0x09, 0x10, 0x05, 0x00, 0x0E, 0x10, 0x05, 0x10, 0x0E, 0x10, 0x05, 0x00, 0x14, 0x04, 0x04
	.byte 0x06, 0x14, 0x04, 0x04, 0x19, 0x14, 0x07, 0x04

ov83_02247E88: ; 0x02247E88
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00

ov83_02247EB0: ; 0x02247EB0
	.byte 0x01, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x2D, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF

ov83_02247EE0: ; 0x02247EE0
	.byte 0xDD, 0x00, 0xD9, 0x00, 0x0F, 0x01, 0xFD, 0x00, 0x15, 0x01, 0x0D, 0x01, 0x1E, 0x01, 0x28, 0x01
	.byte 0x10, 0x01, 0x11, 0x01, 0xEC, 0x00, 0x02, 0x01, 0xD6, 0x00, 0xE6, 0x00, 0x13, 0x01, 0xEA, 0x00
	.byte 0xD5, 0x00, 0xE8, 0x00, 0x09, 0x01, 0x14, 0x01, 0xDC, 0x00, 0x29, 0x01, 0x1F, 0x01, 0x0A, 0x01
	.byte 0x0B, 0x01, 0x0C, 0x01, 0x0E, 0x01

ov83_02247F16: ; 0x02247F16
	.byte 0x0A, 0x00, 0x0F, 0x00, 0x05, 0x00, 0x0F, 0x00, 0x0A, 0x00
	.byte 0x0A, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x05, 0x00
	.byte 0x0F, 0x00, 0x0A, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00
	.byte 0x14, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00

ov83_02247F4C: ; 0x02247F4C
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF

ov83_02247F88: ; 0x02247F88
	.byte 0x95, 0x00, 0x96, 0x00, 0x97, 0x00, 0x98, 0x00
	.byte 0x99, 0x00, 0x9C, 0x00, 0x9D, 0x00, 0x9E, 0x00, 0xC9, 0x00, 0xCA, 0x00, 0xCB, 0x00, 0xCC, 0x00
	.byte 0xCD, 0x00, 0xCE, 0x00, 0xCF, 0x00, 0xB8, 0x00, 0xB9, 0x00, 0xBA, 0x00, 0xBB, 0x00, 0xBC, 0x00
	.byte 0xBD, 0x00, 0xBE, 0x00, 0xBF, 0x00, 0xC0, 0x00, 0xC1, 0x00, 0xC2, 0x00, 0xC3, 0x00, 0xC4, 0x00
	.byte 0xC5, 0x00, 0xC6, 0x00, 0xC7, 0x00, 0xC8, 0x00

ov83_02247FC8: ; 0x02247FC8
	.byte 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00
	.byte 0x02, 0x00, 0x02, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00
	.byte 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00
	.byte 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00
	.byte 0x05, 0x00, 0x05, 0x00, 0x05, 0x00, 0x05, 0x00

ov83_02248008: ; 0x02248008
	.byte 0x12, 0x0E, 0x0B, 0x08, 0x05, 0x02, 0x00, 0x00

