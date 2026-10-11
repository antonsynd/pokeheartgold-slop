#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208C3E4.inc"
	.include "global.inc"
	.public sub_0208C57C
	.public sub_0208C614
	.public sub_0208C6B4
	.extern sub_0208C778

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208C57C
sub_0208C57C: ; 0x0208C57C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r4, #0x85
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	add r2, r4, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208C60C ; =0x000E0F00
	add r2, #0x20
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r5, r4
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	add r0, #0x2e
	ldrb r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _0208C600
	add r0, r0, #1
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	bne _0208C5E0
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #1
	bl ReadMsgDataIntoString
	mov r2, #0xc1
	add r0, r5, #0
	add r1, r5, r4
	lsl r2, r2, #0xa
	mov r3, #1
	bl sub_0208C778
	b _0208C600
_0208C5E0:
	cmp r0, #1
	bne _0208C600
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #2
	bl ReadMsgDataIntoString
	ldr r2, _0208C610 ; =0x00050600
	add r0, r5, #0
	add r1, r5, r4
	mov r3, #1
	bl sub_0208C778
_0208C600:
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0208C60C: .word 0x000E0F00
_0208C610: .word 0x00050600
	thumb_func_end sub_0208C57C

	thumb_func_start sub_0208C614
sub_0208C614: ; 0x0208C614
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r6, #0x81
	add r5, r0, #0
	lsl r6, r6, #2
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	add r0, #0x7c
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208C69C
	mov r0, #5
	str r0, [sp]
	ldr r0, _0208C6A8 ; =0x0000079C
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r5, r6
	mov r3, #0
	bl sub_0200CDAC
	mov r0, #0x7a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl NewString_ReadMsgData
	mov r1, #0
	add r4, r0, #0
	add r2, r6, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, #0x3e
	ldrb r2, [r5, r2]
	ldr r0, _0208C6AC ; =0x000007A8
	mov r3, #3
	lsl r2, r2, #0x19
	ldr r0, [r5, r0]
	lsr r2, r2, #0x19
	bl BufferIntegerAsString
	ldr r1, _0208C6AC ; =0x000007A8
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	lsl r0, r6, #7
	str r0, [sp, #8]
	ldr r2, _0208C6B0 ; =0x000007AC
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r5, r6
	mov r3, #0x10
	bl AddTextPrinterParameterizedWithColor
_0208C69C:
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0208C6A8: .word 0x0000079C
_0208C6AC: .word 0x000007A8
_0208C6B0: .word 0x000007AC
	thumb_func_end sub_0208C614

	thumb_func_start sub_0208C6B4
sub_0208C6B4: ; 0x0208C6B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _0208C730 ; =0x0000023E
	ldrh r2, [r5, r0]
	cmp r2, #0
	beq _0208C6FA
	ldr r0, _0208C734 ; =0x000007A8
	mov r1, #0
	ldr r0, [r5, r0]
	bl BufferItemName
	mov r0, #0x7a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #5
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _0208C734 ; =0x000007A8
	add r2, r4, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	b _0208C70A
_0208C6FA:
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #6
	bl ReadMsgDataIntoString
_0208C70A:
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r2, _0208C738 ; =0x00010200
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0
	bl sub_0208C778
	add r0, r5, #0
	add r0, #0x64
	bl ScheduleWindowCopyToVram
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, pc}
	nop
_0208C730: .word 0x0000023E
_0208C734: .word 0x000007A8
_0208C738: .word 0x00010200
	thumb_func_end sub_0208C6B4

