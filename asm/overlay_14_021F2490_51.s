#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3CB4
	.public ov14_021F844C
	.public ov14_021F8480

    .text

	thumb_func_start ov14_021F3CB4
ov14_021F3CB4: ; 0x021F3CB4
	push {r4, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r4, r1]
	ldr r2, _021F3D04 ; =ov14_021F844C
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x3c
	sub r1, #0x38
	mov r3, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3D08 ; =ov14_021F8480
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xcd
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	.balign 4, 0
_021F3D04: .word ov14_021F844C
_021F3D08: .word ov14_021F8480
	thumb_func_end ov14_021F3CB4

