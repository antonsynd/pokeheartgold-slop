	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02261354
	.extern ov93_02261528
	.extern ov93_02261538
	.extern ov93_02262540
	.extern ov93_02262CC4
	.extern ov93_02262CC5

	.text

	.text
	thumb_func_start ov93_02261354
ov93_02261354: ; 0x02261354
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xf1
	ldrb r0, [r0]
	mov r5, #0
	cmp r0, #1
	bne _02261368
	b _022614E8
_02261368:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _022613F4
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xf3
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf3
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0xf4
	ldrb r1, [r1]
	add r0, r4, #0
	add r0, #0xf3
	lsl r2, r1, #2
	ldr r1, _022614EC ; =ov93_02262CC4
	ldrb r0, [r0]
	ldrb r1, [r1, r2]
	cmp r0, r1
	blo _02261456
	add r0, r4, #0
	add r0, #0xf3
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldrb r1, [r0]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0xe4
	str r2, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	lsl r1, r0, #2
	ldr r0, _022614F0 ; =ov93_02262CC5
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0xf2
	strb r1, [r0]
	b _02261456
_022613F4:
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xf2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf2
	ldrb r0, [r0]
	cmp r0, #0
	bne _02261456
	add r0, r4, #0
	add r0, #0xf0
	ldrb r0, [r0]
	cmp r0, #0xc
	blo _02261456
	add r0, r4, #0
	add r0, #0xf0
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf4
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #5
	blo _0226143C
	add r0, r4, #0
	mov r1, #4
	add r0, #0xf4
	strb r1, [r0]
_0226143C:
	add r1, r4, #0
	add r1, #0xf4
	ldrb r1, [r1]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	lsl r2, r1, #2
	ldr r1, _022614EC ; =ov93_02262CC4
	ldrb r1, [r1, r2]
	bl _s32_div_f
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
_02261456:
	add r0, r4, #0
	add r0, #0xf4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261492
	ldr r1, _022614EC ; =ov93_02262CC4
	mov r0, #0
	mov r7, #0xc
_02261466:
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, r0, #1
	add r1, r1, #4
	add r2, r3, r2
	add r3, r2, #0
	mul r3, r7
	add r5, r5, r3
	cmp r0, #2
	blt _02261466
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	sub r5, #0xf
	cmp r5, r0
	bne _022614C6
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #1
	bl ov93_02261528
	b _022614C6
_02261492:
	cmp r0, #2
	bne _022614C6
	ldr r0, _022614EC ; =ov93_02262CC4
	mov r1, #0
	mov r7, #0xc
_0226149C:
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	add r1, r1, #1
	add r0, r0, #4
	add r2, r3, r2
	add r3, r2, #0
	mul r3, r7
	add r5, r5, r3
	cmp r1, #3
	blt _0226149C
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	sub r5, #0xf
	cmp r5, r0
	bne _022614C6
	add r0, r4, #0
	add r0, #0x98
	mov r1, #1
	bl ov93_02261528
_022614C6:
	mov r7, #0
	add r5, r4, #0
_022614CA:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov93_02261538
	add r2, r5, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, #0x30
	bl ov93_02262540
	add r7, r7, #1
	add r5, #0x4c
	cmp r7, #3
	blt _022614CA
_022614E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022614EC: .word ov93_02262CC4
_022614F0: .word ov93_02262CC5
	thumb_func_end ov93_02261354

