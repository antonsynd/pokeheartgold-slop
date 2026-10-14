	.include "macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F38C
	.extern ov81_0223F684
	.extern ov81_02240BB0
	.extern ov81_02240E78
	.extern ov81_02240F38
	.extern ov81_0224174C
	.extern ov81_022417B4
	.extern ov81_02241840
	.extern ov81_02241D38
	.extern ov81_02242218
	.extern ov81_022425C4
	.extern ov81_022425D8
	.extern ov81_022425EC
	.extern ov81_02242D88
	.extern ov81_02242E08

	.text

	.text
	thumb_func_start ov81_0223F38C
ov81_0223F38C: ; 0x0223F38C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #9
	bhi _0223F408
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F3A4: ; jump table
	.short _0223F3B8 - _0223F3A4 - 2 ; case 0
	.short _0223F3CC - _0223F3A4 - 2 ; case 1
	.short _0223F592 - _0223F3A4 - 2 ; case 2
	.short _0223F598 - _0223F3A4 - 2 ; case 3
	.short _0223F5EA - _0223F3A4 - 2 ; case 4
	.short _0223F5F6 - _0223F3A4 - 2 ; case 5
	.short _0223F604 - _0223F3A4 - 2 ; case 6
	.short _0223F616 - _0223F3A4 - 2 ; case 7
	.short _0223F63C - _0223F3A4 - 2 ; case 8
	.short _0223F652 - _0223F3A4 - 2 ; case 9
_0223F3B8:
	mov r1, #0
	bl ov81_02240F38
	mov r0, #1
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x13]
	b _0223F666
_0223F3CC:
	ldr r0, _0223F66C ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_NoHold
	add r5, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r5, r0
	bhi _0223F3FE
	bhs _0223F4DC
	cmp r5, #6
	bhi _0223F408
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F3F0: ; jump table
	.short _0223F40A - _0223F3F0 - 2 ; case 0
	.short _0223F40A - _0223F3F0 - 2 ; case 1
	.short _0223F40A - _0223F3F0 - 2 ; case 2
	.short _0223F494 - _0223F3F0 - 2 ; case 3
	.short _0223F44C - _0223F3F0 - 2 ; case 4
	.short _0223F464 - _0223F3F0 - 2 ; case 5
	.short _0223F47C - _0223F3F0 - 2 ; case 6
_0223F3FE:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0223F408
	b _0223F548
_0223F408:
	b _0223F666
_0223F40A:
	ldr r0, _0223F670 ; =0x000005DC
	bl PlaySE
	ldr r2, _0223F674 ; =0x00000468
	add r0, r4, #0
	add r1, r2, #0
	str r5, [r4, r2]
	sub r1, #0xa8
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	mov r3, #4
	bl ov81_02242218
	add r0, r4, #0
	bl ov81_02241D38
	ldr r0, _0223F678 ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #7
	add r3, r1, #0
	bl sub_020196E8
	add r0, r4, #0
	bl ov81_0224174C
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242E08
	b _0223F666
_0223F44C:
	ldr r0, _0223F670 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xc
	mov r3, #7
	bl ov81_022425C4
	mov r0, #2
	strb r0, [r4, #8]
	b _0223F666
_0223F464:
	ldr r0, _0223F670 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0xc
	mov r3, #8
	bl ov81_022425C4
	mov r0, #2
	strb r0, [r4, #8]
	b _0223F666
_0223F47C:
	ldr r0, _0223F670 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xf
	mov r3, #9
	bl ov81_022425C4
	mov r0, #2
	strb r0, [r4, #8]
	b _0223F666
_0223F494:
	ldr r0, _0223F670 ; =0x000005DC
	bl PlaySE
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	add r0, r4, #0
	add r0, #0xd0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _0223F678 ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201980C
	add r0, r4, #0
	bl ov81_02241D38
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0xf
	mov r3, #6
	bl ov81_022425D8
	mov r0, #2
	strb r0, [r4, #8]
	b _0223F666
_0223F4DC:
	ldr r0, _0223F670 ; =0x000005DC
	bl PlaySE
	ldr r0, _0223F66C ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	cmp r2, #3
	bne _0223F51C
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	add r0, r4, #0
	add r0, #0xd0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _0223F678 ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201980C
	b _0223F540
_0223F51C:
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r3, #3
	bl ov81_02242218
	add r0, r4, #0
	add r0, #0xd0
	bl ScheduleWindowCopyToVram
	ldr r0, _0223F678 ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #7
	add r3, r1, #0
	bl sub_020196E8
_0223F540:
	add r0, r4, #0
	bl ov81_02241D38
	b _0223F666
_0223F548:
	ldr r0, _0223F66C ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	cmp r0, #4
	ldr r0, _0223F670 ; =0x000005DC
	blo _0223F56E
	bl PlaySE
	add r0, r4, #0
	bl ov81_022417B4
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	b _0223F666
_0223F56E:
	bl PlaySE
	add r0, r4, #0
	bl ov81_02241840
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242E08
	add r0, r4, #0
	mov r1, #1
	bl ov81_02240F38
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223F592:
	bl ov81_022425EC
	b _0223F666
_0223F598:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223F666
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	beq _0223F5C0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers
	ldr r0, _0223F67C ; =0x00000478
	mov r1, #0xff
	str r1, [r4, r0]
	b _0223F666
_0223F5C0:
	add r0, r4, #0
	bl ov81_02240E78
	add r0, r4, #0
	bl ov81_02240BB0
	mov r1, #7
	lsl r1, r1, #6
	ldr r0, _0223F680 ; =gOverlayTemplate_PokemonSummary
	ldr r1, [r4, r1]
	mov r2, #0x64
	bl OverlayManager_New
	str r0, [r4, #4]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	add sp, #0xc
	orr r0, r1
	strb r0, [r4, #0x13]
	mov r0, #1
	pop {r4, r5, pc}
_0223F5EA:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F666
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223F5F6:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223F666
	mov r0, #1
	strb r0, [r4, #8]
	b _0223F666
_0223F604:
	bl ov81_02241840
	add r0, r4, #0
	mov r1, #1
	bl ov81_02240F38
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223F616:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r1, [r4, #0x13]
	mov r0, #0x40
	orr r0, r1
	strb r0, [r4, #0x13]
	mov r0, #3
	strb r0, [r4, #8]
	b _0223F666
_0223F63C:
	bl ov81_0223F684
	add r0, r4, #0
	bl ov81_022417B4
	add r0, r4, #0
	bl ov81_02241840
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223F652:
	bl ov81_022417B4
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	mov r0, #1
	strb r0, [r4, #8]
_0223F666:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0223F66C: .word 0x00000464
_0223F670: .word 0x000005DC
_0223F674: .word 0x00000468
_0223F678: .word 0x00000474
_0223F67C: .word 0x00000478
_0223F680: .word gOverlayTemplate_PokemonSummary
	thumb_func_end ov81_0223F38C

