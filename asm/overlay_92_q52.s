	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225E130
	.extern _02264020

	.text

	.text
	thumb_func_start ov92_0225E130
ov92_0225E130: ; 0x0225E130
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [r7, #0x5c]
	mov r4, #0
	str r0, [sp, #0x10]
	mov r0, #0x14
	ldr r2, _0225E184 ; =_02264020
	mul r0, r1
	add r5, r4, #0
	add r6, r2, r0
_0225E146:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #1
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r7, #4]
	mov r2, #0x49
	ldr r1, [r0, #4]
	mov r0, #0x50
	mul r0, r1
	add r0, r6, r0
	add r0, r5, r0
	sub r0, #0x4c
	ldr r0, [r0]
	mov r1, #0xc1
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r3, #0x71
	bl PaletteData_LoadFromNarc
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225E146
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E184: .word _02264020
	thumb_func_end ov92_0225E130

