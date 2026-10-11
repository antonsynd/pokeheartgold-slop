	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022217B4
	.extern ov07_02221664
	.extern ov07_022217A4

	.text

	.text
	thumb_func_start ov07_022217B4
ov07_022217B4: ; 0x022217B4
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	add r0, r4, #0
	add r1, sp, #8
	bl ov07_022217A4
	add r0, r4, #0
	bl ov07_02221664
	strb r0, [r4, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _022217E0
	mov r0, #1
	strb r0, [r4, #8]
_022217E0:
	ldr r0, [sp, #8]
	cmp r0, #3
	bgt _022217FE
	cmp r0, #0
	blt _0222186A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022217F6: ; jump table
	.short _02221802 - _022217F6 - 2 ; case 0
	.short _0222182E - _022217F6 - 2 ; case 1
	.short _0222186A - _022217F6 - 2 ; case 2
	.short _0222186A - _022217F6 - 2 ; case 3
_022217FE:
	cmp r0, #0xff
	b _0222186A
_02221802:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201560C
	add r2, sp, #0
	mov r0, #0
	mov r1, #8
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2]
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #2]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #4]
	b _0222186A
_0222182E:
	ldr r0, [sp, #0x10]
	add r2, sp, #0
	strh r0, [r2]
	ldr r0, [sp, #0x14]
	mov r1, #8
	strh r0, [r2, #2]
	ldr r0, [sp, #0x18]
	strh r0, [r2, #4]
	mov r0, #0
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2]
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #2]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	add r1, sp, #0
	mul r0, r3
	strh r0, [r2, #4]
	add r0, r5, #0
	bl sub_0201560C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, pc}
_0222186A:
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x2c]
	sub r0, r2, r0
	strh r0, [r1]
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x30]
	sub r0, r2, r0
	strh r0, [r1, #2]
	mov r0, #4
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x34]
	sub r0, r2, r0
	strh r0, [r1, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0201560C
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov07_022217B4

