	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B9A8
	.public ov90_0225BA14
	.public ov90_0225BA38

	.text

	.text
	thumb_func_start ov90_0225B9A8
ov90_0225B9A8: ; 0x0225B9A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202C6F4
	add r4, r0, #0
	ldrb r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _0225BA12
	add r7, sp, #0
_0225B9BE:
	add r0, r5, r6
	ldrb r0, [r0, #0x10]
	bl sub_0203484C
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	add r2, r7, #0
	bl sub_0203A084
	cmp r0, #0
	beq _0225B9D8
	cmp r0, #1
	bne _0225BA0A
_0225B9D8:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0225B9E8
	cmp r0, #1
	beq _0225B9F4
	cmp r0, #2
	beq _0225BA00
	b _0225BA0A
_0225B9E8:
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #1
	bl sub_0202C554
	b _0225BA0A
_0225B9F4:
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #1
	bl sub_0202C584
	b _0225BA0A
_0225BA00:
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #1
	bl sub_0202C5B4
_0225BA0A:
	ldrb r0, [r5, #0x14]
	add r6, r6, #1
	cmp r6, r0
	blt _0225B9BE
_0225BA12:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov90_0225B9A8

	thumb_func_start ov90_0225BA14
ov90_0225BA14: ; 0x0225BA14
	push {r3, lr}
	ldrb r1, [r0, #7]
	cmp r1, #0
	beq _0225BA26
	cmp r1, #1
	beq _0225BA2A
	cmp r1, #2
	beq _0225BA2E
	pop {r3, pc}
_0225BA26:
	mov r0, #0
	pop {r3, pc}
_0225BA2A:
	mov r0, #0
	pop {r3, pc}
_0225BA2E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov90_0225BA14

	thumb_func_start ov90_0225BA38
ov90_0225BA38: ; 0x0225BA38
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r1, sp, #0xc
	mov r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	add r5, r0, #0
	str r4, [r1, #0xc]
	bl ov90_0225BA14
	ldrb r2, [r5, #0x14]
	add r1, r4, #0
	cmp r2, #0
	ble _0225BA7E
	add r2, r5, #0
	add r3, sp, #0xc
_0225BA5A:
	add r6, r5, r1
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r6, #0
	bne _0225BA74
	ldr r6, [r2, #0x1c]
	cmp r0, r6
	beq _0225BA74
	ldr r6, [r5, #0x18]
	add r4, r4, #1
	add r6, r6, r1
	ldrb r6, [r6, #4]
	stmia r3!, {r6}
_0225BA74:
	ldrb r6, [r5, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, r6
	blt _0225BA5A
_0225BA7E:
	cmp r4, #0
	beq _0225BA9C
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldrb r1, [r5, #7]
	ldr r0, [r0, #0x30]
	ldr r3, [sp, #0xc]
	bl ov45_0222ACB8
_0225BA9C:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov90_0225BA38

