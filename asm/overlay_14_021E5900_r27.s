#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E6210
	.public ov14_021E627C
	.extern ov14_021E6100

    .text

	.text
	thumb_func_start ov14_021E6210
ov14_021E6210: ; 0x021E6210
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r7, [r6, #4]
	add r5, r0, #0
	ldr r4, [r6, #8]
	sub r7, #0x1e
	ldr r0, [r5, #8]
	add r1, r7, #0
	sub r4, #0x1e
	bl Party_GetMonByIndex
	ldr r1, [r6]
	bl CopyPokemonToPokemon
	add r1, sp, #4
	ldr r0, [r5, #8]
	add r1, #1
	add r2, r7, #0
	bl Party_GetMonAprijuiceModifiers
	ldr r0, [r5, #8]
	add r1, sp, #0
	add r2, r4, #0
	bl Party_GetMonAprijuiceModifiers
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	add r2, r0, #0
	ldr r0, [r5, #8]
	add r1, r7, #0
	bl Party_SafeCopyMonToSlot_ResetAprijuiceModifiers
	ldr r0, [r5, #8]
	ldr r2, [r6]
	add r1, r4, #0
	bl Party_SafeCopyMonToSlot_ResetAprijuiceModifiers
	ldr r0, [r5, #8]
	add r1, sp, #0
	add r2, r7, #0
	bl Party_SetMonAprijuiceModifiers
	add r1, sp, #4
	ldr r0, [r5, #8]
	add r1, #1
	add r2, r4, #0
	bl Party_SetMonAprijuiceModifiers
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6210

	thumb_func_start ov14_021E627C
ov14_021E627C: ; 0x021E627C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r6, [r4, #4]
	add r5, r0, #0
	sub r6, #0x1e
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl Party_GetMonByIndex
	ldr r1, [r4]
	bl CopyPokemonToPokemon
	ldr r0, [r5, #8]
	add r1, sp, #0
	add r2, r6, #0
	bl Party_GetMonAprijuiceModifiers
	ldrb r1, [r5, #0x1f]
	ldr r2, [r4, #4]
	add r0, r5, #0
	bl ov14_021E6100
	ldr r0, [r5, #8]
	ldr r1, [r4]
	bl Party_AddMon
	ldr r0, [r5, #8]
	bl Party_GetCount
	sub r2, r0, #1
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl Party_SetMonAprijuiceModifiers
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021E627C

