#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208B780
	.public sub_0208B85C
	.public sub_0208B89C
	.public sub_0208B9C8
	.extern sub_0208B714

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208B780
sub_0208B780: ; 0x0208B780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	str r0, [sp]
	ldr r3, [sp, #0x28]
	add r0, sp, #8
	bl sub_0208B85C
	str r0, [sp, #4]
	lsl r0, r5, #2
	mov r6, #0
	add r4, sp, #8
	add r5, r7, r0
_0208B7A2:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0208B7B2
	ldr r0, [r5]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0208B808
_0208B7B2:
	cmp r0, #1
	bne _0208B7C8
	ldr r0, [r5]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r5]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	b _0208B808
_0208B7C8:
	cmp r0, #2
	bne _0208B7DE
	ldr r0, [r5]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r5]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	b _0208B808
_0208B7DE:
	cmp r0, #3
	bne _0208B7F4
	ldr r0, [r5]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r5]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	b _0208B808
_0208B7F4:
	cmp r0, #4
	bne _0208B808
	ldr r0, [r5]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r5]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
_0208B808:
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #5
	blt _0208B7A2
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0208B828
	ldr r0, [sp, #0x30]
	mov r1, #0
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl Sprite_SetDrawFlag
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0208B828:
	ble _0208B842
	ldr r0, [sp, #0x30]
	mov r1, #1
	lsl r4, r0, #2
	ldr r0, [r7, r4]
	bl Sprite_SetDrawFlag
	ldr r0, [r7, r4]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0208B842:
	bge _0208B858
	ldr r0, [sp, #0x30]
	mov r1, #1
	lsl r4, r0, #2
	ldr r0, [r7, r4]
	bl Sprite_SetDrawFlag
	ldr r0, [r7, r4]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
_0208B858:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208B780

	thumb_func_start sub_0208B85C
sub_0208B85C: ; 0x0208B85C
	push {r3, r4, r5, r6}
	add r3, r3, #2
	mov r4, #0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	mov r5, #1
	add r6, r4, #0
_0208B86A:
	cmp r4, r1
	ble _0208B872
	strb r6, [r0, r4]
	b _0208B87C
_0208B872:
	cmp r4, r2
	ble _0208B87A
	strb r5, [r0, r4]
	b _0208B87C
_0208B87A:
	strb r3, [r0, r4]
_0208B87C:
	add r4, r4, #1
	cmp r4, #5
	blt _0208B86A
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0208B88E
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0208B88E:
	bge _0208B894
	mov r0, #1
	b _0208B896
_0208B894:
	mov r0, #0
_0208B896:
	neg r0, r0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0208B85C

	thumb_func_start sub_0208B89C
sub_0208B89C: ; 0x0208B89C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r1, _0208B9C0 ; =0x000007BC
	add r5, r0, #0
	ldrsb r1, [r5, r1]
	cmp r1, #2
	beq _0208B8AC
	b _0208B9B6
_0208B8AC:
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r1, [r1, #0x34]
	cmp r1, #0
	beq _0208B9B6
	bl sub_0208A520
	add r4, r0, #0
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #5
	bl MI_CpuFill8
	add r1, sp, #0x18
	add r0, r4, #0
	add r1, #2
	bl CalcBoxMonPokeathlonPerformance
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	ldrb r0, [r2, #0x11]
	cmp r0, #1
	bne _0208B8E8
	ldr r0, [r2]
	ldrb r2, [r2, #0x14]
	add r1, sp, #0x14
	bl Party_GetMonAprijuiceModifiers
_0208B8E8:
	add r0, sp, #0xc
	add r1, r4, #0
	add r2, sp, #0x14
	mov r3, #0x13
	bl CalcBoxmonPokeathlonStars
	add r3, sp, #0xc
	ldrb r0, [r3, #6]
	mov r1, #0x4f
	str r0, [sp]
	mov r0, #0xc
	ldrsb r0, [r3, r0]
	str r0, [sp, #4]
	mov r0, #0x68
	str r0, [sp, #8]
	ldrh r2, [r3, #0x1e]
	ldrh r3, [r3]
	ldr r0, _0208B9C4 ; =0x00000404
	lsl r2, r2, #0x1a
	lsl r3, r3, #0x11
	add r0, r5, r0
	lsr r2, r2, #0x1d
	lsr r3, r3, #0x1d
	bl sub_0208B780
	add r3, sp, #0xc
	ldrb r0, [r3, #2]
	mov r1, #0x54
	str r0, [sp]
	mov r0, #8
	ldrsb r0, [r3, r0]
	str r0, [sp, #4]
	mov r0, #0x69
	str r0, [sp, #8]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3]
	ldr r0, _0208B9C4 ; =0x00000404
	lsl r2, r2, #0x1a
	lsl r3, r3, #0x1d
	add r0, r5, r0
	lsr r2, r2, #0x1d
	lsr r3, r3, #0x1d
	bl sub_0208B780
	add r3, sp, #0xc
	ldrb r0, [r3, #4]
	mov r1, #0x59
	str r0, [sp]
	mov r0, #0xa
	ldrsb r0, [r3, r0]
	str r0, [sp, #4]
	mov r0, #0x6a
	str r0, [sp, #8]
	ldrh r2, [r3, #0x16]
	ldrh r3, [r3]
	ldr r0, _0208B9C4 ; =0x00000404
	lsl r2, r2, #0x1a
	lsl r3, r3, #0x17
	add r0, r5, r0
	lsr r2, r2, #0x1d
	lsr r3, r3, #0x1d
	bl sub_0208B780
	add r3, sp, #0xc
	ldrb r0, [r3, #3]
	mov r1, #0x5e
	str r0, [sp]
	mov r0, #9
	ldrsb r0, [r3, r0]
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldrh r2, [r3, #0x12]
	ldrh r3, [r3]
	ldr r0, _0208B9C4 ; =0x00000404
	lsl r2, r2, #0x1a
	lsl r3, r3, #0x1a
	add r0, r5, r0
	lsr r2, r2, #0x1d
	lsr r3, r3, #0x1d
	bl sub_0208B780
	add r3, sp, #0xc
	ldrb r0, [r3, #5]
	mov r1, #0x63
	str r0, [sp]
	mov r0, #0xb
	ldrsb r0, [r3, r0]
	str r0, [sp, #4]
	mov r0, #0x6c
	str r0, [sp, #8]
	ldrh r2, [r3, #0x1a]
	ldrh r3, [r3]
	ldr r0, _0208B9C4 ; =0x00000404
	lsl r2, r2, #0x1a
	lsl r3, r3, #0x14
	add r0, r5, r0
	lsr r2, r2, #0x1d
	lsr r3, r3, #0x1d
	bl sub_0208B780
	add sp, #0x30
	pop {r3, r4, r5, pc}
_0208B9B6:
	add r0, r5, #0
	bl sub_0208B714
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0208B9C0: .word 0x000007BC
_0208B9C4: .word 0x00000404
	thumb_func_end sub_0208B89C

	thumb_func_start sub_0208B9C8
sub_0208B9C8: ; 0x0208B9C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0208BA50 ; =0x000007BC
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0208BA36
	ldr r0, _0208BA54 ; =0x00000299
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0208B9FE
	ldr r0, _0208BA58 ; =0x000005CC
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r4, #0
	ldr r6, _0208BA5C ; =0x000005B8
	add r7, r4, #0
_0208B9EC:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0208B9EC
	pop {r3, r4, r5, r6, r7, pc}
_0208B9FE:
	mov r7, #0xa5
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0208BA06:
	add r0, r5, r6
	ldrb r0, [r0, r7]
	cmp r0, #0
	ldr r0, _0208BA5C ; =0x000005B8
	beq _0208BA1A
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	b _0208BA22
_0208BA1A:
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0208BA22:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _0208BA06
	ldr r0, _0208BA58 ; =0x000005CC
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
_0208BA36:
	mov r4, #0
	ldr r6, _0208BA5C ; =0x000005B8
	add r7, r4, #0
_0208BA3C:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0208BA3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208BA50: .word 0x000007BC
_0208BA54: .word 0x00000299
_0208BA58: .word 0x000005CC
_0208BA5C: .word 0x000005B8
	thumb_func_end sub_0208B9C8

