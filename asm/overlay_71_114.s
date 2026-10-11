	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02249E6C
	.extern ov71_02247124
	.extern ov71_02247230
	.extern ov71_0224A0B8
	.extern ov71_0224BDF0
	.extern ov71_0224BE00
	.extern ov71_0224BE1C
	.extern ov71_0224BE38
	.extern ov71_0224BE54

	.text

	.text
	thumb_func_start ov71_02249E6C
ov71_02249E6C: ; 0x02249E6C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0224A064 ; =ov71_0224BE54
	bl GfGfx_SetBanks
	ldr r2, _0224A068 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224A06C ; =ov71_0224BDF0
	bl SetBothScreensModesAndDisable
	ldr r0, [r4, #0xc]
	ldr r2, _0224A070 ; =ov71_0224BE00
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	ldr r2, _0224A070 ; =ov71_0224BE00
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	ldr r2, _0224A074 ; =ov71_0224BE1C
	mov r1, #2
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	ldr r2, _0224A078 ; =ov71_0224BE38
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	ldr r2, _0224A078 ; =ov71_0224BE38
	mov r1, #7
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0x59
	mov r1, #0x13
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
	mov r1, #0x13
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
	mov r1, #0x12
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
	mov r1, #0x12
	mov r3, #7
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #0x14
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #0x14
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0xc8
	str r0, [sp]
	mov r1, #1
	ldr r0, [r4, #0xc]
	mov r2, #0
	add r3, r1, #0
	bl BG_FillCharDataRange
	mov r0, #0xc8
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl BG_FillCharDataRange
	mov r0, #0xc8
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0xe
	bl ov71_02247124
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4]
	mov r2, #5
	mov r3, #0xe
	bl ov71_02247124
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #2
	mov r3, #0xf
	bl ov71_02247124
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #0xc8
	bl FillBgTilemapRect
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #5
	mov r2, #0xc8
	bl FillBgTilemapRect
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0xc8
	bl FillBgTilemapRect
	mov r0, #0x14
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0xe
	bl ov71_02247230
	mov r0, #0x14
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [r4]
	mov r2, #5
	mov r3, #0xe
	bl ov71_02247230
	mov r2, #2
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #1
	mov r3, #0xf
	bl ov71_02247230
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl BgCommitTilemapBufferToVram
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
	ldr r0, [r4, #0xc]
	ldr r2, _0224A07C ; =0xFFFFFE80
	mov r1, #0x50
	bl ov71_0224A0B8
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0224A064: .word ov71_0224BE54
_0224A068: .word 0x04000304
_0224A06C: .word ov71_0224BDF0
_0224A070: .word ov71_0224BE00
_0224A074: .word ov71_0224BE1C
_0224A078: .word ov71_0224BE38
_0224A07C: .word 0xFFFFFE80
	thumb_func_end ov71_02249E6C

