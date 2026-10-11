#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208C3E4.inc"
	.include "global.inc"
	.public sub_0208DB64
	.public sub_0208DBF0
	.extern sub_0208C778
	.extern sub_0208D884

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208DB64
sub_0208DB64: ; 0x0208DB64
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0208DBEC ; =0x000007BD
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, #8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0208DBEC ; =0x000007BD
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	add r0, #8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _0208DBEC ; =0x000007BD
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0208D884
	ldr r1, _0208DBEC ; =0x000007BD
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl sub_0208D884
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0208DBEC ; =0x000007BD
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, #8
	lsl r0, r0, #4
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0208DBEC ; =0x000007BD
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	add r0, #8
	lsl r0, r0, #4
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	pop {r4, pc}
	nop
_0208DBEC: .word 0x000007BD
	thumb_func_end sub_0208DB64

	thumb_func_start sub_0208DBF0
sub_0208DBF0: ; 0x0208DBF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0208DC60 ; =0x000007BC
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _0208DC2A
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0xd0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0xe0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0xf0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r4, #0xf0
	b _0208DC32
_0208DC2A:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r4, #0x50
_0208DC32:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x9c
	bl ReadMsgDataIntoString
	ldr r2, _0208DC64 ; =0x00010200
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0208C778
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, pc}
	nop
_0208DC60: .word 0x000007BC
_0208DC64: .word 0x00010200
	thumb_func_end sub_0208DBF0

