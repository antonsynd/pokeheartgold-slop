	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_0226648C
	.extern ov49_02265980
	.extern ov49_02267D98
	.extern ov49_0226A464
	.extern ov49_0226A70C
	.extern ov49_0226A7A8

    .text

	.text
	thumb_func_start ov49_0226648C
ov49_0226648C: ; 0x0226648C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _022664CC ; =ov49_0226A7A8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_02266498:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _022664D0 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _02266498
	mov r0, #1
	str r0, [sp]
	ldr r0, _022664D4 ; =0x00000954
	ldr r1, _022664D8 ; =ov49_0226A464
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022664CC: .word ov49_0226A7A8
_022664D0: .word ov49_0226A70C
_022664D4: .word 0x00000954
_022664D8: .word ov49_0226A464
	thumb_func_end ov49_0226648C

