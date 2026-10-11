#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E96C
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222E96C
ov45_0222E96C: ; 0x0222E96C
	push {r3, lr}
	ldr r0, _0222E9B0 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E97A
	bl GF_AssertFail
_0222E97A:
	ldr r0, _0222E9B0 ; =_022577C0
	ldr r1, _0222E9B4 ; =0x0000012D
	ldr r0, [r0]
	ldrb r2, [r0, r1]
	cmp r2, #4
	beq _0222E992
	add r1, r1, #1
	ldrb r1, [r0, r1]
	cmp r1, #4
	bne _0222E992
	mov r0, #4
	pop {r3, pc}
_0222E992:
	ldr r2, _0222E9B8 ; =0x00000133
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _0222E99E
	mov r0, #4
	pop {r3, pc}
_0222E99E:
	sub r1, r2, #1
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0222E9AA
	mov r0, #4
	pop {r3, pc}
_0222E9AA:
	sub r1, r2, #7
	ldrb r0, [r0, r1]
	pop {r3, pc}
	.balign 4, 0
_0222E9B0: .word _022577C0
_0222E9B4: .word 0x0000012D
_0222E9B8: .word 0x00000133
	thumb_func_end ov45_0222E96C

