	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224B280
	.extern ov71_022473D0
	.extern ov71_0224744C
	.extern ov71_02247610
	.extern ov71_022476EC
	.extern ov71_0224B720
	.extern ov71_0224B7EC
	.extern ov71_0224B848
	.extern ov71_0224BF7C
	.extern ov71_0224BF94
	.extern ov71_0224BFA4
	.extern ov71_0224BFC0
	.extern ov71_0224BFDC

	.text

	.text
	thumb_func_start ov71_0224B280
ov71_0224B280: ; 0x0224B280
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _0224B430 ; =ov71_0224BFDC
	bl GfGfx_SetBanks
	ldr r2, _0224B434 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224B438 ; =ov71_0224BF94
	bl SetBothScreensModesAndDisable
	ldr r0, [r4, #0x58]
	ldr r2, _0224B43C ; =ov71_0224BFA4
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x58]
	ldr r2, _0224B440 ; =ov71_0224BFC0
	mov r1, #2
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r2, _0224B444 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	mov r1, #1
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x58]
	add r3, r1, #0
	bl BG_FillCharDataRange
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x58]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4]
	bl ov71_022473D0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x39
	str r0, [sp, #4]
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0x6d
	mov r3, #2
	bl LoadUserFrameGfx2
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	add r1, r4, #0
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x58]
	add r1, #0x5c
	mov r3, #2
	bl AddWindowParameterized
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r3, #0x20
	str r3, [sp]
	mov r0, #0x39
	str r0, [sp, #4]
	mov r0, #0x10
	mov r1, #8
	mov r2, #0
	bl GfGfxLoader_GXLoadPal
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x58]
	mov r0, #0x59
	mov r1, #0x16
	mov r3, #2
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x58]
	mov r0, #0x59
	mov r1, #0x15
	mov r3, #2
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #0x17
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	add r0, r4, #0
	bl ov71_0224B720
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov71_0224744C
	str r0, [r4, #0x74]
	add r0, r4, #0
	bl ov71_0224B7EC
	mov r1, #6
	mov r2, #1
	str r0, [r4, #0x14]
	bl Pokepic_SetAttr
	mov r1, #0
	mov r0, #0x13
	str r1, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x74]
	mov r2, #0x59
	mov r3, #0x1b
	bl ov71_02247610
	ldr r2, _0224B448 ; =ov71_0224BF7C
	str r0, [r4, #0x78]
	ldrh r3, [r2]
	add r0, sp, #0x14
	add r1, sp, #0x14
	strh r3, [r0]
	ldrh r3, [r2, #2]
	ldrh r2, [r2, #4]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	ldr r0, [r4, #0x78]
	bl ov71_022476EC
	add r0, r4, #0
	bl ov71_0224B848
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224B44C ; =0x04000050
	mov r1, #1
	mov r2, #4
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0
_0224B430: .word ov71_0224BFDC
_0224B434: .word 0x04000304
_0224B438: .word ov71_0224BF94
_0224B43C: .word ov71_0224BFA4
_0224B440: .word ov71_0224BFC0
_0224B444: .word 0x04000008
_0224B448: .word ov71_0224BF7C
_0224B44C: .word 0x04000050
	thumb_func_end ov71_0224B280

