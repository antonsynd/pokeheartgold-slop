	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222036C
	.public ov07_0222043C
	.extern ov07_0221F9A8
	.extern ov07_022202D8
	.extern ov07_02231B90

	.text

	.text
	thumb_func_start ov07_0222036C
ov07_0222036C: ; 0x0222036C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r1, #0
	add r1, r3, #0
	add r7, sp, #0x10
	mov r2, #0
	str r2, [r7]
	ldr r3, [sp, #0x30]
	str r2, [r7, #4]
	ldr r4, [sp, #0x38]
	str r2, [r7, #8]
	cmp r3, #5
	bhi _02220416
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02220394: ; jump table
	.short _02220416 - _02220394 - 2 ; case 0
	.short _022203A0 - _02220394 - 2 ; case 1
	.short _022203C6 - _02220394 - 2 ; case 2
	.short _022203DA - _02220394 - 2 ; case 3
	.short _022203E2 - _02220394 - 2 ; case 4
	.short _022203EC - _02220394 - 2 ; case 5
_022203A0:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02015720
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x14]
	mul r0, r1
	str r0, [sp, #0x18]
	b _02220416
_022203C6:
	str r2, [sp, #0x10]
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r1, [r1, r0]
	mov r0, #0x32
	lsl r0, r0, #6
	mul r0, r1
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	b _02220416
_022203DA:
	add r2, r7, #0
	bl ov07_02231B90
	b _02220416
_022203E2:
	add r1, r6, #0
	add r2, r7, #0
	bl ov07_02231B90
	b _02220416
_022203EC:
	add r1, sp, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	mov r2, #4
	bl ov07_0221F9A8
	ldr r0, [sp]
	add r2, sp, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	ldrsb r1, [r2, r1]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	bl ov07_022202D8
_02220416:
	ldr r1, [sp, #0x10]
	ldr r0, [r4]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02015708
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov07_0222036C

	thumb_func_start ov07_0222043C
ov07_0222043C: ; 0x0222043C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r1, #0
	add r1, r3, #0
	add r7, sp, #0x10
	mov r2, #0
	str r2, [r7]
	ldr r3, [sp, #0x30]
	str r2, [r7, #4]
	ldr r4, [sp, #0x38]
	str r2, [r7, #8]
	cmp r3, #5
	bhi _022204E6
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02220464: ; jump table
	.short _022204E6 - _02220464 - 2 ; case 0
	.short _02220470 - _02220464 - 2 ; case 1
	.short _02220496 - _02220464 - 2 ; case 2
	.short _022204AA - _02220464 - 2 ; case 3
	.short _022204B2 - _02220464 - 2 ; case 4
	.short _022204BC - _02220464 - 2 ; case 5
_02220470:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02015640
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x14]
	mul r0, r1
	str r0, [sp, #0x18]
	b _022204E6
_02220496:
	str r2, [sp, #0x10]
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r1, [r1, r0]
	mov r0, #0x32
	lsl r0, r0, #6
	mul r0, r1
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	b _022204E6
_022204AA:
	add r2, r7, #0
	bl ov07_02231B90
	b _022204E6
_022204B2:
	add r1, r6, #0
	add r2, r7, #0
	bl ov07_02231B90
	b _022204E6
_022204BC:
	add r1, sp, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	mov r2, #4
	bl ov07_0221F9A8
	ldr r0, [sp]
	add r2, sp, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	ldrsb r1, [r2, r1]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	bl ov07_022202D8
_022204E6:
	ldr r1, [sp, #0x10]
	ldr r0, [r4]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02015628
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov07_0222043C

