#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022427C4
	.public ov70_02242860
	.extern ov70_02242508
	.extern ov70_022434C0
	.extern ov70_02243F00

	.text

	.text
	thumb_func_start ov70_022427C4
ov70_022427C4: ; 0x022427C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	cmp r1, #0
	bge _02242802
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r4, #0x14]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _022427F8
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242834
_022427F8:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x5a
	strh r1, [r0]
	b _02242834
_02242802:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r4, #0x10]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r4, r0]
	cmp r0, #2
	bge _0224282C
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242834
_0224282C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
_02242834:
	mov r1, #0x5a
	ldrsh r1, [r4, r1]
	ldr r2, [r4, #0x5c]
	add r0, r4, #0
	bl ov70_022434C0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r4, #4]
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x38]
	add r2, #0x40
	bl ov70_02243F00
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov70_022427C4

	thumb_func_start ov70_02242860
ov70_02242860: ; 0x02242860
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	beq _02242874
	cmp r4, #5
	beq _02242880
	cmp r4, #6
	beq _0224288E
	b _0224289A
_02242874:
	ldr r0, _022428BC ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242880:
	mov r1, #0
	mvn r1, r1
	bl ov70_022427C4
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0224288E:
	mov r1, #1
	bl ov70_022427C4
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0224289A:
	mov r0, #0x5a
	ldrsh r1, [r5, r0]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, [r5, #0x5c]
	cmp r2, r1
	bge _022428B8
	ldr r0, _022428BC ; =0x000005DC
	bl PlaySE
	ldr r1, [r5, #0x34]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_022428B8:
	sub r0, #0x5b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022428BC: .word 0x000005DC
	thumb_func_end ov70_02242860

