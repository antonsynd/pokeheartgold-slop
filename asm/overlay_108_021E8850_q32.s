	.include "macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9528
	.extern ov108_021E9F20
	.extern ov108_021EA418
	.extern ov108_021EA52C

	.text

	.text
	thumb_func_start ov108_021E9528
ov108_021E9528: ; 0x021E9528
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #6
	blo _021E9544
	ldr r0, _021E95A0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov108_021E9F20
	mov r0, #3
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021E9544:
	ldr r2, _021E95A4 ; =0x00000431
	sub r3, r2, #1
	ldrb r5, [r4, r3]
	ldrb r1, [r4, r2]
	mov r3, #6
	mul r3, r5
	add r3, r1, r3
	add r1, r2, #1
	strb r3, [r4, r1]
	sub r2, r2, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, r2]
	cmp r1, r2
	blo _021E9564
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E9564:
	bl ov108_021EA52C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	beq _021E9580
	ldr r0, _021E95A8 ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	sub r1, r5, #1
	bl ov108_021EA418
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E9580:
	ldr r0, _021E95A0 ; =0x000005DC
	bl PlaySE
	mov r1, #0xcd
	lsl r1, r1, #2
	add r0, r1, #0
	add r0, #0xfe
	ldrb r2, [r4, r0]
	ldr r3, [r4, r1]
	add r1, #0xff
	lsl r0, r2, #2
	add r0, r2, r0
	ldrb r0, [r3, r0]
	strb r0, [r4, r1]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E95A0: .word 0x000005DC
_021E95A4: .word 0x00000431
_021E95A8: .word 0x000005F3
	thumb_func_end ov108_021E9528

