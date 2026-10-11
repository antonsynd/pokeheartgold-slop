#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208C3E4.inc"
	.include "global.inc"
	.public sub_0208D6B8
	.public sub_0208D728
	.public sub_0208D7C4
	.public sub_0208D884
	.public sub_0208D9A0
	.extern sub_0208C778
	.extern sub_0208C87C
	.extern sub_0208C8C8

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208D6B8
sub_0208D6B8: ; 0x0208D6B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	ldr r2, _0208D720 ; =0x000007C6
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #0xb7
	mov r3, #3
	bl sub_0208C87C
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _0208D724 ; =0x00010200
	add r0, r4, #0
	mov r3, #0
	bl sub_0208C778
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ScheduleWindowCopyToVram
	ldr r0, [r4]
	mov r1, #4
	bl BgCommitTilemapBufferToVram
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0208D720: .word 0x000007C6
_0208D724: .word 0x00010200
	thumb_func_end sub_0208D6B8

	thumb_func_start sub_0208D728
sub_0208D728: ; 0x0208D728
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #3
	beq _0208D73E
	cmp r0, #4
	bne _0208D7B0
_0208D73E:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl FillWindowPixelBuffer
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	mov r1, #0xa5
	bl ReadMsgDataIntoString
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _0208D7B4 ; =0x000E0F00
	add r0, r4, #0
	add r1, #0x10
	mov r3, #0
	bl sub_0208C778
	ldr r1, _0208D7B8 ; =0x0000027B
	mov r2, #0x7a
	lsl r2, r2, #4
	ldrb r1, [r4, r1]
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	add r1, #0xa6
	bl ReadMsgDataIntoString
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208D7BC ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0x89
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r2, _0208D7C0 ; =0x000007AC
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r0, #0x10
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl ScheduleWindowCopyToVram
_0208D7B0:
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0208D7B4: .word 0x000E0F00
_0208D7B8: .word 0x0000027B
_0208D7BC: .word 0x00010200
_0208D7C0: .word 0x000007AC
	thumb_func_end sub_0208D728

	thumb_func_start sub_0208D7C4
sub_0208D7C4: ; 0x0208D7C4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x10
	bl FillWindowPixelBuffer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x20
	bl FillWindowPixelBuffer
	ldr r0, _0208D870 ; =0x000007C4
	add r1, r0, #1
	ldrb r2, [r4, r1]
	ldrb r3, [r4, r0]
	lsl r1, r2, #3
	add r1, r2, r1
	add r2, r3, r1
	add r1, r0, #2
	ldrb r1, [r4, r1]
	cmp r2, r1
	bge _0208D854
	add r0, r0, #3
	ldrb r0, [r4, r0]
	mov r1, #3
	bl GetRibbonAttr
	ldr r2, _0208D874 ; =0x000007A4
	add r1, r0, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _0208D878 ; =0x000E0F00
	add r0, r4, #0
	add r1, #0x10
	mov r3, #0
	bl sub_0208C778
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r1, _0208D87C ; =0x000007C7
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl GetRibbonDescGmm
	ldr r2, _0208D874 ; =0x000007A4
	add r1, r0, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _0208D880 ; =0x00010200
	add r0, r4, #0
	add r1, #0x20
	mov r3, #0
	bl sub_0208C778
_0208D854:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl ScheduleWindowCopyToVram
	pop {r4, pc}
	nop
_0208D870: .word 0x000007C4
_0208D874: .word 0x000007A4
_0208D878: .word 0x000E0F00
_0208D87C: .word 0x000007C7
_0208D880: .word 0x00010200
	thumb_func_end sub_0208D7C4

	thumb_func_start sub_0208D884
sub_0208D884: ; 0x0208D884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x89
	add r4, r1, #0
	lsl r0, r0, #2
	add r1, #8
	lsl r7, r1, #4
	ldr r6, [r5, r0]
	cmp r4, #4
	beq _0208D8B8
	lsl r1, r4, #1
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0x40
	ldrh r1, [r2, r1]
	add r2, r0, #0
	add r2, #0x48
	str r1, [sp, #0x20]
	add r1, r5, r4
	ldrb r2, [r1, r2]
	add r0, #0x4c
	str r2, [sp, #0x1c]
	ldrb r0, [r1, r0]
	str r0, [sp, #0x18]
	b _0208D8CA
_0208D8B8:
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	ldrh r0, [r0, #0x18]
	str r0, [sp, #0x20]
	bl GetMoveMaxPP
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_0208D8CA:
	ldr r2, _0208D994 ; =0x000007B4
	ldr r1, [sp, #0x20]
	ldr r0, [r5, r2]
	sub r2, #8
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	mov r0, #2
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208D998 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, _0208D99C ; =0x000007AC
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r6, r7
	mov r3, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0208D952
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x87
	bl ReadMsgDataIntoString
	mov r3, #0x10
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208D998 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r2, _0208D99C ; =0x000007AC
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r6, r7
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x8d
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r4, #0x88
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r1, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0x75
	add r3, r4, #0
	bl sub_0208C8C8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0208D952:
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x99
	bl ReadMsgDataIntoString
	ldr r1, _0208D99C ; =0x000007AC
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208D998 ; =0x00010200
	lsr r4, r3, #1
	str r0, [sp, #8]
	mov r1, #0
	mov r3, #0x3c
	ldr r2, _0208D99C ; =0x000007AC
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r6, r7
	sub r3, r3, r4
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0208D994: .word 0x000007B4
_0208D998: .word 0x00010200
_0208D99C: .word 0x000007AC
	thumb_func_end sub_0208D884

	thumb_func_start sub_0208D9A0
sub_0208D9A0: ; 0x0208D9A0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	bl ScheduleWindowCopyToVram
	mov r0, #0x65
	lsl r0, r0, #2
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x69
	lsl r0, r0, #2
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0xd0
	bl FillWindowPixelBuffer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0xe0
	bl FillWindowPixelBuffer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0xf0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	mov r1, #2
	bl GetMoveAttr
	add r2, r0, #0
	cmp r2, #1
	bhi _0208DA10
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x9a
	bl ReadMsgDataIntoString
	b _0208DA1E
_0208DA10:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x96
	mov r3, #3
	bl sub_0208C87C
_0208DA1E:
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _0208DAC8 ; =0x00010200
	add r0, r5, #0
	add r1, #0xd0
	mov r3, #1
	bl sub_0208C778
	add r0, r4, #0
	mov r1, #4
	bl GetMoveAttr
	add r2, r0, #0
	bne _0208DA4E
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x9a
	bl ReadMsgDataIntoString
	b _0208DA5C
_0208DA4E:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x97
	mov r3, #3
	bl sub_0208C87C
_0208DA5C:
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _0208DAC8 ; =0x00010200
	add r0, r5, #0
	add r1, #0xe0
	mov r3, #1
	bl sub_0208C778
	ldr r2, _0208DACC ; =0x000002ED
	mov r0, #1
	mov r1, #0x1b
	mov r3, #0x13
	bl NewMsgDataFromNarc
	ldr r2, _0208DAD0 ; =0x000007AC
	add r1, r4, #0
	ldr r2, [r5, r2]
	add r6, r0, #0
	bl ReadMsgDataIntoString
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, _0208DAC8 ; =0x00010200
	add r0, r5, #0
	add r1, #0xf0
	mov r3, #0
	bl sub_0208C778
	add r0, r6, #0
	bl DestroyMsgData
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0xd0
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0xe0
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0xf0
	bl ScheduleWindowCopyToVram
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0208DAC8: .word 0x00010200
_0208DACC: .word 0x000002ED
_0208DAD0: .word 0x000007AC
	thumb_func_end sub_0208D9A0

