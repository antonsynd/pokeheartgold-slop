	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E86B8
	.public ov102_021E874C
	.extern ov102_021E8FD8
	.extern ov102_021EC4F8
	.extern ov102_021EC514
	.extern ov102_021EC530
	.extern ov102_021EC54C
	.extern ov102_021EC568
	.extern ov102_021EC584

	.text

	.text
	thumb_func_start ov102_021E86B8
ov102_021E86B8: ; 0x021E86B8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0xfe
	beq _021E8716
	ldrh r1, [r4, #0x34]
	mov r3, #0x40
	mov r2, #0xff
	tst r3, r1
	beq _021E86D6
	bl ov102_021EC4F8
	add r2, r0, #0
	b _021E86FE
_021E86D6:
	mov r3, #0x80
	tst r3, r1
	beq _021E86E4
	bl ov102_021EC514
	add r2, r0, #0
	b _021E86FE
_021E86E4:
	mov r3, #0x10
	tst r3, r1
	beq _021E86F2
	bl ov102_021EC54C
	add r2, r0, #0
	b _021E86FE
_021E86F2:
	mov r3, #0x20
	tst r1, r3
	beq _021E86FE
	bl ov102_021EC530
	add r2, r0, #0
_021E86FE:
	cmp r2, #0xff
	beq _021E8748
	add r0, r4, #0
	add r0, #0x50
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x52
	strh r1, [r0]
	add r4, #0x50
	strh r2, [r4]
	mov r0, #1
	pop {r4, pc}
_021E8716:
	ldrh r1, [r4, #0x34]
	mov r0, #0x40
	tst r0, r1
	beq _021E8730
	add r0, r4, #0
	add r0, #0x52
	ldrh r0, [r0]
	bl ov102_021EC584
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021E8730:
	mov r0, #0x80
	tst r0, r1
	beq _021E8748
	add r0, r4, #0
	add r0, #0x52
	ldrh r0, [r0]
	bl ov102_021EC568
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021E8748:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov102_021E86B8

	thumb_func_start ov102_021E874C
ov102_021E874C: ; 0x021E874C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r1, #0
	bl ov102_021E8FD8
	strh r0, [r4, #4]
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, _021E8788 ; =0x0000FFFF
	strh r1, [r4, #0xc]
	strh r0, [r4, #0xe]
	ldrh r2, [r4, #4]
	cmp r2, #0xa
	bls _021E8784
	add r1, r2, #0
	sub r1, #0xa
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #1
	and r0, r2
	add r0, r1, r0
	strh r0, [r4, #2]
	pop {r4, pc}
_021E8784:
	strh r1, [r4, #2]
	pop {r4, pc}
	.balign 4, 0
_021E8788: .word 0x0000FFFF
	thumb_func_end ov102_021E874C

