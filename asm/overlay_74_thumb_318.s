#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public IdentifyPmAgbCartridge
	.public ov74_02233A88
	.public ov74_02233AB8
	.public ov74_02233ACC
	.public ov74_02233B04
	.public ov74_02233B58
	.public ov74_02233C08
	.public ov74_02233CE4
	.public ov74_02233DBC
	.public ov74_02233E50
	.public ov74_02233E8C
	.public ov74_02233ED4
	.public ov74_02233F14
	.extern ov74_0223D33C
	.extern ov74_0223D34C
	.extern sAgbCartNintendoLogo
	.extern sPmAgbCartridgeSpec
	.extern sPmAgbRomHeader
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

	thumb_func_start ov74_02233AB8
ov74_02233AB8: ; 0x02233AB8
	push {r3, lr}
	lsl r0, r0, #0x10
	mov r3, #1
	add r2, r1, #0
	lsr r0, r0, #0x10
	mov r1, #0
	lsl r3, r3, #0xc
	bl CTRDG_ReadAgbFlash
	pop {r3, pc}
	thumb_func_end ov74_02233AB8

	thumb_func_start ov74_02233ACC
ov74_02233ACC: ; 0x02233ACC
	cmp r0, #0
	bne _02233ADA
	ldr r0, _02233B00 ; =sPmAgbRomHeader + 0x68
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02233ADA:
	cmp r0, #4
	bne _02233AEE
	ldr r0, _02233B00 ; =sPmAgbRomHeader + 0x68
	ldr r1, [r0, #0x24]
	mov r0, #0xba
	lsl r0, r0, #6
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02233AEE:
	cmp r0, #0xd
	bne _02233AF8
	mov r0, #0x7d
	lsl r0, r0, #4
	bx lr
_02233AF8:
	mov r0, #0x3e
	lsl r0, r0, #6
	bx lr
	nop
_02233B00: .word sPmAgbRomHeader + 0x68
	thumb_func_end ov74_02233ACC

	thumb_func_start ov74_02233B04
ov74_02233B04: ; 0x02233B04
	cmp r0, #0
	bne _02233B14
	ldr r0, _02233B54 ; =ov74_0223D33C
	ldr r1, [r0, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	bx lr
_02233B14:
	cmp r0, #1
	blt _02233B32
	cmp r0, #4
	bgt _02233B32
	ldr r1, _02233B54 ; =ov74_0223D33C
	ldr r2, [r1, #8]
	mov r1, #2
	lsl r1, r1, #0xc
	add r2, r2, r1
	sub r1, r0, #1
	mov r0, #0x3e
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
_02233B32:
	cmp r0, #5
	blt _02233B50
	cmp r0, #0xe
	bge _02233B50
	ldr r1, _02233B54 ; =ov74_0223D33C
	ldr r2, [r1, #8]
	mov r1, #6
	lsl r1, r1, #0xc
	add r2, r2, r1
	sub r1, r0, #5
	mov r0, #0x3e
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
_02233B50:
	mov r0, #0
	bx lr
	.balign 4, 0
_02233B54: .word ov74_0223D33C
	thumb_func_end ov74_02233B04

	thumb_func_start ov74_02233B58
ov74_02233B58: ; 0x02233B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r1, #0
	str r6, [sp, #4]
	add r1, r2, #0
	str r6, [r1]
	ldr r1, _02233BEC ; =ov74_0223D33C
	add r7, r0, #0
	str r6, [r1, #4]
	mov r1, #0xe
	str r2, [sp]
	add r4, r6, #0
	mul r7, r1
_02233B74:
	add r0, r4, #0
	mov r1, #0xe
	bl _s32_div_f
	add r0, r1, r7
	add r1, r5, #0
	bl ov74_02233AB8
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl DC_FlushRange
	ldr r0, _02233BF0 ; =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _02233BF4 ; =0x08012025
	cmp r1, r0
	bne _02233BC6
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02233BF8 ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov74_02233ACC
	add r1, r0, #0
	add r0, r5, #0
	bl ov74_02233A88
	ldr r1, _02233BFC ; =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02233BC6
	ldr r0, _02233C00 ; =0x00000FFC
	ldr r1, [r5, r0]
	ldr r0, [sp]
	str r1, [r0]
	ldr r0, _02233BF8 ; =0x00000FF4
	ldrh r1, [r5, r0]
	mov r0, #1
	lsl r0, r1
	orr r6, r0
_02233BC6:
	add r4, r4, #1
	cmp r4, #0xe
	blt _02233B74
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02233BE4
	ldr r0, _02233C04 ; =0x00003FFF
	cmp r6, r0
	bne _02233BDE
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233BDE:
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02233BE4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233BEC: .word ov74_0223D33C
_02233BF0: .word 0x00000FF8
_02233BF4: .word 0x08012025
_02233BF8: .word 0x00000FF4
_02233BFC: .word 0x00000FF6
_02233C00: .word 0x00000FFC
_02233C04: .word 0x00003FFF
	thumb_func_end ov74_02233B58

	thumb_func_start ov74_02233C08
ov74_02233C08: ; 0x02233C08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	mov r0, #0
	add r1, r7, #0
	add r2, sp, #4
	bl ov74_02233B58
	add r6, r0, #0
	mov r0, #1
	add r1, r7, #0
	add r2, sp, #0
	bl ov74_02233B58
	cmp r6, #1
	bne _02233C80
	cmp r0, #1
	bne _02233C80
	mov r1, #0
	ldr r0, [sp, #4]
	mvn r1, r1
	cmp r0, r1
	bne _02233C40
	ldr r3, [sp]
	cmp r3, #0
	beq _02233C4E
_02233C40:
	cmp r0, #0
	bne _02233C66
	mov r1, #0
	ldr r3, [sp]
	mvn r1, r1
	cmp r3, r1
	bne _02233C66
_02233C4E:
	add r2, r0, #1
	add r1, r3, #1
	cmp r2, r1
	bhs _02233C5E
	str r3, [r4]
	mov r0, #1
	str r0, [r5]
	b _02233C7A
_02233C5E:
	str r0, [r4]
	mov r0, #0
	str r0, [r5]
	b _02233C7A
_02233C66:
	ldr r1, [sp]
	cmp r0, r1
	bhs _02233C74
	str r1, [r4]
	mov r0, #1
	str r0, [r5]
	b _02233C7A
_02233C74:
	str r0, [r4]
	mov r0, #0
	str r0, [r5]
_02233C7A:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233C80:
	cmp r6, #1
	bne _02233CA4
	cmp r0, #1
	beq _02233CA4
	ldr r1, [sp, #4]
	cmp r0, #0xff
	str r1, [r4]
	bne _02233C9A
	mov r0, #0
	str r0, [r5]
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02233C9A:
	mov r0, #0
	str r0, [r5]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233CA4:
	cmp r0, #1
	bne _02233CC6
	cmp r6, #1
	beq _02233CC6
	ldr r0, [sp]
	cmp r6, #0xff
	str r0, [r4]
	bne _02233CBE
	mov r0, #1
	str r0, [r5]
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02233CBE:
	mov r0, #1
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02233CC6:
	cmp r6, #0
	bne _02233CD8
	cmp r0, #0
	bne _02233CD8
	mov r0, #0
	str r0, [r4]
	add sp, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02233CD8:
	mov r0, #0
	str r0, [r4]
	str r0, [r5]
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov74_02233C08

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

	thumb_func_start ov74_02233E50
ov74_02233E50: ; 0x02233E50
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02233E7C
	ldr r1, _02233E88 ; =ov74_0223D33C
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0xe
	blt _02233E6A
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0x14]
	bx lr
_02233E6A:
	cmp r0, #0xd
	bne _02233E76
	mov r0, #2
	str r0, [r1, #0x14]
	mov r0, #0
	bx lr
_02233E76:
	mov r0, #3
	str r0, [r1, #0x14]
	b _02233E82
_02233E7C:
	ldr r0, _02233E88 ; =ov74_0223D33C
	mov r1, #4
	str r1, [r0, #0x14]
_02233E82:
	mov r0, #0
	bx lr
	nop
_02233E88: .word ov74_0223D33C
	thumb_func_end ov74_02233E50

	thumb_func_start ov74_02233E8C
ov74_02233E8C: ; 0x02233E8C
	push {r3, lr}
	ldr r1, _02233ECC ; =ov74_0223D33C
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _02233EB2
	ldr r1, [r1]
	cmp r1, #1
	bne _02233EA2
	mov r2, #0
	ldr r1, _02233ED0 ; =sPmAgbCartridgeSpec
	b _02233EA6
_02233EA2:
	ldr r1, _02233ED0 ; =sPmAgbCartridgeSpec
	mov r2, #1
_02233EA6:
	str r2, [r1, #4]
	ldr r1, _02233ECC ; =ov74_0223D33C
	ldr r2, [r1, #0x10]
	add r2, r2, #1
	str r2, [r1, #0x10]
	b _02233EB6
_02233EB2:
	mov r0, #0
	pop {r3, pc}
_02233EB6:
	ldr r1, _02233ED0 ; =sPmAgbCartridgeSpec
	ldr r1, [r1, #4]
	cmp r1, #0
	bge _02233EC2
	mov r0, #0
	pop {r3, pc}
_02233EC2:
	bl ov74_02233DBC
	mov r0, #1
	pop {r3, pc}
	nop
_02233ECC: .word ov74_0223D33C
_02233ED0: .word sPmAgbCartridgeSpec
	thumb_func_end ov74_02233E8C

	thumb_func_start ov74_02233ED4
ov74_02233ED4: ; 0x02233ED4
	push {r3, lr}
	ldr r1, _02233F10 ; =ov74_0223D33C
	ldr r0, [r1, #0x14]
	cmp r0, #4
	bhi _02233F0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233EEA: ; jump table
	.short _02233F0C - _02233EEA - 2 ; case 0
	.short _02233F04 - _02233EEA - 2 ; case 1
	.short _02233EF4 - _02233EEA - 2 ; case 2
	.short _02233EFE - _02233EEA - 2 ; case 3
	.short _02233F08 - _02233EEA - 2 ; case 4
_02233EF4:
	ldr r0, [r1, #4]
	bl ov74_02233DBC
	mov r0, #0
	pop {r3, pc}
_02233EFE:
	ldr r0, [r1, #4]
	bl ov74_02233DBC
_02233F04:
	mov r0, #0xa
	pop {r3, pc}
_02233F08:
	mov r0, #8
	pop {r3, pc}
_02233F0C:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_02233F10: .word ov74_0223D33C
	thumb_func_end ov74_02233ED4

	thumb_func_start ov74_02233F14
ov74_02233F14: ; 0x02233F14
	ldr r0, _02233F48 ; =ov74_0223D33C
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _02233F42
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233F28: ; jump table
	.short _02233F42 - _02233F28 - 2 ; case 0
	.short _02233F3A - _02233F28 - 2 ; case 1
	.short _02233F32 - _02233F28 - 2 ; case 2
	.short _02233F36 - _02233F28 - 2 ; case 3
	.short _02233F3E - _02233F28 - 2 ; case 4
_02233F32:
	mov r0, #0xb
	bx lr
_02233F36:
	mov r0, #0xa
	bx lr
_02233F3A:
	mov r0, #9
	bx lr
_02233F3E:
	mov r0, #8
	bx lr
_02233F42:
	mov r0, #0
	bx lr
	nop
_02233F48: .word ov74_0223D33C
	thumb_func_end ov74_02233F14

