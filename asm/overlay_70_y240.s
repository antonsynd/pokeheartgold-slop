#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F008
	.public ov70_0223F0B4
	.public ov70_0223F0DC
	.extern ov70_02238C14
	.extern ov70_02238D84
	.extern ov70_0223E8E8
	.extern ov70_0223EDE4
	.extern ov70_0223F3D8
	.extern ov70_0223F828
	.extern ov70_0223F864
	.extern ov70_02242144

	.text

	.text
	thumb_func_start ov70_0223F008
ov70_0223F008: ; 0x0223F008
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223F09C ; =0x000011A8
	ldr r0, [r4, r0]
	bl ov70_02242144
	add r1, r0, #0
	cmp r1, #0xc
	beq _0223F02C
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _0223F02C
	add r0, r0, #1
	cmp r1, r0
	beq _0223F096
	b _0223F054
_0223F02C:
	ldr r0, _0223F0A0 ; =0x00000F18
	mov r1, #0
	add r0, r4, r0
	bl ClearFrameAndWindow2
	ldr r1, _0223F0A4 ; =0x000011C4
	ldr r0, _0223F0A8 ; =0x00000B84
	ldr r1, [r4, r1]
	add r0, r4, r0
	ldr r1, [r1, #0x20]
	bl ov70_0223EDE4
	cmp r0, #0
	beq _0223F04E
	mov r0, #0
	str r0, [r4, #0x2c]
	b _0223F096
_0223F04E:
	mov r0, #7
	str r0, [r4, #0x2c]
	b _0223F096
_0223F054:
	ldr r0, _0223F0A8 ; =0x00000B84
	mov r2, #0
	add r0, r4, r0
	bl ov70_0223F828
	mov r0, #0xd
	ldr r1, _0223F0AC ; =0x00000B87
	str r0, [r4, #0x2c]
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov70_0223F864
	ldr r2, _0223F0A8 ; =0x00000B84
	ldr r3, _0223F0B0 ; =0x00001058
	ldrsh r1, [r4, r2]
	add r3, r4, r3
	str r1, [sp]
	add r1, r2, #2
	ldrsb r1, [r4, r1]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1c
	add r1, #0x20
	add r2, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov70_0223F3D8
_0223F096:
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0223F09C: .word 0x000011A8
_0223F0A0: .word 0x00000F18
_0223F0A4: .word 0x000011C4
_0223F0A8: .word 0x00000B84
_0223F0AC: .word 0x00000B87
_0223F0B0: .word 0x00001058
	thumb_func_end ov70_0223F008

	thumb_func_start ov70_0223F0B4
ov70_0223F0B4: ; 0x0223F0B4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223F0D8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0x17
	mov r2, #1
	mov r3, #0
	bl ov70_0223E8E8
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xe
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223F0D8: .word 0x00000F0F
	thumb_func_end ov70_0223F0B4

	thumb_func_start ov70_0223F0DC
ov70_0223F0DC: ; 0x0223F0DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, _0223F100 ; =0x0000011A
	mov r1, #0xc
	mov r3, #3
	bl ov70_02238C14
	ldr r1, _0223F104 ; =0x000011C8
	str r0, [r4, r1]
	mov r0, #0xf
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223F100: .word 0x0000011A
_0223F104: .word 0x000011C8
	thumb_func_end ov70_0223F0DC

