	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E867C
	.extern ov108_021E8758
	.extern ov108_021EA978

	.text

	.text
	thumb_func_start ov108_021E867C
ov108_021E867C: ; 0x021E867C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _021E8714 ; =ov108_021EA978
	str r0, [sp]
	ldrb r2, [r1]
	add r0, sp, #8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [sp]
	ldr r2, [sp]
	ldr r1, [sp]
	ldrh r0, [r0, #0xc]
	ldr r2, [r2]
	add r1, #0x18
	bl G2dRenderer_Init
	ldr r1, [sp]
	mov r6, #0x55
	str r0, [r1, #0x10]
	mov r0, #0
	str r0, [sp, #4]
	add r7, sp, #8
	add r5, r1, #0
	add r4, r0, #0
	lsl r6, r6, #2
_021E86B8:
	ldr r2, [sp]
	ldrb r0, [r7]
	ldr r1, [sp, #4]
	ldr r2, [r2]
	bl Create2DGfxResObjMan
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp]
	ldrb r0, [r7]
	ldr r1, [r1]
	bl Create2DGfxResObjList
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r1, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	bls _021E86FA
	add r2, r1, #0
_021E86EA:
	ldr r0, [r3]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, r6]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blo _021E86EA
_021E86FA:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r0, #4
	blo _021E86B8
	ldr r0, [sp]
	bl ov108_021E8758
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E8714: .word ov108_021EA978
	thumb_func_end ov108_021E867C

