#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208C3E4.inc"
	.include "global.inc"
	.public sub_0208CC88
	.extern sub_0208C778
	.extern sub_0208C87C

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208CC88
sub_0208CC88: ; 0x0208CC88
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0208CD34
	add r0, r4, #4
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x74
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x84
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x94
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0xa4
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0xb4
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0xc4
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0xd4
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0xe4
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x10
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x20
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0208CD34:
	add r0, r4, #4
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x74
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x84
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x94
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0xa4
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0xb4
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0xc4
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0xd4
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0xe4
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FillWindowPixelBuffer
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
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x30
	bl FillWindowPixelBuffer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x40
	bl FillWindowPixelBuffer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x50
	bl FillWindowPixelBuffer
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	ldr r0, [r0, #0x1c]
	bl Pokedex_ConvertToCurrentDexNo
	add r2, r0, #0
	beq _0208CDF0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r3, #3
	bl sub_0208C87C
	b _0208CE00
_0208CDF0:
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	mov r1, #0x16
	bl ReadMsgDataIntoString
_0208CE00:
	mov r1, #0xa
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	bne _0208CE1C
	sub r1, #0x5c
	ldr r1, [r4, r1]
	ldr r2, _0208CFA8 ; =0x00010200
	add r0, r4, #0
	mov r3, #2
	bl sub_0208C778
	b _0208CE2A
_0208CE1C:
	sub r1, #0x5c
	ldr r1, [r4, r1]
	ldr r2, _0208CFAC ; =0x00050600
	add r0, r4, #0
	mov r3, #2
	bl sub_0208C778
_0208CE2A:
	mov r1, #0x23
	lsl r1, r1, #4
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	mov r3, #0x48
	bl FontID_String_GetCenterAlignmentX
	mov r1, #0
	add r3, r0, #0
	mov r2, #0x89
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208CFA8 ; =0x00010200
	lsl r2, r2, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	add r0, #0x10
	bl AddTextPrinterParameterizedWithColor
	mov r1, #0x9d
	lsl r1, r1, #2
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0208CE96
	sub r1, #0x3c
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	mov r3, #0x48
	bl FontID_String_GetCenterAlignmentX
	mov r1, #0
	add r3, r0, #0
	mov r2, #0x89
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	add r2, #0x14
	ldr r2, [r4, r2]
	add r0, #0x20
	bl AddTextPrinterParameterizedWithColor
	b _0208CEC4
_0208CE96:
	sub r1, #0x3c
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	mov r3, #0x48
	bl FontID_String_GetCenterAlignmentX
	mov r1, #0
	add r3, r0, #0
	mov r2, #0x89
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208CFAC ; =0x00050600
	lsl r2, r2, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, r2]
	add r2, #0x14
	ldr r2, [r4, r2]
	add r0, #0x20
	bl AddTextPrinterParameterizedWithColor
_0208CEC4:
	mov r0, #2
	mov r2, #0x91
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	lsl r2, r2, #0x10
	mov r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #5
	bl sub_0208C87C
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _0208CFA8 ; =0x00010200
	add r0, r4, #0
	add r1, #0x30
	mov r3, #2
	bl sub_0208C778
	mov r0, #0
	mov r2, #0x92
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x12
	mov r3, #7
	bl sub_0208C87C
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _0208CFA8 ; =0x00010200
	add r0, r4, #0
	add r1, #0x40
	mov r3, #1
	bl sub_0208C778
	ldr r3, _0208CFB0 ; =0x00000242
	ldrb r0, [r4, r3]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _0208CF3C
	mov r0, #0
	add r2, r3, #0
	str r0, [sp]
	add r2, #0xe
	ldr r5, [r4, r2]
	add r2, r3, #6
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0x15
	sub r2, r5, r2
	mov r3, #7
	bl sub_0208C87C
	b _0208CF4A
_0208CF3C:
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x15
	mov r3, #7
	str r2, [sp]
	bl sub_0208C87C
_0208CF4A:
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r2, _0208CFA8 ; =0x00010200
	add r0, r4, #0
	add r1, #0x50
	mov r3, #1
	bl sub_0208C778
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ScheduleWindowCopyToVram
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
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x30
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x40
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x50
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208CFA8: .word 0x00010200
_0208CFAC: .word 0x00050600
_0208CFB0: .word 0x00000242
	thumb_func_end sub_0208CC88

