	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02262098
	.public ov93_022620D4

	.text

	.text
	thumb_func_start ov93_02262098
ov93_02262098: ; 0x02262098
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _022620D0 ; =0x000186A0
	add r7, r0, #0
	add r6, r1, #0
	mov r4, #0
_022620A2:
	add r0, r6, #0
	add r1, r5, #0
	bl _s32_div_f
	add r3, r0, #0
	mov r0, #0x63
	lsl r2, r3, #4
	add r1, r7, r4
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add r0, r3, #0
	mul r0, r5
	sub r6, r6, r0
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	add r4, r4, #1
	add r5, r0, #0
	cmp r4, #6
	blt _022620A2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022620D0: .word 0x000186A0
	thumb_func_end ov93_02262098

	thumb_func_start ov93_022620D4
ov93_022620D4: ; 0x022620D4
	push {r4, r5, r6, r7}
	mov r1, #0x66
	mov r5, #0
	lsl r1, r1, #2
	add r3, r5, #0
	sub r2, r1, #6
_022620E0:
	mov r6, #0x63
	add r4, r0, r5
	lsl r6, r6, #2
	ldrb r7, [r4, r6]
	sub r6, r6, #6
	strb r7, [r4, r6]
	mov r6, #5
	sub r6, r6, r5
	lsl r6, r6, #1
	strb r6, [r4, r1]
	add r5, r5, #1
	strb r3, [r4, r2]
	cmp r5, #6
	blt _022620E0
	ldr r1, _02262104 ; =0x0000019F
	strb r3, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_02262104: .word 0x0000019F
	thumb_func_end ov93_022620D4

