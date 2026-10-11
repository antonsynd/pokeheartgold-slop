#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02258BB4

	.text

	.text
	thumb_func_start ov12_02258BB4
ov12_02258BB4: ; 0x02258BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _02258D6C ; =0x00000137
	add r7, r0, #0
	add r6, r1, #0
	cmp r3, r2
	bgt _02258BCE
	blt _02258BC8
	b _02258D12
_02258BC8:
	cmp r3, #0xed
	beq _02258C90
	b _02258D64
_02258BCE:
	add r0, r2, #0
	add r0, #0x34
	cmp r3, r0
	bgt _02258BDE
	add r2, #0x34
	cmp r3, r2
	beq _02258BE6
	b _02258D64
_02258BDE:
	add r2, #0x8a
	cmp r3, r2
	beq _02258C02
	b _02258D64
_02258BE6:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #0xc
	bl GetItemVar
	add r5, r0, #0
	b _02258D66
_02258C02:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl GetItemVar
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _02258C8C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02258C2C: ; jump table
	.short _02258C6C - _02258C2C - 2 ; case 0
	.short _02258C70 - _02258C2C - 2 ; case 1
	.short _02258C78 - _02258C2C - 2 ; case 2
	.short _02258C74 - _02258C2C - 2 ; case 3
	.short _02258C80 - _02258C2C - 2 ; case 4
	.short _02258C4C - _02258C2C - 2 ; case 5
	.short _02258C54 - _02258C2C - 2 ; case 6
	.short _02258C58 - _02258C2C - 2 ; case 7
	.short _02258C50 - _02258C2C - 2 ; case 8
	.short _02258C7C - _02258C2C - 2 ; case 9
	.short _02258C60 - _02258C2C - 2 ; case 10
	.short _02258C5C - _02258C2C - 2 ; case 11
	.short _02258C64 - _02258C2C - 2 ; case 12
	.short _02258C84 - _02258C2C - 2 ; case 13
	.short _02258C88 - _02258C2C - 2 ; case 14
	.short _02258C68 - _02258C2C - 2 ; case 15
_02258C4C:
	mov r5, #1
	b _02258D66
_02258C50:
	mov r5, #2
	b _02258D66
_02258C54:
	mov r5, #3
	b _02258D66
_02258C58:
	mov r5, #4
	b _02258D66
_02258C5C:
	mov r5, #5
	b _02258D66
_02258C60:
	mov r5, #6
	b _02258D66
_02258C64:
	mov r5, #7
	b _02258D66
_02258C68:
	mov r5, #8
	b _02258D66
_02258C6C:
	mov r5, #0xa
	b _02258D66
_02258C70:
	mov r5, #0xb
	b _02258D66
_02258C74:
	mov r5, #0xc
	b _02258D66
_02258C78:
	mov r5, #0xd
	b _02258D66
_02258C7C:
	mov r5, #0xe
	b _02258D66
_02258C80:
	mov r5, #0xf
	b _02258D66
_02258C84:
	mov r5, #0x10
	b _02258D66
_02258C88:
	mov r5, #0x11
	b _02258D66
_02258C8C:
	mov r5, #0
	b _02258D66
_02258C90:
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl GetMonData
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl GetMonData
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl GetMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r2, r6, #0x1f
	lsl r0, r5, #0x1f
	lsr r5, r2, #0x1b
	lsl r2, r7, #0x1f
	lsr r4, r2, #0x1c
	ldr r2, [sp, #4]
	lsl r1, r1, #0x1f
	lsl r2, r2, #0x1f
	lsr r3, r2, #0x1d
	ldr r2, [sp, #8]
	mov r6, #1
	and r2, r6
	lsr r1, r1, #0x1e
	orr r1, r2
	orr r1, r3
	orr r1, r4
	lsr r0, r0, #0x1a
	orr r1, r5
	orr r1, r0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r5, r0, #1
	cmp r5, #9
	blt _02258D66
	add r5, r5, #1
	b _02258D66
_02258D12:
	mov r2, #0xd
	str r2, [sp]
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02258D66
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02258D66
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	ldr r1, _02258D70 ; =0x000080FF
	tst r1, r0
	beq _02258D66
	mov r1, #3
	tst r1, r0
	beq _02258D4A
	mov r5, #0xb
_02258D4A:
	mov r1, #0xc
	tst r1, r0
	beq _02258D52
	mov r5, #5
_02258D52:
	mov r1, #0x30
	tst r1, r0
	beq _02258D5A
	mov r5, #0xa
_02258D5A:
	mov r1, #0xc0
	tst r0, r1
	beq _02258D66
	mov r5, #0xf
	b _02258D66
_02258D64:
	mov r5, #0
_02258D66:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02258D6C: .word 0x00000137
_02258D70: .word 0x000080FF
	thumb_func_end ov12_02258BB4

