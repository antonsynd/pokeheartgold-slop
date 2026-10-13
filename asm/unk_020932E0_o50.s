#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02095354
	.extern sub_02094794
	.extern sub_02094860
	.extern sub_020948C4
	.extern sub_02094A70
	.extern sub_0209569C

	.text

	.text
	thumb_func_start sub_02095354
sub_02095354: ; 0x02095354
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r0, _020954B8 ; =0x000046B8
	mov r5, #0
	ldr r0, [r4, r0]
	bl sub_02095DD8
	add r6, r0, #0
	ldr r0, _020954B8 ; =0x000046B8
	ldr r0, [r4, r0]
	bl sub_02095DE8
	add r7, r0, #0
	cmp r6, #6
	bhi _0209539A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095380: ; jump table
	.short _020954B2 - _02095380 - 2 ; case 0
	.short _020954A2 - _02095380 - 2 ; case 1
	.short _0209538E - _02095380 - 2 ; case 2
	.short _02095442 - _02095380 - 2 ; case 3
	.short _020954AC - _02095380 - 2 ; case 4
	.short _020954B2 - _02095380 - 2 ; case 5
	.short _0209538E - _02095380 - 2 ; case 6
_0209538E:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02094794
	cmp r0, #1
	beq _0209539C
_0209539A:
	b _020954B2
_0209539C:
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_020948C4
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	ble _0209543A
	ldr r2, _020954BC ; =0x000046A4
	add r1, r5, #0
	add r6, sp, #0x18
	add r0, r5, #0
_020953B4:
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	ldr r3, [r4, r2]
	add r3, r3, r1
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _02095430
	ldr r2, _020954C0 ; =0x00004694
	mov r0, #0xd4
	str r0, [r4, r2]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #1
	mov r0, #0x28
	add r3, r1, #0
	mul r3, r0
	add r0, r2, #4
	str r3, [r4, r0]
	ldr r0, [r4, r2]
	add r3, sp, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, r2, #4
	ldr r0, [r4, r0]
	add r7, r3, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r2, #0
	sub r2, #0x10
	add r0, #0xc
	ldr r2, [r4, r2]
	mov r1, #0x34
	ldr r0, [r4, r0]
	mul r1, r2
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl Sprite_SetMatrix
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	ldr r0, _020954B8 ; =0x000046B8
	lsl r2, r5, #0x18
	ldr r0, [r4, r0]
	mov r1, #4
	lsr r2, r2, #0x18
	bl sub_02095D40
	b _0209543A
_02095430:
	ldrb r3, [r4, #0xd]
	add r5, r5, #1
	add r1, #8
	cmp r5, r3
	blt _020953B4
_0209543A:
	ldr r0, _020954C4 ; =0x000046BC
	mov r5, #1
	str r5, [r4, r0]
	b _020954B2
_02095442:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02094860
	cmp r0, #1
	bne _020954B2
	add r0, r4, #0
	mov r1, #2
	add r2, r7, #0
	bl sub_020948C4
	ldr r0, _020954C8 ; =0x000046A0
	ldr r2, [r4, r0]
	sub r0, #0x1c
	ldr r1, [r4, r0]
	mov r0, #0x34
	mul r0, r1
	ldr r0, [r2, r0]
	bl Sprite_GetMatrixPtr
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _020954C8 ; =0x000046A0
	ldr r3, [r4, r0]
	sub r0, #0x1c
	ldr r1, [r4, r0]
	mov r0, #0x34
	mul r0, r1
	ldr r0, [r3, r0]
	add r1, r2, #0
	bl Sprite_SetMatrix
	ldr r0, _020954C4 ; =0x000046BC
	mov r5, #1
	str r5, [r4, r0]
	mov r0, #4
	str r0, [r4, #0x14]
	b _020954B2
_020954A2:
	add r0, r4, #0
	bl sub_0209569C
	mov r5, #3
	b _020954B2
_020954AC:
	add r0, r4, #0
	bl sub_02094A70
_020954B2:
	add r0, r5, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_020954B8: .word 0x000046B8
_020954BC: .word 0x000046A4
_020954C0: .word 0x00004694
_020954C4: .word 0x000046BC
_020954C8: .word 0x000046A0
	thumb_func_end sub_02095354

