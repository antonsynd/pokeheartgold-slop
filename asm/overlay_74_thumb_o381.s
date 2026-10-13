#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02233CE4
	.extern ov74_02233A88
	.extern ov74_02233AB8
	.extern ov74_02233ACC
	.extern ov74_02233B04
	.extern ov74_02233C08
	.extern ov74_0223D33C
	.extern ov74_0223D34C
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
	thumb_func_start ov74_02233CE4
ov74_02233CE4: ; 0x02233CE4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02233D98 ; =ov74_0223D33C
	ldr r1, _02233D9C ; =ov74_0223D33C
	ldr r0, [r0, #8]
	ldr r2, _02233DA0 ; =ov74_0223D34C
	bl ov74_02233C08
	cmp r0, #1
	beq _02233D0E
	cmp r0, #0
	beq _02233D06
	cmp r0, #2
	beq _02233D0A
	cmp r0, #0xff
	bne _02233D0E
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_02233D06:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_02233D0A:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02233D0E:
	ldr r7, _02233D98 ; =ov74_0223D33C
	ldr r0, [r7]
	cmp r0, #1
	bhi _02233D92
	mov r6, #0
	ldr r5, [r7, #8]
	add r4, r6, #0
_02233D1C:
	ldr r1, [r7]
	mov r0, #0xe
	mul r0, r1
	add r0, r4, r0
	add r1, r5, #0
	bl ov74_02233AB8
	ldr r0, _02233DA4 ; =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _02233DA8 ; =0x08012025
	cmp r1, r0
	bne _02233D7E
	ldr r0, _02233DAC ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov74_02233ACC
	add r1, r0, #0
	add r0, r5, #0
	bl ov74_02233A88
	ldr r1, _02233DB0 ; =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02233D7E
	ldr r0, _02233DB4 ; =0x00000FFC
	mov r1, #1
	ldr r0, [r5, r0]
	str r0, [r7, #0x10]
	ldr r0, _02233DAC ; =0x00000FF4
	ldrh r0, [r5, r0]
	lsl r1, r0
	orr r6, r1
	bl ov74_02233ACC
	str r0, [sp]
	ldr r0, _02233DAC ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov74_02233B04
	add r1, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	bl MIi_CpuCopy32
	ldr r0, _02233DAC ; =0x00000FF4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02233D7E
	str r4, [r7, #0xc]
_02233D7E:
	add r4, r4, #1
	cmp r4, #0xe
	blt _02233D1C
	ldr r0, _02233DB8 ; =0x00003FFF
	cmp r6, r0
	bne _02233D8E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233D8E:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02233D92:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233D98: .word ov74_0223D33C
_02233D9C: .word ov74_0223D33C
_02233DA0: .word ov74_0223D34C
_02233DA4: .word 0x00000FF8
_02233DA8: .word 0x08012025
_02233DAC: .word 0x00000FF4
_02233DB0: .word 0x00000FF6
_02233DB4: .word 0x00000FFC
_02233DB8: .word 0x00003FFF
	thumb_func_end ov74_02233CE4

