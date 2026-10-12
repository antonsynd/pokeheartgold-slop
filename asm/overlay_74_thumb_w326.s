#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public IdentifyPmAgbCartridge
	.public ov74_02233A88
	.extern sAgbCartNintendoLogo
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
	thumb_func_start IdentifyPmAgbCartridge
IdentifyPmAgbCartridge: ; 0x022339D4
	push {r3, r4, r5, lr}
	sub sp, #0xc0
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02233A80 ; =sPmAgbCartridgeSpec
	mov r1, #0
	str r1, [r0]
	bl CTRDG_IsAgbCartridge
	cmp r0, #0
	bne _022339F0
	add sp, #0xc0
	mov r0, #1
	pop {r3, r4, r5, pc}
_022339F0:
	bl CTRDG_GetAgbGameCode
	mov r2, #0
	cmp r4, #0
	ble _02233A14
	add r3, r5, #0
_022339FC:
	ldr r1, [r3]
	cmp r0, r1
	bne _02233A0C
	lsl r0, r2, #3
	add r1, r5, r0
	ldr r0, _02233A80 ; =sPmAgbCartridgeSpec
	str r1, [r0]
	b _02233A14
_02233A0C:
	add r2, r2, #1
	add r3, #8
	cmp r2, r4
	blt _022339FC
_02233A14:
	ldr r0, _02233A80 ; =sPmAgbCartridgeSpec
	ldr r0, [r0]
	cmp r0, #0
	bne _02233A22
	add sp, #0xc0
	mov r0, #2
	pop {r3, r4, r5, pc}
_02233A22:
	mov r0, #1
	bl CTRDG_Enable
	add r4, sp, #0
	mov r0, #2
	lsl r0, r0, #0x1a
	add r1, r4, #0
	mov r2, #0xc0
	bl CTRDG_CpuCopy32
	ldr r3, _02233A84 ; =sAgbCartNintendoLogo
	mov r2, #0
_02233A3A:
	add r0, r4, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #4]
	cmp r1, r0
	beq _02233A4A
	add sp, #0xc0
	mov r0, #4
	pop {r3, r4, r5, pc}
_02233A4A:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x9c
	blo _02233A3A
	mov r2, #0
	mov r1, #0xa0
_02233A56:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r1, #0xbc
	ble _02233A56
	add r2, #0x19
	neg r0, r2
	lsl r0, r0, #0x18
	add r4, #0xbd
	lsr r1, r0, #0x18
	ldrb r0, [r4]
	cmp r0, r1
	beq _02233A7A
	add sp, #0xc0
	mov r0, #4
	pop {r3, r4, r5, pc}
_02233A7A:
	mov r0, #0
	add sp, #0xc0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02233A80: .word sPmAgbCartridgeSpec
_02233A84: .word sAgbCartNintendoLogo
	thumb_func_end IdentifyPmAgbCartridge

	thumb_func_start ov74_02233A88
ov74_02233A88: ; 0x02233A88
	push {r3, r4}
	mov r2, #0
	lsr r4, r1, #2
	add r3, r2, #0
	cmp r4, #0
	ble _02233AA4
_02233A94:
	ldr r1, [r0]
	add r0, r0, #4
	add r2, r2, r1
	add r1, r3, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r3, r4
	blt _02233A94
_02233AA4:
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	thumb_func_end ov74_02233A88

