#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02223390

	.text

	.text
	thumb_func_start ov08_02223390
ov08_02223390: ; 0x02223390
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r3, #0
	add r6, r0, #0
	add r7, r2, #0
	bl BattleSystem_GetBag
	add r1, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl Bag_TakeItem
	add r0, r6, #0
	bl BattleSystem_GetBagCursor
	add r1, r5, #0
	add r2, r7, #0
	bl BagCursor_Battle_SetLastUsedItem
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov08_02223390

