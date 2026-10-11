	.include "asm/macros.inc"
	.include "overlay_80_022340E8.inc"
	.include "global.inc"
	.public ov80_02234390
	.public ov80_02234424
	.public ov80_022344D4

    .text

	.text
	thumb_func_start ov80_02234390
ov80_02234390: ; 0x02234390
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ov80_02238498
	add r1, r0, #0
	add r2, r5, #0
	ldrb r0, [r5, #0x10]
	add r2, #0x78
	mov r3, #0xe
	bl ov80_022380A0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	ldrb r4, [r5, #0x11]
	bl BattleArcade_GetOpponentMonCount
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl BattleArcade_MultiplayerCheck
	mov r3, #0x33
	lsl r3, r3, #4
	add r1, r5, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	add r1, r5, r1
	str r1, [sp, #4]
	add r1, r3, #0
	sub r1, #0x10
	add r1, r5, r1
	add r2, r4, #7
	str r1, [sp, #8]
	lsl r0, r0, #0x18
	lsl r1, r4, #1
	lsl r2, r2, #1
	lsr r0, r0, #0x18
	add r1, r5, r1
	add r2, r5, r2
	str r0, [sp, #0xc]
	add r1, #0x78
	add r2, #0x78
	sub r3, #0x1c
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r0, r6, #0
	add r3, r5, r3
	bl ov80_0222A6B8
	add r0, r5, #0
	bl ov80_02238498
	ldr r3, _0223441C ; =ov80_0223BE98
	mov r2, #0
_022343FE:
	ldrb r1, [r3]
	cmp r0, r1
	blt _02234410
	ldr r0, _02234420 ; =ov80_0223BE98 + 1
	lsl r1, r2, #1
	ldrb r0, [r0, r1]
	add sp, #0x10
	strb r0, [r5, #0x1c]
	pop {r4, r5, r6, pc}
_02234410:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #3
	blo _022343FE
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223441C: .word ov80_0223BE98
_02234420: .word ov80_0223BE98 + 1
	thumb_func_end ov80_02234390

	thumb_func_start ov80_02234424
ov80_02234424: ; 0x02234424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18c
	add r5, r0, #0
	bl ov80_022344D4
	mov r4, #0
	add r6, r5, #0
	add r7, r4, #0
_02234434:
	str r7, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #5
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl sub_02030F34
	add r1, r6, #0
	add r1, #0x78
	add r4, r4, #1
	add r6, r6, #2
	strh r0, [r1]
	cmp r4, #0xe
	blt _02234434
	mov r6, #0
	add r4, sp, #0x30
	add r7, r5, #0
_02234458:
	mov r0, #0
	str r0, [sp]
	lsl r2, r6, #0x18
	ldr r0, [r5, #8]
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030F34
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0xc5
	lsl r0, r0, #2
	strh r1, [r7, r0]
	add r6, r6, #1
	add r4, r4, #2
	add r7, r7, #2
	cmp r6, #4
	blt _02234458
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xcd
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	add r1, sp, #0x30
	add r2, sp, #0x10
	mov r3, #0
	bl ov80_0222A52C
	mov r0, #0xb
	bl AllocMonZeroed
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #0x3c
_022344A6:
	add r0, r5, #0
	bl ov80_02238370
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov80_0222A140
	ldr r1, [r5, #0x74]
	add r0, r5, #0
	add r2, r6, #0
	bl ov80_022383A8
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #4
	blt _022344A6
	add r0, r6, #0
	bl Heap_Free
	add sp, #0x18c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_02234424

	thumb_func_start ov80_022344D4
ov80_022344D4: ; 0x022344D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x70]
	bl Party_GetCount
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r4, #0
	cmp r7, #0
	ble _0223451A
_022344EA:
	ldr r0, [r5, #0x70]
	add r1, r4, #0
	bl Party_GetMonByIndex
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030F34
	add r1, sp, #4
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #6
	add r2, sp, #4
	bl SetMonData
	add r4, r4, #1
	cmp r4, r7
	blt _022344EA
_0223451A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_022344D4

