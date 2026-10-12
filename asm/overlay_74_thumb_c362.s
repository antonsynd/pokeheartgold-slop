#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02233CE4
	.public ov74_02233DBC
	.extern ov74_02233A88
	.extern ov74_02233AB8
	.extern ov74_02233ACC
	.extern ov74_02233B04
	.extern ov74_02233C08
	.extern ov74_02233E50
	.extern ov74_0223D33C
	.extern ov74_0223D34C
	.extern sPmAgbCartridgeSpec
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

	thumb_func_start ov74_02233DBC
ov74_02233DBC: ; 0x02233DBC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02233E38 ; =ov74_0223D33C
	mov r2, #1
	ldr r5, [r0, #8]
	str r2, [r0, #0x14]
	mov r0, #0
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl MIi_CpuClear32
	add r0, r6, #0
	bl ov74_02233ACC
	add r4, r0, #0
	add r0, r6, #0
	bl ov74_02233B04
	add r1, r5, #0
	add r2, r4, #0
	bl MIi_CpuCopy32
	ldr r0, _02233E38 ; =ov74_0223D33C
	ldr r1, [r0, #0x10]
	ldr r0, _02233E3C ; =0x00000FFC
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #8
	strh r6, [r5, r1]
	ldr r1, _02233E40 ; =0x08012025
	sub r0, r0, #4
	str r1, [r5, r0]
	add r0, r6, #0
	bl ov74_02233ACC
	add r1, r0, #0
	add r0, r5, #0
	bl ov74_02233A88
	ldr r1, _02233E44 ; =0x00000FF6
	strh r0, [r5, r1]
	ldr r0, _02233E38 ; =ov74_0223D33C
	mov r1, #0xe
	ldr r0, [r0, #0xc]
	add r0, r6, r0
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _02233E48 ; =sPmAgbCartridgeSpec
	ldr r3, _02233E4C ; =ov74_02233E50
	ldr r2, [r0, #4]
	mov r0, #0xe
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	mov r2, #4
	bl CTRDG_WriteAndVerifyAgbFlashAsync
	pop {r4, r5, r6, pc}
	nop
_02233E38: .word ov74_0223D33C
_02233E3C: .word 0x00000FFC
_02233E40: .word 0x08012025
_02233E44: .word 0x00000FF6
_02233E48: .word sPmAgbCartridgeSpec
_02233E4C: .word ov74_02233E50
	thumb_func_end ov74_02233DBC

