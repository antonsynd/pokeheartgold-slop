	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022216E0
	.extern ov13_02222948
	.extern ov13_02222A9C
	.extern ov13_02245A14

	.text

	.text
	thumb_func_start ov13_022216E0
ov13_022216E0: ; 0x022216E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	str r4, [sp, #4]
	str r0, [sp]
	cmp r0, #0
	bne _022216F8
	add sp, #8
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022216F8:
	cmp r0, #0x40
	bls _02221700
	mov r0, #0x40
	str r0, [sp]
_02221700:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	ble _02221742
	add r6, r5, #0
	add r6, #8
_0222170C:
	ldr r1, [r5, #0x54]
	mov r0, #1
	tst r0, r1
	beq _02221736
	ldr r0, _02221758 ; =ov13_02245A14
	bl ov13_02222A9C
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _02221736
	ldr r0, _02221758 ; =ov13_02245A14
	bl ov13_02222A9C
	add r2, r0, #0
	ldr r1, _02221758 ; =ov13_02245A14
	add r0, r6, #0
	bl ov13_02222948
	cmp r0, #0
	bne _02221736
	add r4, r4, #1
_02221736:
	ldr r0, [sp]
	add r7, r7, #1
	add r5, #0x54
	add r6, #0x54
	cmp r7, r0
	blt _0222170C
_02221742:
	cmp r4, #1
	ble _0222174A
	mov r0, #4
	str r0, [sp, #4]
_0222174A:
	cmp r4, #0
	bne _02221752
	mov r0, #5
	str r0, [sp, #4]
_02221752:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02221758: .word ov13_02245A14
	thumb_func_end ov13_022216E0

