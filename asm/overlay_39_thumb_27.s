#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_02227778
	.extern ov39_022278D4
	.extern ov39_02227A5C
	.extern ov39_0222A8B4

	.text

	.text
	thumb_func_start ov39_02227778
ov39_02227778: ; 0x02227778
	push {r4, lr}
	mov r1, #0xf1
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02227836
	add r0, r1, #0
	add r0, #0x24
	ldr r2, [r4, r0]
	ldr r0, _022278C8 ; =0x000059DC
	cmp r2, r0
	beq _022277E4
	add r0, r1, #0
	add r0, #0x4d
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _022277AA
	add r0, r1, #0
	add r0, #0x4d
	ldrb r0, [r4, r0]
	add r1, #0x4d
	sub r0, r0, #1
	strb r0, [r4, r1]
	b _022277E4
_022277AA:
	bl ov39_0222A13C
	cmp r0, #9
	bhi _022277E4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022277BE: ; jump table
	.short _022277E4 - _022277BE - 2 ; case 0
	.short _022277D2 - _022277BE - 2 ; case 1
	.short _022277E4 - _022277BE - 2 ; case 2
	.short _022277E4 - _022277BE - 2 ; case 3
	.short _022277E4 - _022277BE - 2 ; case 4
	.short _022277E4 - _022277BE - 2 ; case 5
	.short _022277E4 - _022277BE - 2 ; case 6
	.short _022277D2 - _022277BE - 2 ; case 7
	.short _022277D2 - _022277BE - 2 ; case 8
	.short _022277D2 - _022277BE - 2 ; case 9
_022277D2:
	add r0, r4, #0
	bl ov39_022278D4
	cmp r0, #1
	bne _022277E4
	mov r0, #0xfa
	ldr r1, _022278C8 ; =0x000059DC
	lsl r0, r0, #2
	str r1, [r4, r0]
_022277E4:
	add r0, r4, #0
	bl ov39_02227A5C
	ldr r1, _022278CC ; =0x0000040C
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _02227836
	sub r1, #0xc
	add r0, r4, #0
	add r1, r4, r1
	blx r2
	cmp r0, #1
	bne _02227836
	ldr r0, _022278CC ; =0x0000040C
	mov r1, #0
	str r1, [r4, r0]
	sub r0, #0xc
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _02227820
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0x2c
	add r1, r4, r1
	blx r2
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #0xa
	str r1, [r4, r0]
_02227820:
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0xfb
	ldr r1, _022278C8 ; =0x000059DC
	lsl r0, r0, #2
	str r1, [r4, r0]
_02227836:
	mov r3, #0xef
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	lsl r1, r0, #2
	ldr r0, _022278D0 ; =ov39_0222A8B4
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _022278C2
	add r1, r3, #0
	add r3, r3, #4
	ldr r3, [r4, r3]
	add r1, #0x10
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	add r0, r4, #0
	add r1, r4, r1
	blx r2
	cmp r0, #0
	beq _022278C2
	cmp r0, #1
	beq _02227866
	cmp r0, #2
	beq _022278AC
	b _022278C2
_02227866:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, #0xc
	add r0, r4, r0
	mov r1, #0
	bl MI_CpuFill8
	mov r1, #0xef
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r2, r0, #2
	ldr r0, _022278D0 ; =ov39_0222A8B4
	ldr r2, [r0, r2]
	add r0, r1, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _022278C2
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	str r2, [r4, r1]
	b _022278C2
_022278AC:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, #0xf
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_022278C2:
	mov r0, #1
	pop {r4, pc}
	nop
_022278C8: .word 0x000059DC
_022278CC: .word 0x0000040C
_022278D0: .word ov39_0222A8B4
	thumb_func_end ov39_02227778

