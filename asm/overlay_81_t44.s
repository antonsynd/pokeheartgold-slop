	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240F48
	.public ov81_02240FA4
	.extern ov81_02241008
	.extern ov81_0224102C
	.extern ov81_02241218
	.extern ov81_02242C80
	.extern ov81_02242CB0

	.text

	.text
	thumb_func_start ov81_02240F48
ov81_02240F48: ; 0x02240F48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	lsl r4, r1, #2
	ldr r1, [sp, #0x20]
	mov r7, #0x6b
	lsl r7, r7, #2
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	sub r1, r7, #4
	add r5, r0, r7
	ldr r0, [r0, r1]
	mov r1, #0
	add r6, r2, #0
	bl ov81_02242C80
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0x1c
	bl GetMonBaseStat_HandleAlternateForm
	cmp r0, #0
	bne _02240FA0
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x24]
	bl ov81_02242CB0
_02240FA0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov81_02240F48

	thumb_func_start ov81_02240FA4
ov81_02240FA4: ; 0x02240FA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	add r7, r2, #0
	bl ov80_02237254
	cmp r0, #0
	bne _02240FBA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02240FBA:
	cmp r4, #7
	beq _02240FC8
	cmp r4, #8
	beq _02240FD4
	cmp r4, #0xa
	beq _02240FE2
	b _02240FEE
_02240FC8:
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0x1d
	bl ov81_02241008
	b _02240FEE
_02240FD4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x1e
	bl ov81_0224102C
	b _02240FEE
_02240FE2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x20
	bl ov81_02241218
_02240FEE:
	mov r1, #0x3e
	lsl r1, r1, #4
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #0x3c
	bl sub_02037030
	cmp r0, #1
	bne _02241004
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241004:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov81_02240FA4

