	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222D66C
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DED0
	.public ov40_0222DF60
	.public ov40_0222DFB0
	.public ov40_0222E9B8
	.public ov40_0222F488
	.public ov40_0222F5EC
	.public ov40_0222F720
	.public ov40_0222F734
	.public ov40_0222F740
	.public ov40_0222F858
	.public ov40_0222F920
	.public ov40_0222F9D4
	.public ov40_0222FA18
	.public ov40_0222FA24
	.public ov40_0222FA5C
	.public ov40_0222FA88
	.public ov40_0222FE00
	.public ov40_0222FE68
	.public ov40_0222FE8C
	.public ov40_0222FE98
	.public ov40_0223077C
	.public ov40_022307DC
	.public ov40_02230944
	.public ov40_02230964
	.public ov40_022309DC
	.public ov40_0223D540
	.public ov40_0223D5CC
	.public ov40_0223D68C
	.public ov40_0223D830
	.public ov40_0223D874
	.public ov40_0223D8D4
	.public ov40_0223DBD4
	.public ov40_0223DCF0
	.public ov40_0223DD68
	.public ov40_0223DDE8
	.public ov40_0223DF1C
	.public ov40_0223E024
	.public ov40_0223E064
	.public ov40_0223E0A4
	.public ov40_0223EFA4
	.public ov40_0223F028
	.public ov40_0223F16C
	.public ov40_0223F200
	.public ov40_0223F3E4
	.public ov40_0223F59C
	.public ov40_02241D10
	.public ov40_02241E14
	.public ov40_022420B4
	.public ov40_0224564C
	.public ov40_02245650
	.public ov40_022456C4
	.public ov40_02245708
	.public ov40_022457B0

	.text

	thumb_func_start ov40_0223EFA4
ov40_0223EFA4: ; 0x0223EFA4
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223EFBA
	cmp r1, #1
	beq _0223EFD4
	b _0223F01E
_0223EFBA:
	mov r1, #0x38
	mov r2, #3
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov40_022307DC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F024
_0223EFD4:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223F004
	add r0, r5, #0
	mov r1, #0x7c
	bl ov40_0222DF60
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DF1C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F004:
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
	b _0223F024
_0223F01E:
	mov r1, #3
	bl ov40_0222BF80
_0223F024:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_0223EFA4

	thumb_func_start ov40_0223F028
ov40_0223F028: ; 0x0223F028
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _0223F042
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223F042:
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _0223F126
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F054: ; jump table
	.short _0223F05C - _0223F054 - 2 ; case 0
	.short _0223F072 - _0223F054 - 2 ; case 1
	.short _0223F0B2 - _0223F054 - 2 ; case 2
	.short _0223F0FC - _0223F054 - 2 ; case 3
_0223F05C:
	add r0, r4, #0
	mov r1, #0x75
	bl ov40_0222DF60
	ldr r0, _0223F150 ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F072:
	ldr r0, _0223F154 ; =0x000004C2
	ldrb r6, [r5, r0]
	cmp r6, #0xff
	bne _0223F08A
	add r0, r4, #0
	bl sub_02087E1C
	cmp r0, #1
	bne _0223F088
	mov r6, #0xff
	b _0223F08A
_0223F088:
	mov r6, #0xfe
_0223F08A:
	add r0, r4, #0
	bl ov40_0223D540
	ldr r3, _0223F158 ; =0x000004C4
	lsl r2, r6, #0x18
	ldrb r1, [r5, r3]
	lsr r2, r2, #0x18
	str r1, [sp]
	sub r1, r3, #4
	sub r3, r3, #1
	ldrh r1, [r5, r1]
	ldrb r3, [r5, r3]
	bl ov39_02227590
	cmp r0, #1
	bne _0223F148
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F0B2:
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #4
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _0223F150 ; =0x0000057D
	bne _0223F0E6
	mov r1, #0
	bl StopSE
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #7
	bl ov40_022309DC
	ldr r0, _0223F15C ; =0x00004138
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F0E6:
	mov r1, #0
	bl StopSE
	mov r0, #0x51
	mov r1, #0x76
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F0FC:
	ldr r0, _0223F15C ; =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223F118
	mov r1, #0x51
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov40_0222DF60
	ldr r0, _0223F160 ; =0x0000057C
	bl PlaySE
	b _0223F11E
_0223F118:
	ldr r0, _0223F164 ; =0x00000577
	bl PlaySE
_0223F11E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F126:
	ldr r0, _0223F168 ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F734
	ldr r0, _0223F15C ; =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223F140
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
	b _0223F148
_0223F140:
	add r0, r4, #0
	mov r1, #0xd
	bl ov40_0222BF80
_0223F148:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223F150: .word 0x0000057D
_0223F154: .word 0x000004C2
_0223F158: .word 0x000004C4
_0223F15C: .word 0x00004138
_0223F160: .word 0x0000057C
_0223F164: .word 0x00000577
_0223F168: .word 0x0000049C
	thumb_func_end ov40_0223F028

	thumb_func_start ov40_0223F16C
ov40_0223F16C: ; 0x0223F16C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F182
	cmp r1, #1
	beq _0223F1AA
	b _0223F1EC
_0223F182:
	bl ov40_0223E024
	add r0, r5, #0
	bl ov40_0223E064
	add r0, r5, #0
	bl ov40_0222DFB0
	ldr r0, _0223F1F8 ; =0x00000608
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	ldr r0, _0223F1FC ; =0x0000060C
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F1F2
_0223F1AA:
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
	beq _0223F1D2
	add r0, r5, #0
	mov r1, #1
	bl ov40_022420B4
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F1D2:
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
	b _0223F1F2
_0223F1EC:
	mov r1, #0xe
	bl ov40_0222BF80
_0223F1F2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223F1F8: .word 0x00000608
_0223F1FC: .word 0x0000060C
	thumb_func_end ov40_0223F16C

	thumb_func_start ov40_0223F200
ov40_0223F200: ; 0x0223F200
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F21A
	cmp r1, #1
	bne _0223F218
	b _0223F31C
_0223F218:
	b _0223F3BC
_0223F21A:
	bl sub_0202FC48
	cmp r0, #0
	beq _0223F226
	bl sub_0202FC24
_0223F226:
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r3, _0223F3C8 ; =ov40_022457B0
	add r2, r4, r0
	mov r6, #5
_0223F230:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223F230
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	mov r0, #0x4e
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0223F3CC ; =0x00004138
	add r0, r0, #4
	ldr r1, [r5, r1]
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov40_0222FE00
	mov r0, #0x6d
	bl ov40_0222FE8C
	ldr r1, _0223F3D0 ; =0x0000050C
	mov r2, #3
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #4
	bl ov40_022307DC
	mov r1, #7
	add r0, r5, #0
	add r2, r1, #0
	bl ov40_022307DC
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	bl ov40_0223E0A4
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _0223F3D4 ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	bl ov40_0222F9D4
	ldr r3, _0223F3D8 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r3
	add r3, #0x44
	mov r2, #0
	add r3, r4, r3
	bl ov40_0222E9B8
	ldr r1, _0223F3DC ; =0x000004E4
	mov r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x68
	sub r1, #0x48
	add r0, r5, r0
	add r1, r5, r1
	bl ov40_0222FA5C
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _0223F3D8 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov40_0222F740
	ldr r0, _0223F3D8 ; =0x0000049C
	mov r1, #0x40
	add r0, r5, r0
	mov r2, #0xb8
	bl ov40_0222F858
	ldr r0, _0223F3D8 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov40_0222F488
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_0223D68C
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223D830
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F3C2
_0223F31C:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223F38A
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl ov40_0223D830
	ldr r3, _0223F3E0 ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r5, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x4c
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F38A:
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
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223F3C2
_0223F3BC:
	mov r1, #0xf
	bl ov40_0222BF80
_0223F3C2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0223F3C8: .word ov40_022457B0
_0223F3CC: .word 0x00004138
_0223F3D0: .word 0x0000050C
_0223F3D4: .word 0x0000047C
_0223F3D8: .word 0x0000049C
_0223F3DC: .word 0x000004E4
_0223F3E0: .word 0x000004D8
	thumb_func_end ov40_0223F200

	thumb_func_start ov40_0223F3E4
ov40_0223F3E4: ; 0x0223F3E4
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F3FE
	cmp r1, #1
	beq _0223F474
	cmp r1, #2
	beq _0223F4EC
	b _0223F578
_0223F3FE:
	ldr r0, _0223F584 ; =0x0000047C
	add r0, r5, r0
	bl ov40_0222FA88
	ldr r1, _0223F588 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov40_0222F5EC
	ldr r0, _0223F588 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov40_0222F488
	ldr r2, _0223F58C ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x4c
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_020878EC
	add r0, r5, #0
	bl ov40_0223D8D4
	ldr r0, _0223F590 ; =ov40_0224564C
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0223F456
	add r0, r5, #0
	bl ov40_02230944
	mov r0, #0x11
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F456:
	ldr r0, _0223F594 ; =ov40_02245650
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _0223F462
	b _0223F57E
_0223F462:
	add r0, r5, #0
	bl ov40_02230944
	mov r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F57E
_0223F474:
	ldr r0, _0223F584 ; =0x0000047C
	add r0, r5, r0
	bl ov40_0222FA24
	ldr r0, _0223F588 ; =0x0000049C
	add r0, r5, r0
	bl ov40_0222F720
	ldr r0, _0223F588 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov40_0222F920
	ldr r0, _0223F598 ; =0x0000050C
	ldr r0, [r4, r0]
	bl ov40_0222FE98
	add r0, r5, #0
	bl ov40_0223D874
	add r0, r5, #0
	bl ov40_0222FE68
	add r0, r5, #0
	bl ov40_0223E024
	add r0, r5, #0
	bl ov40_0223E064
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
	ldr r0, [r4, #0xc]
	cmp r0, #0x10
	bne _0223F4E6
	ldr r0, _0223F584 ; =0x0000047C
	add r0, r5, r0
	bl ov40_0222FA18
	ldr r0, _0223F588 ; =0x0000049C
	add r0, r5, r0
	bl ov40_0222F734
	mov r0, #0x51
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_0223F4E6:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F4EC:
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
	beq _0223F546
	add r0, r5, #0
	mov r1, #0
	bl ov40_022420B4
	ldr r0, [r4, #0xc]
	cmp r0, #0x11
	bne _0223F540
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
	mov r2, #0x5e
	bl ov40_0222D66C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl ManagedSprite_SetAnim
_0223F540:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F546:
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
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223F57E
_0223F578:
	ldr r1, [r4, #0xc]
	bl ov40_0222BF80
_0223F57E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223F584: .word 0x0000047C
_0223F588: .word 0x0000049C
_0223F58C: .word 0x000004D8
_0223F590: .word ov40_0224564C
_0223F594: .word ov40_02245650
_0223F598: .word 0x0000050C
	thumb_func_end ov40_0223F3E4

	thumb_func_start ov40_0223F59C
ov40_0223F59C: ; 0x0223F59C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F5B2
	cmp r1, #1
	beq _0223F614
	b _0223F692
_0223F5B2:
	mov r1, #0x38
	mov r2, #3
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0
	bl ov40_022420B4
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223F69C ; =ov40_022456C4
	ldr r2, _0223F6A0 ; =ov40_02241D10
	mov r1, #5
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223F6A4 ; =0x00000608
	ldr r2, _0223F6A8 ; =ov40_02241E14
	str r0, [r4, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223F6AC ; =ov40_02245708
	mov r1, #9
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223F6B0 ; =0x0000060C
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DF1C
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F698
_0223F614:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223F678
	add r0, r5, #0
	mov r1, #0x7c
	bl ov40_0222DED0
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DBD4
	mov r1, #0x13
	lsl r1, r1, #6
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov40_0223DD68
	ldr r1, _0223F6B4 ; =0x000004C2
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov40_0223DCF0
	ldr r2, _0223F6B8 ; =0x000004C3
	add r0, r5, #0
	ldrb r1, [r4, r2]
	add r2, r2, #1
	ldrb r2, [r4, r2]
	bl ov40_0223DDE8
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223F678:
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
	b _0223F698
_0223F692:
	mov r1, #3
	bl ov40_0222BF80
_0223F698:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223F69C: .word ov40_022456C4
_0223F6A0: .word ov40_02241D10
_0223F6A4: .word 0x00000608
_0223F6A8: .word ov40_02241E14
_0223F6AC: .word ov40_02245708
_0223F6B0: .word 0x0000060C
_0223F6B4: .word 0x000004C2
_0223F6B8: .word 0x000004C3
	thumb_func_end ov40_0223F59C

