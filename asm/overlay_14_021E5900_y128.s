#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8874

    .text

	.text
	thumb_func_start ov14_021E8874
ov14_021E8874: ; 0x021E8874
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E88A0 ; =0x0000044E
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1d
	beq _021E889E
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	bl sub_0201980C
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	mov r2, #0x14
	mov r3, #0xc
	bl sub_020196E8
_021E889E:
	pop {r4, pc}
	.balign 4, 0
_021E88A0: .word 0x0000044E
	thumb_func_end ov14_021E8874

