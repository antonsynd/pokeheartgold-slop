#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F4B0
	.public ov65_0221F8B4

	.text

	thumb_func_start ov65_0221F4B0
ov65_0221F4B0: ; 0x0221F4B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0221F4CC ; =0x000036C8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_Destroy
	ldr r0, _0221F4D0 ; =0x000036C4
	ldr r0, [r4, r0]
	bl TouchscreenListMenuSpawner_Destroy
	bl ov65_0221F8B4
	pop {r4, pc}
	nop
_0221F4CC: .word 0x000036C8
_0221F4D0: .word 0x000036C4
	thumb_func_end ov65_0221F4B0

