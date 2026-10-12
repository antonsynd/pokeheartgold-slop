	.include "asm/macros.inc"
	.include "overlay_49_02261FC0.inc"
	.include "global.inc"
	.public ov49_02262B14
	.extern ov49_02262D70

    .text

	.text
	thumb_func_start ov49_02262B14
ov49_02262B14: ; 0x02262B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _02262B32
	cmp r0, #1
	beq _02262BA8
	b _02262BEC
_02262B32:
	add r0, r6, #0
	mov r1, #8
	bl ov49_0225EF40
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov49_0225A040
	cmp r0, #0x27
	beq _02262B50
	cmp r0, #0x28
	beq _02262B56
	cmp r0, #0x29
	beq _02262B5C
	b _02262B62
_02262B50:
	mov r7, #0x2a
	mov r4, #0
	b _02262B6C
_02262B56:
	mov r7, #0x29
	mov r4, #1
	b _02262B6C
_02262B5C:
	mov r7, #0x2b
	mov r4, #2
	b _02262B6C
_02262B62:
	bl GF_AssertFail
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02262B6C:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A0FC
	mov r3, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	str r3, [sp]
	bl ov49_02262D70
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl ov49_02262E04
	add r0, r6, #0
	bl ov49_0225EF90
	b _02262BEC
_02262BA8:
	ldr r0, _02262BF4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _02262BE2
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02262DB8
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_02259FF0
	add r4, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF68
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02262BE2:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov49_02262E04
_02262BEC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262BF4: .word gSystem
	thumb_func_end ov49_02262B14

