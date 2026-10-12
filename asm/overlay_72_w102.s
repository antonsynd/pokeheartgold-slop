	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223ACA8
	.extern ov72_0223B46C

	.text

	.text
	thumb_func_start ov72_0223ACA8
ov72_0223ACA8: ; 0x0223ACA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, _0223AD14 ; =0x00001328
	ldr r5, _0223AD18 ; =ov72_0223B46C
	str r0, [sp, #0x14]
	mov r7, #0
	mov r4, #0x1f
	add r6, r0, r1
_0223ACB8:
	mov r0, #0x15
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #4]
	lsl r3, r3, #0x18
	add r1, r6, #0
	mov r2, #4
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r7, r7, #1
	add r4, #0x40
	add r5, r5, #4
	add r6, #0x10
	cmp r7, #3
	blt _0223ACB8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x4f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, _0223AD1C ; =0x00001318
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r3
	mov r3, #2
	bl AddWindowParameterized
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223AD14: .word 0x00001328
_0223AD18: .word ov72_0223B46C
_0223AD1C: .word 0x00001318
	thumb_func_end ov72_0223ACA8

