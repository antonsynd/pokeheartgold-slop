	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE390
	.public ov103_021EE3C0
	.public ov103_021EE3E4
	.public ov103_021EE430
	.extern ov103_021EEEC4

	.text

	.text
	thumb_func_start ov103_021EE390
ov103_021EE390: ; 0x021EE390
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #4
	mov r1, #0x9d
	bl FontID_Alloc
	mov r6, #0
	ldr r4, _021EE3BC ; =ov103_021EEEC4
	add r5, r6, #0
_021EE3A2:
	ldr r1, [r7, #0xc]
	add r2, r4, #0
	ldr r0, [r1]
	add r1, #0x48
	add r1, r1, r5
	bl AddWindow
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #0x1e
	blo _021EE3A2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE3BC: .word ov103_021EEEC4
	thumb_func_end ov103_021EE390

	thumb_func_start ov103_021EE3C0
ov103_021EE3C0: ; 0x021EE3C0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_021EE3C8:
	ldr r0, [r6, #0xc]
	add r0, #0x48
	add r0, r0, r5
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x1e
	blo _021EE3C8
	mov r0, #4
	bl FontID_Release
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov103_021EE3C0

	thumb_func_start ov103_021EE3E4
ov103_021EE3E4: ; 0x021EE3E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #1
	bne _021EE402
	ldr r0, [sp, #0x28]
	mov r2, #0
	bl FontID_String_GetWidth
	sub r5, r5, r0
	b _021EE412
_021EE402:
	cmp r0, #2
	bne _021EE412
	ldr r0, [sp, #0x28]
	mov r2, #0
	bl FontID_String_GetWidth
	lsr r0, r0, #1
	sub r5, r5, r0
_021EE412:
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	add r3, r5, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov103_021EE3E4

	thumb_func_start ov103_021EE430
ov103_021EE430: ; 0x021EE430
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	add r5, #0x48
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r5, r0
	add r1, r6, #0
	bl ov103_021EE3E4
	add r0, r6, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov103_021EE430

