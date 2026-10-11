#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022358C8
	.extern ov74_0223D454
	.extern ov74_0223D654
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
	thumb_func_start ov74_022358C8
ov74_022358C8: ; 0x022358C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02235928 ; =ov74_0223D654
	ldr r4, _0223592C ; =ov74_0223D454
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0223591C
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02235918
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl Sprite_GetDrawFlag
	cmp r0, #0
	bne _022358FC
	cmp r5, #0
	bne _022358FC
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
_022358FC:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_GetMatrixPtr
	mov r1, #6
	ldr r2, [r0, #4]
	lsl r1, r1, #0x12
	cmp r2, r1
	bge _0223591C
	lsr r1, r1, #7
	add r1, r2, r1
	str r1, [r0, #4]
	b _0223591C
_02235918:
	sub r1, r1, #1
	str r1, [r4, r0]
_0223591C:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02235926
	bl SpriteList_RenderAndAnimateSprites
_02235926:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02235928: .word ov74_0223D654
_0223592C: .word ov74_0223D454
	thumb_func_end ov74_022358C8

