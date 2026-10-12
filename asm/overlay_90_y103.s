	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B9A8

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

