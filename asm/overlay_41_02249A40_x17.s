	.include "asm/macros.inc"
	.include "overlay_41_02249A40.inc"
	.include "global.inc"
	.public ov41_02249DB4
	.extern ov41_02249E60
	.extern ov41_02249F0C

    .text

	.text
	thumb_func_start ov41_02249DB4
ov41_02249DB4: ; 0x02249DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _02249E3C ; =ov41_02249F0C
	mov r1, #0x4c
	mov r2, #0
	mov r3, #0xd
	bl CreateSysTaskAndEnvironment
	bl SysTask_GetData
	add r4, r0, #0
	str r6, [r4]
	add r7, r5, #0
	add r3, r4, #4
	mov r2, #6
_02249DDA:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02249DDA
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x34]
	ldr r0, [sp]
	str r1, [r4, #0x38]
	bl _s32_div_f
	str r0, [r4, #0x3c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl _s32_div_f
	str r0, [r4, #0x40]
	ldr r0, [r6]
	ldr r1, [r6, #0x1c]
	bl Bg_GetXpos
	str r0, [r4, #0x44]
	ldr r0, [r6]
	ldr r1, [r6, #0x1c]
	bl Bg_GetYpos
	str r0, [r4, #0x48]
	mov r0, #0x80
	str r0, [r5, #0x28]
	mov r0, #5
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r5, #0x18]
	mov r0, #0xe
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r2, r1, #0
	bl ov41_02249E60
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249E3C: .word ov41_02249F0C
	thumb_func_end ov41_02249DB4

