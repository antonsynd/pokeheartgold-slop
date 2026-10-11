	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B68C

	.text

	thumb_func_start ov59_0223B68C
ov59_0223B68C: ; 0x0223B68C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r1, [r6]
	mov r0, #4
	bl FontID_Alloc
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r3, [r6]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0x16
	bl NewMsgDataFromNarc
	str r0, [r6, #0x5c]
	mov r0, #0x10
	ldr r2, [r6]
	add r1, r0, #0
	bl MessageFormat_New_Custom
	str r0, [r6, #0x60]
	mov r0, #1
	ldr r1, [r6]
	lsl r0, r0, #8
	bl String_New
	str r0, [r6, #0x64]
	mov r0, #1
	ldr r1, [r6]
	lsl r0, r0, #8
	bl String_New
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	mov r1, #4
	bl NewString_ReadMsgData
	str r0, [r6, #0x6c]
	mov r4, #0
	add r5, r6, #0
_0223B6E4:
	add r1, r4, #0
	ldr r0, [r6, #0x5c]
	add r1, #0xa
	bl NewString_ReadMsgData
	str r0, [r5, #0x70]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0223B6E4
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov59_0223B68C

