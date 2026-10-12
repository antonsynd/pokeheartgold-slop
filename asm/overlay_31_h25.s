	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225E184
	.extern ov31_0225DE00
	.extern ov31_0225DE24
	.extern ov31_0225E12C

	.text

	.text
	thumb_func_start ov31_0225E184
ov31_0225E184: ; 0x0225E184
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x29
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r2, [r5, #0x14]
	add r0, r1, #0
	sub r0, #0x1f
	ldr r3, [r2, r1]
	ldrb r0, [r2, r0]
	sub r1, #0x28
	ldr r1, [r2, r1]
	add r6, r3, r0
	lsl r4, r6, #1
	mov r0, #0x57
	lsl r0, r0, #2
	ldrh r1, [r1, r4]
	ldr r0, [r5, r0]
	bl NewString_ReadMsgData
	add r7, r0, #0
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xe4
	add r2, r7, #0
	add r3, r6, #0
	bl ov31_0225DE00
	add r0, r7, #0
	bl String_Delete
	mov r2, #0x9a
	ldr r0, [r5, #0x14]
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	add r1, r6, #0
	ldrh r2, [r2, r4]
	bl ov31_0225E12C
	cmp r0, #0
	beq _0225E1FE
	ldr r6, [r5, #0x14]
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r0, r6, #0
	ldrh r1, [r1, r4]
	bl ov03_02258120
	add r3, r0, #0
	ldr r0, _0225E208 ; =0x00000283
	mov r1, #0x55
	ldrb r0, [r6, r0]
	add r2, r5, #0
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, #0xe4
	bl ov31_0225DE24
_0225E1FE:
	add r5, #0xe4
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E208: .word 0x00000283
	thumb_func_end ov31_0225E184

