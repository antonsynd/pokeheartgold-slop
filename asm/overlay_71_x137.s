	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224A278
	.extern ov71_022473A0
	.extern ov71_0224BE84
	.extern ov71_0224BEA4
	.extern ov71_0224BEC0

	.text

	.text
	thumb_func_start ov71_0224A278
ov71_0224A278: ; 0x0224A278
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _0224A3C8 ; =ov71_0224BEC0
	bl GfGfx_SetBanks
	ldr r2, _0224A3CC ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224A3D0 ; =ov71_0224BE84
	bl SetBothScreensModesAndDisable
	ldr r0, [r4, #0x24]
	ldr r2, _0224A3D4 ; =ov71_0224BEA4
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x24]
	ldr r2, _0224A3D4 ; =ov71_0224BEA4
	mov r1, #7
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4]
	bl ov71_022473A0
	cmp r0, #3
	bhi _0224A2CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A2C2: ; jump table
	.short _0224A2CA - _0224A2C2 - 2 ; case 0
	.short _0224A2D6 - _0224A2C2 - 2 ; case 1
	.short _0224A2E2 - _0224A2C2 - 2 ; case 2
	.short _0224A2EE - _0224A2C2 - 2 ; case 3
_0224A2CA:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0
	b _0224A2F8
_0224A2D6:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x20
	b _0224A2F8
_0224A2E2:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x40
	b _0224A2F8
_0224A2EE:
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r7, #0x19
	mov r6, #0x1a
	mov r5, #0
_0224A2F8:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x59
	add r1, r7, #0
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x59
	add r1, r7, #0
	mov r3, #7
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x59
	mov r3, #3
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x59
	mov r3, #7
	bl GfGfxLoader_LoadScrnData
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x59
	add r1, r6, #0
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffset
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x59
	add r1, r6, #0
	mov r2, #4
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffset
	mov r1, #3
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x24]
	mov r1, #7
	add r3, #0xfd
	bl BgSetPosTextAndCommit
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	bl sub_0203A880
	mov r0, #1
	mov r1, #0x38
	bl sub_0203A948
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0224A3C8: .word ov71_0224BEC0
_0224A3CC: .word 0x04000304
_0224A3D0: .word ov71_0224BE84
_0224A3D4: .word ov71_0224BEA4
	thumb_func_end ov71_0224A278

