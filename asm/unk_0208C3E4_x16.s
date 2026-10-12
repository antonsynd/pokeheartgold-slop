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
	.extern sub_0208C778
	.extern sub_0208C87C

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

