#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222D824
	.public ov74_0222D9E0
	.extern ov74_0222DB70
	.extern ov74_0222DCD4
	.extern ov74_0223C340
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
	thumb_func_start ov74_0222D824
ov74_0222D824: ; 0x0222D824
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r3, [r5]
	str r2, [sp, #0x14]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xf7
	ldr r4, _0222D9C8 ; =ov74_0223C340
	bl NewMsgDataFromNarc
	ldr r1, _0222D9CC ; =0x00002A04
	str r0, [r5, r1]
	ldr r0, [r5]
	bl MessageFormat_New
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r1, _0222D9D0 ; =0x00002BC4
	ldr r0, [sp, #0x14]
	str r0, [r5, r1]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov74_0222DB70
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, _0222D9D4 ; =0x00002A08
	add r7, r4, #0
	str r5, [sp, #0x1c]
	add r6, r5, r0
_0222D864:
	ldr r1, [r7]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	beq _0222D886
	cmp r1, #2
	beq _0222D886
	ldr r1, [sp, #0x1c]
	ldr r0, _0222D9D4 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0222D886
	add r0, r6, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r6, #0
	bl RemoveWindow
_0222D886:
	ldr r0, [sp, #0x1c]
	add r7, #0x30
	add r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #0x13
	blo _0222D864
	mov r0, #0x31
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0222D9D4 ; =0x00002A08
	str r5, [sp, #0x24]
	str r5, [sp, #0x20]
	add r6, r5, r0
_0222D8AA:
	ldr r1, [r4]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _0222D98A
	ldr r1, [sp, #0x24]
	ldr r0, _0222D9D4 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222D8FA
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	ldr r0, _0222D9D8 ; =0x00002B48
	str r2, [r1, r0]
	ldr r0, [r4, #8]
	add r1, r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	add r0, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0222D9DC ; =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	mov r2, #0
	lsr r3, r3, #0x18
	bl AddWindowParameterized
_0222D8FA:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl GetFontAttribute
	add r1, r0, #0
	add r0, r6, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x24]
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	add r1, r6, #0
	blx r3
	cmp r0, #1
	bne _0222D976
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _0222D976
	mov r0, #0x2a
	ldr r1, _0222D9CC ; =0x00002A04
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5]
	bl ReadMsgData_ExpandPlaceholders
	add r7, r0, #0
	mov r0, #0
	ldr r3, [r4, #0x28]
	mvn r0, r0
	cmp r3, r0
	bne _0222D956
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	mov r2, #0
	lsl r3, r3, #3
	bl FontID_String_GetCenterAlignmentX
	add r3, r0, #0
_0222D956:
	ldr r0, [r4, #0x2c]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
_0222D976:
	add r0, r6, #0
	bl CopyWindowToVram
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x2c]
	add r0, r0, r2
	str r0, [sp, #0x2c]
_0222D98A:
	ldr r0, [sp, #0x24]
	add r4, #0x30
	add r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x13
	blo _0222D8AA
	ldr r0, _0222D9CC ; =0x00002A04
	ldr r0, [r5, r0]
	bl DestroyMsgData
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl MessageFormat_Delete
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0222D9C2
	add r0, r5, #0
	bl ov74_0222DCD4
_0222D9C2:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0222D9C8: .word ov74_0223C340
_0222D9CC: .word 0x00002A04
_0222D9D0: .word 0x00002BC4
_0222D9D4: .word 0x00002A08
_0222D9D8: .word 0x00002B48
_0222D9DC: .word 0x000029FC
	thumb_func_end ov74_0222D824

	thumb_func_start ov74_0222D9E0
ov74_0222D9E0: ; 0x0222D9E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r3, #0
	mov r3, #0x30
	ldr r0, _0222DAE0 ; =ov74_0223C340
	mul r3, r2
	add r6, r1, #0
	add r4, r0, r3
	ldr r0, [r6]
	cmp r0, #0
	bne _0222DA2A
	ldr r0, [r4, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0222DAE4 ; =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
_0222DA2A:
	ldr r1, [r4, #0x1c]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0222DA58
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xf7
	mov r3, #0x55
	bl NewMsgDataFromNarc
	ldr r1, _0222DAE8 ; =0x00002A04
	str r0, [r5, r1]
	mov r0, #0x55
	bl MessageFormat_New
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
_0222DA58:
	ldr r0, _0222DAEC ; =0x00002B98
	ldr r2, _0222DAF0 ; =0x00010200
	str r7, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
	ldr r3, [r4, #0x24]
	add r0, r5, #0
	add r1, r6, #0
	blx r3
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _0222DAB2
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0x55
	bl ReadMsgData_ExpandPlaceholders
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x14]
	bl String_Delete
	ldr r0, _0222DAE8 ; =0x00002A04
	ldr r0, [r5, r0]
	bl DestroyMsgData
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl MessageFormat_Delete
_0222DAB2:
	ldr r0, _0222DAF4 ; =0x00002BD0
	add r0, r5, r0
	cmp r6, r0
	bne _0222DAC8
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x13
	mov r3, #0xa
	bl DrawFrameAndWindow2
	b _0222DAD4
_0222DAC8:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0xe
	bl DrawFrameAndWindow1
_0222DAD4:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mul r0, r1
	add r0, r7, r0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222DAE0: .word ov74_0223C340
_0222DAE4: .word 0x000029FC
_0222DAE8: .word 0x00002A04
_0222DAEC: .word 0x00002B98
_0222DAF0: .word 0x00010200
_0222DAF4: .word 0x00002BD0
	thumb_func_end ov74_0222D9E0

