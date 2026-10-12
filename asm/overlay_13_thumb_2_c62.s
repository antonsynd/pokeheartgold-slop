	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222C1C
	.public ov13_02222CE0
	.extern ov13_02222BF4
	.extern ov13_022235DC
	.extern ov13_022236B8
	.extern ov13_0224DD80
	.extern ov13_0224DD90
	.extern ov13_0224DDA0

	.text

	.text
	thumb_func_start ov13_02222C1C
ov13_02222C1C: ; 0x02222C1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _02222CCC ; =ov13_0224DDA0
	ldr r1, _02222CD0 ; =ov13_0224DD90
	mov r2, #4
	mov r4, #1
	bl OS_InitMessageQueue
	cmp r5, #0
	beq _02222C36
	cmp r6, #0
	bne _02222C3C
_02222C36:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02222C3C:
	bl OS_DisableInterrupts
	ldr r1, _02222CD4 ; =ov13_0224DD80
	str r5, [r1]
	str r6, [r1, #0xc]
	bl OS_RestoreInterrupts
	ldr r1, _02222CD4 ; =ov13_0224DD80
	ldr r0, _02222CD8 ; =0x00005890
	ldr r1, [r1]
	blx r1
	add r1, r0, #0
	ldr r0, _02222CD4 ; =ov13_0224DD80
	str r1, [r0, #8]
	bne _02222C5E
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02222C5E:
	ldr r0, _02222CDC ; =ov13_02222BF4
	ldr r2, _02222CD8 ; =0x00005890
	bl ov13_022236B8
	cmp r0, #0
	bne _02222C6C
	mov r4, #0
_02222C6C:
	cmp r4, #0
	beq _02222CBC
	ldr r5, _02222CCC ; =ov13_0224DDA0
	add r6, sp, #0
	mov r7, #1
_02222C76:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0xf
	bhi _02222CB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02222C92: ; jump table
	.short _02222CB6 - _02222C92 - 2 ; case 0
	.short _02222CB6 - _02222C92 - 2 ; case 1
	.short _02222CB6 - _02222C92 - 2 ; case 2
	.short _02222CB6 - _02222C92 - 2 ; case 3
	.short _02222CB8 - _02222C92 - 2 ; case 4
	.short _02222CB8 - _02222C92 - 2 ; case 5
	.short _02222CB2 - _02222C92 - 2 ; case 6
	.short _02222CB6 - _02222C92 - 2 ; case 7
	.short _02222CB6 - _02222C92 - 2 ; case 8
	.short _02222CB6 - _02222C92 - 2 ; case 9
	.short _02222CB6 - _02222C92 - 2 ; case 10
	.short _02222CB6 - _02222C92 - 2 ; case 11
	.short _02222CB6 - _02222C92 - 2 ; case 12
	.short _02222CB6 - _02222C92 - 2 ; case 13
	.short _02222CB6 - _02222C92 - 2 ; case 14
	.short _02222CB6 - _02222C92 - 2 ; case 15
_02222CB2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02222CB6:
	mov r4, #0
_02222CB8:
	cmp r4, #0
	bne _02222C76
_02222CBC:
	ldr r1, _02222CD4 ; =ov13_0224DD80
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222CCC: .word ov13_0224DDA0
_02222CD0: .word ov13_0224DD90
_02222CD4: .word ov13_0224DD80
_02222CD8: .word 0x00005890
_02222CDC: .word ov13_02222BF4
	thumb_func_end ov13_02222C1C

	thumb_func_start ov13_02222CE0
ov13_02222CE0: ; 0x02222CE0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02222D70 ; =ov13_0224DD80
	mov r4, #1
	ldr r0, [r0, #0xc]
	sub r5, r4, #2
	cmp r0, #0
	bne _02222CF2
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02222CF2:
	bl ov13_022235DC
	cmp r0, #0
	bne _02222CFE
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02222CFE:
	ldr r7, _02222D74 ; =ov13_0224DDA0
	ldr r6, _02222D70 ; =ov13_0224DD80
_02222D02:
	add r0, r7, #0
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0x14
	bhi _02222D54
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02222D1E: ; jump table
	.short _02222D54 - _02222D1E - 2 ; case 0
	.short _02222D54 - _02222D1E - 2 ; case 1
	.short _02222D54 - _02222D1E - 2 ; case 2
	.short _02222D54 - _02222D1E - 2 ; case 3
	.short _02222D56 - _02222D1E - 2 ; case 4
	.short _02222D56 - _02222D1E - 2 ; case 5
	.short _02222D54 - _02222D1E - 2 ; case 6
	.short _02222D54 - _02222D1E - 2 ; case 7
	.short _02222D54 - _02222D1E - 2 ; case 8
	.short _02222D54 - _02222D1E - 2 ; case 9
	.short _02222D54 - _02222D1E - 2 ; case 10
	.short _02222D54 - _02222D1E - 2 ; case 11
	.short _02222D54 - _02222D1E - 2 ; case 12
	.short _02222D54 - _02222D1E - 2 ; case 13
	.short _02222D54 - _02222D1E - 2 ; case 14
	.short _02222D54 - _02222D1E - 2 ; case 15
	.short _02222D54 - _02222D1E - 2 ; case 16
	.short _02222D54 - _02222D1E - 2 ; case 17
	.short _02222D54 - _02222D1E - 2 ; case 18
	.short _02222D54 - _02222D1E - 2 ; case 19
	.short _02222D48 - _02222D1E - 2 ; case 20
_02222D48:
	ldr r0, [r6, #8]
	mov r4, #0
	ldr r1, [r6, #0xc]
	add r5, r4, #0
	blx r1
	b _02222D56
_02222D54:
	mov r4, #0
_02222D56:
	cmp r4, #0
	bne _02222D02
	bl OS_DisableInterrupts
	ldr r1, _02222D70 ; =ov13_0224DD80
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #0xc]
	bl OS_RestoreInterrupts
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222D70: .word ov13_0224DD80
_02222D74: .word ov13_0224DDA0
	thumb_func_end ov13_02222CE0

