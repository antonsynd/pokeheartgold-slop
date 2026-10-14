#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7D9C

    .text

	.text
	thumb_func_start ov14_021E7D9C
ov14_021E7D9C: ; 0x021E7D9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02019B08
	lsr r2, r4, #1
	lsl r1, r2, #1
	add r1, r2, r1
	add r1, r1, #2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xb
	mul r1, r2
	lsl r1, r1, #1
	add r1, r0, r1
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r0, #3
	lsl r0, r0, #0x18
	ldr r3, [r5, #0x34]
	ldr r2, _021E7DF4 ; =0x000040C0
	lsr r0, r0, #0x17
	ldr r3, [r3, r2]
	mov r2, #1
	lsl r2, r4
	tst r2, r3
	bne _021E7DE0
	add r4, #0xb
	b _021E7DE2
_021E7DE0:
	add r4, #0x2b
_021E7DE2:
	lsl r2, r4, #0x10
	lsr r4, r2, #0x10
	mov r2, #0xf
	ldrh r3, [r1, r0]
	lsl r2, r2, #0xc
	and r2, r3
	add r2, r2, r4
	strh r2, [r1, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7DF4: .word 0x000040C0
	thumb_func_end ov14_021E7D9C

