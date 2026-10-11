#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C744
	.public ov70_0223C7C4
	.extern ov70_02238D84
	.extern ov70_0223CAC4
	.extern ov70_0223CD28
	.extern ov70_0223F370
	.extern ov70_0223F828
	.extern ov70_02242144

	.text

	.text
	thumb_func_start ov70_0223C744
ov70_0223C744: ; 0x0223C744
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223C7B4 ; =0x000011A8
	ldr r0, [r5, r0]
	bl ov70_02242144
	add r4, r0, #0
	cmp r4, #0xb
	beq _0223C768
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0223C768
	add r0, r0, #1
	cmp r4, r0
	beq _0223C7AE
	b _0223C774
_0223C768:
	mov r0, #0
	bl ov70_0223CD28
	mov r0, #0
	str r0, [r5, #0x2c]
	b _0223C7AE
_0223C774:
	mov r0, #0
	bl ov70_0223CD28
	ldr r0, _0223C7B8 ; =0x00000B8A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov70_0223F828
	ldr r0, _0223C7BC ; =0x000010A8
	mov r1, #0
	add r0, r5, r0
	str r1, [r5, #0x2c]
	bl FillWindowPixelBuffer
	mov r3, #0
	mov r1, #0xba
	ldr r0, _0223C7C0 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0223C7BC ; =0x000010A8
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r4, #0
	bl ov70_0223F370
_0223C7AE:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0223C7B4: .word 0x000011A8
_0223C7B8: .word 0x00000B8A
_0223C7BC: .word 0x000010A8
_0223C7C0: .word 0x00010200
	thumb_func_end ov70_0223C744

	thumb_func_start ov70_0223C7C4
ov70_0223C7C4: ; 0x0223C7C4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C7E8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xb0
	mov r2, #1
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0xd
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223C7E8: .word 0x00000F0F
	thumb_func_end ov70_0223C7C4

