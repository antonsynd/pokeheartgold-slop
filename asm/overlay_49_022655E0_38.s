	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_022663EC
	.extern ov49_02265980
	.extern ov49_02267D98
	.extern ov49_0226A46C
	.extern ov49_0226A70C
	.extern ov49_0226A7B8

    .text

	.text
	thumb_func_start ov49_022663EC
ov49_022663EC: ; 0x022663EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226642C ; =ov49_0226A7B8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_022663F8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02266430 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _022663F8
	mov r0, #0
	str r0, [sp]
	ldr r0, _02266434 ; =0x00000954
	ldr r1, _02266438 ; =ov49_0226A46C
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226642C: .word ov49_0226A7B8
_02266430: .word ov49_0226A70C
_02266434: .word 0x00000954
_02266438: .word ov49_0226A46C
	thumb_func_end ov49_022663EC

