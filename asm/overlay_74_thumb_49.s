#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A3CC
	.extern ov74_02229F60
	.extern ov74_0222A89C
	.extern ov74_0223C230
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
	thumb_func_start ov74_0222A3CC
ov74_0222A3CC: ; 0x0222A3CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, _0222A434 ; =0x000015D4
	mov r1, #3
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl ov74_02229F60
	add r5, r4, #0
	ldr r0, [r4, #0x48]
	add r5, #0x48
	cmp r0, #0
	bne _0222A412
	mov r0, #0xa
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x6b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, r5, #0
	mov r3, #0x17
	bl AddWindowParameterized
_0222A412:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl DrawFrameAndWindow1
	mov r0, #0x4f
	str r0, [sp]
	ldr r1, _0222A438 ; =ov74_0223C230
	add r0, r6, #0
	mov r2, #2
	add r3, r5, #0
	bl ov74_0222A89C
	mov r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222A434: .word 0x000015D4
_0222A438: .word ov74_0223C230
	thumb_func_end ov74_0222A3CC

