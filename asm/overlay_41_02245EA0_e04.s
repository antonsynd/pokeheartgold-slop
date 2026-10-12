	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_02245F14
	.extern ov41_02245F04
	.extern ov41_02245FA8
	.extern ov41_022464BC

    .text

	.text
	thumb_func_start ov41_02245F14
ov41_02245F14: ; 0x02245F14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov41_02245F04
	cmp r0, #0
	bne _02245F2E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02245F2E:
	add r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov41_02245FA8
	ldr r0, _02245F98 ; =gSystem + 0x40
	ldr r1, [sp, #8]
	ldrh r2, [r0, #0x20]
	sub r1, r2, r1
	str r1, [r6]
	ldrh r1, [r0, #0x22]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	ldr r0, [sp]
	sub r4, r1, #4
	str r1, [r0]
	add r0, r1, #4
	cmp r4, r0
	bge _02245F92
_02245F54:
	cmp r4, #0
	blt _02245F86
	ldr r0, [r6]
	sub r5, r0, #4
	add r0, r0, #4
	cmp r5, r0
	bge _02245F86
_02245F62:
	cmp r5, #0
	blt _02245F7C
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov41_022464BC
	cmp r0, #0
	bne _02245F7C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02245F7C:
	ldr r0, [r6]
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, r0
	blt _02245F62
_02245F86:
	ldr r0, [sp]
	add r4, r4, #1
	ldr r0, [r0]
	add r0, r0, #4
	cmp r4, r0
	blt _02245F54
_02245F92:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02245F98: .word gSystem + 0x40
	thumb_func_end ov41_02245F14

