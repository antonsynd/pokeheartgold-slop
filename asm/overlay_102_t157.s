	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBA5C
	.public ov102_021EBAAC
	.extern ov102_021EC298
	.extern ov102_021EC2EC
	.extern ov102_021EC450

	.text

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

