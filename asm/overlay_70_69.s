#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D60
	.public ov70_02238D84
	.public ov70_02238E50
	.public ov70_0223A3DC
	.public ov70_0223A4F4
	.public ov70_0223A874
	.public ov70_0223E76C

	.text

	thumb_func_start ov70_0223A3DC
ov70_0223A3DC: ; 0x0223A3DC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223A494 ; =0x000011D0
	ldr r0, [r5, r0]
	bl TouchscreenListMenu_HandleInput
	cmp r0, #1
	bne _0223A45E
	add r0, r5, #0
	bl ov70_02238D60
	ldr r0, _0223A498 ; =0x000011AC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	mov r0, #0x4f
	lsl r0, r0, #2
	add r4, r5, r0
	add r0, r4, #0
	bl ov70_0223E76C
	cmp r0, #0
	beq _0223A43A
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r0, #6
	bne _0223A43A
	ldr r0, _0223A49C ; =0x00000F0F
	mov r1, #0x24
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #4]
	bl ov70_0223A4F4
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ov70_02238D84
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, pc}
_0223A43A:
	ldr r0, _0223A49C ; =0x00000F0F
	mov r1, #6
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #4]
	bl ov70_0223A4F4
	add r0, r5, #0
	mov r1, #3
	mov r2, #5
	bl ov70_02238D84
	add r0, r5, #0
	bl ov70_0223A874
	b _0223A48C
_0223A45E:
	cmp r0, #2
	beq _0223A46A
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0223A48C
_0223A46A:
	add r0, r5, #0
	bl ov70_02238D60
	ldr r0, _0223A498 ; =0x000011AC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	add r0, r5, #0
	bl ov70_0223A874
_0223A48C:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223A494: .word 0x000011D0
_0223A498: .word 0x000011AC
_0223A49C: .word 0x00000F0F
	thumb_func_end ov70_0223A3DC

