	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9C3C

	.text

	.text
	thumb_func_start ov108_021E9C3C
ov108_021E9C3C: ; 0x021E9C3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #4
	bl FontID_Alloc
	ldr r2, _021E9CCC ; =0x000001AE
	ldr r3, [r5]
	mov r0, #0
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [r5]
	mov r0, #2
	mov r1, #0x10
	bl MessageFormat_New_Custom
	mov r1, #0x31
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #1
	ldr r1, [r5]
	lsl r0, r0, #8
	bl String_New
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	ldr r1, [r5]
	lsl r0, r0, #8
	bl String_New
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	mov r1, #0xc
	bl NewString_ReadMsgData
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x20
	ldr r0, [r5, r1]
	mov r1, #8
	bl NewString_ReadMsgData
	mov r1, #0x33
	lsl r1, r1, #4
	add r7, r1, #0
	str r0, [r5, r1]
	mov r6, #0
	add r4, r5, #0
	sub r7, #0x14
_021E9CB2:
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl NewString_ReadMsgData
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021E9CB2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9CCC: .word 0x000001AE
	thumb_func_end ov108_021E9C3C

