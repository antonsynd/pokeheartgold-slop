	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBE80
	.public ov102_021EBEA4
	.public ov102_021EBEC8
	.extern ov102_021EC37C
	.extern ov102_021EC3AC

	.text

	.text
	thumb_func_start ov102_021EBE80
ov102_021EBE80: ; 0x021EBE80
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	bne _021EBE9E
	add r0, #0x40
	bl ov102_021EC3AC
	cmp r0, #0
	beq _021EBE9A
	mov r0, #1
	pop {r3, pc}
_021EBE9A:
	mov r0, #0
	pop {r3, pc}
_021EBE9E:
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBE80

	thumb_func_start ov102_021EBEA4
ov102_021EBEA4: ; 0x021EBEA4
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r2, #0
	add r1, #0x80
	str r2, [r1]
	str r2, [sp]
	mov r1, #0xc
	str r1, [sp, #4]
	add r0, #0x40
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0x7c
	bl ov102_021EC37C
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBEA4

	thumb_func_start ov102_021EBEC8
ov102_021EBEC8: ; 0x021EBEC8
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	bne _021EBEEA
	add r0, #0x40
	bl ov102_021EC3AC
	cmp r0, #0
	beq _021EBEEE
	mov r0, #2
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #1
	pop {r3, pc}
_021EBEEA:
	mov r0, #1
	pop {r3, pc}
_021EBEEE:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBEC8

