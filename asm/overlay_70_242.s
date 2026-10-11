#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224182C

	.text

	thumb_func_start ov70_0224182C
ov70_0224182C: ; 0x0224182C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3d
	bl PlayerProfile_New
	add r4, r0, #0
	bl PlayerProfile_Init
	mov r1, #0x43
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r5, r1
	bl Save_Profile_PlayerName_Set
	ldr r1, _02241860 ; =0x00000122
	add r0, r4, #0
	ldrb r1, [r5, r1]
	bl PlayerProfile_SetVersion
	ldr r1, _02241864 ; =0x00000123
	add r0, r4, #0
	ldrb r1, [r5, r1]
	bl PlayerProfile_SetLanguage
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241860: .word 0x00000122
_02241864: .word 0x00000123
	thumb_func_end ov70_0224182C

