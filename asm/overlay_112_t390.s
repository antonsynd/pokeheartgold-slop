#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F26E8
	.public ov112_021F2768
	.extern ov112_021F1624
	.extern ov112_021F2204
	.extern ov112_021F22B0
	.extern ov112_021F24C4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F26E8
ov112_021F26E8: ; 0x021F26E8
	push {r3, r4, r5, lr}
	ldr r1, _021F2760 ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r4, [r1]
	mov r1, #0
	bl ov112_021F2204
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov112_021F2204
	mov r0, #5
	lsl r0, r0, #6
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _021F2720
	sub r0, r0, #3
	ldrb r0, [r5, r0]
	cmp r1, r0
	bhi _021F2720
	mov r2, #0x24
	b _021F2750
_021F2720:
	add r4, #0x78
	ldrh r2, [r4]
	mov r1, #0xfa
	lsl r1, r1, #4
	cmp r2, r1
	blo _021F2730
	mov r2, #0x25
	b _021F2750
_021F2730:
	ldr r0, _021F2764 ; =0x00000BB8
	cmp r2, r0
	blo _021F273A
	mov r2, #0x26
	b _021F2750
_021F273A:
	lsr r0, r1, #1
	cmp r2, r0
	blo _021F2744
	mov r2, #0x27
	b _021F2750
_021F2744:
	lsr r0, r1, #2
	cmp r2, r0
	blo _021F274E
	mov r2, #0x28
	b _021F2750
_021F274E:
	mov r2, #0x29
_021F2750:
	add r0, r5, #0
	mov r1, #0x23
	bl ov112_021F1624
	add r0, r5, #0
	bl ov112_021F24C4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2760: .word 0x0000013D
_021F2764: .word 0x00000BB8
	thumb_func_end ov112_021F26E8

	thumb_func_start ov112_021F2768
ov112_021F2768: ; 0x021F2768
	push {r3, r4, r5, lr}
	ldr r1, _021F27B4 ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r1, [r1]
	ldrh r1, [r1, #0xa]
	cmp r1, #0
	beq _021F278A
	mov r1, #0
	mov r2, #1
	mov r4, #0x2a
	bl ov112_021F2204
	b _021F279C
_021F278A:
	ldr r1, [r5, #0xc]
	add r0, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #3
	mov r4, #0x2b
	bl ov112_021F22B0
_021F279C:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov112_021F2204
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov112_021F1624
	pop {r3, r4, r5, pc}
	nop
_021F27B4: .word 0x0000013D
	thumb_func_end ov112_021F2768

