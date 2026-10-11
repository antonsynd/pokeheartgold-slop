	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222D66C
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DED0
	.public ov40_0222DFB0
	.public ov40_0222E79C
	.public ov40_0222E7B8
	.public ov40_0222E7DC
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_0223064C
	.public ov40_022306A0
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_02230D94
	.public ov40_0223F880
	.public ov40_0223F984
	.public ov40_02240910
	.public ov40_02241054
	.public ov40_02241114
	.public ov40_02241A34
	.public ov40_02241AB0
	.public ov40_022420B4
	.public ov40_02242110
	.public ov40_022421FC
	.public ov40_02242378

	.text

	thumb_func_start ov40_0223F880
ov40_0223F880: ; 0x0223F880
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F896
	cmp r1, #1
	beq _0223F904
	b _0223F972
_0223F896:
	ldr r0, _0223F97C ; =0x00000608
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	ldr r0, _0223F980 ; =0x0000060C
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r5, #0
	bl ov40_02240910
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _0223F8E4
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov40_0223064C
	b _0223F8EE
_0223F8E4:
	add r4, #0x80
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_0222E7B8
_0223F8EE:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_02241A34
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F978
_0223F904:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223F958
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov40_0222D66C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x6f
	bl ov40_0222D66C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ManagedSprite_SetAnim
	add r0, r5, #0
	mov r1, #1
	bl ov40_022420B4
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F958:
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
	b _0223F978
_0223F972:
	mov r1, #0xe
	bl ov40_0222BF80
_0223F978:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223F97C: .word 0x00000608
_0223F980: .word 0x0000060C
	thumb_func_end ov40_0223F880

	thumb_func_start ov40_0223F984
ov40_0223F984: ; 0x0223F984
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	bl sub_020307F8
	mov r1, #4
	mov r2, #0
	bl sub_0203088C
	add r3, r0, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl ov40_02230D94
	cmp r0, #0
	bne _0223F9AE
	b _0223FC7A
_0223F9AE:
	ldr r0, [r4, #8]
	cmp r0, #5
	bls _0223F9B6
	b _0223FC4C
_0223F9B6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F9C2: ; jump table
	.short _0223F9CE - _0223F9C2 - 2 ; case 0
	.short _0223FA1C - _0223F9C2 - 2 ; case 1
	.short _0223FA82 - _0223F9C2 - 2 ; case 2
	.short _0223FA92 - _0223F9C2 - 2 ; case 3
	.short _0223FAD0 - _0223F9C2 - 2 ; case 4
	.short _0223FBE2 - _0223F9C2 - 2 ; case 5
_0223F9CE:
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0223F9EC
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_0223064C
	b _0223F9F6
_0223F9EC:
	add r5, #0x80
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_0222E7B8
_0223F9F6:
	add r0, r4, #0
	bl ov40_02241A34
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223FC8C
_0223FA1C:
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
	beq _0223FA68
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_022421FC
	add r0, r4, #0
	bl ov40_02241054
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223FA68:
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
	b _0223FC8C
_0223FA82:
	ldr r1, _0223FC94 ; =0x00000115
	add r0, r4, #0
	bl ov40_0222DED0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223FC8C
_0223FA92:
	bl System_GetTouchNew
	cmp r0, #0
	bne _0223FA9C
	b _0223FC8C
_0223FA9C:
	add r0, r4, #0
	bl ov40_02241114
	add r0, r4, #0
	bl ov40_0222DFB0
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
	b _0223FC8C
_0223FAD0:
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02242110
	ldr r0, _0223FC98 ; =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0223FB12
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
_0223FB12:
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02241AB0
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
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0223FB8E
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_02230638
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_022306A0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	b _0223FBBA
_0223FB8E:
	add r0, r5, #0
	add r0, #0x80
	add r1, r4, #0
	bl ov40_0222E79C
	add r5, #0x80
	add r0, r5, #0
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
_0223FBBA:
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
	b _0223FC8C
_0223FBE2:
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
	beq _0223FC32
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0223FC12
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #1
	bl ov40_022306A0
	b _0223FC1C
_0223FC12:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #1
	bl ov40_0222E7DC
_0223FC1C:
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223FC32:
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
	b _0223FC8C
_0223FC4C:
	ldr r1, _0223FC9C ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223FC70
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _0223FC9C ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_0223FC62:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _0223FC62
_0223FC70:
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
	b _0223FC8C
_0223FC7A:
	add r0, r4, #0
	bl ov40_02242378
	cmp r0, #0
	beq _0223FC8C
	add r0, r4, #0
	mov r1, #0x17
	bl ov40_0222BF80
_0223FC8C:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223FC94: .word 0x00000115
_0223FC98: .word 0x0000086C
_0223FC9C: .word 0x00004138
	thumb_func_end ov40_0223F984

