	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public BugContestSwapMon_Exit
	.public BugContestSwapMon_Init
	.public BugContestSwapMon_Main
	.public ov111_021E59E4
	.public ov111_021E5AA0
	.public ov111_021E5BE4
	.public ov111_021E5C54
	.public ov111_021E5C94
	.public ov111_021E5CB4
	.extern _021E6D40
	.extern ov111_021E5D08
	.extern ov111_021E5E34
	.extern ov111_021E5F04
	.extern ov111_021E6330
	.extern ov111_021E6738
	.extern ov111_021E6770
	.extern ov111_021E6784
	.extern ov111_021E67A4
	.extern ov111_021E6888
	.extern ov111_021E68FC
	.extern ov111_021E6A2C
	.extern ov111_021E6BD8

	.text

	.text
	thumb_func_start BugContestSwapMon_Init
BugContestSwapMon_Init: ; 0x021E5900
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021E5916
	cmp r1, #1
	beq _021E5922
	cmp r1, #2
	beq _021E5944
	b _021E5956
_021E5916:
	bl ov111_021E5E34
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E595A
_021E5922:
	bl OverlayManager_GetData
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E595A
_021E5944:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E595A
	mov r0, #0
	str r0, [r4]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E5956:
	bl GF_AssertFail
_021E595A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end BugContestSwapMon_Init

	thumb_func_start BugContestSwapMon_Exit
BugContestSwapMon_Exit: ; 0x021E5960
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	cmp r1, #0
	beq _021E5978
	cmp r1, #1
	beq _021E5998
	b _021E59AC
_021E5978:
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E59B0
_021E5998:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E59B0
	add r0, r5, #0
	bl ov111_021E5F04
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E59AC:
	bl GF_AssertFail
_021E59B0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end BugContestSwapMon_Exit

	thumb_func_start BugContestSwapMon_Main
BugContestSwapMon_Main: ; 0x021E59B8
	push {r4, lr}
	bl OverlayManager_GetData
	add r4, r0, #0
	bne _021E59C6
	bl GF_AssertFail
_021E59C6:
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021E59E0 ; =_021E6D40
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _021E59DA
	mov r0, #1
	pop {r4, pc}
_021E59DA:
	mov r0, #0
	pop {r4, pc}
	nop
_021E59E0: .word _021E6D40
	thumb_func_end BugContestSwapMon_Main

	thumb_func_start ov111_021E59E4
ov111_021E59E4: ; 0x021E59E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r5, #0
	mvn r5, r5
	bl ov111_021E6A2C
	add r6, r0, #0
	ldr r0, [r4, #0x24]
	bl ov111_021E6888
	cmp r0, #0
	beq _021E5A06
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021E5A06:
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bhi _021E5A7E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5A18: ; jump table
	.short _021E5A20 - _021E5A18 - 2 ; case 0
	.short _021E5A4A - _021E5A18 - 2 ; case 1
	.short _021E5A5A - _021E5A18 - 2 ; case 2
	.short _021E5A78 - _021E5A18 - 2 ; case 3
_021E5A20:
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r5, [r0]
	mov r2, #0x80
	str r5, [sp]
	ldr r0, [r4, #0x20]
	mov r3, #0x48
	bl ov111_021E6738
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl BufferBoxMonSpeciesName
	mov r0, #2
	mov r5, #0
	str r0, [r4, #0x30]
	b _021E5A82
_021E5A4A:
	ldr r0, [r4, #0x24]
	bl ov111_021E6888
	cmp r0, #0
	bne _021E5A82
	mov r0, #2
	str r0, [r4, #0x30]
	b _021E5A82
_021E5A5A:
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E5A6C
	ldr r0, _021E5A98 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021E5A82
_021E5A6C:
	ldr r0, _021E5A9C ; =0x000005DC
	bl PlaySE
	mov r0, #3
	str r0, [r4, #0x30]
	b _021E5A82
_021E5A78:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E5A7E:
	bl GF_AssertFail
_021E5A82:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021E5A92
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl ov111_021E68FC
_021E5A92:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E5A98: .word gSystem
_021E5A9C: .word 0x000005DC
	thumb_func_end ov111_021E59E4

	thumb_func_start ov111_021E5AA0
ov111_021E5AA0: ; 0x021E5AA0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r5, #0
	mvn r5, r5
	bl ov111_021E6A2C
	ldr r0, [r4, #0x24]
	bl ov111_021E6888
	cmp r0, #0
	beq _021E5ABC
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5ABC:
	ldr r0, [r4, #0x30]
	cmp r0, #6
	bhi _021E5BC2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5ACE: ; jump table
	.short _021E5ADC - _021E5ACE - 2 ; case 0
	.short _021E5AEA - _021E5ACE - 2 ; case 1
	.short _021E5AF6 - _021E5ACE - 2 ; case 2
	.short _021E5B70 - _021E5ACE - 2 ; case 3
	.short _021E5B88 - _021E5ACE - 2 ; case 4
	.short _021E5BA0 - _021E5ACE - 2 ; case 5
	.short _021E5BBE - _021E5ACE - 2 ; case 6
_021E5ADC:
	mov r5, #1
	add r0, r4, #0
	bl ov111_021E5BE4
	add r0, r5, #0
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5AEA:
	add r0, r4, #0
	bl ov111_021E5C54
	mov r0, #2
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5AF6:
	ldr r0, [r4, #0x18]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021E5B06
	cmp r0, #2
	beq _021E5B3A
	b _021E5BC6
_021E5B06:
	ldr r0, [r4, #0x18]
	bl YesNoPrompt_Reset
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x20]
	mov r1, #0
	mov r2, #1
	mov r3, #0x48
	bl ov111_021E6770
	mov r1, #1
	ldr r0, [r4, #0x20]
	add r2, r1, #0
	mov r3, #0xf2
	bl ov111_021E6770
	add r0, r4, #0
	mov r1, #1
	bl ov111_021E5D08
	mov r0, #3
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5B3A:
	ldr r0, [r4, #0x18]
	bl YesNoPrompt_Reset
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r2, #1
	add r3, r2, #0
	ldr r0, [r4, #0x20]
	mov r1, #0
	sub r3, #0x33
	bl ov111_021E6770
	mov r1, #1
	ldr r0, [r4, #0x20]
	add r2, r1, #0
	mov r3, #0x48
	bl ov111_021E6770
	add r0, r4, #0
	mov r1, #2
	bl ov111_021E5D08
	mov r0, #4
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5B70:
	ldr r0, [r4, #0x20]
	bl ov111_021E6784
	ldr r0, [r4, #0x20]
	bl ov111_021E67A4
	cmp r0, #0
	beq _021E5BC6
	mov r0, #5
	mov r5, #2
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5B88:
	ldr r0, [r4, #0x20]
	bl ov111_021E6784
	ldr r0, [r4, #0x20]
	bl ov111_021E67A4
	cmp r0, #0
	beq _021E5BC6
	mov r0, #5
	mov r5, #3
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5BA0:
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E5BB2
	ldr r0, _021E5BDC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021E5BC6
_021E5BB2:
	ldr r0, _021E5BE0 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5BBE:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5BC2:
	bl GF_AssertFail
_021E5BC6:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021E5BD6
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl ov111_021E68FC
_021E5BD6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E5BDC: .word gSystem
_021E5BE0: .word 0x000005DC
	thumb_func_end ov111_021E5AA0

	thumb_func_start ov111_021E5BE4
ov111_021E5BE4: ; 0x021E5BE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	bl ov111_021E6A2C
	add r7, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	ldr r6, [r0]
	ldr r4, [r0, #4]
	mov r2, #0x80
	str r6, [sp]
	ldr r0, [r5, #0x20]
	mov r3, #0x20
	bl ov111_021E6738
	str r4, [sp]
	ldr r0, [r5, #0x20]
	mov r1, #1
	mov r2, #0x80
	mov r3, #0x70
	bl ov111_021E6738
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl BufferBoxMonSpeciesName
	add r0, r4, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl BufferBoxMonSpeciesName
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r2, #0x80
	mov r3, #0x48
	bl ov111_021E6330
	mov r1, #1
	str r0, [r5, #0x14]
	bl ManagedSprite_SetPaletteOverride
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021E5BE4

	thumb_func_start ov111_021E5C54
ov111_021E5C54: ; 0x021E5C54
	push {r3, r4, lr}
	sub sp, #0x14
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	ldr r2, [r0, #8]
	add r3, sp, #0
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r2, #0xc8
	str r2, [sp, #8]
	mov r2, #6
	str r2, [sp, #0xc]
	mov r2, #0x19
	strb r2, [r3, #0x10]
	mov r2, #0xa
	strb r2, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf0
	bic r4, r2
	strb r4, [r3, #0x12]
	ldr r0, [r0, #0x18]
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov111_021E5C54

	thumb_func_start ov111_021E5C94
ov111_021E5C94: ; 0x021E5C94
	push {r3, lr}
	cmp r0, #0
	beq _021E5CA0
	cmp r0, #1
	beq _021E5CA4
	b _021E5CA8
_021E5CA0:
	mov r0, #1
	pop {r3, pc}
_021E5CA4:
	mov r0, #0
	pop {r3, pc}
_021E5CA8:
	bl GF_AssertFail
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov111_021E5C94

	thumb_func_start ov111_021E5CB4
ov111_021E5CB4: ; 0x021E5CB4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5CD0 ; =ov111_021E6BD8
	add r3, sp, #0
	mov r2, #5
_021E5CBE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5CBE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5CD0: .word ov111_021E6BD8
	thumb_func_end ov111_021E5CB4

