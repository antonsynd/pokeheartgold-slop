#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222CEE0
	.extern ov74_0222CE6C
	.extern ov74_0222CEC0
	.extern ov74_022365FC
	.extern ov74_02236680
	.extern ov74_022368D4
	.extern ov74_02236980
	.extern ov74_0223D0A8
	.public gApplication_TitleScreen
	.public sub_020342C0

	.public MainMenuApp_Init
	.public MainMenuApp_Main
	.public MainMenuApp_Exit
	.public ov74_0223B2C0
	.public ov74_0223B2CC
	.public ov74_0223B2D8
	.public ov74_0223B2E8
	.public gApp_MainMenu_SelectOption_ConnectToRanger
	.public gApp_MainMenu_SelectOption_MigrateFromAgb
	.public gApp_MainMenu_SelectOption_MysteryGift

	.text

	.text
	thumb_func_start ov74_0222CEE0
ov74_0222CEE0: ; 0x0222CEE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	ldr r0, [r0, #0x10]
	cmp r0, #0x2c
	bne _0222CF06
	bl ov74_0222CEC0
	bl ov74_022368D4
	cmp r0, #0
	beq _0222CF00
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	mov r1, #0x2d
	str r1, [r0, #0x10]
	b _0222CF06
_0222CF00:
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	mov r1, #0x2e
	str r1, [r0, #0x10]
_0222CF06:
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	ldr r0, [r0, #0x10]
	cmp r0, #0x25
	beq _0222CF22
	cmp r0, #0x26
	beq _0222CF22
	cmp r0, #0x27
	beq _0222CF22
	cmp r0, #0x28
	beq _0222CF22
	cmp r0, #0x29
	beq _0222CF22
	cmp r0, #0x2b
	bne _0222CF2E
_0222CF22:
	bl WM_GetLinkLevel
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203A930
_0222CF2E:
	ldr r1, _0222CFEC ; =ov74_0223D0A8
	ldr r0, [r1, #0x10]
	sub r0, #0x25
	cmp r0, #0xb
	bhi _0222CFA8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CF44: ; jump table
	.short _0222CF5C - _0222CF44 - 2 ; case 0
	.short _0222CF68 - _0222CF44 - 2 ; case 1
	.short _0222CFA8 - _0222CF44 - 2 ; case 2
	.short _0222CFA8 - _0222CF44 - 2 ; case 3
	.short _0222CF9E - _0222CF44 - 2 ; case 4
	.short _0222CFA8 - _0222CF44 - 2 ; case 5
	.short _0222CFA8 - _0222CF44 - 2 ; case 6
	.short _0222CFA8 - _0222CF44 - 2 ; case 7
	.short _0222CFA8 - _0222CF44 - 2 ; case 8
	.short _0222CFA8 - _0222CF44 - 2 ; case 9
	.short _0222CFA6 - _0222CF44 - 2 ; case 10
	.short _0222CFA8 - _0222CF44 - 2 ; case 11
_0222CF5C:
	bl sub_02034D8C
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	mov r1, #0x26
	str r1, [r0, #0x10]
	b _0222CFA8
_0222CF68:
	bl sub_02034DB8
	cmp r0, #1
	bne _0222CFA8
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	mov r1, #0
	str r1, [r0, #0xc]
	bl ov74_02236980
	add r1, r0, #0
	mov r0, #0x54
	bl Heap_Alloc
	add r2, r0, #0
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	ldr r1, _0222CFF0 ; =ov74_0222CE6C
	str r2, [r0, #4]
	ldr r0, _0222CFF4 ; =0x000005D4
	add r0, r4, r0
	bl ov74_02236680
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	mov r1, #0x27
	str r1, [r0, #0x10]
	bl sub_0203A880
	b _0222CFA8
_0222CF9E:
	ldr r0, [r1, #0xc]
	add r0, r0, #1
	str r0, [r1, #0xc]
	b _0222CFA8
_0222CFA6:
	pop {r4, pc}
_0222CFA8:
	ldr r0, _0222CFF8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0222CFE8
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	ldr r0, [r0, #0x10]
	sub r0, #0x28
	cmp r0, #8
	bhi _0222CFE8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CFC8: ; jump table
	.short _0222CFDA - _0222CFC8 - 2 ; case 0
	.short _0222CFDA - _0222CFC8 - 2 ; case 1
	.short _0222CFE8 - _0222CFC8 - 2 ; case 2
	.short _0222CFE8 - _0222CFC8 - 2 ; case 3
	.short _0222CFE8 - _0222CFC8 - 2 ; case 4
	.short _0222CFE8 - _0222CFC8 - 2 ; case 5
	.short _0222CFE8 - _0222CFC8 - 2 ; case 6
	.short _0222CFE8 - _0222CFC8 - 2 ; case 7
	.short _0222CFDA - _0222CFC8 - 2 ; case 8
_0222CFDA:
	bl ov74_022365FC
	cmp r0, #0
	beq _0222CFE8
	ldr r0, _0222CFEC ; =ov74_0223D0A8
	mov r1, #0x2b
	str r1, [r0, #0x10]
_0222CFE8:
	pop {r4, pc}
	nop
_0222CFEC: .word ov74_0223D0A8
_0222CFF0: .word ov74_0222CE6C
_0222CFF4: .word 0x000005D4
_0222CFF8: .word gSystem
	thumb_func_end ov74_0222CEE0

