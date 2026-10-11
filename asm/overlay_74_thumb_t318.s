#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public PmAgbCartridgeGetOffsets
	.extern IdentifyPmAgbCartridge
	.extern PmAgbCartridgeHasFlash
	.extern ov74_0223D33C
	.extern sPmAgbCartridgeSpec
	.extern sPmAgbRomCodeMappings
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
	thumb_func_start PmAgbCartridgeGetOffsets
PmAgbCartridgeGetOffsets: ; 0x02233938
	push {r3, lr}
	ldr r1, _02233994 ; =ov74_0223D33C
	str r0, [r1, #8]
	ldr r0, _02233998 ; =sPmAgbCartridgeSpec
	ldr r0, [r0]
	cmp r0, #0
	beq _0223394A
	mov r0, #0xc
	pop {r3, pc}
_0223394A:
	ldr r0, _0223399C ; =sPmAgbRomCodeMappings
	mov r1, #0x1e
	bl IdentifyPmAgbCartridge
	cmp r0, #0
	bne _02233992
	ldr r0, _02233998 ; =sPmAgbCartridgeSpec
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0223397A
	mov r0, #0x89
	ldr r1, _022339A0 ; =sPmAgbRomHeader + 0x68
	lsl r0, r0, #4
	str r0, [r1, #0x20]
	mov r0, #0xeb
	lsl r0, r0, #6
	str r0, [r1, #0x24]
	ldr r2, _022339A4 ; =0x00001220
	ldr r0, _02233994 ; =ov74_0223D33C
	str r2, [r0, #0x68]
	mov r0, #9
	str r0, [r1, #0x30]
	b _02233984
_0223397A:
	ldr r0, _022339A8 ; =0x08000100
	ldr r1, _022339AC ; =sPmAgbRomHeader
	mov r2, #0xfc
	bl CTRDG_CpuCopy32
_02233984:
	bl PmAgbCartridgeHasFlash
	cmp r0, #0
	bne _02233990
	mov r0, #3
	pop {r3, pc}
_02233990:
	mov r0, #0
_02233992:
	pop {r3, pc}
	.balign 4, 0
_02233994: .word ov74_0223D33C
_02233998: .word sPmAgbCartridgeSpec
_0223399C: .word sPmAgbRomCodeMappings
_022339A0: .word sPmAgbRomHeader + 0x68
_022339A4: .word 0x00001220
_022339A8: .word 0x08000100
_022339AC: .word sPmAgbRomHeader
	thumb_func_end PmAgbCartridgeGetOffsets

