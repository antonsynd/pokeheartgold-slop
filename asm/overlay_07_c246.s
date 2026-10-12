	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022218A0
	.extern ov07_02221664
	.extern ov07_022217A4
	.extern ov07_02231B90

	.text

	.text
	thumb_func_start ov07_022218A0
ov07_022218A0: ; 0x022218A0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov07_022217A4
	add r0, r4, #0
	bl ov07_02221664
	strb r0, [r4, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _022218CC
	mov r0, #1
	strb r0, [r4, #8]
_022218CC:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bgt _022218EA
	cmp r0, #0
	blt _0222194A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022218E2: ; jump table
	.short _022218EE - _022218E2 - 2 ; case 0
	.short _02221912 - _022218E2 - 2 ; case 1
	.short _02221934 - _022218E2 - 2 ; case 2
	.short _02221940 - _022218E2 - 2 ; case 3
_022218EA:
	cmp r0, #0xff
	b _0222194A
_022218EE:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02015640
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp]
	mul r1, r2
	str r1, [sp]
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #4]
	mul r1, r2
	str r1, [sp, #4]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #8]
	mul r0, r1
	str r0, [sp, #8]
	b _0222194A
_02221912:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #8
	ldrsb r6, [r4, r3]
	mul r6, r2
	str r6, [sp]
	ldrsb r2, [r4, r3]
	mul r2, r1
	str r2, [sp, #4]
	ldrsb r1, [r4, r3]
	mul r1, r0
	str r1, [sp, #8]
	b _0222194A
_02221934:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl ov07_02231B90
	b _0222194A
_02221940:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0
	bl ov07_02231B90
_0222194A:
	ldr r1, [sp]
	ldr r0, [r4, #0x2c]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x30]
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02015628
	mov r0, #1
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov07_022218A0

