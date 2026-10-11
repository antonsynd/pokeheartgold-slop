#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02258E54
	.extern ov12_0226D010

	.text

	.text
	thumb_func_start ov12_02258E54
ov12_02258E54: ; 0x02258E54
	push {r3, lr}
	add r2, r1, #0
	add r2, #0x94
	ldrb r2, [r2]
	cmp r2, #0
	beq _02258E76
	mov r2, #0x6a
	mov r3, #0
	lsl r2, r2, #2
	strb r3, [r1, r2]
	add r2, r1, #0
	add r2, #0x94
	ldrb r2, [r2]
	lsl r3, r2, #2
	ldr r2, _02258E78 ; =ov12_0226D010
	ldr r2, [r2, r3]
	blx r2
_02258E76:
	pop {r3, pc}
	.balign 4, 0
_02258E78: .word ov12_0226D010
	thumb_func_end ov12_02258E54

