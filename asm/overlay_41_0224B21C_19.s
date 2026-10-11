	.include "asm/macros.inc"
	.include "overlay_41_0224B21C.inc"
	.include "global.inc"
	.public ov41_0224B6CC
	.extern ov41_0224B938

    .text

	.text
	thumb_func_start ov41_0224B6CC
ov41_0224B6CC: ; 0x0224B6CC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	add r5, r0, #0
	mov r0, #0x1a
	bl NARC_New
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _0224B71C ; =0x000002CE
	add r1, sp, #0
	str r0, [sp]
	mov r0, #0x76
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	ldr r0, [r4, #0x68]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	add r0, r5, #0
	bl ov41_02246518
	ldr r3, [r4, #0x68]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, r4, #0
	bl ov41_0224B938
	add r0, r5, #0
	add r1, sp, #0x10
	bl ov41_02246250
	add r0, sp, #0x10
	bl ov41_022463D4
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0224B71C: .word 0x000002CE
	thumb_func_end ov41_0224B6CC

