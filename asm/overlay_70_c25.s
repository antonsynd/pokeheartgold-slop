#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238880

	.text

	.text
	thumb_func_start ov70_02238880
ov70_02238880: ; 0x02238880
	ldr r3, _022388C0 ; =0x04001000
	ldr r0, _022388C4 ; =0xFFFF1FFF
	ldr r1, [r3]
	lsl r2, r3, #0xe
	and r1, r0
	str r1, [r3]
	ldr r1, [r2]
	and r1, r0
	lsr r0, r3, #0xd
	orr r0, r1
	str r0, [r2]
	ldr r0, _022388C8 ; =0x04000048
	mov r1, #0x3f
	ldrh r3, [r0]
	mov r2, #0x1f
	bic r3, r1
	orr r3, r2
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r1
	orr r2, r3
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0, #2]
	add r1, r0, #0
	ldr r2, _022388CC ; =0x0000F0FF
	sub r1, #8
	strh r2, [r1]
	mov r1, #0x10
	sub r0, r0, #4
	strh r1, [r0]
	bx lr
	.balign 4, 0
_022388C0: .word 0x04001000
_022388C4: .word 0xFFFF1FFF
_022388C8: .word 0x04000048
_022388CC: .word 0x0000F0FF
	thumb_func_end ov70_02238880

