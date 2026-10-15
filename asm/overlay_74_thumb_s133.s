#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222D690
	.extern ov74_0222D11C
	.extern ov74_0223C2D0
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
	thumb_func_start ov74_0222D690
ov74_0222D690: ; 0x0222D690
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0
	add r7, r1, #0
	add r1, r0, #1
	ldr r0, _0222D764 ; =ov74_0223C2D0
	ldr r2, _0222D764 ; =ov74_0223C2D0
	ldr r0, [r0, #0x30]
	ldr r2, [r2, #0x34]
	str r0, [sp, #0x14]
	mov r0, #0xaf
	lsl r0, r0, #6
	str r2, [sp, #0x18]
	ldr r2, [r5, r0]
	sub r0, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	ldrb r0, [r2, r0]
	add r4, r1, #0
	add r6, sp, #0x14
	cmp r0, #0
	beq _0222D6D6
	ldr r0, _0222D764 ; =ov74_0223C2D0
	ldr r2, _0222D764 ; =ov74_0223C2D0
	ldr r0, [r0, #0x38]
	add r4, r1, #1
	lsl r1, r1, #3
	ldr r2, [r2, #0x3c]
	add r3, r6, r1
	str r0, [r6, r1]
	str r2, [r3, #4]
_0222D6D6:
	ldr r0, _0222D764 ; =ov74_0223C2D0
	ldr r2, _0222D764 ; =ov74_0223C2D0
	ldr r0, [r0, #0x40]
	lsl r1, r4, #3
	add r6, sp, #0x14
	str r0, [r6, r1]
	ldr r2, [r2, #0x44]
	add r3, r6, r1
	add r0, r4, #1
	lsl r1, r0, #3
	str r2, [r3, #4]
	ldr r0, _0222D764 ; =ov74_0223C2D0
	ldr r2, _0222D764 ; =ov74_0223C2D0
	ldr r0, [r0, #0x48]
	ldr r2, [r2, #0x4c]
	str r0, [r6, r1]
	add r3, r6, r1
	ldr r0, _0222D768 ; =0x00002B9C
	str r2, [r3, #4]
	ldr r6, [r5, r0]
	add r0, r7, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r7, #0
	bl RemoveWindow
	add r1, r4, #2
	mov r0, #4
	sub r0, r0, r1
	ldr r1, [r6, #8]
	lsl r0, r0, #1
	add r1, r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [r6, #0xc]
	mov r2, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r6, #0x10]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, _0222D76C ; =0x00002B98
	add r1, r7, #0
	ldr r0, [r5, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0222D770 ; =0x000029FC
	ldr r3, [r6, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, r4, #2
	add r3, r7, #0
	bl ov74_0222D11C
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222D764: .word ov74_0223C2D0
_0222D768: .word 0x00002B9C
_0222D76C: .word 0x00002B98
_0222D770: .word 0x000029FC
	thumb_func_end ov74_0222D690

