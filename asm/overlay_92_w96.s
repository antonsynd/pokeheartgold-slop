	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02261448
	.extern ov92_02261118
	.extern ov92_02261208
	.extern ov92_0226135C
	.extern ov92_022613F0

	.text

	.text
	thumb_func_start ov92_02261448
ov92_02261448: ; 0x02261448
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x99
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02261464
	add r5, #0x34
	ldrb r0, [r5]
	cmp r0, #1
	bne _0226146C
_02261464:
	add r0, r6, #0
	bl SysTask_Destroy
	pop {r4, r5, r6, pc}
_0226146C:
	ldr r0, [r4, #4]
	ldr r0, [r0]
	cmp r0, #5
	bhi _02261508
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02261480: ; jump table
	.short _02261508 - _02261480 - 2 ; case 0
	.short _022614F8 - _02261480 - 2 ; case 1
	.short _022614D8 - _02261480 - 2 ; case 2
	.short _022614BE - _02261480 - 2 ; case 3
	.short _022614A0 - _02261480 - 2 ; case 4
	.short _0226148C - _02261480 - 2 ; case 5
_0226148C:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _022614A0
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x4c
	str r1, [r4, r0]
_022614A0:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022614BE
	ldr r0, _02261564 ; =0x0000060E
	bl PlaySE
	mov r0, #0x5d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0x4c
	str r1, [r4, r0]
_022614BE:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	bne _022614D8
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0]
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022614D8:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _022614F8
	ldr r0, _02261568 ; =0x00000589
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	str r1, [r0]
_022614F8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02261530
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x58]
	b _02261530
_02261508:
	ldr r1, [r4]
	cmp r0, r1
	beq _02261530
	mov r2, #1
	add r0, r4, #0
	mov r1, #0x52
	str r2, [r4, #0x58]
	add r0, #0xd0
	lsl r1, r1, #2
	str r2, [r0]
	add r0, r1, #0
	str r2, [r4, r1]
	add r0, #0x78
	str r2, [r4, r0]
	add r1, #0xf0
	str r2, [r4, r1]
	ldr r0, _02261568 ; =0x00000589
	mov r1, #0
	bl StopSE
_02261530:
	add r0, r4, #0
	add r0, #8
	bl ov92_02261118
	add r0, r4, #0
	add r0, #0x80
	bl ov92_02261208
	add r0, r4, #0
	add r0, #0xf8
	bl ov92_0226135C
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov92_02261208
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov92_022613F0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02261564: .word 0x0000060E
_02261568: .word 0x00000589
	thumb_func_end ov92_02261448

