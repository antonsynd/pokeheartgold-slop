#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E98FC
	.extern ov73_021EA0F0
	.extern ov73_021EA134

	.text

	.text
	thumb_func_start ov73_021E98FC
ov73_021E98FC: ; 0x021E98FC
	push {r4, lr}
	ldr r2, _021E99C4 ; =gSystem
	mov r1, #0x40
	ldr r3, [r2, #0x4c]
	add r4, r0, #0
	tst r1, r3
	beq _021E994A
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	add r0, r0, #1
	cmp r1, r0
	bne _021E9930
	add r0, r4, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0]
_021E9930:
	ldr r0, _021E99C8 ; =0x00000DF8
	ldr r1, _021E99CC ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4]
	mov r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E99D0 ; =0x000005DC
	bl PlaySE
	b _021E99C0
_021E994A:
	mov r1, #0x80
	tst r1, r3
	beq _021E998C
	add r0, #0x9c
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bge _021E9972
	add r0, r4, #0
	add r0, #0x98
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0]
_021E9972:
	ldr r0, _021E99C8 ; =0x00000DF8
	ldr r1, _021E99CC ; =0x00000BE8
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x9c
	ldr r2, [r4]
	mov r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E99D0 ; =0x000005DC
	bl PlaySE
	b _021E99C0
_021E998C:
	ldr r2, [r2, #0x48]
	mov r1, #1
	tst r1, r2
	beq _021E99A8
	mov r1, #0
	add r2, r1, #0
	bl ov73_021EA134
	mov r0, #0x23
	str r0, [r4, #0x1c]
	ldr r0, _021E99D0 ; =0x000005DC
	bl PlaySE
	b _021E99C0
_021E99A8:
	mov r1, #2
	tst r1, r2
	beq _021E99C0
	mov r1, #0
	add r2, r1, #0
	bl ov73_021EA134
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	ldr r0, _021E99D0 ; =0x000005DC
	bl PlaySE
_021E99C0:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_021E99C4: .word gSystem
_021E99C8: .word 0x00000DF8
_021E99CC: .word 0x00000BE8
_021E99D0: .word 0x000005DC
	thumb_func_end ov73_021E98FC

