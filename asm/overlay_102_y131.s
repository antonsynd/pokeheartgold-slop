	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA678

	.text

	.text
	thumb_func_start ov102_021EA678
ov102_021EA678: ; 0x021EA678
	push {r3, r4}
	ldr r2, _021EA70C ; =0x0400004A
	mov r3, #0x3f
	ldrh r0, [r2]
	mov r4, #0x1f
	bic r0, r3
	orr r0, r4
	strh r0, [r2]
	cmp r1, #0
	beq _021EA6D2
	sub r0, r2, #2
	ldrh r4, [r0]
	mov r1, #0x1a
	bic r4, r3
	orr r1, r4
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021EA710 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x1b
	lsl r1, r1, #8
	orr r1, r3
	strh r1, [r0]
	add r0, r2, #0
	mov r3, #0xff
	sub r0, #0xa
	strh r3, [r0]
	mov r0, #0x30
	sub r1, r2, #6
	strh r0, [r1]
	add r1, r2, #0
	sub r1, #8
	strh r3, [r1]
	sub r1, r2, #4
	ldr r3, _021EA714 ; =0x0000A0C0
	sub r2, #0x4a
	strh r3, [r1]
	ldr r3, [r2]
	ldr r1, _021EA718 ; =0xFFFF1FFF
	lsl r0, r0, #9
	and r1, r3
	orr r0, r1
	str r0, [r2]
	pop {r3, r4}
	bx lr
_021EA6D2:
	sub r0, r2, #2
	ldrh r1, [r0]
	bic r1, r3
	orr r1, r4
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021EA710 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r4, #8
	orr r1, r3
	strh r1, [r0]
	add r0, r2, #0
	mov r1, #0
	sub r0, #0xa
	strh r1, [r0]
	sub r0, r2, #6
	strh r1, [r0]
	add r0, r2, #0
	sub r0, #8
	strh r1, [r0]
	sub r0, r2, #4
	strh r1, [r0]
	sub r2, #0x4a
	ldr r1, [r2]
	ldr r0, _021EA718 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021EA70C: .word 0x0400004A
_021EA710: .word 0xFFFFC0FF
_021EA714: .word 0x0000A0C0
_021EA718: .word 0xFFFF1FFF
	thumb_func_end ov102_021EA678

