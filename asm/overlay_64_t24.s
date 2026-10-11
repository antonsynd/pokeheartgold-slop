	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public ov64_021E62C8
	.public ov64_021E64F8
	.public ov64_021E652C
	.extern _021E6E7C
	.extern ov64_021E6010
	.extern ov64_021E62A8
	.extern ov64_021E677C
	.extern ov64_021E6B84
	.extern ov64_021E6C1C

	.text

	.text
	thumb_func_start ov64_021E62C8
ov64_021E62C8: ; 0x021E62C8
	push {r3, r4, r5, lr}
	mov r1, #0x72
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #4
	bhi _021E63A2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E62E2: ; jump table
	.short _021E62EC - _021E62E2 - 2 ; case 0
	.short _021E649E - _021E62E2 - 2 ; case 1
	.short _021E64B2 - _021E62E2 - 2 ; case 2
	.short _021E64C4 - _021E62E2 - 2 ; case 3
	.short _021E64D4 - _021E62E2 - 2 ; case 4
_021E62EC:
	ldr r0, _021E64E8 ; =_021E6E7C
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	bne _021E6324
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	ble _021E63A2
	add r0, r1, #0
	mov r2, #0xf
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #2
	add r0, #0x18
	str r2, [r4, r0]
	mov r0, #1
	add r1, #0x14
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov64_021E64F8
	ldr r0, _021E64EC ; =0x000005DC
	bl PlaySE
	b _021E64E2
_021E6324:
	cmp r0, #1
	bne _021E635E
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	cmp r3, #1
	blt _021E63A2
	sub r0, r1, #4
	ldr r2, [r4, r0]
	sub r0, r3, #1
	cmp r2, r0
	beq _021E63A2
	mov r2, #0x10
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #3
	add r0, #0x14
	str r2, [r4, r0]
	mov r0, #1
	add r1, #0x10
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov64_021E64F8
	ldr r0, _021E64EC ; =0x000005DC
	bl PlaySE
	b _021E64E2
_021E635E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021E639A
	bhs _021E63F6
	cmp r5, #6
	bhi _021E6392
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6384: ; jump table
	.short _021E63AC - _021E6384 - 2 ; case 0
	.short _021E63AC - _021E6384 - 2 ; case 1
	.short _021E63AC - _021E6384 - 2 ; case 2
	.short _021E63AC - _021E6384 - 2 ; case 3
	.short _021E63AC - _021E6384 - 2 ; case 4
	.short _021E63AC - _021E6384 - 2 ; case 5
	.short _021E63D2 - _021E6384 - 2 ; case 6
_021E6392:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	b _021E64E2
_021E639A:
	add r0, r1, #1
	cmp r5, r0
	bhi _021E63A4
	beq _021E63D2
_021E63A2:
	b _021E64E2
_021E63A4:
	add r0, r1, #2
	cmp r5, r0
	beq _021E6410
	b _021E64E2
_021E63AC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov64_021E677C
	ldr r0, _021E64F0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021E63C8
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	blo _021E63CA
_021E63C8:
	b _021E64E2
_021E63CA:
	ldr r0, _021E64EC ; =0x000005DC
	bl PlaySE
	b _021E64E2
_021E63D2:
	ldr r0, _021E64EC ; =0x000005DC
	bl PlaySE
	mov r1, #0x6f
	mov r0, #0x11
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #4
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r1, #0xc
	add r0, r0, #1
	str r0, [r4, r1]
	b _021E64E2
_021E63F6:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	bl ov64_021E677C
	ldr r0, _021E64EC ; =0x000005DC
	bl PlaySE
	b _021E64E2
_021E6410:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	ldr r1, _021E64F0 ; =gSystem
	ldr r2, [r1, #0x4c]
	mov r1, #0x10
	tst r1, r2
	beq _021E6462
	cmp r0, #2
	beq _021E642C
	cmp r0, #5
	bne _021E64E2
_021E642C:
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	cmp r3, #1
	blt _021E64E2
	sub r0, r1, #4
	ldr r2, [r4, r0]
	sub r0, r3, #1
	cmp r2, r0
	beq _021E64E2
	mov r2, #0x10
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #3
	add r0, #0x14
	str r2, [r4, r0]
	mov r0, #1
	add r1, #0x10
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov64_021E64F8
	ldr r0, _021E64EC ; =0x000005DC
	bl PlaySE
	b _021E64E2
_021E6462:
	mov r1, #0x20
	tst r1, r2
	beq _021E64E2
	cmp r0, #0
	beq _021E6470
	cmp r0, #3
	bne _021E64E2
_021E6470:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	ble _021E64E2
	add r0, r1, #0
	mov r2, #0xf
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #2
	add r0, #0x18
	str r2, [r4, r0]
	mov r0, #1
	add r1, #0x14
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov64_021E64F8
	ldr r0, _021E64EC ; =0x000005DC
	bl PlaySE
	b _021E64E2
_021E649E:
	bl ov64_021E6B84
	cmp r0, #0
	bne _021E64E2
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	b _021E64E2
_021E64B2:
	mov r1, #0
	mvn r1, r1
	bl ov64_021E652C
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021E64E2
_021E64C4:
	mov r1, #1
	bl ov64_021E652C
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021E64E2
_021E64D4:
	bl ov64_021E62A8
	ldr r0, _021E64F4 ; =0x0000060D
	bl PlaySE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E64E2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E64E8: .word _021E6E7C
_021E64EC: .word 0x000005DC
_021E64F0: .word gSystem
_021E64F4: .word 0x0000060D
	thumb_func_end ov64_021E62C8

	thumb_func_start ov64_021E64F8
ov64_021E64F8: ; 0x021E64F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #2
_021E64FE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov64_021E6010
	add r4, r4, #1
	cmp r4, #0xd
	bls _021E64FE
	ldr r4, _021E6528 ; =0x0000DCC2
	mov r7, #0x4d
	add r6, r4, #0
	lsl r7, r7, #2
	add r6, #0xb
_021E6516:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl SpriteManager_UnloadCharObjById
	add r4, r4, #1
	cmp r4, r6
	bls _021E6516
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6528: .word 0x0000DCC2
	thumb_func_end ov64_021E64F8

	thumb_func_start ov64_021E652C
ov64_021E652C: ; 0x021E652C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r2, #0x6d
	add r5, r0, #0
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r0, r0, r1
	str r0, [r5, r2]
	ldr r1, [r5, r2]
	cmp r1, #0
	bge _021E6548
	mov r0, #0
	str r0, [r5, r2]
	b _021E6554
_021E6548:
	add r0, r2, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	blt _021E6554
	sub r0, r0, #1
	str r0, [r5, r2]
_021E6554:
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _021E6576
	sub r1, #0x44
	ldr r0, [r5, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _021E65BA
_021E6576:
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E658A
	sub r1, #0x44
	ldr r0, [r5, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _021E6594
_021E658A:
	sub r1, #0x44
	ldr r0, [r5, r1]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_021E6594:
	mov r0, #0x6d
	lsl r0, r0, #2
	add r1, r0, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r0]
	sub r1, r1, #1
	cmp r2, r1
	bne _021E65B0
	sub r0, #0x3c
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _021E65BA
_021E65B0:
	sub r0, #0x3c
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_021E65BA:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r5]
	ldr r1, [r5, r1]
	bl Save_HOF_TranslateRecordIdx
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, r1, #4
	ldr r0, [r5]
	ldr r1, [r5, r1]
	bl Save_HOF_RecordCountMons
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, #0x1a
	ldrh r0, [r5, r1]
	cmp r0, #0
	bne _021E65F0
	ldr r0, _021E6744 ; =0x0000DCC2
	mov r7, #2
	str r0, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x10]
	b _021E65FA
_021E65F0:
	ldr r0, _021E6748 ; =0x0000DCC8
	mov r7, #8
	str r0, [sp, #0x14]
	mov r0, #0xf
	str r0, [sp, #0x10]
_021E65FA:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _021E6656
	lsl r0, r7, #2
	add r6, r5, r0
_021E660A:
	mov r1, #0x6d
	lsl r1, r1, #2
	mov r3, #0x62
	lsl r3, r3, #2
	ldr r0, [r5]
	ldr r1, [r5, r1]
	add r2, r4, #0
	add r3, r5, r3
	bl Save_HOF_GetMonStatsByIndexPair
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	add r3, r0, r4
	add r0, r5, #0
	add r2, r4, #0
	str r3, [sp]
	bl ov64_021E6C1C
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl ManagedSprite_SetAnim
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r4, #1
	add r7, r7, #1
	add r6, r6, #4
	cmp r4, r0
	blo _021E660A
_021E6656:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r5, #0
	bl ov64_021E677C
	ldr r0, [sp, #0x10]
	add r4, r5, #0
	add r4, #8
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r2, #0x46
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r2, #0x10
	ldr r2, [r5, r2]
	mov r1, #0
	bl ReadMsgDataIntoString
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r5]
	ldr r1, [r5, r1]
	bl Save_HOF_TranslateRecordIdx
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #4
	bl BufferIntegerAsString
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r5]
	ldr r1, [r5, r1]
	add r2, sp, #0x18
	bl Save_HOF_GetClearDate
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x49
	lsl r0, r0, #2
	mov r2, #0x7d
	ldr r3, [sp, #0x18]
	lsl r2, r2, #4
	add r2, r3, r2
	ldr r0, [r5, r0]
	mov r3, #4
	bl BufferIntegerAsString
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x1c]
	mov r1, #2
	bl BufferMonthNameAbbr
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x20]
	mov r1, #3
	mov r3, #2
	bl BufferIntegerAsString
	mov r2, #0x49
	lsl r2, r2, #2
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r1, #8
	add r2, r2, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl StringExpandPlaceholders
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _021E674C ; =0x000F0200
	add r2, #0x2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r6
	bl CopyWindowPixelsToVram_TextMode
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	ldr r1, _021E6750 ; =0x000001C6
	mov r0, #1
	ldrh r2, [r5, r1]
	eor r0, r2
	strh r0, [r5, r1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6744: .word 0x0000DCC2
_021E6748: .word 0x0000DCC8
_021E674C: .word 0x000F0200
_021E6750: .word 0x000001C6
	thumb_func_end ov64_021E652C

