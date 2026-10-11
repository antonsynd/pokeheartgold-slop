	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"
	.public ov41_02248F80
	.extern ov41_022490AC
	.extern ov41_022490B0
	.extern ov41_022490F0
	.extern ov41_02249280
	.extern ov41_022492B0
	.extern ov41_022492E0
	.extern ov41_02249390
	.extern ov41_022493BC
	.extern ov41_02249574
	.extern ov41_02249710

    .text

	.text
	thumb_func_start ov41_02248F80
ov41_02248F80: ; 0x02248F80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5]
	ldr r0, [r4, #4]
	bl ov41_022481BC
	cmp r0, #0
	beq _02249002
	ldr r3, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov41_022481F4
	add r6, r0, #0
	beq _02248FB2
	ldr r0, [r6, #4]
	cmp r0, #3
	bne _02248FB2
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _02248FB2
	mov r6, #0
_02248FB2:
	cmp r6, #0
	beq _0224903E
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02248FC8
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov41_022480C8
	mov r7, #0
	b _02248FE4
_02248FC8:
	add r0, r6, #0
	bl ov41_02248030
	ldr r0, [r6]
	bl ov41_02249710
	add r1, r4, #0
	add r2, r4, #0
	add r7, r0, #0
	add r0, r6, #0
	add r1, #0x24
	add r2, #0x28
	bl ov41_02249B44
_02248FE4:
	ldr r0, [r4, #4]
	bl ov41_02248158
	ldr r0, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	mov r2, #1
	bl ov41_022493BC
	bl ov41_0224642C
	b _0224903E
_02249002:
	ldr r0, [r4, #8]
	bl ov41_02248820
	cmp r0, #0
	beq _0224903E
	ldr r3, [r4]
	ldr r0, [r4, #8]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov41_02248858
	add r6, r0, #0
	beq _0224903E
	bl ov41_022486F0
	ldr r0, [r4, #8]
	bl ov41_02248724
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl ov41_022493BC
	bl ov41_0224642C
_0224903E:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02249088
	ldr r1, [r1, #4]
	ldr r0, _0224908C ; =0x000005EB
	cmp r1, #0
	beq _02249056
	cmp r1, #1
	beq _02249060
	cmp r1, #3
	beq _02249072
	b _0224907A
_02249056:
	ldr r1, _02249090 ; =ov41_022490F0
	str r1, [r5, #8]
	ldr r1, _02249094 ; =ov41_02249280
	str r1, [r5, #0xc]
	b _0224907A
_02249060:
	ldr r0, _02249098 ; =ov41_022490B0
	str r0, [r5, #8]
	ldr r0, _0224909C ; =ov41_022490AC
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ov41_02249390
	ldr r0, _022490A0 ; =0x0000067D
	b _0224907A
_02249072:
	ldr r1, _022490A4 ; =ov41_022492B0
	str r1, [r5, #8]
	ldr r1, _022490A8 ; =ov41_022492E0
	str r1, [r5, #0xc]
_0224907A:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
	add r0, r4, #0
	bl ov41_02249574
_02249088:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224908C: .word 0x000005EB
_02249090: .word ov41_022490F0
_02249094: .word ov41_02249280
_02249098: .word ov41_022490B0
_0224909C: .word ov41_022490AC
_022490A0: .word 0x0000067D
_022490A4: .word ov41_022492B0
_022490A8: .word ov41_022492E0
	thumb_func_end ov41_02248F80

