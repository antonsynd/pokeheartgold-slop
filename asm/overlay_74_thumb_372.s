#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022361D4
	.extern ov74_02236168
	.extern ov74_02236258
	.extern ov74_0223E2FC
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
	thumb_func_start ov74_022361D4
ov74_022361D4: ; 0x022361D4
	push {r4, lr}
	ldr r0, _02236240 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _02236244 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #4
	bne _022361E6
	bl OS_Terminate
_022361E6:
	mov r0, #2
	bl ov74_02236168
	ldr r3, _02236240 ; =ov74_0223E2FC
	ldr r0, _02236248 ; =0x0000FFFF
	ldr r2, [r3]
	ldr r1, _0223624C ; =0x00000FCC
	strh r0, [r2, r1]
	sub r2, r1, #2
	ldr r4, [r3]
	sub r1, r1, #4
	strh r0, [r4, r2]
	ldr r2, [r3]
	strh r0, [r2, r1]
	bl ov74_02236258
	cmp r0, #0
	bne _02236224
	mov r0, #9
	bl ov74_02236168
	ldr r0, _02236240 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _02236250 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02236220
	mov r0, #4
	blx r1
_02236220:
	mov r0, #0
	pop {r4, pc}
_02236224:
	ldr r1, _02236240 ; =ov74_0223E2FC
	ldr r0, _02236254 ; =0x00001158
	ldr r2, [r1]
	mov r3, #2
	strh r3, [r2, r0]
	ldr r1, [r1]
	add r0, #0x24
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0223623C
	mov r0, #0
	blx r1
_0223623C:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_02236240: .word ov74_0223E2FC
_02236244: .word 0x00001150
_02236248: .word 0x0000FFFF
_0223624C: .word 0x00000FCC
_02236250: .word 0x0000117C
_02236254: .word 0x00001158
	thumb_func_end ov74_022361D4

