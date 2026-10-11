#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022429A0
	.public ov70_022429B8
	.public ov70_02242B5C
	.public ov70_02242BBC
	.extern ov70_02238F9C
	.extern ov70_02242164
	.extern ov70_02242508
	.extern ov70_0224352C
	.extern ov70_02243F00
	.extern ov70_02245DF8
	.extern ov70_02245DF9
	.extern ov70_02245EFC
	.extern ov70_02245EFD
	.extern ov70_02245EFE
	.extern ov70_02245EFF

	.text

	.text
	thumb_func_start ov70_022429A0
ov70_022429A0: ; 0x022429A0
	cmp r1, #9
	beq _022429AA
	cmp r1, #0xa
	beq _022429B0
	b _022429B4
_022429AA:
	mov r0, #1
	mvn r0, r0
	bx lr
_022429B0:
	mov r0, #0xa
	bx lr
_022429B4:
	add r0, r1, #0
	bx lr
	thumb_func_end ov70_022429A0

	thumb_func_start ov70_022429B8
ov70_022429B8: ; 0x022429B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x48]
	cmp r1, #9
	bge _022429C8
	add r0, #0x7e
	strb r1, [r0]
_022429C8:
	ldr r0, _02242B3C ; =gSystem
	mov r2, #0x40
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _022429DE
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B40 ; =ov70_02245EFC
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _02242A12
_022429DE:
	mov r2, #0x80
	tst r2, r0
	beq _022429F0
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B44 ; =ov70_02245EFD
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _02242A12
_022429F0:
	mov r2, #0x20
	tst r2, r0
	beq _02242A02
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B48 ; =ov70_02245EFE
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _02242A12
_02242A02:
	mov r2, #0x10
	tst r0, r2
	beq _02242A12
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B4C ; =ov70_02245EFF
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
_02242A12:
	cmp r1, #9
	blt _02242A6A
	ldr r0, [r5, #0x48]
	cmp r0, #9
	bge _02242A6A
	ldr r0, _02242B3C ; =gSystem
	ldr r2, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r2
	beq _02242A48
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	add r0, r0, #4
	cmp r0, #9
	bge _02242A6A
	add r0, r5, #0
	add r0, #0x48
_02242A38:
	ldr r2, [r0]
	add r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	add r2, r2, #4
	cmp r2, #9
	blt _02242A38
	b _02242A6A
_02242A48:
	mov r0, #0x80
	tst r0, r2
	beq _02242A6A
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	sub r0, r0, #4
	bmi _02242A6A
	add r0, r5, #0
	add r0, #0x48
_02242A5E:
	ldr r2, [r0]
	sub r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	sub r2, r2, #4
	bpl _02242A5E
_02242A6A:
	ldr r0, [r5, #0x48]
	cmp r1, r0
	beq _02242AB6
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	ldr r1, _02242B54 ; =ov70_02245DF8
	lsl r2, r0, #1
	ldrb r1, [r1, r2]
	ldr r3, _02242B58 ; =ov70_02245DF9
	ldr r0, [r5, #0xc]
	ldrb r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #9
	beq _02242A9A
	cmp r0, #0xa
	beq _02242AA4
	b _02242AAE
_02242A9A:
	ldr r0, [r5, #0xc]
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _02242AB6
_02242AA4:
	ldr r0, [r5, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	b _02242AB6
_02242AAE:
	ldr r0, [r5, #0xc]
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
_02242AB6:
	add r0, r5, #0
	mov r1, #6
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02242AF0
	add r0, r5, #0
	bl ov70_022429A0
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02242AE6
	cmp r5, #0xb
	beq _02242AE6
	cmp r4, #0
	beq _02242AE6
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _02242B36
_02242AE6:
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02242AF0:
	ldr r0, _02242B3C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02242B24
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_022429A0
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02242B1A
	cmp r5, #0xb
	beq _02242B1A
	cmp r4, #0
	beq _02242B1A
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _02242B36
_02242B1A:
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02242B24:
	mov r0, #2
	tst r0, r1
	beq _02242B36
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B36:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02242B3C: .word gSystem
_02242B40: .word ov70_02245EFC
_02242B44: .word ov70_02245EFD
_02242B48: .word ov70_02245EFE
_02242B4C: .word ov70_02245EFF
_02242B50: .word 0x000005DC
_02242B54: .word ov70_02245DF8
_02242B58: .word ov70_02245DF9
	thumb_func_end ov70_022429B8

	thumb_func_start ov70_02242B5C
ov70_02242B5C: ; 0x02242B5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #5
	beq _02242B6E
	cmp r1, #6
	beq _02242B7A
	cmp r1, #7
	beq _02242B88
	b _02242B94
_02242B6E:
	ldr r0, _02242BB8 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B7A:
	mov r1, #0
	mvn r1, r1
	bl ov70_02242BBC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B88:
	mov r1, #1
	bl ov70_02242BBC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B94:
	mov r0, #0x5a
	ldrsh r3, [r5, r0]
	lsl r2, r3, #2
	add r2, r3, r2
	add r4, r1, r2
	ldr r1, [r5, #0x5c]
	cmp r4, r1
	bge _02242BB4
	ldr r0, _02242BB8 ; =0x000005DC
	bl PlaySE
	ldr r1, [r5, #0x34]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_02242BB4:
	sub r0, #0x5b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02242BB8: .word 0x000005DC
	thumb_func_end ov70_02242B5C

	thumb_func_start ov70_02242BBC
ov70_02242BBC: ; 0x02242BBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r6, r1, #0
	mov r1, #5
	bl ov70_02242508
	sub r4, r0, #1
	beq _02242C5E
	cmp r6, #0
	bge _02242C06
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x14]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _02242BFE
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242C38
_02242BFE:
	add r0, r5, #0
	add r0, #0x5a
	strh r4, [r0]
	b _02242C38
_02242C06:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x10]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bge _02242C30
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242C38
_02242C30:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
_02242C38:
	mov r1, #0x5a
	ldrsh r1, [r5, r1]
	ldr r2, [r5, #0x5c]
	add r0, r5, #0
	bl ov70_0224352C
	ldr r0, [r5, #0x5c]
	mov r1, #5
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r5, #4]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	add r2, #0x50
	bl ov70_02243F00
_02242C5E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_02242BBC

