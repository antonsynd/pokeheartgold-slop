	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_0225FB5C
	.extern ov49_0225EF88
	.extern ov49_0225EF8C
	.extern ov49_0225EF90
	.extern ov49_0225EF98
	.extern ov49_0225EFC4
	.extern ov49_0225F334
	.extern ov49_02269B38
	.extern ov49_02269B68

    .text

	.text
	thumb_func_start ov49_0225FB5C
ov49_0225FB5C: ; 0x0225FB5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov49_0225A010
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0xc]
	bl ov49_02258DAC
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov49_02259FEC
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #5
	bls _0225FB98
	b _0225FC9A
_0225FB98:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FBA4: ; jump table
	.short _0225FBB0 - _0225FBA4 - 2 ; case 0
	.short _0225FBE2 - _0225FBA4 - 2 ; case 1
	.short _0225FC08 - _0225FBA4 - 2 ; case 2
	.short _0225FC3A - _0225FBA4 - 2 ; case 3
	.short _0225FC5E - _0225FBA4 - 2 ; case 4
	.short _0225FC76 - _0225FBA4 - 2 ; case 5
_0225FBB0:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov49_0225F334
	add r0, r5, #0
	bl ov49_0225EF90
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, _0225FCA0 ; =ov49_02269B68
	mov r3, #0
	bl ov49_0225EFC4
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl ov45_0222A4C8
	ldr r0, [sp, #0x10]
	bl ov45_0222A4D0
	b _0225FC9A
_0225FBE2:
	add r0, r4, #0
	bl ov49_02259FEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_0225A030
	cmp r0, #0
	bne _0225FC9A
	add r0, r5, #0
	bl ov49_0225EF90
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov49_02258EAC
	b _0225FC9A
_0225FC08:
	add r0, r7, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _0225FC9A
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A018
	ldr r0, [sp, #0x10]
	bl ov45_0222A424
	cmp r0, #1
	bne _0225FC30
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _0225FC9A
_0225FC30:
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _0225FC9A
_0225FC3A:
	ldrh r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FC9A
_0225FC5E:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _0225FC9A
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FC9A
_0225FC76:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_0225A02C
	add r1, r0, #0
	ldr r2, _0225FCA4 ; =ov49_02269B38
	add r0, r5, #0
	mov r3, #0
	bl ov49_0225EF98
_0225FC9A:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FCA0: .word ov49_02269B68
_0225FCA4: .word ov49_02269B38
	thumb_func_end ov49_0225FB5C

