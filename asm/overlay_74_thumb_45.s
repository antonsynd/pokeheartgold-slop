#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A240
	.extern ov74_0222A89C
	.extern ov74_0223C260
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
	thumb_func_start ov74_0222A240
ov74_0222A240: ; 0x0222A240
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r4, r1, #0
	bl OverlayManager_GetData
	cmp r4, #0
	bne _0222A254
	mov r5, #4
	b _0222A258
_0222A254:
	mov r5, #0
	mvn r5, r5
_0222A258:
	ldr r1, [r0, #0x48]
	add r4, r0, #0
	add r4, #0x48
	cmp r1, #0
	bne _0222A282
	mov r1, #0xa
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r2, #0
	mov r1, #0x6b
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0]
	add r1, r4, #0
	mov r3, #0x17
	bl AddWindowParameterized
_0222A282:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl DrawFrameAndWindow1
	ldr r1, _0222A2A0 ; =ov74_0223C260
	add r0, r6, #0
	mov r2, #2
	add r3, r4, #0
	str r5, [sp]
	bl ov74_0222A89C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222A2A0: .word ov74_0223C260
	thumb_func_end ov74_0222A240

