#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229B68
	.extern ov74_02229CB8
	.extern ov74_02229E14
	.extern ov74_0223D0A4
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
	thumb_func_start ov74_02229B68
ov74_02229B68: ; 0x02229B68
	push {r4, lr}
	ldr r1, _02229BB8 ; =ov74_0223D0A4
	add r4, r0, #0
	ldr r1, [r1]
	cmp r1, #0
	bne _02229BB4
	bl ov74_02229E14
	mov r1, #0xf5
	mov r0, #0xf
	lsl r1, r1, #2
	bl Heap_Alloc
	ldr r1, _02229BB8 ; =ov74_0223D0A4
	mov r2, #0xf5
	str r0, [r1]
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	ldr r0, _02229BB8 ; =ov74_0223D0A4
	mov r1, #0x32
	ldr r0, [r0]
	mov r2, #0xa
	strh r1, [r0, #0x24]
	ldr r0, _02229BBC ; =ov74_02229CB8
	mov r1, #0
	bl SysTask_CreateOnMainQueue
	ldr r1, _02229BB8 ; =ov74_0223D0A4
	ldr r2, [r1]
	str r0, [r2, #0x1c]
	ldr r0, [r1]
	str r4, [r0]
	ldr r0, [r1]
	add r0, r0, #4
	bl sub_0203778C
_02229BB4:
	pop {r4, pc}
	nop
_02229BB8: .word ov74_0223D0A4
_02229BBC: .word ov74_02229CB8
	thumb_func_end ov74_02229B68

