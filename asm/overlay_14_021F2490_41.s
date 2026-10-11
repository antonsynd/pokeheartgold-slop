#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F37F4
	.public ov14_021F83E4
	.public ov14_021F8418

    .text

	thumb_func_start ov14_021F37F4
ov14_021F37F4: ; 0x021F37F4
	push {r4, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _021F383C ; =ov14_021F83E4
	bl SpriteSystem_NewSprite
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r1, #0xbd
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r4, r1]
	ldr r2, _021F3840 ; =ov14_021F8418
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	nop
_021F383C: .word ov14_021F83E4
_021F3840: .word ov14_021F8418
	thumb_func_end ov14_021F37F4

