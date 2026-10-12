	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DCC4

	.text

	.text
	thumb_func_start ov43_0222DCC4
ov43_0222DCC4: ; 0x0222DCC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	bl sub_0202C6F4
	add r6, r0, #0
	mov r0, #0xb
	ldrsb r4, [r5, r0]
	cmp r7, #0
	bne _0222DD0A
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _0222DD3A
_0222DCE2:
	sub r4, r4, #1
	bpl _0222DCE8
	add r4, r4, r1
_0222DCE8:
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #8
	bl sub_0202C090
	cmp r0, #2
	beq _0222DCFE
	strb r4, [r5, #0xb]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222DCFE:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _0222DCE2
	b _0222DD3A
_0222DD0A:
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _0222DD3A
_0222DD12:
	add r0, r4, #1
	bl _u32_div_f
	add r4, r1, #0
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #8
	bl sub_0202C090
	cmp r0, #2
	beq _0222DD30
	strb r4, [r5, #0xb]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222DD30:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _0222DD12
_0222DD3A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222DCC4

