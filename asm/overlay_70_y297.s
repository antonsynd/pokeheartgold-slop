#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022406B8
	.public ov70_02240748
	.public ov70_0224078C
	.extern ov70_02237F38
	.extern ov70_02237F58
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_02238F80
	.extern ov70_022404D4
	.extern ov70_02241234
	.extern ov70_02244FA4

	.text

	.text
	thumb_func_start ov70_022406B8
ov70_022406B8: ; 0x022406B8
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _0224072A
	bl ov70_02237F58
	ldr r1, _02240744 ; =0x00001604
	mov r2, #0
	add r0, #0xf
	str r2, [r4, r1]
	cmp r0, #0xf
	bhi _02240740
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022406E0: ; jump table
	.short _0224071C - _022406E0 - 2 ; case 0
	.short _0224071C - _022406E0 - 2 ; case 1
	.short _02240724 - _022406E0 - 2 ; case 2
	.short _0224071C - _022406E0 - 2 ; case 3
	.short _02240740 - _022406E0 - 2 ; case 4
	.short _02240740 - _022406E0 - 2 ; case 5
	.short _02240740 - _022406E0 - 2 ; case 6
	.short _02240740 - _022406E0 - 2 ; case 7
	.short _02240740 - _022406E0 - 2 ; case 8
	.short _02240740 - _022406E0 - 2 ; case 9
	.short _02240714 - _022406E0 - 2 ; case 10
	.short _0224070E - _022406E0 - 2 ; case 11
	.short _02240708 - _022406E0 - 2 ; case 12
	.short _0224071C - _022406E0 - 2 ; case 13
	.short _02240740 - _022406E0 - 2 ; case 14
	.short _02240700 - _022406E0 - 2 ; case 15
_02240700:
	add r0, r4, #0
	bl ov70_022404D4
	b _02240740
_02240708:
	add r0, r4, #0
	bl ov70_022404D4
_0224070E:
	add r0, r4, #0
	bl ov70_022404D4
_02240714:
	mov r0, #3
	bl sub_02039AD8
	b _02240740
_0224071C:
	mov r0, #4
	bl sub_02039AD8
	b _02240740
_02240724:
	bl sub_020399EC
	b _02240740
_0224072A:
	ldr r0, _02240744 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02240740
	bl sub_020399EC
_02240740:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02240744: .word 0x00001604
	thumb_func_end ov70_022406B8

	thumb_func_start ov70_02240748
ov70_02240748: ; 0x02240748
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02240788 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x93
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x24
	bl ov70_02238D84
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	add r0, r4, #0
	bl ov70_02238F80
	add r0, r4, #0
	bl ov70_02241234
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02240788: .word 0x00000F0F
	thumb_func_end ov70_02240748

	thumb_func_start ov70_0224078C
ov70_0224078C: ; 0x0224078C
	push {r3, lr}
	ldr r1, [r0, #0x3c]
	mov r2, #0x9a
	add r1, #0xf
	cmp r1, #0xe
	bhi _022407CC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022407A4: ; jump table
	.short _022407CC - _022407A4 - 2 ; case 0
	.short _022407CA - _022407A4 - 2 ; case 1
	.short _022407CC - _022407A4 - 2 ; case 2
	.short _022407CC - _022407A4 - 2 ; case 3
	.short _022407C2 - _022407A4 - 2 ; case 4
	.short _022407C2 - _022407A4 - 2 ; case 5
	.short _022407C2 - _022407A4 - 2 ; case 6
	.short _022407C2 - _022407A4 - 2 ; case 7
	.short _022407C2 - _022407A4 - 2 ; case 8
	.short _022407C2 - _022407A4 - 2 ; case 9
	.short _022407CC - _022407A4 - 2 ; case 10
	.short _022407CC - _022407A4 - 2 ; case 11
	.short _022407CC - _022407A4 - 2 ; case 12
	.short _022407CA - _022407A4 - 2 ; case 13
	.short _022407C6 - _022407A4 - 2 ; case 14
_022407C2:
	mov r2, #0x1a
	b _022407CC
_022407C6:
	mov r2, #0x97
	b _022407CC
_022407CA:
	mov r2, #0x9c
_022407CC:
	ldr r1, _022407E0 ; =0x00000F0F
	mov r3, #1
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	bl ov70_02244FA4
	pop {r3, pc}
	nop
_022407E0: .word 0x00000F0F
	thumb_func_end ov70_0224078C

