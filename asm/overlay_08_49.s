#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02223D34
	.public ov08_02223D80
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

	thumb_func_start ov08_02223D80
ov08_02223D80: ; 0x02223D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r1, [r6]
	mov r0, #0x12
	ldr r1, [r1, #0xc]
	bl NARC_New
	add r7, r0, #0
	ldr r0, [r6]
	ldr r0, [r0]
	bl BattleSystem_GetSpriteSystem
	str r0, [sp, #0x18]
	mov r4, #0
_02223D9E:
	ldr r0, _02223E38 ; =0x0000B4B7
	add r5, r4, r0
	mov r0, #1
	add r1, r0, #0
	bl GetItemIndexMapping
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0xc3
	str r5, [sp, #8]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	mov r1, #2
	bl GetItemIndexMapping
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r3, #0xc3
	str r5, [sp, #0x14]
	lsl r3, r3, #2
	ldr r0, [r6, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [r6, r3]
	mov r1, #3
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	add r4, r4, #1
	cmp r4, #6
	blo _02223D9E
	bl GetItemIconCell
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02223E38 ; =0x0000B4B7
	mov r1, #0xc3
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	bl GetItemIconAnim
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02223E38 ; =0x0000B4B7
	mov r1, #0xc3
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add r0, r7, #0
	bl NARC_Delete
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02223E38: .word 0x0000B4B7
	thumb_func_end ov08_02223D80

