	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223AC24
	.public ov40_0223ACD0
	.extern ov40_0222BF80
	.extern ov40_0222D66C
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222E79C
	.extern ov40_0222E7B8
	.extern ov40_0222E7DC
	.extern ov40_02230410
	.extern ov40_02230638
	.extern ov40_0223064C
	.extern ov40_022306A0
	.extern ov40_022307DC
	.extern ov40_02230964
	.extern ov40_0223A510
	.extern ov40_0223CCA0
	.extern ov40_0223CD14
	.extern ov40_0223CD58

	.text

	.text
	thumb_func_start ov40_0223AC24
ov40_0223AC24: ; 0x0223AC24
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223AC3C
	cmp r1, #1
	beq _0223AC9A
	b _0223ACC0
_0223AC3C:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223AC80
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r2, _0223ACCC ; =0x00002028
	add r0, r5, #0
	ldr r2, [r4, r2]
	mov r1, #0x66
	bl ov40_0223A510
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223AC80:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223ACC6
_0223AC9A:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223ACC6
	add r0, r5, #0
	bl ov40_0223CD58
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223ACC6
_0223ACC0:
	mov r1, #0xf
	bl ov40_0222BF80
_0223ACC6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223ACCC: .word 0x00002028
	thumb_func_end ov40_0223AC24

	thumb_func_start ov40_0223ACD0
ov40_0223ACD0: ; 0x0223ACD0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r0]
	cmp r1, #3
	bls _0223ACE4
	b _0223AEEC
_0223ACE4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223ACF0: ; jump table
	.short _0223ACF8 - _0223ACF0 - 2 ; case 0
	.short _0223AD20 - _0223ACF0 - 2 ; case 1
	.short _0223AD5A - _0223ACF0 - 2 ; case 2
	.short _0223AE82 - _0223ACF0 - 2 ; case 3
_0223ACF8:
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223AF18
_0223AD20:
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
	beq _0223AD40
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223AD40:
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
	b _0223AF18
_0223AD5A:
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0223AD9A
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #3
	bl ov40_0222D66C
	mov r0, #0x13
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x14
	mov r2, #0x5e
	bl ov40_0222D66C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnim
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl ManagedSprite_SetAnim
_0223AD9A:
	add r0, r4, #0
	bl ov40_0223CCA0
	add r0, r4, #0
	bl ov40_0223CD14
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
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
	mov r1, #1
	bl ov40_02230964
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223AE1E
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_0223064C
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_02230638
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov40_022306A0
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	b _0223AE5A
_0223AE1E:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_0222E7B8
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_0222E79C
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_0222E7DC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
_0223AE5A:
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223AF18
_0223AE82:
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
	beq _0223AED2
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223AEB0
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov40_022306A0
	b _0223AEBC
_0223AEB0:
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov40_0222E7DC
_0223AEBC:
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223AED2:
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
	b _0223AF18
_0223AEEC:
	ldr r1, _0223AF20 ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223AF10
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _0223AF20 ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_0223AF02:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _0223AF02
_0223AF10:
	add r0, r4, #0
	mov r1, #7
	bl ov40_0222BF80
_0223AF18:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223AF20: .word 0x00004138
	thumb_func_end ov40_0223ACD0

