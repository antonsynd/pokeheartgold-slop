#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223319C
	.extern ov74_02231A1C
	.extern ov74_02232B18
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
	thumb_func_start ov74_0223319C
ov74_0223319C: ; 0x0223319C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	ldr r2, [r5, #8]
	mvn r1, r1
	cmp r2, r1
	beq _022331DE
	bl ov74_02232B18
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	mov r1, #0x46
	ldr r0, [r5, #8]
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x10
	sub r1, #0x34
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x18
	bl ov74_02231A1C
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #8]
	ldr r0, _02233220 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	b _0223321C
_022331DE:
	cmp r4, #0
	beq _022331FC
	ldr r0, _02233224 ; =0x00000474
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0223321C
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	mov r0, #1
	pop {r3, r4, r5, pc}
_022331FC:
	ldr r0, _02233228 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	bne _0223320C
	ldr r0, _0223322C ; =gSystem
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0223321C
_0223320C:
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _02233220 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223321C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02233220: .word SEQ_SE_DP_SELECT
_02233224: .word 0x00000474
_02233228: .word gSystem + 0x40
_0223322C: .word gSystem
	thumb_func_end ov74_0223319C

