	.include "asm/macros.inc"
	.include "overlay_46.inc"
	.include "global.inc"
	.public ov46_0225892C
	.extern ov46_02259374
	.extern ov46_022593F8
	.extern ov46_02259450
	.extern ov46_02259474
	.extern ov46_02259534
	.extern ov46_02259550

	.text

	.text
	thumb_func_start ov46_0225892C
ov46_0225892C: ; 0x0225892C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r1, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	add r0, r6, #0
	bl OverlayManager_GetArgs
	add r6, r0, #0
	ldr r0, [r4]
	cmp r0, #0xf
	bls _0225894A
	b _02258C24
_0225894A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02258956: ; jump table
	.short _02258976 - _02258956 - 2 ; case 0
	.short _02258994 - _02258956 - 2 ; case 1
	.short _022589A4 - _02258956 - 2 ; case 2
	.short _022589D0 - _02258956 - 2 ; case 3
	.short _02258A0A - _02258956 - 2 ; case 4
	.short _02258A32 - _02258956 - 2 ; case 5
	.short _02258A64 - _02258956 - 2 ; case 6
	.short _02258BF6 - _02258956 - 2 ; case 7
	.short _02258C16 - _02258956 - 2 ; case 8
	.short _02258AB2 - _02258956 - 2 ; case 9
	.short _02258B0E - _02258956 - 2 ; case 10
	.short _02258B4C - _02258956 - 2 ; case 11
	.short _02258B74 - _02258956 - 2 ; case 12
	.short _02258BA6 - _02258956 - 2 ; case 13
	.short _02258BB4 - _02258956 - 2 ; case 14
	.short _02258BD8 - _02258956 - 2 ; case 15
_02258976:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	ldr r3, _02258C30 ; =0x0000FFFF
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258994:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _022589F0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_022589A4:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _022589CA
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0x11
	bl ov46_02259374
	mov r1, #0x23
	ldr r0, [r5, #0xc]
	lsl r1, r1, #4
	bl ov46_02259550
	add r5, #0xd0
	str r0, [r5]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_022589CA:
	mov r0, #4
	str r0, [r4]
	b _02258C28
_022589D0:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	bne _022589EC
	add r5, #0xd0
	ldr r0, [r5]
	bl YesNoPrompt_Destroy
	mov r0, #4
	str r0, [r4]
	b _02258C28
_022589EC:
	cmp r0, #2
	beq _022589F2
_022589F0:
	b _02258C28
_022589F2:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl YesNoPrompt_Destroy
	add r5, #0x40
	add r0, r5, #0
	bl ov46_022593F8
	mov r0, #7
	str r0, [r4]
	b _02258C28
_02258A0A:
	ldr r0, [r6, #4]
	bl ov45_0222A5C0
	add r1, r0, #0
	ldr r0, [r5]
	bl sub_0203976C
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0x17
	bl ov46_02259374
	add r5, #0x70
	add r0, r5, #0
	bl ov46_02259450
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258A32:
	bl sub_020393C8
	cmp r0, #0
	bne _02258A42
	bl sub_020397FC
	cmp r0, #0
	beq _02258A4E
_02258A42:
	add r5, #0x70
	add r0, r5, #0
	bl ov46_02259474
	mov r0, #9
	str r0, [r4]
_02258A4E:
	bl sub_020397E4
	cmp r0, #1
	bne _02258B20
	ldr r0, [r6, #4]
	bl ov45_0222B244
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258A64:
	bl sub_020393C8
	cmp r0, #0
	bne _02258A74
	bl sub_020397FC
	cmp r0, #0
	beq _02258A80
_02258A74:
	add r0, r5, #0
	add r0, #0x70
	bl ov46_02259474
	mov r0, #9
	str r0, [r4]
_02258A80:
	bl sub_02039274
	cmp r0, #0
	beq _02258B20
	add r0, r5, #0
	add r0, #0x70
	bl ov46_02259474
	ldr r0, [r5]
	bl Save_GameStats_Get
	mov r1, #0x21 ; SCORE_EVENT_WIFI_PLAZA_ACCESSED
	bl GameStats_AddScore
	bl GF_RTC_DateTimeToSec
	ldr r2, [r6, #0xc]
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, #1
	str r0, [r6, #0x10]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258AB2:
	bl sub_020393C8
	cmp r0, #0
	beq _02258ACE
	bl sub_020392D8
	add r7, r0, #0
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl ov45_0222D7CC
	str r0, [sp, #0xc]
	ldr r7, [r7]
	b _02258ADC
_02258ACE:
	bl ov45_0222E7CC
	bl ov45_0222E7FC
	add r7, r0, #0
	mov r0, #0x20
	str r0, [sp, #0xc]
_02258ADC:
	ldr r0, [r6, #4]
	bl ov45_0222B270
	add r0, r5, #0
	add r0, #0x40
	bl ov46_022593F8
	add r0, r5, #0
	add r0, #0x70
	bl ov46_022593F8
	add r0, r5, #0
	add r0, #0xa0
	add r1, r7, #0
	bl ov46_02259534
	add r5, #0xa0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov46_02259374
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258B0E:
	ldr r0, _02258C34 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02258B22
	bl System_GetTouchNew
	cmp r0, #1
	beq _02258B22
_02258B20:
	b _02258C28
_02258B22:
	bl sub_020393C8
	cmp r0, #0
	beq _02258B46
	bl sub_020392D8
	add r1, r0, #0
	ldmia r1!, {r0, r1}
	bl ov45_0222D7FC
	cmp r0, #0
	bne _02258B40
	mov r0, #0xb
	str r0, [r4]
	b _02258C28
_02258B40:
	mov r0, #0xe
	str r0, [r4]
	b _02258C28
_02258B46:
	mov r0, #0xb
	str r0, [r4]
	b _02258C28
_02258B4C:
	add r0, r5, #0
	add r0, #0xa0
	bl ov46_022593F8
	add r0, r5, #0
	add r0, #0x40
	mov r1, #0x58
	bl ov46_02259374
	mov r1, #0x23
	ldr r0, [r5, #0xc]
	lsl r1, r1, #4
	bl ov46_02259550
	add r5, #0xd0
	str r0, [r5]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258B74:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	bne _02258B94
	add r5, #0xd0
	ldr r0, [r5]
	bl YesNoPrompt_Destroy
	bl sub_020397C8
	mov r0, #0xd
	str r0, [r4]
	b _02258C28
_02258B94:
	cmp r0, #2
	bne _02258C28
	add r5, #0xd0
	ldr r0, [r5]
	bl YesNoPrompt_Destroy
	mov r0, #0xe
	str r0, [r4]
	b _02258C28
_02258BA6:
	bl sub_02037D78
	cmp r0, #0
	bne _02258C28
	mov r0, #4
	str r0, [r4]
	b _02258C28
_02258BB4:
	add r0, r5, #0
	add r0, #0x40
	bl ov46_022593F8
	add r0, r5, #0
	add r0, #0x70
	bl ov46_022593F8
	add r5, #0xa0
	add r0, r5, #0
	bl ov46_022593F8
	bl sub_020397C8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258BD8:
	bl sub_02037D78
	cmp r0, #0
	bne _02258C28
	add r0, r5, #0
	add r0, #0x40
	bl ov46_022593F8
	add r5, #0x70
	add r0, r5, #0
	bl ov46_022593F8
	mov r0, #7
	str r0, [r4]
	b _02258C28
_02258BF6:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258C28
_02258C16:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02258C28
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02258C24:
	bl GF_AssertFail
_02258C28:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258C30: .word 0x0000FFFF
_02258C34: .word gSystem
	thumb_func_end ov46_0225892C

