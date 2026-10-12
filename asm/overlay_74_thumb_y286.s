#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02231A1C
	.public ov74_02231BC0
	.extern _0223B4E8
	.extern ov74_022319F8
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
	thumb_func_start ov74_02231A1C
ov74_02231A1C: ; 0x02231A1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r7, [r5, #0x44]
	add r6, r0, #0
	add r4, r2, #0
	cmp r7, #0
	bne _02231A2E
	mov r7, #0xff
_02231A2E:
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #0
	bne _02231A6C
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #8]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r6, #0x20]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
_02231A6C:
	mov r0, #2
	tst r0, r4
	bne _02231A7E
	ldr r1, [r5, #0x30]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FillWindowPixelBuffer
_02231A7E:
	mov r0, #0
	ldr r1, [r5, #0x34]
	mvn r0, r0
	cmp r1, r0
	beq _02231B0E
	ldr r2, _02231BB0 ; =0x0000012D
	mov r0, #1
	mov r1, #0x1b
	mov r3, #0x4c
	bl NewMsgDataFromNarc
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02231AA6
	mov r0, #0x4c
	bl MessageFormat_New
	str r0, [sp, #0x14]
_02231AA6:
	ldr r0, _02231BB4 ; =0x00012608
	ldr r0, [r6, r0]
	bl String_SetEmpty
	ldr r0, _02231BB4 ; =0x00012608
	ldr r1, [r5, #0x34]
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	ldr r1, _02231BB4 ; =0x00012608
	ldr r0, [sp, #0x14]
	ldr r1, [r6, r1]
	ldr r2, [sp, #0x20]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x20]
	bl String_Delete
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	bl ov74_022319F8
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	bl AddTextPrinterParameterizedWithColor
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _02231B02
	ldr r0, [sp, #0x14]
	bl MessageFormat_Delete
_02231B02:
	ldr r0, [sp, #0x18]
	bl DestroyMsgData
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x34]
_02231B0E:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _02231B4A
	ldr r0, _02231BB8 ; =0x0001260C
	mov r2, #0x40
	ldr r6, [r6, r0]
	add r0, r6, #0
	bl CopyU16ArrayToStringN
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov74_022319F8
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	add r2, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	bl AddTextPrinterParameterizedWithColor
	str r0, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x38]
_02231B4A:
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _02231B78
	add r0, r5, #0
	add r2, r4, #0
	bl ov74_022319F8
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x3c]
	bl AddTextPrinterParameterizedWithColor
	str r0, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x3c]
_02231B78:
	mov r0, #4
	tst r0, r4
	bne _02231B84
	ldr r0, [r5]
	bl CopyWindowToVram
_02231B84:
	mov r0, #8
	tst r0, r4
	beq _02231BAC
	mov r0, #0x10
	tst r0, r4
	ldr r0, [r5]
	beq _02231BA0
	ldr r2, _02231BBC ; =0x000003D2
	mov r1, #0
	mov r3, #0xd
	bl DrawFrameAndWindow2
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02231BA0:
	mov r2, #0x3f
	mov r1, #0
	lsl r2, r2, #4
	mov r3, #0xe
	bl DrawFrameAndWindow1
_02231BAC:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02231BB0: .word 0x0000012D
_02231BB4: .word 0x00012608
_02231BB8: .word 0x0001260C
_02231BBC: .word 0x000003D2
	thumb_func_end ov74_02231A1C

	thumb_func_start ov74_02231BC0
ov74_02231BC0: ; 0x02231BC0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02231BEC ; =_0223B4E8
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl ObjCharTransfer_Init
	mov r0, #0x14
	mov r1, #0x4c
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_02231BEC: .word _0223B4E8
	thumb_func_end ov74_02231BC0

