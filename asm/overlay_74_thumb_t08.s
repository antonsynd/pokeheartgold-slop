#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229200
	.public ov74_02229294
	.public ov74_02229450
	.public ov74_0222947C
	.extern gApplication_TitleScreen
	.extern ov74_02228D64
	.extern ov74_02228E98
	.extern ov74_02228F14
	.extern ov74_02228F8C
	.extern ov74_02229190
	.extern ov74_0222962C
	.extern ov74_0222EC08
	.extern ov74_022352A0
	.extern ov74_022352D0
	.extern ov74_02235390
	.extern ov74_0223539C
	.extern ov74_022353FC
	.extern ov74_02235568
	.extern ov74_022358BC
	.extern ov74_02235A68
	.extern ov74_02235DC4
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
	thumb_func_start ov74_02229200
ov74_02229200: ; 0x02229200
	push {r3, r4, r5, lr}
	mov r3, #2
	ldr r2, _02229288 ; =0x000034DC
	mov r1, #0x53
	lsl r3, r3, #0x10
	add r5, r0, #0
	bl ov74_022352D0
	add r4, r0, #0
	mov r0, #0x53
	str r0, [r4]
	bl BgConfig_Alloc
	str r0, [r4, #4]
	add r0, r5, #0
	bl OverlayManager_GetArgs
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	bl Save_PlayerData_GetProfile
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl Save_Pokedex_Get
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r4, #0x14]
	ldr r0, [r4]
	bl ov74_022352A0
	ldr r0, [r4, #8]
	bl Save_MysteryGift_Get
	ldr r1, _0222928C ; =0x00003174
	mov r2, #0x53
	str r0, [r4, r1]
	mov r0, #9
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r2, #0
	mov r1, #0x28
	sub r0, #8
	str r1, [r4, r0]
	add r1, r2, #0
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r2, #0xc
	str r0, [r4, r2]
	mov r2, #0x57
	mov r1, #0x59
	lsl r2, r2, #4
	bl Heap_Create
	ldr r1, _02229290 ; =0x0000047E
	mov r0, #9
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02229288: .word 0x000034DC
_0222928C: .word 0x00003174
_02229290: .word 0x0000047E
	thumb_func_end ov74_02229200

	thumb_func_start ov74_02229294
ov74_02229294: ; 0x02229294
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0xd
	bhi _022292FA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022292B4: ; jump table
	.short _022292D0 - _022292B4 - 2 ; case 0
	.short _022292F2 - _022292B4 - 2 ; case 1
	.short _02229310 - _022292B4 - 2 ; case 2
	.short _02229362 - _022292B4 - 2 ; case 3
	.short _0222938E - _022292B4 - 2 ; case 4
	.short _022293CA - _022292B4 - 2 ; case 5
	.short _02229404 - _022292B4 - 2 ; case 6
	.short _02229434 - _022292B4 - 2 ; case 7
	.short _02229434 - _022292B4 - 2 ; case 8
	.short _02229434 - _022292B4 - 2 ; case 9
	.short _02229434 - _022292B4 - 2 ; case 10
	.short _0222941A - _022292B4 - 2 ; case 11
	.short _02229422 - _022292B4 - 2 ; case 12
	.short _0222942E - _022292B4 - 2 ; case 13
_022292D0:
	bl ov74_02228D64
	ldr r0, [r4, #0xc]
	bl Pokedex_IsEnabled
	cmp r0, #0
	bne _022292EC
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_022292EC:
	mov r0, #2
	str r0, [r5]
	b _02229434
_022292F2:
	bl ov74_02228F14
	cmp r0, #0
	beq _022292FC
_022292FA:
	b _02229434
_022292FC:
	mov r0, #1
	bl ov74_02235390
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_02229310:
	bl ov74_02228F8C
	ldr r0, _02229440 ; =0x00003174
	ldr r0, [r4, r0]
	bl SaveMysteryGift_FindAvailable
	cmp r0, #0
	bne _0222934C
	add r0, r4, #0
	mov r1, #1
	add r0, #0x98
	str r1, [r0]
	mov r0, #0x16
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
	ldr r1, _02229444 ; =0x0000317C
	add r2, r5, #0
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #3
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_0222934C:
	mov r0, #0x53
	mov r1, #7
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	mov r1, #4
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_02229362:
	ldr r0, _02229444 ; =0x0000317C
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02229434
	ldr r0, _02229448 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	beq _02229434
	bl ov74_02235390
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_0222938E:
	bl ov74_0222962C
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #5
	bne _022293B2
	mov r0, #1
	bl ov74_02235390
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_022293B2:
	cmp r0, #4
	bne _02229434
	mov r0, #1
	bl ov74_02235390
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_022293CA:
	bl ov74_02228E98
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r1, #0xc6
	lsl r1, r1, #6
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0x53
	bl ov74_0222EC08
	mov r0, #1
	mov r1, #6
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	ldr r1, _0222944C ; =0x000032D2
	mov r0, #4
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	b _02229434
_02229404:
	ldr r0, _02229448 ; =gSystem
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02229434
	mov r0, #0
	mov r1, #0xb
	add r2, r5, #0
	mov r3, #0xd
	bl ov74_0223539C
	b _02229434
_0222941A:
	mov r0, #0
	bl OS_ResetSystem
	b _02229434
_02229422:
	add r0, r6, #0
	bl ov74_02229190
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0222942E:
	add r0, r5, #0
	bl ov74_022353FC
_02229434:
	bl ov74_022358BC
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02229440: .word 0x00003174
_02229444: .word 0x0000317C
_02229448: .word gSystem
_0222944C: .word 0x000032D2
	thumb_func_end ov74_02229294

	thumb_func_start ov74_02229450
ov74_02229450: ; 0x02229450
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x59
	bl Heap_Destroy
	ldr r0, _02229474 ; =FS_OVERLAY_ID(intro_title)
	ldr r1, _02229478 ; =gApplication_TitleScreen
	bl RegisterMainOverlay
	add r0, r4, #0
	bl OverlayManager_FreeData
	mov r0, #0x53
	bl Heap_Destroy
	mov r0, #1
	pop {r4, pc}
	nop
_02229474: .word FS_OVERLAY_ID(intro_title)
_02229478: .word gApplication_TitleScreen
	thumb_func_end ov74_02229450

	thumb_func_start ov74_0222947C
ov74_0222947C: ; 0x0222947C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0xc6
	lsl r0, r0, #6
	add r4, r5, r0
	mov r2, #0xd6
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	ldr r3, [r5]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xf7
	bl NewMsgDataFromNarc
	add r6, r0, #0
	ldr r0, [r5]
	bl MessageFormat_New
	mov r1, #0xc6
	mov r2, #7
	lsl r1, r1, #6
	strh r2, [r5, r1]
	ldr r3, [r5]
	add r1, r6, #0
	mov r2, #0x4e
	str r0, [sp]
	bl ReadMsgData_ExpandPlaceholders
	mov r1, #0x41
	lsl r1, r1, #2
	add r7, r0, #0
	add r1, r4, r1
	mov r2, #0x24
	bl CopyStringToU16Array
	add r0, r7, #0
	bl String_Delete
	mov r0, #8
	bl ov74_02235A68
	add r7, r0, #0
	mov r0, #7
	bl ov74_02235A68
	str r0, [sp, #4]
	mov r0, #0xc
	bl ov74_02235A68
	str r0, [sp, #8]
	mov r0, #0xa
	bl ov74_02235A68
	str r0, [sp, #0xc]
	mov r0, #0xb
	bl ov74_02235A68
	ldr r1, [sp, #0xc]
	mov r2, #0x53
	orr r1, r0
	ldr r0, [sp, #8]
	lsl r2, r2, #2
	orr r1, r0
	ldr r0, [sp, #4]
	mov r3, #1
	orr r0, r1
	orr r0, r7
	str r0, [r4, r2]
	mov r1, #1
	add r0, r2, #4
	strh r1, [r4, r0]
	add r0, r2, #6
	add r1, r0, #0
	ldrb r1, [r4, r1]
	bic r1, r3
	add r3, r0, #0
	strb r1, [r4, r3]
	add r1, r0, #0
	ldrb r1, [r4, r1]
	mov r3, #2
	bic r1, r3
	add r3, r0, #0
	strb r1, [r4, r3]
	add r1, r0, #0
	ldrb r3, [r4, r1]
	mov r1, #4
	orr r3, r1
	add r1, r0, #0
	strb r3, [r4, r1]
	ldrb r3, [r4, r1]
	mov r1, #8
	orr r3, r1
	add r1, r0, #0
	strb r3, [r4, r1]
	ldrb r2, [r4, r0]
	mov r1, #0x20
	bic r2, r1
	strb r2, [r4, r0]
	ldr r0, [sp]
	ldr r3, [r5]
	add r1, r6, #0
	mov r2, #0x4d
	bl ReadMsgData_ExpandPlaceholders
	mov r1, #0x55
	lsl r1, r1, #2
	add r7, r0, #0
	add r1, r4, r1
	mov r2, #0xfa
	bl CopyStringToU16Array
	add r0, r7, #0
	bl String_Delete
	mov r0, #0xd2
	lsl r0, r0, #2
	mov r1, #0
	ldr r3, _022295C0 ; =0x000001EA
	strb r1, [r4, r0]
	add r2, r0, #2
	strh r3, [r4, r2]
	add r2, r0, #4
	strh r1, [r4, r2]
	add r2, r0, #6
	strh r1, [r4, r2]
	add r0, #8
	strb r1, [r4, r0]
	add r0, sp, #0x10
	bl GF_RTC_CopyDate
	add r0, sp, #0x10
	bl RTC_ConvertDateToDay
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	bl MessageFormat_Delete
	add r0, r6, #0
	bl DestroyMsgData
	ldr r0, _022295C4 ; =0x00003174
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #3
	bl SaveMysteryGift_TryInsertGift
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov74_02235DC4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022295C0: .word 0x000001EA
_022295C4: .word 0x00003174
	thumb_func_end ov74_0222947C

