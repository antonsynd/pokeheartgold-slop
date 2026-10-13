#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222F024
	.extern ov74_0222F314
	.extern ov74_0222F478
	.extern ov74_0223C700
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
	thumb_func_start ov74_0222F024
ov74_0222F024: ; 0x0222F024
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r3, [r5]
	str r2, [sp, #0x14]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xf7
	ldr r4, _0222F1A4 ; =ov74_0223C700
	bl NewMsgDataFromNarc
	ldr r1, _0222F1A8 ; =0x00002A04
	str r0, [r5, r1]
	ldr r0, [r5]
	bl MessageFormat_New
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r1, _0222F1AC ; =0x00002BB8
	ldr r0, [sp, #0x14]
	str r0, [r5, r1]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov74_0222F314
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, _0222F1B0 ; =0x00002A08
	add r7, r4, #0
	str r5, [sp, #0x1c]
	add r6, r5, r0
_0222F064:
	ldr r1, [r7]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	beq _0222F086
	cmp r1, #2
	beq _0222F086
	ldr r1, [sp, #0x1c]
	ldr r0, _0222F1B0 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0222F086
	add r0, r6, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r6, #0
	bl RemoveWindow
_0222F086:
	ldr r0, [sp, #0x1c]
	add r7, #0x30
	add r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #0xb
	blo _0222F064
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0222F1B0 ; =0x00002A08
	mov r7, #0x31
	str r5, [sp, #0x24]
	str r5, [sp, #0x20]
	add r6, r5, r0
_0222F0A8:
	ldr r1, [r4]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _0222F166
	ldr r1, [sp, #0x24]
	ldr r0, _0222F1B0 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222F0F4
	ldr r1, [sp, #0x20]
	ldr r0, _0222F1B4 ; =0x00002B48
	mov r2, #0
	str r7, [r1, r0]
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
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0222F1B8 ; =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
_0222F0F4:
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
	bne _0222F158
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _0222F158
	mov r0, #0x2a
	ldr r1, _0222F1A8 ; =0x00002A04
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5]
	bl ReadMsgData_ExpandPlaceholders
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x2c]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0x28]
	add r0, r6, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x30]
	bl String_Delete
_0222F158:
	add r0, r6, #0
	bl CopyWindowToVram
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mul r0, r1
	add r7, r7, r0
_0222F166:
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
	cmp r0, #0xb
	blo _0222F0A8
	ldr r0, _0222F1A8 ; =0x00002A04
	ldr r0, [r5, r0]
	bl DestroyMsgData
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl MessageFormat_Delete
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0222F19E
	add r0, r5, #0
	bl ov74_0222F478
_0222F19E:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0222F1A4: .word ov74_0223C700
_0222F1A8: .word 0x00002A04
_0222F1AC: .word 0x00002BB8
_0222F1B0: .word 0x00002A08
_0222F1B4: .word 0x00002B48
_0222F1B8: .word 0x000029FC
	thumb_func_end ov74_0222F024

