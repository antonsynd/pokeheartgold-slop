	.include "asm/macros.inc"
	.include "unk_020192D0.inc"
	.include "global.inc"
	.public sub_02019B1C
	.public sub_02019B44
	.public sub_02019B70

	.text
	thumb_func_start sub_02019B1C
sub_02019B1C: ; 0x02019B1C
	push {r4, r5}
	cmp r2, #0
	beq _02019B2E
	ldr r5, [r0, #4]
	lsl r4, r1, #4
	add r5, r5, r4
	mov r4, #6
	ldrsb r4, [r5, r4]
	strb r4, [r2]
_02019B2E:
	cmp r3, #0
	beq _02019B3E
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r1, r2, r0
	mov r0, #7
	ldrsb r0, [r1, r0]
	strb r0, [r3]
_02019B3E:
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019B1C

	thumb_func_start sub_02019B44
sub_02019B44: ; 0x02019B44
	push {r4, r5}
	cmp r2, #0
	beq _02019B58
	ldr r5, [r0, #4]
	lsl r4, r1, #4
	add r4, r5, r4
	ldrh r4, [r4, #4]
	lsl r4, r4, #0x1a
	lsr r4, r4, #0x1a
	strh r4, [r2]
_02019B58:
	cmp r3, #0
	beq _02019B6A
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1a
	strh r0, [r3]
_02019B6A:
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019B44

	thumb_func_start sub_02019B70
sub_02019B70: ; 0x02019B70
	push {r3, r4}
	ldr r4, [r0, #4]
	lsl r1, r1, #4
	add r4, r4, r1
	strb r2, [r4, #0xc]
	ldr r2, [r0, #4]
	add r2, r2, r1
	strb r3, [r2, #0xd]
	ldr r3, _02019B9C ; =0xFFFFFFF8
	mov r2, #0x10
	add r3, sp
	ldrsb r4, [r3, r2]
	ldr r2, [r0, #4]
	add r2, r2, r1
	strb r4, [r2, #0xe]
	mov r2, #0x14
	ldr r0, [r0, #4]
	ldrsb r2, [r3, r2]
	add r0, r0, r1
	strb r2, [r0, #0xf]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02019B9C: .word 0xFFFFFFF8
	thumb_func_end sub_02019B70

