#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A650
	.public ov74_0222A688
	.extern ov74_0222CE10
	.extern ov74_0223539C
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
	thumb_func_start ov74_0222A650
ov74_0222A650: ; 0x0222A650
	push {r4, lr}
	bl OverlayManager_GetData
	ldr r1, _0222A680 ; =0x000005C8
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0x1e
	bne _0222A66A
	mov r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	bl ov74_0222CE10
_0222A66A:
	ldr r2, _0222A684 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x36
	mov r3, #2
	bl ov74_0223539C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0222A680: .word 0x000005C8
_0222A684: .word 0x000015D8
	thumb_func_end ov74_0222A650

	thumb_func_start ov74_0222A688
ov74_0222A688: ; 0x0222A688
	push {r4, lr}
	bl OverlayManager_GetData
	ldr r1, _0222A6B8 ; =0x000005C8
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0x1e
	bne _0222A6A2
	mov r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	bl ov74_0222CE10
_0222A6A2:
	ldr r2, _0222A6BC ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x37
	mov r3, #2
	bl ov74_0223539C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0222A6B8: .word 0x000005C8
_0222A6BC: .word 0x000015D8
	thumb_func_end ov74_0222A688

