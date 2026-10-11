	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_0226657C
	.extern ov49_02265980
	.extern ov49_02267C8C
	.extern ov49_02267D98
	.extern ov49_0226A47C
	.extern ov49_0226A70C
	.extern ov49_0226A7A8

    .text

	.text
	thumb_func_start ov49_0226657C
ov49_0226657C: ; 0x0226657C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _022665C0 ; =ov49_0226A7A8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_02266588:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _022665C4 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _02266588
	ldr r0, _022665C8 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _022665CC ; =ov49_0226A47C
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov49_02267C8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022665C0: .word ov49_0226A7A8
_022665C4: .word ov49_0226A70C
_022665C8: .word 0x00000954
_022665CC: .word ov49_0226A47C
	thumb_func_end ov49_0226657C

