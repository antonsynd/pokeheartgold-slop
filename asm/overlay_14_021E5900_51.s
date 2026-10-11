#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7940
	.public ov14_021E7960
	.extern _021F7BBC

    .text

	.text
	thumb_func_start ov14_021E7940
ov14_021E7940: ; 0x021E7940
	ldrb r3, [r2]
	cmp r0, r3
	blt _021E795C
	ldrb r3, [r2, #1]
	cmp r0, r3
	bgt _021E795C
	ldrb r0, [r2, #2]
	cmp r1, r0
	blt _021E795C
	ldrb r0, [r2, #3]
	cmp r1, r0
	bge _021E795C
	mov r0, #1
	bx lr
_021E795C:
	mov r0, #0
	bx lr
	thumb_func_end ov14_021E7940

	thumb_func_start ov14_021E7960
ov14_021E7960: ; 0x021E7960
	push {r3, r4, r5, lr}
	ldr r2, _021E79A8 ; =_021F7BBC
	add r5, r0, #0
	add r4, r1, #0
	bl ov14_021E7940
	cmp r0, #1
	bne _021E79A4
	cmp r5, #0xc
	bge _021E7978
	mov r5, #0
	b _021E798E
_021E7978:
	cmp r5, #0x9c
	blt _021E7980
	mov r5, #5
	b _021E798E
_021E7980:
	sub r5, #0xc
	add r0, r5, #0
	mov r1, #0x18
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_021E798E:
	sub r4, #0x28
	add r0, r4, #0
	mov r1, #0x18
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #6
	mul r0, r1
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_021E79A4:
	mov r0, #0xff
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E79A8: .word _021F7BBC
	thumb_func_end ov14_021E7960

