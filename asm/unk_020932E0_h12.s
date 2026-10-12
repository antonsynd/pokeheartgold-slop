#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02093B84
	.public sub_02093CE4
	.public sub_02093E7C
	.extern sub_02093F84
	.extern sub_02094150
	.extern sub_0209417C
	.extern sub_0209428C
	.extern sub_02094668
	.extern sub_02094F5C
	.extern sub_020956B8

	.text

	.text
	thumb_func_start sub_02093B84
sub_02093B84: ; 0x02093B84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r0, sp, #0x10
	add r1, r5, #0
	mov r2, #1
	bl sub_02094150
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #4]
	lsl r1, r1, #3
	bl Heap_Alloc
	ldr r1, _02093CD0 ; =0x000046A4
	mov r7, #0
	str r0, [r5, r1]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	ble _02093C78
	mov r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #0x2c
	add r6, r7, #0
	str r7, [sp, #8]
	add r4, r5, #0
	str r0, [sp, #4]
_02093BB8:
	ldr r0, _02093CD0 ; =0x000046A4
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	strb r0, [r1, r6]
	ldr r0, _02093CD0 ; =0x000046A4
	ldr r0, [r5, r0]
	add r1, r0, r6
	ldrb r0, [r0, r6]
	add r0, #0x18
	strb r0, [r1, #2]
	ldr r0, _02093CD0 ; =0x000046A4
	ldr r0, [r5, r0]
	add r1, r0, r6
	mov r0, #0xc0
	strb r0, [r1, #1]
	ldr r0, _02093CD0 ; =0x000046A4
	ldr r0, [r5, r0]
	add r1, r0, r6
	ldrb r0, [r1, #1]
	add r0, #0x20
	strb r0, [r1, #3]
	ldr r0, _02093CD0 ; =0x000046A4
	ldr r0, [r5, r0]
	add r1, r0, r6
	mov r0, #0
	str r0, [r1, #4]
	mov r0, #0x35
	lsl r0, r0, #0xe
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	add r0, #0x28
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, _02093CD4 ; =0x000007E8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02093C0C
	add r0, sp, #0x10
	bl Sprite_CreateAffine
	ldr r1, _02093CD4 ; =0x000007E8
	str r0, [r4, r1]
_02093C0C:
	ldr r0, _02093CD4 ; =0x000007E8
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02093CD4 ; =0x000007E8
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _02093CD4 ; =0x000007E8
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetPriority
	ldr r0, _02093CD4 ; =0x000007E8
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _02093CD4 ; =0x000007E8
	mov r1, #6
	ldr r0, [r4, r0]
	bl Sprite_SetDrawPriority
	mov r0, #0x18
	str r0, [sp]
	ldr r0, _02093CD8 ; =0x000007E4
	ldr r2, [sp, #4]
	ldr r1, [r5, r0]
	add r0, r7, #0
	add r0, #0x21
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0xd4
	mov r3, #0x18
	bl sub_0209428C
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, #0x28
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r6, #8
	add r0, #0x28
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, #0x34
	add r0, #0x28
	str r0, [sp, #4]
	ldrb r0, [r5, #0xd]
	cmp r7, r0
	blt _02093BB8
_02093C78:
	mov r6, #0
	cmp r7, #3
	bge _02093CAE
	mov r0, #0x28
	add r4, r7, #0
	mul r4, r0
	add r4, #0x2c
_02093C86:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xd4
	add r2, r4, #0
	mov r3, #0x2f
	bl sub_0209417C
	add r1, r6, #0
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsl r1, r1, #2
	lsr r6, r2, #0x18
	add r2, r5, r1
	ldr r1, _02093CDC ; =0x000008C8
	add r7, r7, #1
	add r4, #0x28
	str r0, [r2, r1]
	cmp r7, #3
	blt _02093C86
_02093CAE:
	ldr r0, _02093CE0 ; =0x000046A8
	mov r1, #0x20
	strb r1, [r5, r0]
	mov r3, #0x97
	add r1, r0, #2
	strb r3, [r5, r1]
	mov r2, #8
	add r1, r0, #1
	strb r2, [r5, r1]
	add r1, r0, #3
	strb r3, [r5, r1]
	mov r1, #0
	add r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02093CD0: .word 0x000046A4
_02093CD4: .word 0x000007E8
_02093CD8: .word 0x000007E4
_02093CDC: .word 0x000008C8
_02093CE0: .word 0x000046A8
	thumb_func_end sub_02093B84

	thumb_func_start sub_02093CE4
sub_02093CE4: ; 0x02093CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _02093E68 ; =0x0000469C
	add r1, r0, #0
	ldr r1, [r1, r3]
	str r0, [sp]
	cmp r1, #1
	bne _02093DA2
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldrb r0, [r0, #0xd]
	mov ip, r0
	cmp r0, #0
	ble _02093DA0
	ldr r0, [sp]
	add r3, #8
	ldr r4, [r0, r3]
	ldr r5, [sp, #0x18]
	str r4, [sp, #8]
_02093D0C:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, _02093E6C ; =0x00004698
	bne _02093D4E
	ldr r1, [sp]
	ldr r7, [r1, r0]
	ldr r0, [sp, #8]
	add r3, r0, r5
	ldrb r6, [r0, r5]
	ldrb r0, [r3, #2]
	ldrb r2, [r3, #1]
	str r0, [sp, #0x1c]
	ldr r0, _02093E70 ; =0x00004694
	ldr r0, [r1, r0]
	ldrb r1, [r3, #3]
	sub r0, r0, r2
	sub r1, r1, r2
	cmp r0, r1
	bhs _02093D90
	ldr r0, [sp, #0x1c]
	sub r1, r7, r6
	sub r0, r0, r6
	cmp r1, r0
	bhs _02093D90
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02093E7C
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02093D4E:
	ldr r1, [sp]
	ldr r7, [r1, r0]
	ldr r0, [sp, #8]
	add r3, r0, r5
	ldrb r6, [r0, r5]
	ldrb r0, [r3, #2]
	ldrb r2, [r3, #1]
	str r0, [sp, #0x20]
	ldr r0, _02093E70 ; =0x00004694
	ldr r0, [r1, r0]
	ldrb r1, [r3, #3]
	sub r0, r0, r2
	sub r1, r1, r2
	cmp r0, r1
	bhs _02093D90
	ldr r0, [sp, #0x20]
	sub r1, r7, r6
	sub r0, r0, r6
	cmp r1, r0
	bhs _02093D90
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	bl sub_02094F5C
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02093E7C
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02093D90:
	ldr r0, [sp, #0x18]
	add r4, #8
	add r1, r0, #1
	mov r0, ip
	add r5, #8
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _02093D0C
_02093DA0:
	b _02093E62
_02093DA2:
	cmp r1, #2
	bne _02093E5E
	sub r2, r3, #4
	add r1, r0, #0
	ldr r1, [r1, r2]
	add r2, r3, #0
	str r1, [sp, #0x14]
	add r2, #0xd
	add r1, r0, #0
	ldrb r6, [r1, r2]
	add r2, r3, #0
	add r2, #0xc
	ldrb r5, [r1, r2]
	add r2, r3, #0
	add r2, #0xe
	ldrb r4, [r1, r2]
	add r2, r3, #0
	sub r2, #8
	ldr r1, [r1, r2]
	add r2, r3, #0
	str r1, [sp, #0x10]
	sub r7, r1, r6
	add r2, #0xf
	add r1, r0, #0
	ldrb r1, [r1, r2]
	sub r1, r1, r6
	cmp r7, r1
	bhs _02093DFA
	ldr r1, [sp, #0x14]
	sub r2, r1, r5
	sub r1, r4, r5
	cmp r2, r1
	bhs _02093DFA
	sub r3, #0x18
	add r1, r0, #0
	ldr r1, [r1, r3]
	bl sub_02094F5C
	ldr r0, [sp]
	bl sub_020956B8
	add sp, #0x24
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_02093DFA:
	ldr r0, [sp]
	mov r7, #0
	ldrb r0, [r0, #0xd]
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _02093E62
	ldr r1, _02093E74 ; =0x000046A4
	ldr r0, [sp]
	add r6, r7, #0
	ldr r5, [r0, r1]
	str r5, [sp, #4]
_02093E10:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02093E50
	ldr r0, [sp, #4]
	add r4, r0, r6
	ldrb r3, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r2, [r0, r6]
	ldr r0, [sp, #0x10]
	ldrb r4, [r4, #3]
	sub r0, r0, r3
	sub r3, r4, r3
	cmp r0, r3
	bhs _02093E50
	ldr r0, [sp, #0x14]
	sub r3, r0, r2
	sub r0, r1, r2
	cmp r3, r0
	bhs _02093E50
	ldr r0, [sp]
	ldr r2, _02093E78 ; =0x00004684
	add r1, r0, #0
	ldr r1, [r1, r2]
	lsl r2, r7, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_02093F84
	add sp, #0x24
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_02093E50:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r5, #8
	add r6, #8
	cmp r7, r0
	blt _02093E10
	b _02093E62
_02093E5E:
	bl GF_AssertFail
_02093E62:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02093E68: .word 0x0000469C
_02093E6C: .word 0x00004698
_02093E70: .word 0x00004694
_02093E74: .word 0x000046A4
_02093E78: .word 0x00004684
	thumb_func_end sub_02093CE4

	thumb_func_start sub_02093E7C
sub_02093E7C: ; 0x02093E7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02093F70 ; =0x000005EA
	str r1, [sp]
	bl PlaySE
	ldr r2, _02093F74 ; =0x000046A4
	ldr r0, [sp]
	ldr r1, [r5, r2]
	lsl r0, r0, #3
	mov r3, #1
	add r0, r1, r0
	str r3, [r0, #4]
	sub r2, #0x20
	ldr r2, [r5, r2]
	ldr r1, [sp]
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02094668
	ldrb r1, [r5, #0xd]
	mov r4, #0
	cmp r1, #0
	bls _02093F6A
	mov r0, #0x8d
	lsl r0, r0, #4
	mov r7, #0xc
	add r2, r7, #0
	ldr r0, [r5, r0]
	sub r2, #0xd
_02093EBE:
	add r6, r4, #0
	mul r6, r7
	add r3, r0, r6
	ldr r3, [r3, #4]
	cmp r3, r2
	bne _02093F60
	ldr r0, _02093F78 ; =0x00004688
	add r2, sp, #4
	add r3, r5, r0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	ldr r0, [r0, r6]
	bl Sprite_SetMatrix
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	ldr r0, [r0, r6]
	bl Sprite_SetDrawFlag
	ldr r0, _02093F7C ; =0x00004684
	lsr r2, r0, #3
	ldr r2, [r5, r2]
	ldr r1, [r5, r0]
	add r2, r2, r6
	str r1, [r2, #4]
	lsr r2, r0, #3
	ldr r2, [r5, r2]
	ldrb r1, [r5, #0xf]
	add r2, r2, r6
	str r1, [r2, #8]
	ldrb r1, [r5, #0xe]
	add r1, r1, #1
	strb r1, [r5, #0xe]
	ldr r1, [r5, r0]
	mov r0, #0x34
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	ldr r0, [sp]
	ldr r3, _02093F80 ; =0x00000888
	lsl r1, r0, #4
	ldr r0, _02093F7C ; =0x00004684
	add r1, r5, r1
	ldr r2, [r5, r0]
	add r0, #0x2c
	str r2, [r1, r3]
	ldrb r6, [r5, #0xf]
	sub r2, r3, #4
	str r6, [r1, r2]
	add r2, r3, #4
	str r4, [r1, r2]
	mov r2, #1
	add r3, #8
	str r2, [r1, r3]
	ldr r1, [sp]
	add sp, #0x10
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093F60:
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	cmp r4, r1
	blo _02093EBE
_02093F6A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02093F70: .word 0x000005EA
_02093F74: .word 0x000046A4
_02093F78: .word 0x00004688
_02093F7C: .word 0x00004684
_02093F80: .word 0x00000888
	thumb_func_end sub_02093E7C

