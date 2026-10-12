#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F684
	.public ov70_0223F6E4
	.extern ov70_0223E490

	.text

	.text
	thumb_func_start ov70_0223F684
ov70_0223F684: ; 0x0223F684
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0223F6DC ; =0x000001EE
	add r5, r0, #0
	mov r0, #0x3d
	bl Heap_Alloc
	add r4, r0, #0
	ldr r2, _0223F6DC ; =0x000001EE
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r2, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4a
	mov r1, #0xc
	add r3, r5, #0
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r5, _0223F6E0 ; =0x00000000
	lsr r3, r0, #1
	beq _0223F6D0
	ldr r0, _0223F6DC ; =0x000001EE
	add r6, r7, #0
	mov r1, #1
_0223F6C0:
	ldrh r2, [r6]
	cmp r2, r0
	bhs _0223F6C8
	strb r1, [r4, r2]
_0223F6C8:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, r3
	blo _0223F6C0
_0223F6D0:
	add r0, r7, #0
	bl Heap_Free
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F6DC: .word 0x000001EE
_0223F6E0: .word 0x00000000
	thumb_func_end ov70_0223F684

	thumb_func_start ov70_0223F6E4
ov70_0223F6E4: ; 0x0223F6E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x12
	add r4, r1, #0
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	bl ov70_0223E490
	cmp r0, #0
	beq _0223F718
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Mon_UpdateShayminForm
	bl SizeOfStructPokemon
	add r2, r0, #0
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl MIi_CpuCopyFast
	b _0223F730
_0223F718:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl BoxMon_UpdateShayminForm
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl CopyBoxPokemonToPokemon
_0223F730:
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #8
	bl CopyU16StringArrayN
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetTrainerID_VisibleHalf
	mov r1, #0x47
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl WifiHistory_GetPlayerCountry
	ldr r1, _0223F798 ; =0x0000011E
	strb r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl WiFiHistory_GetPlayerRegion
	ldr r1, _0223F79C ; =0x0000011F
	strb r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetAvatar
	mov r1, #0x12
	lsl r1, r1, #4
	strb r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetTrainerGender
	add r1, r5, #0
	add r1, #0xf6
	strb r0, [r1]
	ldr r0, _0223F7A0 ; =0x00000122
	mov r1, #GAME_VERSION
	strb r1, [r5, r0]
	mov r1, #2
	add r0, r0, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0223F798: .word 0x0000011E
_0223F79C: .word 0x0000011F
_0223F7A0: .word 0x00000122
	thumb_func_end ov70_0223F6E4

