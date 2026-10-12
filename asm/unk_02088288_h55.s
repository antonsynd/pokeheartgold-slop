#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_0208A564
	.public sub_0208A63C
	.extern sub_0208A79C

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208A564
sub_0208A564: ; 0x0208A564
	push {r4, lr}
	ldr r1, _0208A630 ; =0x000007BE
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0208A57A
	cmp r1, #1
	beq _0208A5B6
	cmp r1, #2
	beq _0208A5E2
	b _0208A62A
_0208A57A:
	ldr r0, _0208A634 ; =0x00000428
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208A634 ; =0x00000428
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	mov r2, #0
	ldr r0, [r4]
	mov r1, #5
	add r3, r2, #0
	bl ScheduleSetBgPosText
	ldr r0, [r4]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl ScheduleSetBgPosText
	add r0, r4, #0
	add r0, #0x44
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _0208A630 ; =0x000007BE
	mov r1, #1
	strb r1, [r4, r0]
	b _0208A62A
_0208A5B6:
	ldr r0, [r4]
	mov r1, #5
	bl Bg_GetXpos
	cmp r0, #0x80
	ldr r0, [r4]
	blt _0208A5D6
	mov r1, #5
	mov r2, #0
	mov r3, #0x80
	bl ScheduleSetBgPosText
	ldr r0, _0208A630 ; =0x000007BE
	mov r1, #2
	strb r1, [r4, r0]
	b _0208A62A
_0208A5D6:
	mov r1, #5
	mov r2, #1
	mov r3, #0x40
	bl ScheduleSetBgPosText
	b _0208A62A
_0208A5E2:
	bl sub_0208DB1C
	add r0, r4, #0
	bl sub_0208A79C
	mov r0, #0x43
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl thunk_Sprite_SetDrawFlag
	add r0, r4, #0
	bl sub_0208C068
	mov r0, #9
	lsl r0, r0, #6
	ldrb r1, [r4, r0]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _0208A616
	ldr r0, _0208A638 ; =0x00000434
	mov r1, #1
	ldr r0, [r4, r0]
	bl thunk_Sprite_SetDrawFlag
_0208A616:
	ldr r0, _0208A634 ; =0x00000428
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208A630 ; =0x000007BE
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0208A62A:
	mov r0, #0
	pop {r4, pc}
	nop
_0208A630: .word 0x000007BE
_0208A634: .word 0x00000428
_0208A638: .word 0x00000434
	thumb_func_end sub_0208A564

	thumb_func_start sub_0208A63C
sub_0208A63C: ; 0x0208A63C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208A70C ; =0x000007BE
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0208A652
	cmp r0, #1
	beq _0208A69C
	cmp r0, #2
	beq _0208A6C8
	b _0208A706
_0208A652:
	mov r0, #0x43
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl thunk_Sprite_SetDrawFlag
	ldr r0, _0208A710 ; =0x00000434
	mov r1, #0
	ldr r0, [r4, r0]
	bl thunk_Sprite_SetDrawFlag
	ldr r0, _0208A714 ; =0x0000044C
	mov r1, #0
	ldr r0, [r4, r0]
	bl thunk_Sprite_SetDrawFlag
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl thunk_Sprite_SetDrawFlag
	ldr r0, _0208A718 ; =0x00000428
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl sub_0208DB58
	add r0, r4, #0
	bl sub_0208DAD4
	ldr r0, _0208A70C ; =0x000007BE
	mov r1, #1
	strb r1, [r4, r0]
	b _0208A706
_0208A69C:
	ldr r0, [r4]
	mov r1, #5
	bl Bg_GetXpos
	cmp r0, #0x80
	ldr r0, [r4]
	bgt _0208A6BC
	mov r2, #0
	mov r1, #5
	add r3, r2, #0
	bl ScheduleSetBgPosText
	ldr r0, _0208A70C ; =0x000007BE
	mov r1, #2
	strb r1, [r4, r0]
	b _0208A706
_0208A6BC:
	mov r1, #5
	mov r2, #2
	mov r3, #0x40
	bl ScheduleSetBgPosText
	b _0208A706
_0208A6C8:
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x64
	bl ScheduleWindowCopyToVram
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x44
	bl ScheduleWindowCopyToVram
	ldr r0, _0208A718 ; =0x00000428
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl sub_0208B400
	ldr r0, _0208A70C ; =0x000007BE
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0208A706:
	mov r0, #0
	pop {r4, pc}
	nop
_0208A70C: .word 0x000007BE
_0208A710: .word 0x00000434
_0208A714: .word 0x0000044C
_0208A718: .word 0x00000428
	thumb_func_end sub_0208A63C

