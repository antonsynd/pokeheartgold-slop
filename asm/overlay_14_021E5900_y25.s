#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E6100
	.public ov14_021E611C
	.extern ov14_021E60C0

    .text

	.text
	thumb_func_start ov14_021E6100
ov14_021E6100: ; 0x021E6100
	push {r3, lr}
	cmp r2, #0x1e
	bhs _021E610E
	ldr r0, [r0, #4]
	bl PCStorage_DeleteBoxMonByIndexPair
	pop {r3, pc}
_021E610E:
	sub r2, #0x1e
	ldr r0, [r0, #8]
	add r1, r2, #0
	bl Party_RemoveMon
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021E6100

	thumb_func_start ov14_021E611C
ov14_021E611C: ; 0x021E611C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	ldrb r1, [r5, #0x1f]
	ldr r2, [r6, #4]
	bl ov14_021E60C0
	ldr r1, [r6]
	bl CopyBoxPokemonToPokemon
	ldr r7, [r4, #4]
	ldr r0, [r5, #8]
	sub r7, #0x1e
	add r1, r7, #0
	bl Party_GetMonByIndex
	ldr r1, [r4]
	bl CopyPokemonToPokemon
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4]
	mov r1, #MON_DATA_MOOD
	add r2, sp, #0
	bl SetMonData
	ldr r0, [r5, #8]
	ldr r2, [r6]
	add r1, r7, #0
	bl Party_SafeCopyMonToSlot_ResetAprijuiceModifiers
	ldr r0, [r4]
	bl Mon_GetBoxMon
	add r3, r0, #0
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	ldr r2, [r4, #8]
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4958
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F4A20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E611C

