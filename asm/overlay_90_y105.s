	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225BA38
	.extern ov90_0225BA14

	.text

	.text
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

