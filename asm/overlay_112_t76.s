#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EA3C0
	.extern ov112_021EA984
	.extern ov112_021FEC88
	.extern ov112_021FED1C
	.extern ov112_021FF028
	.extern ov112_021FF05C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EA3C0
ov112_021EA3C0: ; 0x021EA3C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021EA4C8 ; =ov112_021FED1C
	ldr r7, _021EA4CC ; =ov112_021FEC88
	mov r6, #0
	str r0, [sp]
	add r5, r4, #0
_021EA3CE:
	ldr r0, _021EA4D0 ; =0x0001E528
	ldr r1, _021EA4D4 ; =0x0001E52C
	mov r3, #1
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [sp]
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	ldr r1, _021EA4D8 ; =0x0001E530
	str r0, [r5, r1]
	add r0, r1, #0
	ldrb r1, [r7]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPaletteOverride
	ldr r0, _021EA4D8 ; =0x0001E530
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	add r6, r6, #1
	add r0, #0x34
	str r0, [sp]
	add r5, r5, #4
	add r7, r7, #1
	cmp r6, #0x11
	blo _021EA3CE
	ldr r0, _021EA4DC ; =0x0001E534
	mov r1, #2
	ldr r0, [r4, r0]
	bl ManagedSprite_SetPriority
	cmp r6, #0x75
	bhs _021EA452
	lsl r0, r6, #2
	ldr r7, _021EA4D8 ; =0x0001E530
	add r5, r4, r0
_021EA41C:
	ldr r0, _021EA4D0 ; =0x0001E528
	ldr r1, _021EA4D4 ; =0x0001E52C
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021EA4E0 ; =ov112_021FF028
	bl SpriteSystem_NewSprite
	ldr r1, _021EA4D8 ; =0x0001E530
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetPaletteOverride
	ldr r0, _021EA4D8 ; =0x0001E530
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, r7]
	mov r1, #2
	bl ManagedSprite_SetPriority
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x75
	blo _021EA41C
_021EA452:
	cmp r6, #0xd9
	bhs _021EA496
	lsl r0, r6, #2
	ldr r7, _021EA4D8 ; =0x0001E530
	add r5, r4, r0
_021EA45C:
	ldr r0, _021EA4D0 ; =0x0001E528
	ldr r1, _021EA4D4 ; =0x0001E52C
	mov r3, #1
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021EA4E4 ; =ov112_021FF05C
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	ldr r1, _021EA4D8 ; =0x0001E530
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetPaletteOverride
	ldr r0, _021EA4D8 ; =0x0001E530
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, r7]
	mov r1, #2
	bl ManagedSprite_SetPriority
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xd9
	blo _021EA45C
_021EA496:
	add r0, r4, #0
	bl ov112_021EA984
	ldr r0, _021EA4E8 ; =0x0001E550
	mov r1, #2
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawPriority
	ldr r0, _021EA4E8 ; =0x0001E550
	mov r1, #1
	ldr r0, [r4, r0]
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, _021EA4EC ; =0x0001E53C
	mov r1, #1
	ldr r0, [r4, r0]
	bl ManagedSprite_SetAnimateFlag
	ldr r0, _021EA4F0 ; =0x0001E540
	mov r1, #1
	ldr r0, [r4, r0]
	bl ManagedSprite_SetAnimateFlag
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EA4C8: .word ov112_021FED1C
_021EA4CC: .word ov112_021FEC88
_021EA4D0: .word 0x0001E528
_021EA4D4: .word 0x0001E52C
_021EA4D8: .word 0x0001E530
_021EA4DC: .word 0x0001E534
_021EA4E0: .word ov112_021FF028
_021EA4E4: .word ov112_021FF05C
_021EA4E8: .word 0x0001E550
_021EA4EC: .word 0x0001E53C
_021EA4F0: .word 0x0001E540
	thumb_func_end ov112_021EA3C0

