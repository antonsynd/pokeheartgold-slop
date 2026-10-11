	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBA5C
	.public ov102_021EBAAC
	.public ov102_021EBAD0
	.public ov102_021EBB1C
	.public ov102_021EC298
	.public ov102_021EC2EC
	.public ov102_021EC410
	.public ov102_021EC450

	.text

	thumb_func_start ov102_021EBA5C
ov102_021EBA5C: ; 0x021EBA5C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EBA6E
	cmp r0, #1
	beq _021EBA98
	b _021EBAA4
_021EBA6E:
	add r0, r4, #0
	add r0, #0x1c
	bl ov102_021EC450
	cmp r0, #0
	beq _021EBAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, #0xc]
	add r0, #0x3c
	add r3, r2, #0
	bl ov102_021EC298
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021EBAA4
_021EBA98:
	add r4, #0x3c
	add r0, r4, #0
	bl ov102_021EC2EC
	add sp, #8
	pop {r4, pc}
_021EBAA4:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBA5C

	thumb_func_start ov102_021EBAAC
ov102_021EBAAC: ; 0x021EBAAC
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r1, #0
	mov r2, #1
	ldr r1, [r1, #0xc]
	add r0, #0x3c
	add r3, r2, #0
	bl ov102_021EC298
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBAAC

	thumb_func_start ov102_021EBAD0
ov102_021EBAD0: ; 0x021EBAD0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EBAE2
	cmp r0, #1
	beq _021EBB0A
	b _021EBB16
_021EBAE2:
	add r0, r4, #0
	add r0, #0x3c
	bl ov102_021EC2EC
	cmp r0, #0
	beq _021EBB16
	mov r0, #0x10
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r2, #0
	add r0, #0x1c
	mov r1, #2
	sub r3, #0xa
	bl ov102_021EC410
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021EBB16
_021EBB0A:
	add r4, #0x1c
	add r0, r4, #0
	bl ov102_021EC450
	add sp, #4
	pop {r3, r4, pc}
_021EBB16:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov102_021EBAD0

	thumb_func_start ov102_021EBB1C
ov102_021EBB1C: ; 0x021EBB1C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #3
	mov r3, #0x10
	bl BgSetPosTextAndCommit
	pop {r3, pc}
	thumb_func_end ov102_021EBB1C

