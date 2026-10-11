#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208B2C0
	.extern _02103A70
	.extern sub_0208B55C
	.extern sub_0208B714
	.extern sub_0208B74C

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208B2C0
sub_0208B2C0: ; 0x0208B2C0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0208B3C4 ; =_02103A70
	ldr r7, _0208B3C8 ; =0x00000404
	add r5, r0, #0
	mov r4, #0
_0208B2CA:
	mov r0, #0xff
	mov r1, #1
	lsl r0, r0, #2
	lsl r1, r1, #0xa
	mov r2, #0x28
	mul r2, r4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, r2
	bl SpriteSystem_CreateSpriteFromResourceHeader
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x73
	blo _0208B2CA
	add r0, r5, #0
	bl sub_0208B55C
	ldr r0, _0208B3CC ; =0x0000042C
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3D0 ; =0x000004A8
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3D4 ; =0x000004AC
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3D8 ; =0x000004B4
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3DC ; =0x000004B8
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3E0 ; =0x000004BC
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3E4 ; =0x000004C4
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3E8 ; =0x000004C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3EC ; =0x000004CC
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3F0 ; =0x00000514
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3F4 ; =0x00000518
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208B3F8 ; =0x0000051C
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r5, #0
	bl sub_0208B714
	add r0, r5, #0
	bl sub_0208B74C
	ldr r0, _0208B3FC ; =0x00000524
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208B3C4: .word _02103A70
_0208B3C8: .word 0x00000404
_0208B3CC: .word 0x0000042C
_0208B3D0: .word 0x000004A8
_0208B3D4: .word 0x000004AC
_0208B3D8: .word 0x000004B4
_0208B3DC: .word 0x000004B8
_0208B3E0: .word 0x000004BC
_0208B3E4: .word 0x000004C4
_0208B3E8: .word 0x000004C8
_0208B3EC: .word 0x000004CC
_0208B3F0: .word 0x00000514
_0208B3F4: .word 0x00000518
_0208B3F8: .word 0x0000051C
_0208B3FC: .word 0x00000524
	thumb_func_end sub_0208B2C0

