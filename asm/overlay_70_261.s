#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238F9C
	.public ov70_0224190C
	.public ov70_02242390
	.public ov70_02242D44
	.public ov70_022438D4
	.public ov70_02243928
	.public ov70_02243A6C
	.public ov70_02243E8C
	.public ov70_02243EB8
	.public ov70_02243FD4
	.public ov70_02245DF8
	.public ov70_02245DF9
	.public ov70_02245E26
	.public ov70_02245E27
	.public ov70_02245E84
	.public ov70_02245F58
	.public ov70_02245FA0

	.text

	thumb_func_start ov70_022438D4
ov70_022438D4: ; 0x022438D4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #6
	mov r2, #0x10
	bl ov70_02242D44
	ldr r0, [r4, #0xc]
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	ldr r1, _02243920 ; =ov70_02245DF8
	ldr r2, _02243924 ; =ov70_02245DF9
	lsl r3, r0, #1
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [r4, #0x48]
	add r1, #0x10
	ldr r0, [r4, #0xc]
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02243918
	mov r1, #1
	bl Sprite_SetDrawFlag
_02243918:
	mov r0, #0x11
	str r0, [r4, #0x4c]
	sub r0, #0x12
	pop {r4, pc}
	.balign 4, 0
_02243920: .word ov70_02245DF8
_02243924: .word ov70_02245DF9
	thumb_func_end ov70_022438D4

	thumb_func_start ov70_02243928
ov70_02243928: ; 0x02243928
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x20
	bl sub_02019688
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_02019B08
	add r0, r5, #0
	mov r1, #5
	bl ov70_0224190C
	add r0, r5, #0
	add r0, #0x64
	mov r1, #1
	mov r2, #0x1a
	bl MI_CpuFill8
	mov r0, #2
	str r0, [sp]
	ldr r0, _02243A50 ; =0x000F0E02
	mov r3, #0x3c
	str r0, [sp, #4]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #4]
	add r3, #0x6e
	bl ov70_02243E8C
	mov r4, #1
	mov r7, #0x10
_02243976:
	mov r1, #0x3c
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02243A54 ; =ov70_02245E84
	ldr r1, [r1, r2]
	add r1, r4, r1
	sub r1, r1, #1
	bl ov70_02243FD4
	cmp r0, #0
	ble _022439A4
	mov r1, #0x3c
	ldrsh r1, [r5, r1]
	ldr r0, _02243A50 ; =0x000F0E02
	lsl r2, r1, #2
	ldr r1, _02243A54 ; =ov70_02245E84
	ldr r2, [r1, r2]
	add r1, r5, r4
	add r2, r2, r1
	add r2, #0x63
	mov r1, #1
	b _022439B8
_022439A4:
	mov r1, #0x3c
	ldrsh r1, [r5, r1]
	ldr r0, _02243A58 ; =0x00080902
	lsl r2, r1, #2
	ldr r1, _02243A54 ; =ov70_02245E84
	ldr r2, [r1, r2]
	add r1, r5, r4
	add r2, r2, r1
	add r2, #0x63
	mov r1, #0
_022439B8:
	strb r1, [r2]
	mov r1, #5
	str r1, [sp]
	str r0, [sp, #4]
	mov r3, #0x3c
	ldrsh r3, [r5, r3]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	lsl r6, r3, #3
	ldr r3, _02243A5C ; =ov70_02245F58
	ldr r1, [r5, #0x24]
	ldr r3, [r3, r6]
	add r2, r2, r7
	add r3, r4, r3
	lsl r6, r3, #2
	ldr r3, _02243A60 ; =ov70_02245FA0
	add r3, r3, r6
	sub r3, r3, #4
	ldr r3, [r3]
	bl ov70_02243E8C
	add r4, r4, #1
	add r7, #0x10
	cmp r4, #4
	blt _02243976
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	mov r1, #0
	ldr r0, [r5, #0x1c]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r5, #0xc]
	mov r1, #0x2f
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x3e
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _02243A18
	mov r0, #0
	b _02243A18
_02243A18:
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x48]
	ldr r1, _02243A64 ; =ov70_02245E26
	lsl r3, r0, #1
	ldr r2, _02243A68 ; =ov70_02245E27
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _02243A46
	mov r1, #1
	bl Sprite_SetDrawFlag
_02243A46:
	mov r0, #0x15
	str r0, [r5, #0x4c]
	sub r0, #0x16
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02243A50: .word 0x000F0E02
_02243A54: .word ov70_02245E84
_02243A58: .word 0x00080902
_02243A5C: .word ov70_02245F58
_02243A60: .word ov70_02245FA0
_02243A64: .word ov70_02245E26
_02243A68: .word ov70_02245E27
	thumb_func_end ov70_02243928

	thumb_func_start ov70_02243A6C
ov70_02243A6C: ; 0x02243A6C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x64
	bl ov70_02242390
	add r5, r0, #0
	cmp r5, #4
	bhi _02243A94
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243A8A: ; jump table
	.short _02243A9E - _02243A8A - 2 ; case 0
	.short _02243A9E - _02243A8A - 2 ; case 1
	.short _02243A9E - _02243A8A - 2 ; case 2
	.short _02243A9E - _02243A8A - 2 ; case 3
	.short _02243A9E - _02243A8A - 2 ; case 4
_02243A94:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02243AAE
	b _02243ABE
_02243A9E:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x16
	str r0, [r4, #0x4c]
	strh r5, [r4, #0x3e]
	b _02243ABE
_02243AAE:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x16
	str r0, [r4, #0x4c]
	sub r0, #0x17
	strh r0, [r4, #0x3e]
_02243ABE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02243A6C

