	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02221C74
	.public ov07_02221C8C
	.extern ov07_022363A0
	.extern ov07_022363D8

	.text

	.text
	thumb_func_start ov07_02221C74
ov07_02221C74: ; 0x02221C74
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _02221C88 ; =ov07_022363A0
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_02221C88: .word ov07_022363A0
	thumb_func_end ov07_02221C74

	thumb_func_start ov07_02221C8C
ov07_02221C8C: ; 0x02221C8C
	push {r3, r4, r5}
	sub sp, #0x3c
	ldr r4, _02221CB0 ; =ov07_022363D8
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #7
_02221C98:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02221C98
	ldr r0, [r4]
	lsl r1, r5, #2
	str r0, [r3]
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x3c
	pop {r3, r4, r5}
	bx lr
	.balign 4, 0
_02221CB0: .word ov07_022363D8
	thumb_func_end ov07_02221C8C

