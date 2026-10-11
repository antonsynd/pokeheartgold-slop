	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222C4B8
	.public ov40_0222D66C
	.public ov40_0222D9E8
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DED0
	.public ov40_0222DFB0
	.public ov40_0222E7DC
	.public ov40_0222FC40
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_022306A0
	.public ov40_02230738
	.public ov40_0223077C
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_02230CDC
	.public ov40_0223D540
	.public ov40_0223D5CC
	.public ov40_0223FD8C
	.public ov40_0223FF8C
	.public ov40_022408AC
	.public ov40_02241AB0
	.public ov40_02241E40
	.public ov40_02241ED4
	.public ov40_02241F3C
	.public ov40_022420B4
	.public ov40_02242110
	.public ov40_02245654
	.public ov40_02245674
	.public ov40_022456B4

	.text

	thumb_func_start ov40_0223FD8C
ov40_0223FD8C: ; 0x0223FD8C
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _0223FDA6
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223FDA6:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _0223FDAE
	b _0223FF34
_0223FDAE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223FDBA: ; jump table
	.short _0223FDC4 - _0223FDBA - 2 ; case 0
	.short _0223FDFA - _0223FDBA - 2 ; case 1
	.short _0223FE34 - _0223FDBA - 2 ; case 2
	.short _0223FE7A - _0223FDBA - 2 ; case 3
	.short _0223FEA6 - _0223FDBA - 2 ; case 4
_0223FDC4:
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0223FDEA
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #0
	bl ov40_022306A0
	b _0223FDF4
_0223FDEA:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #0
	bl ov40_0222E7DC
_0223FDF4:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223FDFA:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223FE1A
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223FE1A:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223FF68
_0223FE34:
	add r0, r4, #0
	mov r1, #0x75
	bl ov40_0222DED0
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, _0223FF70 ; =0x000004B8
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0xc5
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223FF68
_0223FE7A:
	add r0, r4, #0
	bl ov40_0223D540
	ldr r1, _0223FF74 ; =0x000004D4
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, _0223FF78 ; =0x00002608
	ldr r2, [r2, r1]
	add r1, r2, #0
	add r1, #0xd8
	add r2, #0xdc
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov39_02227720
	cmp r0, #1
	bne _0223FF68
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223FF68
_0223FEA6:
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #4
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _0223FF7C ; =0x0000057D
	bne _0223FEE0
	mov r1, #0
	bl StopSE
	add r0, r4, #0
	bl ov40_0222DFB0
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #8
	bl ov40_02230CDC
	ldr r0, [r4, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0223FF70 ; =0x000004B8
	str r1, [r5, r0]
	b _0223FF18
_0223FEE0:
	mov r1, #0
	bl StopSE
	mov r0, #0xff
	str r0, [r4, #8]
	ldr r0, _0223FF70 ; =0x000004B8
	mov r1, #1
	str r1, [r5, r0]
	ldr r1, _0223FF80 ; =0x0000413C
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x1c
	ldr r1, [r4, r1]
	add r2, r2, r1
	ldr r1, _0223FF84 ; =0x00000878
	str r2, [r4, r1]
	add r2, r1, #0
	add r2, #0x3c
	ldr r3, [r4, r2]
	add r2, r0, #4
	str r3, [r5, r2]
	add r0, r0, #4
	add r1, #0x40
	ldr r0, [r5, r0]
	ldr r2, _0223FF88 ; =0x00001D4C
	add r1, r4, r1
	bl MI_CpuCopy8
_0223FF18:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	b _0223FF68
_0223FF34:
	ldr r0, _0223FF70 ; =0x000004B8
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0223FF5A
	add r0, #0xbf
	bl PlaySE
	add r0, r4, #0
	bl ov40_0222DFB0
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov40_0222BF80
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222FC40
	b _0223FF68
_0223FF5A:
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	mov r1, #0x1f
	bl ov40_0222BF80
_0223FF68:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223FF70: .word 0x000004B8
_0223FF74: .word 0x000004D4
_0223FF78: .word 0x00002608
_0223FF7C: .word 0x0000057D
_0223FF80: .word 0x0000413C
_0223FF84: .word 0x00000878
_0223FF88: .word 0x00001D4C
	thumb_func_end ov40_0223FD8C

	thumb_func_start ov40_0223FF8C
ov40_0223FF8C: ; 0x0223FF8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _0223FFA0
	b _022401E4
_0223FFA0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FFAC: ; jump table
	.short _0223FFB8 - _0223FFAC - 2 ; case 0
	.short _022400AE - _0223FFAC - 2 ; case 1
	.short _022400F8 - _0223FFAC - 2 ; case 2
	.short _0224015A - _0223FFAC - 2 ; case 3
	.short _022401B6 - _0223FFAC - 2 ; case 4
	.short _022401D4 - _0223FFAC - 2 ; case 5
_0223FFB8:
	bl ov40_02230738
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	bl ov40_0222D9E8
	ldr r0, _02240200 ; =0x00004138
	mov r2, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0223FFEC
	mov r0, #0x9a
	lsl r0, r0, #6
	add r7, r0, #0
	add r3, r4, r0
	ldr r0, _02240200 ; =0x00004138
	add r6, r4, #0
	sub r7, #0x78
_0223FFDE:
	str r3, [r6, r7]
	ldr r1, [r4, r0]
	add r2, r2, #1
	add r3, #0xe4
	add r6, r6, #4
	cmp r2, r1
	blt _0223FFDE
_0223FFEC:
	ldr r0, _02240204 ; =0x000004D4
	mov r3, #3
	ldr r0, [r4, r0]
	add r1, r4, r0
	ldr r0, _02240208 ; =0x0000413C
	ldrb r1, [r1, r0]
	ldr r0, _0224020C ; =0x0000079C
	strb r1, [r5, r0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r0, r4, #0
	mov r1, #6
	mov r2, #7
	bl ov40_022307DC
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	bl ov40_02242110
	add r0, r4, #0
	mov r1, #0
	bl ov40_022420B4
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov40_0222D66C
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov40_0222D66C
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0x30]
	mov r1, #3
	bl ManagedSprite_SetAnim
	mov r1, #0x13
	ldr r0, _02240210 ; =0x0000FFFF
	lsl r1, r1, #6
	strh r0, [r5, r1]
	mov r2, #0xff
	add r0, r1, #2
	strb r2, [r5, r0]
	add r0, r1, #3
	strb r2, [r5, r0]
	add r0, r1, #4
	strb r2, [r5, r0]
	add r0, r1, #0
	add r2, #0xf5
	add r0, #0x54
	str r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x1c
	ldrsh r0, [r4, r0]
	add r1, #0x50
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022401FA
_022400AE:
	bl ov40_022408AC
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02240214 ; =ov40_022456B4
	ldr r2, _02240218 ; =ov40_02241E40
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _0224021C ; =0x00000608
	ldr r2, _02240220 ; =ov40_02241ED4
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02240224 ; =ov40_02245674
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _02240228 ; =0x0000060C
	ldr r2, _0224022C ; =ov40_02241F3C
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02240230 ; =ov40_02245654
	mov r1, #2
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022401FA
_022400F8:
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_02230638
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_022306A0
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022401FA
_0224015A:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0224019C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov40_022306A0
	add r0, r4, #0
	bl ov40_02241AB0
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224019C:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _022401FA
_022401B6:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022401FA
_022401D4:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022401FA
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022401FA
_022401E4:
	ldr r0, _02240234 ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov40_0222C4B8
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
_022401FA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240200: .word 0x00004138
_02240204: .word 0x000004D4
_02240208: .word 0x0000413C
_0224020C: .word 0x0000079C
_02240210: .word 0x0000FFFF
_02240214: .word ov40_022456B4
_02240218: .word ov40_02241E40
_0224021C: .word 0x00000608
_02240220: .word ov40_02241ED4
_02240224: .word ov40_02245674
_02240228: .word 0x0000060C
_0224022C: .word ov40_02241F3C
_02240230: .word ov40_02245654
_02240234: .word 0x000006D8
	thumb_func_end ov40_0223FF8C

