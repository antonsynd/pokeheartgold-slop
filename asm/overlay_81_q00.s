	.include "macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223DD60
	.public ov81_0223DEA8
	.public ov81_0223E234
	.public ov81_0223E318
	.extern ov81_0223E520
	.extern ov81_0223E8BC
	.extern ov81_0223EA98
	.extern ov81_0223EC88
	.extern ov81_0223ECE4
	.extern ov81_0223F1A4
	.extern ov81_0223F314
	.extern ov81_0223F38C
	.extern ov81_0223F6A8
	.extern ov81_0223F770
	.extern ov81_0223FBAC
	.extern ov81_0223FC74
	.extern ov81_02240008
	.extern ov81_02240048
	.extern ov81_02240088
	.extern ov81_022400D0
	.extern ov81_022404AC
	.extern ov81_022404B4
	.extern ov81_02240658
	.extern ov81_02240BB0
	.extern ov81_02240D2C
	.extern ov81_02240D64
	.extern ov81_02240F08
	.extern ov81_02240F18
	.extern ov81_02240F28
	.extern ov81_02240F38
	.extern ov81_02241144
	.extern ov81_02241398
	.extern ov81_02241BB8
	.extern ov81_02241BC8
	.extern ov81_02242514
	.extern ov81_02242BC8
	.extern ov81_02242C48
	.extern ov81_02242DD8
	.extern ov81_02242F30
	.extern ov81_02242F60
	.extern ov81_02242F94
	.extern ov81_02243220
	.extern ov81_02243240
	.extern ov81_022432AC
	.extern ov81_022432DC

	.text

	.text
	thumb_func_start ov81_0223DD60
ov81_0223DD60: ; 0x0223DD60
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _0223DE90 ; =SDK_OVERLAY_OVY_80_ID
	mov r1, #2
	bl HandleLoadOverlay
	bl ov81_02240D2C
	mov r0, #3
	mov r1, #0x64
	lsl r2, r0, #0x10
	bl Heap_Create
	ldr r1, _0223DE94 ; =0x0000048C
	add r0, r5, #0
	mov r2, #0x64
	bl OverlayManager_CreateAndGetData
	ldr r2, _0223DE94 ; =0x0000048C
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r2, #2
	mov r1, #0
	ldr r0, _0223DE98 ; =ov81_02242BC8
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	add r3, r1, #0
	bl GF_3DVramMan_Create
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x64
	bl BgConfig_Alloc
	str r0, [r4, #0x4c]
	str r5, [r4]
	add r0, r5, #0
	bl OverlayManager_GetArgs
	mov r3, #0x6f
	mov r2, #0xf
	ldr r1, [r0]
	lsl r3, r3, #2
	str r1, [r4, r3]
	ldrb r1, [r0, #4]
	lsl r2, r2, #6
	strb r1, [r4, #9]
	ldrb r1, [r0, #5]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, #6]
	strb r1, [r4, #0xb]
	ldr r1, [r0, #8]
	str r1, [r4, r2]
	ldr r5, [r0, #0xc]
	add r1, r2, #4
	str r5, [r4, r1]
	add r0, #0x10
	add r2, #0x14
	str r0, [r4, r2]
	ldr r0, [r4, r3]
	bl Save_PlayerData_GetOptionsAddr
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #8
	str r0, [r4, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F08
	cmp r0, #1
	bne _0223DE10
	mov r0, #6
	strb r0, [r4, #0x12]
	add r0, r4, #0
	mov r1, #0
	bl ov81_02243240
	ldr r1, _0223DE9C ; =0x00000464
	str r0, [r4, r1]
	b _0223DE4C
_0223DE10:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223DE34
	mov r0, #2
	strb r0, [r4, #0x12]
	mov r0, #3
	strb r0, [r4, #0x1a]
	mov r0, #6
	strb r0, [r4, #0x1b]
	add r0, r4, #0
	mov r1, #0
	bl ov81_022432DC
	ldr r1, _0223DE9C ; =0x00000464
	str r0, [r4, r1]
	b _0223DE4C
_0223DE34:
	mov r0, #3
	strb r0, [r4, #0x12]
	mov r0, #4
	strb r0, [r4, #0x1a]
	mov r0, #5
	strb r0, [r4, #0x1b]
	add r0, r4, #0
	mov r1, #0
	bl ov81_022432AC
	ldr r1, _0223DE9C ; =0x00000464
	str r0, [r4, r1]
_0223DE4C:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223DE5A
	mov r1, #2
	b _0223DE5C
_0223DE5A:
	mov r1, #3
_0223DE5C:
	ldr r0, _0223DEA0 ; =0x0000047C
	str r1, [r4, r0]
	ldr r0, _0223DEA4 ; =0x0000046C
	add r0, r4, r0
	bl ov81_02241BB8
	add r0, r4, #0
	bl ov81_02240D64
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223DE84
	add r0, r4, #0
	bl sub_02096910
_0223DE84:
	mov r0, #0
	str r0, [r6]
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223DE90: .word SDK_OVERLAY_OVY_80_ID
_0223DE94: .word 0x0000048C
_0223DE98: .word ov81_02242BC8
_0223DE9C: .word 0x00000464
_0223DEA0: .word 0x0000047C
_0223DEA4: .word 0x0000046C
	thumb_func_end ov81_0223DD60

	thumb_func_start ov81_0223DEA8
ov81_0223DEA8: ; 0x0223DEA8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, _0223E1A0 ; =0x00000458
	add r4, r0, #0
	ldrh r1, [r4, r1]
	cmp r1, #1
	bne _0223DEF0
	ldr r1, [r5]
	cmp r1, #9
	bhi _0223DEF0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223DECC: ; jump table
	.short _0223DEF0 - _0223DECC - 2 ; case 0
	.short _0223DEF0 - _0223DECC - 2 ; case 1
	.short _0223DEF0 - _0223DECC - 2 ; case 2
	.short _0223DEF0 - _0223DECC - 2 ; case 3
	.short _0223DEF0 - _0223DECC - 2 ; case 4
	.short _0223DEF0 - _0223DECC - 2 ; case 5
	.short _0223DEE0 - _0223DECC - 2 ; case 6
	.short _0223DEE0 - _0223DECC - 2 ; case 7
	.short _0223DEE0 - _0223DECC - 2 ; case 8
	.short _0223DEE0 - _0223DECC - 2 ; case 9
_0223DEE0:
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	bne _0223DEF0
	add r1, r5, #0
	mov r2, #0xb
	bl ov81_022404AC
_0223DEF0:
	add r0, r4, #0
	bl ov81_02242514
	ldr r0, [r5]
	cmp r0, #0xe
	bhi _0223DF94
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DF08: ; jump table
	.short _0223DF26 - _0223DF08 - 2 ; case 0
	.short _0223DF56 - _0223DF08 - 2 ; case 1
	.short _0223DF3C - _0223DF08 - 2 ; case 2
	.short _0223DF84 - _0223DF08 - 2 ; case 3
	.short _0223DFE6 - _0223DF08 - 2 ; case 4
	.short _0223E01A - _0223DF08 - 2 ; case 5
	.short _0223E030 - _0223DF08 - 2 ; case 6
	.short _0223E07A - _0223DF08 - 2 ; case 7
	.short _0223E0CC - _0223DF08 - 2 ; case 8
	.short _0223E12A - _0223DF08 - 2 ; case 9
	.short _0223E17C - _0223DF08 - 2 ; case 10
	.short _0223E1B6 - _0223DF08 - 2 ; case 11
	.short _0223E1E0 - _0223DF08 - 2 ; case 12
	.short _0223E1F6 - _0223DF08 - 2 ; case 13
	.short _0223E204 - _0223DF08 - 2 ; case 14
_0223DF26:
	add r0, r4, #0
	bl ov81_0223E318
	cmp r0, #1
	bne _0223DF94
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov81_022404AC
	b _0223E218
_0223DF3C:
	add r0, r4, #0
	bl ov81_0223EC88
	cmp r0, #1
	bne _0223DF52
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov81_022404AC
	b _0223DF56
_0223DF52:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223DF56:
	add r0, r4, #0
	bl ov81_0223E520
	cmp r0, #1
	bne _0223DF94
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F08
	cmp r0, #1
	bne _0223DF78
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov81_022404AC
	b _0223E218
_0223DF78:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #6
	bl ov81_022404AC
	b _0223E218
_0223DF84:
	add r0, r4, #0
	bl ov81_02241144
	add r0, r4, #0
	bl ov81_0223ECE4
	cmp r0, #1
	beq _0223DF96
_0223DF94:
	b _0223E218
_0223DF96:
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0223DFAC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov81_022404AC
	b _0223E218
_0223DFAC:
	ldrb r0, [r4, #9]
	bl ov81_02240F18
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _0223DFC4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov81_022404AC
	b _0223E218
_0223DFC4:
	add r0, r4, #0
	bl ov81_02240F28
	cmp r0, #1
	bne _0223DFDA
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov81_022404AC
	b _0223E218
_0223DFDA:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov81_022404AC
	b _0223E218
_0223DFE6:
	add r0, r4, #0
	bl ov81_02241144
	add r0, r4, #0
	bl ov81_0223F1A4
	cmp r0, #1
	bne _0223E0D6
	ldrb r0, [r4, #9]
	bl ov81_02240F18
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _0223E00E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov81_022404AC
	b _0223E218
_0223E00E:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov81_022404AC
	b _0223E218
_0223E01A:
	add r0, r4, #0
	bl ov81_0223F314
	cmp r0, #1
	bne _0223E0D6
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov81_022404AC
	b _0223E218
_0223E030:
	add r0, r4, #0
	bl ov81_0223F38C
	cmp r0, #1
	bne _0223E0D6
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0223E050
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov81_022404AC
	b _0223E218
_0223E050:
	add r0, r4, #0
	bl ov81_02240F28
	cmp r0, #1
	bne _0223E06E
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F38
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	bl ov81_022404AC
	b _0223E218
_0223E06E:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa
	bl ov81_022404AC
	b _0223E218
_0223E07A:
	add r0, r4, #0
	bl ov81_0223F6A8
	cmp r0, #1
	bne _0223E0D6
	add r0, r4, #0
	bl ov81_02240F28
	cmp r0, #1
	bne _0223E0A2
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F38
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #6
	bl ov81_022404AC
	b _0223E218
_0223E0A2:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223E0C0
	ldrb r1, [r4, #0x13]
	mov r0, #8
	mov r2, #0xb
	bic r1, r0
	strb r1, [r4, #0x13]
	add r0, r4, #0
	add r1, r5, #0
	bl ov81_022404AC
	b _0223E218
_0223E0C0:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov81_022404AC
	b _0223E218
_0223E0CC:
	add r0, r4, #0
	bl ov81_0223F770
	cmp r0, #1
	beq _0223E0D8
_0223E0D6:
	b _0223E218
_0223E0D8:
	add r0, r4, #0
	bl ov81_02240F28
	cmp r0, #1
	bne _0223E0F6
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F38
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #9
	bl ov81_022404AC
	b _0223E218
_0223E0F6:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0223E108
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa
	bl ov81_022404AC
	b _0223E218
_0223E108:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223E11E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xb
	bl ov81_022404AC
	b _0223E218
_0223E11E:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov81_022404AC
	b _0223E218
_0223E12A:
	add r0, r4, #0
	bl ov81_0223FBAC
	cmp r0, #1
	bne _0223E218
	add r0, r4, #0
	bl ov81_02240F28
	cmp r0, #1
	bne _0223E152
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F38
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl ov81_022404AC
	b _0223E218
_0223E152:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223E170
	ldrb r1, [r4, #0x13]
	mov r0, #8
	mov r2, #0xb
	bic r1, r0
	strb r1, [r4, #0x13]
	add r0, r4, #0
	add r1, r5, #0
	bl ov81_022404AC
	b _0223E218
_0223E170:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov81_022404AC
	b _0223E218
_0223E17C:
	add r0, r4, #0
	bl ov81_0223FC74
	cmp r0, #1
	bne _0223E218
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0223E1A4
	add r0, r4, #0
	bl ov81_0223E8BC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #6
	bl ov81_022404AC
	b _0223E218
	nop
_0223E1A0: .word 0x00000458
_0223E1A4:
	add r0, r4, #0
	bl ov81_0223EA98
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl ov81_022404AC
	b _0223E218
_0223E1B6:
	add r0, r4, #0
	bl ov81_02240008
	cmp r0, #1
	bne _0223E218
	ldr r0, _0223E230 ; =0x00000458
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _0223E1D4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xe
	bl ov81_022404AC
	b _0223E218
_0223E1D4:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl ov81_022404AC
	b _0223E218
_0223E1E0:
	add r0, r4, #0
	bl ov81_02240048
	cmp r0, #1
	bne _0223E218
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov81_022404AC
	b _0223E218
_0223E1F6:
	add r0, r4, #0
	bl ov81_02240088
	cmp r0, #1
	bne _0223E218
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E204:
	add r0, r4, #0
	bl ov81_022400D0
	cmp r0, #1
	bne _0223E218
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl ov81_022404AC
_0223E218:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_02242C48
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223E230: .word 0x00000458
	thumb_func_end ov81_0223DEA8

	thumb_func_start ov81_0223E234
ov81_0223E234: ; 0x0223E234
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	beq _0223E260
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers
	ldr r0, _0223E308 ; =0x00000478
	mov r1, #0xff
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223E260:
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F08
	cmp r0, #1
	bne _0223E29A
	ldrb r0, [r4, #9]
	mov r7, #0
	bl ov81_02240F18
	cmp r0, #0
	ble _0223E2CE
	add r6, r4, #0
	add r5, r7, #0
_0223E27C:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	add r0, #0xc
	ldr r0, [r4, r0]
	add r6, r6, #2
	strh r1, [r0, r5]
	ldrb r0, [r4, #9]
	add r5, r5, #2
	add r7, r7, #1
	bl ov81_02240F18
	cmp r7, r0
	blt _0223E27C
	b _0223E2CE
_0223E29A:
	mov r7, #0xf2
	lsl r7, r7, #2
	mov r6, #0
	add r0, r7, #0
	add r3, r4, #0
	add r5, r6, #0
	add r0, #0xc
_0223E2A8:
	ldrh r2, [r3, r7]
	ldr r1, [r4, r0]
	add r6, r6, #1
	strh r2, [r1, r5]
	add r3, r3, #2
	add r5, r5, #2
	cmp r6, #2
	blt _0223E2A8
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _0223E2CE
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #0xff
	strh r2, [r1]
	ldr r0, [r4, r0]
	strh r2, [r0, #2]
_0223E2CE:
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _0223E30C ; =0x0000046C
	ldr r0, [r4, r0]
	bl ov81_02241BC8
	ldr r0, _0223E310 ; =0x00000464
	ldr r0, [r4, r0]
	bl ov81_02243220
	add r0, r4, #0
	bl ov81_02240BB0
	ldr r0, [sp]
	bl OverlayManager_FreeData
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x64
	bl Heap_Destroy
	ldr r0, _0223E314 ; =SDK_OVERLAY_OVY_80_ID
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223E308: .word 0x00000478
_0223E30C: .word 0x0000046C
_0223E310: .word 0x00000464
_0223E314: .word SDK_OVERLAY_OVY_80_ID
	thumb_func_end ov81_0223E234

	thumb_func_start ov81_0223E318
ov81_0223E318: ; 0x0223E318
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #6
	bhi _0223E3EE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E330: ; jump table
	.short _0223E33E - _0223E330 - 2 ; case 0
	.short _0223E35A - _0223E330 - 2 ; case 1
	.short _0223E382 - _0223E330 - 2 ; case 2
	.short _0223E3E6 - _0223E330 - 2 ; case 3
	.short _0223E402 - _0223E330 - 2 ; case 4
	.short _0223E450 - _0223E330 - 2 ; case 5
	.short _0223E46A - _0223E330 - 2 ; case 6
_0223E33E:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223E352
	bl sub_02037BEC
	mov r0, #0xed
	bl sub_02037AC0
_0223E352:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E508
_0223E35A:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223E37A
	mov r0, #0xed
	bl sub_02037B38
	cmp r0, #1
	bne _0223E3EE
	bl sub_02037BEC
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E508
_0223E37A:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E508
_0223E382:
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0223E3AA
	mov r7, #0x36
	add r5, r4, #0
	lsl r7, r7, #4
_0223E390:
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov81_02242F30
	ldr r0, [r5, r7]
	bl ov81_02242F60
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223E390
_0223E3AA:
	mov r3, #0x42
	ldr r0, [r4, #0x4c]
	mov r1, #6
	mov r2, #0
	lsl r3, r3, #2
	bl BgSetPosTextAndCommit
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #1
	bl Pokepic_SetAttr
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E508
_0223E3E6:
	bl IsPaletteFadeFinished
	cmp r0, #0
	bne _0223E3F0
_0223E3EE:
	b _0223E508
_0223E3F0:
	ldr r0, _0223E510 ; =0x00000611
	bl PlaySE
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E508
_0223E402:
	bl ov81_022404B4
	cmp r0, #1
	bne _0223E508
	ldr r0, _0223E510 ; =0x00000611
	mov r1, #0
	bl StopSE
	ldr r0, _0223E514 ; =0x00000678
	bl PlaySE
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0223E438
	mov r7, #0x36
	add r5, r4, #0
	lsl r7, r7, #4
_0223E426:
	ldr r0, [r5, r7]
	mov r1, #4
	bl ov81_02242F94
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223E426
_0223E438:
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240658
	mov r0, #8
	str r0, [r4, #0x14]
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E508
_0223E450:
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov81_02242DD8
	cmp r0, #1
	beq _0223E508
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E508
_0223E46A:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0223E4E2
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	mov r1, #0
	bl ov81_02240F08
	cmp r0, #1
	bne _0223E4A8
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, _0223E518 ; =0x0000FFFF
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	mov r3, #1
	bl Pokepic_StartPaletteFadeAll
	b _0223E4E2
_0223E4A8:
	ldr r0, _0223E51C ; =0x0000047C
	mov r6, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	bls _0223E4CE
	ldr r7, _0223E51C ; =0x0000047C
	add r5, r4, #0
_0223E4B6:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, r7]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blo _0223E4B6
_0223E4CE:
	ldr r0, _0223E518 ; =0x0000FFFF
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	mov r3, #1
	bl Pokepic_StartPaletteFadeAll
_0223E4E2:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Pokepic_ResumePaletteFade
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	blo _0223E508
	mov r0, #0
	strb r0, [r4, #0x19]
	add r0, r4, #0
	bl ov81_02241398
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223E508:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223E510: .word 0x00000611
_0223E514: .word 0x00000678
_0223E518: .word 0x0000FFFF
_0223E51C: .word 0x0000047C
	thumb_func_end ov81_0223E318

