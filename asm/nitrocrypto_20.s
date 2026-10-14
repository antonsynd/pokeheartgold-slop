	.include "macros.inc"
	.include "nitrocrypto.inc"
	.include "global.inc"
	.public BN_gen_exp_string
	.extern shift_val

	; rc4s-arm4cw.o

	.text

	.text
	arm_func_start BN_gen_exp_string
BN_gen_exp_string: ; 0x02238A48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r4, r2
	mov r7, r1
	cmp r4, #6
	mov r5, r0
	movgt r4, #6
	mov r1, #1
	mov r2, r1, lsl r4
	ldr r0, [r7, #4]
	sub r2, r2, #1
	add r0, r4, r0, lsl #5
	ldr r3, _02238C1C ; =shift_val
	str r2, [sp]
	ldr r2, [r3, r4, lsl #2]
	mov r1, r4
	sub r0, r0, #1
	str r2, [sp, #4]
	mov r6, #0
	bl _s32_div_f
	mov ip, #0
	mov r0, r0, lsl #1
	add r0, r0, #2
	mov r8, r6
	add r1, r5, r0
	strb r8, [r5, r0]
	strb r8, [r1, #-1]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	ldr r7, [r0]
	add lr, r0, #4
	cmp r2, #1
	sub sb, r1, #2
	ldrgt r8, [lr], #4
	mov sl, r7
	mov r0, ip
	str ip, [sp, #8]
	mov r1, #0xff
	mov fp, ip
_02238AE4:
	ldr r3, [sp]
	and r3, sl, r3
	ldr sl, [sp, #4]
	ldrb sl, [sl, r3]
	cmp sl, #0
	beq _02238B44
	add ip, ip, sl
	add r6, r6, sl
	cmp r6, #0x20
	blo _02238B2C
	cmp r2, #1
	ble _02238B44
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	movle r8, fp
	ldrgt r8, [lr], #4
	sub r6, r6, #0x20
_02238B2C:
	cmp r6, #0
	moveq sl, r7
	movne sl, r7, lsr r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _02238AE4
_02238B44:
	cmp r3, #0
	beq _02238BC8
	strb ip, [sb]
	strb r3, [sb, #-1]
	cmp ip, #0x100
	sub sb, sb, #2
	blo _02238B80
	cmp ip, #0x100
	blo _02238B80
_02238B68:
	strb r1, [sb]
	sub ip, ip, #0x100
	strb r0, [sb, #-1]
	sub sb, sb, #2
	cmp ip, #0x100
	bhs _02238B68
_02238B80:
	mov ip, r4
	add r6, r6, r4
	cmp r6, #0x20
	blo _02238BB0
	cmp r2, #1
	ble _02238BC8
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	ldrle r8, [sp, #8]
	sub r6, r6, #0x20
	ldrgt r8, [lr], #4
_02238BB0:
	cmp r6, #0
	moveq sl, r7
	movne sl, r7, lsr r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _02238AE4
_02238BC8:
	add sb, sb, #1
	mov r0, #2
	b _02238BEC
_02238BD4:
	strb r2, [r5]
	ldrb r1, [sb, #1]
	add sb, sb, #2
	add r0, r0, #2
	strb r1, [r5, #1]
	add r5, r5, #2
_02238BEC:
	ldrb r2, [sb]
	cmp r2, #0
	bne _02238BD4
	ldrb r1, [sb, #1]
	cmp r1, #0
	bne _02238BD4
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.balign 4, 0
_02238C1C: .word shift_val
	arm_func_end BN_gen_exp_string

