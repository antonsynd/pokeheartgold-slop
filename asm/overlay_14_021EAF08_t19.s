#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EBE68

    .text

	.text
	thumb_func_start ov14_021EBE68
ov14_021EBE68: ; 0x021EBE68
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	mov r1, #3
	mvn r1, r1
	cmp r0, r1
	bhi _021EBEA0
	bhs _021EBF72
	cmp r0, #7
	bhi _021EBF78
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EBE90: ; jump table
	.short _021EBEB4 - _021EBE90 - 2 ; case 0
	.short _021EBEC4 - _021EBE90 - 2 ; case 1
	.short _021EBED4 - _021EBE90 - 2 ; case 2
	.short _021EBEE4 - _021EBE90 - 2 ; case 3
	.short _021EBEF4 - _021EBE90 - 2 ; case 4
	.short _021EBF04 - _021EBE90 - 2 ; case 5
	.short _021EBF14 - _021EBE90 - 2 ; case 6
	.short _021EBF4C - _021EBE90 - 2 ; case 7
_021EBEA0:
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bhi _021EBEAC
	beq _021EBF60
	b _021EBF78
_021EBEAC:
	add r1, r1, #1
	cmp r0, r1
	beq _021EBF4C
	b _021EBF78
_021EBEB4:
	ldr r0, _021EBF80 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	bl ov14_021E7E10
	b _021EBF78
_021EBEC4:
	ldr r0, _021EBF80 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov14_021E7E10
	b _021EBF78
_021EBED4:
	ldr r0, _021EBF80 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	bl ov14_021E7E10
	b _021EBF78
_021EBEE4:
	ldr r0, _021EBF80 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #3
	bl ov14_021E7E10
	b _021EBF78
_021EBEF4:
	ldr r0, _021EBF80 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #4
	bl ov14_021E7E10
	b _021EBF78
_021EBF04:
	ldr r0, _021EBF80 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #5
	bl ov14_021E7E10
	b _021EBF78
_021EBF14:
	ldr r1, [r4, #0x34]
	ldr r0, _021EBF84 ; =0x000040C0
	mov r2, #0xb
	ldr r1, [r1, r0]
	add r0, sp, #0
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	add r3, sp, #0
	bl ov14_021E6094
	add r1, sp, #0
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E895C
	ldr r0, _021EBF80 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x9a
	bl ov14_021F23F0
	add sp, #4
	pop {r3, r4, pc}
_021EBF4C:
	ldr r0, _021EBF88 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x9a
	bl ov14_021F23F0
	add sp, #4
	pop {r3, r4, pc}
_021EBF60:
	ldr r0, _021EBF88 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x18
	bl ov14_021F0244
	add sp, #4
	pop {r3, r4, pc}
_021EBF72:
	ldr r0, _021EBF88 ; =0x000005DC
	bl PlaySE
_021EBF78:
	mov r0, #0x16
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EBF80: .word 0x000005DD
_021EBF84: .word 0x000040C0
_021EBF88: .word 0x000005DC
	thumb_func_end ov14_021EBE68

