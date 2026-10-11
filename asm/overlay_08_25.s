#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02223374

	.text

	.text
	thumb_func_start ov08_02223374
ov08_02223374: ; 0x02223374
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5]
	ldr r0, [r4]
	bl BattleSystem_GetBattleContext
	add r1, r0, #0
	ldr r0, [r5]
	ldr r3, [r4, #0x10]
	ldr r0, [r0]
	mov r2, #2
	bl ov12_022581D4
	pop {r3, r4, r5, pc}
	thumb_func_end ov08_02223374

