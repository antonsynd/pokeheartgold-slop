#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208BBDC
	.public sub_0208BC78

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208BBDC
sub_0208BBDC: ; 0x0208BBDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208BC70 ; =0x000007BD
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1c
	cmp r2, #4
	beq _0208BBF2
	cmp r2, #5
	beq _0208BC2E
	b _0208BC52
_0208BBF2:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	ldr r0, _0208BC74 ; =0x00000428
	bne _0208BC12
	lsl r2, r2, #5
	add r2, #0x28
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x44
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	b _0208BC22
_0208BC12:
	lsl r2, r2, #5
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x44
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
_0208BC22:
	ldr r0, _0208BC74 ; =0x00000428
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_0208BC2E:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _0208BC6E
	ldr r0, _0208BC74 ; =0x00000428
	mov r1, #0xdc
	ldr r0, [r4, r0]
	mov r2, #0xb0
	bl Sprite_SetPositionXY
	ldr r0, _0208BC74 ; =0x00000428
	mov r1, #3
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_0208BC52:
	ldr r0, _0208BC74 ; =0x00000428
	lsl r2, r2, #5
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x44
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	ldr r0, _0208BC74 ; =0x00000428
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
_0208BC6E:
	pop {r4, pc}
	.balign 4, 0
_0208BC70: .word 0x000007BD
_0208BC74: .word 0x00000428
	thumb_func_end sub_0208BBDC

	thumb_func_start sub_0208BC78
sub_0208BC78: ; 0x0208BC78
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0208BCAC ; =0x00000428
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl Sprite_GetPositionXY
	ldr r0, _0208BCB0 ; =0x0000042C
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl Sprite_SetPositionXY
	ldr r0, _0208BCB0 ; =0x0000042C
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0208BCAC: .word 0x00000428
_0208BCB0: .word 0x0000042C
	thumb_func_end sub_0208BC78

