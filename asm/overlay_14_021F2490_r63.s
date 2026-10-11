#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F35BC
	.extern ov14_021F8210
	.extern ov14_021F8244

    .text

	.text
	thumb_func_start ov14_021F35BC
ov14_021F35BC: ; 0x021F35BC
	push {r4, lr}
	mov r1, #0xbd
	ldr r4, [r0, #0x34]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r4, r1]
	ldr r2, _021F360C ; =ov14_021F8210
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x10
	sub r1, #0xc
	mov r3, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3610 ; =ov14_021F8244
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xc2
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	.balign 4, 0
_021F360C: .word ov14_021F8210
_021F3610: .word ov14_021F8244
	thumb_func_end ov14_021F35BC

