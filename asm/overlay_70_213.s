#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02240500
	.public ov70_02240540
	.public ov70_02240A7C
	.public ov70_02240CE4
	.public ov70_02240D44

	.text

	thumb_func_start ov70_02240540
ov70_02240540: ; 0x02240540
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0202DBA0
	ldr r3, _02240594 ; =0x0000025D
	mov r1, #0x4f
	lsl r1, r1, #2
	add r2, r0, #0
	ldrsb r3, [r4, r3]
	add r0, r4, #0
	add r1, r4, r1
	bl ov70_02240A7C
	ldr r0, [r4]
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r0, [r0, #0x18]
	add r1, r4, r1
	bl ov70_02240CE4
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl ov70_02240500
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0]
	bl sub_0202DB5C
	mov r0, #0x1e
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0xb
	bl ov70_02240D44
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02240594: .word 0x0000025D
	thumb_func_end ov70_02240540

