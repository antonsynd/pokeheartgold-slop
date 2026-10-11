	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ECEA4
	.public ov103_021ECEEC
	.public ov103_021ED2B8

	.text

	thumb_func_start ov103_021ECEA4
ov103_021ECEA4: ; 0x021ECEA4
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, [r0, #0xc]
	ldr r2, _021ECEE8 ; =0x000003A6
	ldr r1, [r1]
	mov r4, #0xa
	str r1, [sp]
	mov r1, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r4, [sp, #0xc]
	mov r2, #0x19
	add r3, sp, #0
	strb r2, [r3, #0x10]
	strb r4, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf
	bic r4, r2
	strb r4, [r3, #0x12]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf0
	bic r4, r2
	strb r4, [r3, #0x12]
	strb r1, [r3, #0x13]
	ldr r1, [r0, #0xc]
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021ECEE8: .word 0x000003A6
	thumb_func_end ov103_021ECEA4

	thumb_func_start ov103_021ECEEC
ov103_021ECEEC: ; 0x021ECEEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x9d
	mov r1, #0
	bl TouchscreenListMenuSpawner_Create
	mov r1, #9
	ldr r2, [r5, #0xc]
	lsl r1, r1, #6
	str r0, [r2, r1]
	add r0, r5, #0
	bl ov103_021ED2B8
	mov r1, #0x9d
	add r6, r0, #0
	bl ListMenuItems_New
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r2, [r5, #0xc]
	add r7, r1, #0
	str r0, [r2, r1]
	mov r4, #0
	sub r7, #0x20
_021ECF1C:
	cmp r6, #2
	bne _021ECF28
	cmp r4, #2
	beq _021ECF3A
	cmp r4, #1
	beq _021ECF3A
_021ECF28:
	mov r0, #0x92
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r1, r7]
	add r2, r4, #5
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
_021ECF3A:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _021ECF1C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov103_021ECEEC

