	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225DF58
	.public ov92_0225DFA4
	.extern ov92_02263B8C
	.extern ov92_02263BCC

	.text

	.text
	thumb_func_start ov92_0225DF58
ov92_0225DF58: ; 0x0225DF58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, _0225DFA0 ; =ov92_02263BCC
	add r6, r2, #0
	add r2, sp, #0
	add r5, r0, #0
	add r3, r1, #0
	add r7, r2, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r3, #1
	add r0, r5, r0
	add r0, #0xf4
	lsl r4, r6, #3
	ldrh r0, [r0]
	ldr r1, [r7, r4]
	lsl r6, r0, #2
	add r0, r5, r6
	ldr r0, [r0, #0x1c]
	bl ManagedSprite_SetAnim
	add r0, r5, r6
	add r1, sp, #4
	ldr r0, [r0, #0x28]
	ldr r1, [r1, r4]
	bl ManagedSprite_SetAnim
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DFA0: .word ov92_02263BCC
	thumb_func_end ov92_0225DF58

	thumb_func_start ov92_0225DFA4
ov92_0225DFA4: ; 0x0225DFA4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r3, _0225E004 ; =ov92_02263B8C
	add r2, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0xf4
	ldrh r0, [r0]
	lsl r6, r0, #2
	add r0, r5, r6
	ldr r0, [r0, #0x1c]
	bl ManagedSprite_GetActiveAnim
	add r4, r0, #0
	add r0, r5, r6
	ldr r0, [r0, #0x28]
	bl ManagedSprite_GetActiveAnim
	mov r2, #0
	add r3, sp, #0
_0225DFE0:
	ldr r1, [r3]
	cmp r4, r1
	bne _0225DFF2
	ldr r1, [r3, #4]
	cmp r0, r1
	bne _0225DFF2
	add sp, #0x20
	add r0, r2, #0
	pop {r4, r5, r6, pc}
_0225DFF2:
	add r2, r2, #1
	add r3, #8
	cmp r2, #4
	blt _0225DFE0
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225E004: .word ov92_02263B8C
	thumb_func_end ov92_0225DFA4

