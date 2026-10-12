#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208B48C
	.public sub_0208B4EC
	.public sub_0208B55C
	.public sub_0208B5A8
	.extern _02104C68
	.extern sub_0208BA60
	.extern sub_0208BA88
	.extern sub_0208BE70

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208B48C
sub_0208B48C: ; 0x0208B48C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0208B4E4 ; =0x00000243
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x1a
	bne _0208B4A0
	mov r3, #0x19
	b _0208B4A2
_0208B4A0:
	add r3, #0x18
_0208B4A2:
	mov r0, #0
	mov r1, #0xff
	str r0, [sp]
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xa2
	bl SpriteSystem_ReplaceCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	mov r1, #0xff
	ldr r3, _0208B4E4 ; =0x00000243
	str r0, [sp, #4]
	ldrb r3, [r4, r3]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	lsl r3, r3, #0x18
	ldr r1, [r4, r1]
	lsr r4, r3, #0x1a
	ldr r3, _0208B4E8 ; =_02104C68
	mov r2, #0xa2
	ldrb r3, [r3, r4]
	add r3, #0x31
	bl SpriteSystem_ReplacePlttResObj
	add sp, #8
	pop {r4, pc}
	nop
_0208B4E4: .word 0x00000243
_0208B4E8: .word _02104C68
	thumb_func_end sub_0208B48C

	thumb_func_start sub_0208B4EC
sub_0208B4EC: ; 0x0208B4EC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	lsr r0, r0, #4
	cmp r0, #7
	bne _0208B514
	ldr r0, _0208B554 ; =0x00000454
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B558 ; =0x00000524
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	pop {r4, pc}
_0208B514:
	cmp r0, #0
	ldr r0, _0208B558 ; =0x00000524
	beq _0208B540
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0208B554 ; =0x00000454
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	mov r1, #0xa
	lsl r1, r1, #6
	ldr r0, _0208B554 ; =0x00000454
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	lsr r1, r1, #4
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_0208B540:
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, _0208B554 ; =0x00000454
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	pop {r4, pc}
	.balign 4, 0
_0208B554: .word 0x00000454
_0208B558: .word 0x00000524
	thumb_func_end sub_0208B4EC

	thumb_func_start sub_0208B55C
sub_0208B55C: ; 0x0208B55C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0208BA60
	mov r6, #0x99
	mov r4, #0
	mov r7, #3
	lsl r6, r6, #2
_0208B56C:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r6]
	cmp r0, #0
	beq _0208B596
	add r1, r7, #0
	bl GetMoveAttr
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208BA88
_0208B596:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208B56C
	add r0, r5, #0
	bl sub_0208BE70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208B55C

	thumb_func_start sub_0208B5A8
sub_0208B5A8: ; 0x0208B5A8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0208B6FC ; =0x00000404
	add r5, r0, #0
	mov r4, #0xb
	mov r7, #0
_0208B5B2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl thunk_Sprite_SetDrawFlag
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x13
	bls _0208B5B2
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0208B5D6
	b _0208B6F8
_0208B5D6:
	ldr r0, _0208B700 ; =0x000007BC
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0208B5E4
	cmp r0, #1
	beq _0208B634
	pop {r3, r4, r5, r6, r7, pc}
_0208B5E4:
	mov r0, #0x43
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl thunk_Sprite_SetDrawFlag
	mov r0, #9
	lsl r0, r0, #6
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	bne _0208B60E
	mov r0, #0x43
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x6c
	mov r2, #0x30
	bl Sprite_SetPositionXY
	pop {r3, r4, r5, r6, r7, pc}
_0208B60E:
	mov r0, #0x43
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x5b
	mov r2, #0x30
	bl Sprite_SetPositionXY
	ldr r0, _0208B704 ; =0x00000434
	mov r1, #1
	ldr r0, [r5, r0]
	bl thunk_Sprite_SetDrawFlag
	ldr r0, _0208B704 ; =0x00000434
	mov r1, #0x7d
	ldr r0, [r5, r0]
	mov r2, #0x30
	bl Sprite_SetPositionXY
	pop {r3, r4, r5, r6, r7, pc}
_0208B634:
	mov r7, #0x99
	mov r4, #0
	lsl r7, r7, #2
_0208B63A:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, r7]
	cmp r0, #0
	beq _0208B684
	mov r1, #3
	bl GetMoveAttr
	add r3, r0, #0
	add r1, r4, #0
	add r1, #0xd
	add r2, r4, #5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0208BA88
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _0208B708 ; =0x00000438
	mov r1, #1
	ldr r0, [r6, r0]
	bl thunk_Sprite_SetDrawFlag
	ldr r0, _0208B708 ; =0x00000438
	lsl r2, r4, #5
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x18
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
_0208B684:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0208B63A
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0208B6C8
	mov r1, #3
	bl GetMoveAttr
	add r3, r0, #0
	lsl r3, r3, #0x18
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #9
	lsr r3, r3, #0x18
	bl sub_0208BA88
	ldr r0, _0208B70C ; =0x00000448
	mov r1, #1
	ldr r0, [r5, r0]
	bl thunk_Sprite_SetDrawFlag
	ldr r0, _0208B70C ; =0x00000448
	mov r1, #0x18
	ldr r0, [r5, r0]
	mov r2, #0xa0
	bl Sprite_SetPositionXY
	b _0208B6D2
_0208B6C8:
	ldr r0, _0208B70C ; =0x00000448
	mov r1, #0
	ldr r0, [r5, r0]
	bl thunk_Sprite_SetDrawFlag
_0208B6D2:
	mov r0, #0x43
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xc8
	mov r2, #0x18
	bl Sprite_SetPositionXY
	ldr r0, _0208B704 ; =0x00000434
	mov r1, #0xea
	ldr r0, [r5, r0]
	mov r2, #0x18
	bl Sprite_SetPositionXY
	ldr r0, _0208B710 ; =0x0000044C
	mov r1, #0xe8
	ldr r0, [r5, r0]
	mov r2, #0x28
	bl Sprite_SetPositionXY
_0208B6F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208B6FC: .word 0x00000404
_0208B700: .word 0x000007BC
_0208B704: .word 0x00000434
_0208B708: .word 0x00000438
_0208B70C: .word 0x00000448
_0208B710: .word 0x0000044C
	thumb_func_end sub_0208B5A8

