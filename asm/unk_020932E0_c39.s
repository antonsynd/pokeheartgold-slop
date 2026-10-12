#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_0209515C
	.public sub_02095238
	.public sub_02095354
	.public sub_020954CC
	.public sub_02095540
	.public sub_020955EC
	.extern sub_020943EC
	.extern sub_02094794
	.extern sub_02094860
	.extern sub_020948C4
	.extern sub_02094A70
	.extern sub_02094A90
	.extern sub_0209569C
	.extern sub_020956B8

	.text

	.text
	thumb_func_start sub_0209515C
sub_0209515C: ; 0x0209515C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0x66
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02095168:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02095172
	bl Sprite_Delete
_02095172:
	add r6, r6, #1
	add r4, #0x34
	cmp r6, #0x1e
	blt _02095168
	ldrb r0, [r5, #0xd]
	mov r6, #0
	cmp r0, #0
	ble _0209519A
	ldr r7, _02095220 ; =0x000007E8
	add r4, r5, #0
_02095186:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02095190
	bl Sprite_Delete
_02095190:
	ldrb r0, [r5, #0xd]
	add r6, r6, #1
	add r4, #0x34
	cmp r6, r0
	blt _02095186
_0209519A:
	mov r6, #0
	cmp r0, #0
	ble _020951BC
	mov r7, #0x8d
	add r4, r6, #0
	lsl r7, r7, #4
_020951A6:
	ldr r0, [r5, r7]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _020951B2
	bl Sprite_Delete
_020951B2:
	ldrb r0, [r5, #0xd]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020951A6
_020951BC:
	ldr r0, _02095224 ; =0x000008B4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951C8
	bl Sprite_Delete
_020951C8:
	ldr r0, _02095228 ; =0x000008BC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951D4
	bl Sprite_Delete
_020951D4:
	ldr r0, _0209522C ; =0x000008B8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951E0
	bl Sprite_Delete
_020951E0:
	ldr r0, _02095230 ; =0x000008C4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951EC
	bl Sprite_Delete
_020951EC:
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951FA
	bl Sprite_Delete
_020951FA:
	ldrb r1, [r5, #0xd]
	mov r0, #3
	mov r4, #0
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0
	ble _0209521E
	ldr r7, _02095234 ; =0x000008C8
_0209520C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02095216
	bl Sprite_Delete
_02095216:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _0209520C
_0209521E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02095220: .word 0x000007E8
_02095224: .word 0x000008B4
_02095228: .word 0x000008BC
_0209522C: .word 0x000008B8
_02095230: .word 0x000008C4
_02095234: .word 0x000008C8
	thumb_func_end sub_0209515C

	thumb_func_start sub_02095238
sub_02095238: ; 0x02095238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _02095348 ; =0x000046B8
	mov r5, #0
	ldr r0, [r4, r0]
	bl sub_02095DD8
	add r7, r0, #0
	ldr r0, _02095348 ; =0x000046B8
	ldr r0, [r4, r0]
	bl sub_02095DE8
	add r1, r5, #0
	add r6, r0, #0
	str r1, [sp, #0x14]
	cmp r7, #6
	bhi _0209532C
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02095268: ; jump table
	.short _0209532C - _02095268 - 2 ; case 0
	.short _0209531E - _02095268 - 2 ; case 1
	.short _02095286 - _02095268 - 2 ; case 2
	.short _020952B4 - _02095268 - 2 ; case 3
	.short _020952C8 - _02095268 - 2 ; case 4
	.short _02095276 - _02095268 - 2 ; case 5
	.short _02095286 - _02095268 - 2 ; case 6
_02095276:
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r5, #1
	b _0209532C
_02095286:
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x18
	mul r0, r1
	add r0, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #6
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x18
	mul r0, r1
	add r0, #0x28
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r5, #1
	b _0209532C
_020952B4:
	mov r0, #0x35
	lsl r0, r0, #0xe
	str r0, [sp, #0xc]
	add r1, r6, #1
	mov r0, #0x28
	mul r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r5, #1
	b _0209532C
_020952C8:
	mov r0, #0x35
	lsl r0, r0, #0xe
	add r1, r6, #1
	str r0, [sp, #0xc]
	mov r0, #0x28
	add r5, r1, #0
	mul r5, r0
	lsl r0, r5, #0xc
	ldr r2, _0209534C ; =0x000046BC
	str r0, [sp, #0x10]
	ldr r0, [r4, r2]
	cmp r0, #0
	beq _0209531A
	add r6, sp, #0xc
	ldmia r6!, {r0, r1}
	add r3, sp, #0
	add r7, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r2, #0
	sub r2, #0x38
	sub r0, #0x1c
	ldr r2, [r4, r2]
	mov r1, #0x34
	ldr r0, [r4, r0]
	mul r1, r2
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl Sprite_SetMatrix
	ldr r0, _02095350 ; =0x00004694
	mov r1, #0xd4
	str r1, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
_0209531A:
	mov r5, #1
	b _0209532C
_0209531E:
	mov r0, #0xe
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r5, #1
_0209532C:
	cmp r5, #0
	beq _02095342
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, sp, #0xc
	bl Sprite_SetMatrix
	add r0, r4, #0
	bl sub_020956B8
_02095342:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02095348: .word 0x000046B8
_0209534C: .word 0x000046BC
_02095350: .word 0x00004694
	thumb_func_end sub_02095238

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

	thumb_func_start sub_020954CC
sub_020954CC: ; 0x020954CC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02095538 ; =0x000046B8
	mov r4, #0
	ldr r0, [r5, r0]
	bl sub_02095DD8
	cmp r0, #1
	beq _020954F4
	cmp r0, #4
	bne _020954FE
	ldr r0, _0209553C ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02094A90
	b _02095532
_020954F4:
	add r0, r5, #0
	bl sub_0209569C
	mov r4, #3
	b _02095532
_020954FE:
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _02095532
	ldr r0, _02095538 ; =0x000046B8
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_02095D40
	mov r0, #0xe
	lsl r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, _0209553C ; =0x000005DC
	bl PlaySE
_02095532:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02095538: .word 0x000046B8
_0209553C: .word 0x000005DC
	thumb_func_end sub_020954CC

	thumb_func_start sub_02095540
sub_02095540: ; 0x02095540
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _02095550
	ldrb r0, [r5, #0x10]
	b _02095550
_02095550:
	sub r0, r0, #1
	strb r0, [r5, #0xf]
	ldr r0, _020955E0 ; =0x000008BC
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	add r0, r5, #0
	bl sub_020943EC
	ldr r0, _020955E4 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r5, #0xf]
	cmp r0, #0x12
	ldr r0, _020955E8 ; =0x000046B8
	bne _020955BE
	ldr r0, [r5, r0]
	bl sub_02095DD8
	cmp r0, #2
	bne _020955DC
	ldr r0, _020955E8 ; =0x000046B8
	ldr r0, [r5, r0]
	bl sub_02095DE8
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	ldr r0, _020955E8 ; =0x000046B8
	mov r1, #6
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_02095D40
	mov r0, #0x18
	mul r0, r4
	add r0, #0x14
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
_020955BE:
	ldr r0, [r5, r0]
	bl sub_02095DD8
	cmp r0, #6
	bne _020955DC
	ldr r0, _020955E8 ; =0x000046B8
	ldr r0, [r5, r0]
	bl sub_02095DE8
	add r2, r0, #0
	ldr r0, _020955E8 ; =0x000046B8
	mov r1, #2
	ldr r0, [r5, r0]
	bl sub_02095D40
_020955DC:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_020955E0: .word 0x000008BC
_020955E4: .word 0x000005DC
_020955E8: .word 0x000046B8
	thumb_func_end sub_02095540

	thumb_func_start sub_020955EC
sub_020955EC: ; 0x020955EC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r0, r0, #1
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #0xf]
	ldrb r0, [r5, #0x10]
	cmp r1, r0
	bne _02095604
	mov r0, #0
	strb r0, [r5, #0xf]
_02095604:
	ldr r0, _02095690 ; =0x000008B8
	mov r1, #3
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	add r0, r5, #0
	bl sub_020943EC
	ldr r0, _02095694 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r5, #0xf]
	cmp r0, #0x12
	ldr r0, _02095698 ; =0x000046B8
	bne _0209566E
	ldr r0, [r5, r0]
	bl sub_02095DD8
	cmp r0, #2
	bne _0209568C
	ldr r0, _02095698 ; =0x000046B8
	ldr r0, [r5, r0]
	bl sub_02095DE8
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	ldr r0, _02095698 ; =0x000046B8
	mov r1, #6
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_02095D40
	mov r0, #0x18
	mul r0, r4
	add r0, #0x14
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
_0209566E:
	ldr r0, [r5, r0]
	bl sub_02095DD8
	cmp r0, #6
	bne _0209568C
	ldr r0, _02095698 ; =0x000046B8
	ldr r0, [r5, r0]
	bl sub_02095DE8
	add r2, r0, #0
	ldr r0, _02095698 ; =0x000046B8
	mov r1, #2
	ldr r0, [r5, r0]
	bl sub_02095D40
_0209568C:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02095690: .word 0x000008B8
_02095694: .word 0x000005DC
_02095698: .word 0x000046B8
	thumb_func_end sub_020955EC

