	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223DD60
	.public ov83_0223DE60
	.public ov83_0223DFBC
	.public ov83_0223E008
	.extern ov83_0223E10C
	.extern ov83_0223E14C
	.extern ov83_0223EEA0
	.extern ov83_0223EFA4
	.extern ov83_0223F010
	.extern ov83_0223F058
	.extern ov83_0223F1C8
	.extern ov83_0223F200
	.extern ov83_0223FD14
	.extern ov83_02240DA8
	.extern ov83_022412A0
	.extern ov83_02241368
	.extern ov83_02241B30

    .text

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

