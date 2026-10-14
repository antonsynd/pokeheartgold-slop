#include "constants/moves.h"
	.include "macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02223D34
	.extern ov08_02225D14

	.text

	.text
	thumb_func_start ov08_02223D34
ov08_02223D34: ; 0x02223D34
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02223D7C ; =ov08_02225D14
	add r2, sp, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	ldr r0, [r0]
	bl BattleSystem_GetSpriteSystem
	add r4, r0, #0
	bl SpriteManager_New
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0xc
	bl SpriteSystem_InitSprites
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02223D7C: .word ov08_02225D14
	thumb_func_end ov08_02223D34

