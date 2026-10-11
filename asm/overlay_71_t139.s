	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224AA28
	.public ov71_0224AAF8
	.public ov71_0224AB7C
	.extern ov71_02246C6C
	.extern ov71_02246D40
	.extern ov71_02247000
	.extern ov71_022473A0
	.extern ov71_0224AF08
	.extern ov71_0224AFD4
	.extern ov71_0224B084
	.extern ov71_0224BEE8
	.extern ov71_0224BEFC
	.extern ov71_0224BF1C
	.extern ov71_0224BF38
	.extern ov71_0224BF54

	.text

	.text
	thumb_func_start ov71_0224AA28
ov71_0224AA28: ; 0x0224AA28
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #6
	bhi _0224AAF2
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224AA40: ; jump table
	.short _0224AA4E - _0224AA40 - 2 ; case 0
	.short _0224AA6C - _0224AA40 - 2 ; case 1
	.short _0224AA86 - _0224AA40 - 2 ; case 2
	.short _0224AA98 - _0224AA40 - 2 ; case 3
	.short _0224AAB0 - _0224AA40 - 2 ; case 4
	.short _0224AAD4 - _0224AA40 - 2 ; case 5
	.short _0224AAE8 - _0224AA40 - 2 ; case 6
_0224AA4E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224AAF2
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	add r4, #0x30
	add r1, r4, #0
	bl ov71_0224AFD4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224AAF2
_0224AA6C:
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	cmp r1, #8
	ble _0224AAF2
	add r4, #0x34
	add r1, r4, #0
	bl ov71_0224AF08
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224AAF2
_0224AA86:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0224AAF2
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0224AAF2
	add r0, r1, #1
	str r0, [r5]
	b _0224AAF2
_0224AA98:
	mov r1, #0
	add r0, #0x14
	mvn r1, r1
	bl ov71_02246C6C
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224AAF2
_0224AAB0:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x1e
	ble _0224AAF2
	add r0, r4, #0
	add r0, #0x38
	str r0, [sp]
	ldr r0, [r4, #0x24]
	mov r1, #0x1f
	mov r2, #0
	mov r3, #0x28
	bl ov71_0224B084
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224AAF2
_0224AAD4:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0224AAF2
	ldr r0, [r4, #0x10]
	bl ov71_02246D40
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224AAF2
_0224AAE8:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0224AAF2
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224AAF2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov71_0224AA28

	thumb_func_start ov71_0224AAF8
ov71_0224AAF8: ; 0x0224AAF8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0224AB10
	cmp r0, #1
	beq _0224AB38
	cmp r0, #2
	beq _0224AB62
	b _0224AB76
_0224AB10:
	mov r0, #0x4a
	lsl r0, r0, #2
	mov r3, #1
	str r0, [sp]
	add r0, r5, #0
	str r3, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	lsl r1, r3, #0xc
	lsl r2, r3, #0xa
	bl ov71_02247000
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224AB76
_0224AB38:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xd
	ble _0224AB76
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224AB76
_0224AB62:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224AB76
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0224AB76
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224AB76:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov71_0224AAF8

	thumb_func_start ov71_0224AB7C
ov71_0224AB7C: ; 0x0224AB7C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0224AD94 ; =ov71_0224BF54
	bl GfGfx_SetBanks
	ldr r2, _0224AD98 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224AD9C ; =ov71_0224BEFC
	bl SetBothScreensModesAndDisable
	ldr r0, [r4, #0xc]
	ldr r2, _0224ADA0 ; =ov71_0224BF1C
	mov r1, #2
	mov r3, #1
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	ldr r2, _0224ADA0 ; =ov71_0224BF1C
	mov r1, #6
	mov r3, #1
	bl InitBgFromTemplate
	bl OS_DisableInterrupts
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, _0224ADA4 ; =ov71_0224BF38
	mov r1, #3
	mov r3, #2
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	ldr r2, _0224ADA4 ; =ov71_0224BF38
	mov r1, #7
	mov r3, #2
	bl InitBgFromTemplate
	add r0, r5, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	mov r1, #2
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	add r3, r1, #0
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r1, #2
	mov r3, #6
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r3, #2
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r3, #6
	bl GfGfxLoader_LoadScrnData
	ldr r0, [r4]
	bl ov71_022473A0
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #3
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #3
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	ldr r0, _0224ADA8 ; =ov71_0224BEE8
	lsl r1, r5, #1
	ldrh r5, [r0, r1]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x59
	mov r1, #3
	mov r2, #0
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffset
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x59
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffset
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r1, #5
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r1, #5
	mov r3, #7
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r1, #4
	mov r3, #3
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r1, #4
	mov r3, #7
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x39
	mov r1, #0x60
	bl Heap_Alloc
	add r5, r0, #0
	beq _0224AD52
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x60
	bl MIi_CpuClear32
	add r0, r5, #0
	mov r1, #0x60
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	bl GXS_BeginLoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GX_LoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GXS_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	add r0, r5, #0
	bl Heap_Free
_0224AD52:
	ldr r0, [r4, #0xc]
	ldr r3, _0224ADAC ; =0xFFFFFE80
	mov r1, #2
	mov r2, #3
	bl BgSetPosTextAndCommit
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0xc]
	mov r1, #6
	sub r3, #0xc3
	bl BgSetPosTextAndCommit
	mov r1, #3
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	mov r3, #0x43
	bl BgSetPosTextAndCommit
	mov r0, #7
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0224AD94: .word ov71_0224BF54
_0224AD98: .word 0x04000304
_0224AD9C: .word ov71_0224BEFC
_0224ADA0: .word ov71_0224BF1C
_0224ADA4: .word ov71_0224BF38
_0224ADA8: .word ov71_0224BEE8
_0224ADAC: .word 0xFFFFFE80
	thumb_func_end ov71_0224AB7C

