	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_022664DC
	.extern ov49_02265980
	.extern ov49_02267D98
	.extern ov49_0226A49C
	.extern ov49_0226A70C
	.extern ov49_0226A7B8

    .text

	.text
	thumb_func_start ov49_022664DC
ov49_022664DC: ; 0x022664DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226651C ; =ov49_0226A7B8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_022664E8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02266520 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _022664E8
	mov r0, #1
	str r0, [sp]
	ldr r0, _02266524 ; =0x00000954
	ldr r1, _02266528 ; =ov49_0226A49C
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x29
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226651C: .word ov49_0226A7B8
_02266520: .word ov49_0226A70C
_02266524: .word 0x00000954
_02266528: .word ov49_0226A49C
	thumb_func_end ov49_022664DC

