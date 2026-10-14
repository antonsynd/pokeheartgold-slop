#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_022612A4

	.text

	.text
	thumb_func_start ov12_022612A4
ov12_022612A4: ; 0x022612A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, [sp, #0x50]
	add r7, r0, #0
	str r1, [sp, #0x14]
	add r5, r2, #0
	str r3, [sp, #0x18]
	bl ov12_0223A99C
	add r1, r4, #0
	bl ov12_0223BB94
	str r0, [sp, #0x20]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB0C
	add r6, r0, #0
	mov r0, #1
	and r0, r6
	str r0, [sp, #0x1c]
	beq _022612D4
	mov r1, #2
	b _022612D6
_022612D4:
	mov r1, #0
_022612D6:
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrh r0, [r5, #6]
	mov r2, #5
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl sub_02014540
	add r0, r7, #0
	bl ov12_0223A99C
	ldrh r2, [r5]
	add r1, r4, #0
	bl ov12_0223BBA8
	add r0, r7, #0
	bl ov12_0223A99C
	ldrh r2, [r5, #4]
	add r1, r4, #0
	bl ov12_0223BBC0
	add r0, r7, #0
	bl ov12_0223A99C
	ldr r2, [sp, #0x40]
	add r1, r4, #0
	bl ov12_0223BBD8
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0x54]
	ldr r4, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r3, r4, r3
	bl PokepicManager_CreatePokepicAt
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0226138A
	cmp r6, #1
	ble _02261348
	asr r6, r6, #1
_02261348:
	add r0, r4, #0
	mov r1, #0x2a
	add r2, r6, #0
	bl Pokepic_SetAttr
	ldr r2, [sp, #0x4c]
	add r0, r4, #0
	mov r1, #0x2e
	bl Pokepic_SetAttr
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x14
	add r2, #0x24
	bl Pokepic_SetAttr
	ldr r2, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0x15
	bl Pokepic_SetAttr
	ldr r3, [sp, #0x40]
	mov r2, #0x24
	add r0, r4, #0
	mov r1, #0x16
	sub r2, r2, r3
	bl Pokepic_SetAttr
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	mov r1, #0x29
	bl Pokepic_SetAttr
_0226138A:
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_022612A4

