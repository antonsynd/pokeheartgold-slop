	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222C710
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222E7B8
	.public ov40_0222F720
	.public ov40_0222F920
	.public ov40_0222FA24
	.public ov40_0223077C
	.public ov40_02230964
	.public ov40_022361B0
	.public ov40_0223655C
	.public ov40_02236EB4
	.public ov40_02236F38
	.public ov40_02237030
	.public ov40_0223707C
	.public ov40_022371D4
	.public ov40_022373E4
	.public ov40_02237548
	.public ov40_0223757C
	.public ov40_02237BD4
	.public ov40_02237C74
	.public ov40_02237D6C
	.public ov40_02238304
	.public ov40_022383C8
	.public ov40_0223854C

	.text

	thumb_func_start ov40_022383C8
ov40_022383C8: ; 0x022383C8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022383E6
	cmp r1, #1
	beq _022384B4
	cmp r1, #2
	bne _022383E4
	b _022384EA
_022383E4:
	b _0223852E
_022383E6:
	bl ov40_02238304
	add r0, r5, #0
	bl ov40_02237C74
	ldr r0, _02238534 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223842A
	add r0, r5, #0
	bl ov40_02237D6C
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _02238538 ; =0x0000047C
	add r0, r5, r0
	bl ov40_0222FA24
	ldr r0, _0223853C ; =0x0000049C
	add r0, r5, r0
	bl ov40_0222F720
	ldr r0, _0223853C ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov40_0222F920
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	b _0223844A
_0223842A:
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _02238540 ; =0x00002ED8
	add r1, r5, #0
	add r0, r4, r0
	bl ov40_0222E7B8
	add r0, r5, #0
	bl ov40_022361B0
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
_0223844A:
	ldr r0, _02238534 ; =0x00002F64
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_02236EB4
	add r0, r5, #0
	mov r1, #0xff
	bl ov40_0223707C
	ldr r0, _02238544 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020878B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022384B4:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223852E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4f
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223852E
_022384EA:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223852E
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222C710
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r1, _02238548 ; =0x00000113
	add r0, r5, #0
	bl ov40_02237030
	add r0, r5, #0
	bl ov40_02236F38
	add r0, r5, #0
	mov r1, #3
	bl ov40_0222BF80
_0223852E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02238534: .word 0x00002F64
_02238538: .word 0x0000047C
_0223853C: .word 0x0000049C
_02238540: .word 0x00002ED8
_02238544: .word 0x000006F4
_02238548: .word 0x00000113
	thumb_func_end ov40_022383C8

	thumb_func_start ov40_0223854C
ov40_0223854C: ; 0x0223854C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02238560
	b _0223871A
_02238560:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223856C: ; jump table
	.short _02238574 - _0223856C - 2 ; case 0
	.short _02238610 - _0223856C - 2 ; case 1
	.short _0223862E - _0223856C - 2 ; case 2
	.short _022386C6 - _0223856C - 2 ; case 3
_02238574:
	bl ov40_02237C74
	ldr r0, _022387FC ; =0x00002F64
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022385B2
	add r0, r4, #0
	bl ov40_02237D6C
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _02238800 ; =0x0000047C
	add r0, r4, r0
	bl ov40_0222FA24
	ldr r0, _02238804 ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F720
	ldr r0, _02238804 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov40_0222F920
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	b _022385D2
_022385B2:
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _02238808 ; =0x00002ED8
	add r1, r4, #0
	add r0, r5, r0
	bl ov40_0222E7B8
	add r0, r4, #0
	bl ov40_022361B0
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
_022385D2:
	ldr r0, _0223880C ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020878B0
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
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02238610:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _022386DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022387F4
_0223862E:
	mov r1, #1
	bl ov40_02230964
	ldr r0, _02238810 ; =0x000004D4
	add r3, r5, #4
	ldr r0, [r4, r0]
	mov r2, #0x33
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	add r6, #0x80
_02238648:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02238648
	ldr r0, [r6]
	str r0, [r3]
	add r0, r5, #0
	bl ov40_0223655C
	add r0, r4, #0
	mov r1, #2
	bl ov40_0222C710
	add r0, r4, #0
	bl ov40_02236EB4
	add r0, r4, #0
	bl ov40_0223757C
	add r0, r4, #0
	mov r1, #0xff
	bl ov40_0223707C
	add r0, r4, #0
	mov r1, #1
	bl ov40_02237548
	add r0, r4, #0
	mov r1, #0
	bl ov40_022373E4
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x4b
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022387F4
_022386C6:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r5, r1
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	bne _022386DE
_022386DC:
	b _022387F4
_022386DE:
	add r0, r4, #0
	mov r1, #0
	bl ov40_02237548
	add r0, r4, #0
	mov r1, #1
	bl ov40_022373E4
	add r0, r4, #0
	bl ov40_02237BD4
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02238814 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022387F4
_0223871A:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _022387D8
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov40_0223655C
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, _02238818 ; =0x00002F68
	str r1, [r5, r0]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #6
	bl _s32_div_f
	ldr r3, _0223881C ; =0x00002F6C
	mov r1, #0x6f
	str r0, [r5, r3]
	sub r2, r3, #4
	ldr r6, [r5, r2]
	mov r2, #0x18
	mul r2, r6
	ldr r6, [r5, r3]
	mov r3, #0x16
	mul r3, r6
	lsl r1, r1, #4
	add r2, #0x6e
	add r3, #0x34
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	lsl r1, r2, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x2c]
	cmp r1, #0
	beq _022387D0
	sub r0, #0x58
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r2
	bl ov40_022371D4
	cmp r0, #1
	beq _022387D0
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	sub r1, #0x54
	lsl r0, r2, #1
	add r0, r5, r0
	add r2, r5, r2
	ldrh r0, [r0, #0x2c]
	ldrb r1, [r2, r1]
	bl PlayCry
_022387D0:
	add r0, r4, #0
	mov r1, #0xa
	bl ov40_0222BF80
_022387D8:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_022387F4:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_022387FC: .word 0x00002F64
_02238800: .word 0x0000047C
_02238804: .word 0x0000049C
_02238808: .word 0x00002ED8
_0223880C: .word 0x000006F4
_02238810: .word 0x000004D4
_02238814: .word 0x04000050
_02238818: .word 0x00002F68
_0223881C: .word 0x00002F6C
	thumb_func_end ov40_0223854C

