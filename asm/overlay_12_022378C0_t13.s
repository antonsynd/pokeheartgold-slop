#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_02239810

	.text

	.text
	thumb_func_start ov12_02239810
ov12_02239810: ; 0x02239810
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, #5
	bl sub_020399FC
	ldr r0, _02239850 ; =0x000023FD
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02239828
	cmp r0, #3
	bne _0223984E
_02239828:
	cmp r0, #0
	bne _02239830
	bl ov06_0221BAF0
_02239830:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl PokepicManager_DrawAll
	add r4, #0x94
	ldr r0, [r4]
	bl SpriteSystem_DrawSprites
	bl SpriteSystem_UpdateTransfer
	mov r0, #1
	mov r1, #0
	bl RequestSwap3DBuffers
_0223984E:
	pop {r4, pc}
	.balign 4, 0
_02239850: .word 0x000023FD
	thumb_func_end ov12_02239810

