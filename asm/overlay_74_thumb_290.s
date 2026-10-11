#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022323D0
	.public ov74_02232424
	.extern AGB_GetBoxMonData
	.extern ov74_0223C998
	.extern ov74_0223C9A8
	.extern ov74_0223C9D8
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
	thumb_func_start ov74_022323D0
ov74_022323D0: ; 0x022323D0
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _0223241C ; =0x0000E880
	mov r5, #0
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r4, r2, r0
	mov r0, #0x50
	add r6, r1, #0
	mul r6, r0
	add r7, r5, #0
_022323EE:
	add r1, r5, #0
	add r0, r4, r6
	add r1, #0xd
	add r2, r7, #0
	bl AGB_GetBoxMonData
	ldr r3, _02232420 ; =ov74_0223C998
	add r2, r0, #0
	mov r1, #0
_02232400:
	ldr r0, [r3]
	cmp r2, r0
	bne _0223240A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223240A:
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, #8
	blo _02232400
	add r5, r5, #1
	cmp r5, #4
	blt _022323EE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223241C: .word 0x0000E880
_02232420: .word ov74_0223C998
	thumb_func_end ov74_022323D0

	thumb_func_start ov74_02232424
ov74_02232424: ; 0x02232424
	push {r3, lr}
	ldr r3, _02232468 ; =0x0000E880
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r2, r2, r0
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	mov r1, #0xc
	mov r2, #0
	bl AGB_GetBoxMonData
	ldr r1, _0223246C ; =ov74_0223C9A8
	ldrh r1, [r1, #0x30]
	cmp r1, #0
	beq _02232462
	ldr r2, _02232470 ; =ov74_0223C9D8
_02232450:
	ldrh r1, [r2]
	cmp r0, r1
	bne _0223245A
	mov r0, #1
	pop {r3, pc}
_0223245A:
	add r2, r2, #2
	ldrh r1, [r2]
	cmp r1, #0
	bne _02232450
_02232462:
	mov r0, #0
	pop {r3, pc}
	nop
_02232468: .word 0x0000E880
_0223246C: .word ov74_0223C9A8
_02232470: .word ov74_0223C9D8
	thumb_func_end ov74_02232424

