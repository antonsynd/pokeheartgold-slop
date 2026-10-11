	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E5C54
	.public ov111_021E5C94
	.public ov111_021E5CB4
	.extern ov111_021E6BD8

	.text

	.text
	thumb_func_start ov111_021E5C54
ov111_021E5C54: ; 0x021E5C54
	push {r3, r4, lr}
	sub sp, #0x14
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	ldr r2, [r0, #8]
	add r3, sp, #0
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r2, #0xc8
	str r2, [sp, #8]
	mov r2, #6
	str r2, [sp, #0xc]
	mov r2, #0x19
	strb r2, [r3, #0x10]
	mov r2, #0xa
	strb r2, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf0
	bic r4, r2
	strb r4, [r3, #0x12]
	ldr r0, [r0, #0x18]
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov111_021E5C54

	thumb_func_start ov111_021E5C94
ov111_021E5C94: ; 0x021E5C94
	push {r3, lr}
	cmp r0, #0
	beq _021E5CA0
	cmp r0, #1
	beq _021E5CA4
	b _021E5CA8
_021E5CA0:
	mov r0, #1
	pop {r3, pc}
_021E5CA4:
	mov r0, #0
	pop {r3, pc}
_021E5CA8:
	bl GF_AssertFail
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov111_021E5C94

	thumb_func_start ov111_021E5CB4
ov111_021E5CB4: ; 0x021E5CB4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5CD0 ; =ov111_021E6BD8
	add r3, sp, #0
	mov r2, #5
_021E5CBE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5CBE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5CD0: .word ov111_021E6BD8
	thumb_func_end ov111_021E5CB4

