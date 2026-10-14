	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240F48
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

