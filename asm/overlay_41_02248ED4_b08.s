	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"
	.public ov41_022490F0
	.extern ov41_02249418
	.extern ov41_0224942C
	.extern ov41_0224946C
	.extern ov41_02249480

    .text

	.text
	thumb_func_start ov41_022490F0
ov41_022490F0: ; 0x022490F0
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r6, r0, #0
	ldr r4, [r6]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _02249100
	b _0224926E
_02249100:
	add r1, sp, #0x18
	str r1, [sp]
	add r1, sp, #0x24
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov41_0224946C
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov41_022481D8
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	bl ov41_022481D8
	add r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl ov41_022481D8
	add r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov41_022481D8
	add r0, r5, r0
	cmp r0, #4
	blt _022491A2
	ldr r2, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #0x38]
	bl ov41_022480A4
	cmp r0, #0
	bne _0224918C
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, _02249274 ; =0x00000682
	bl PlaySE
	ldr r0, [r4, #0xc]
	mov r1, #0x1b
	mov r2, #0xd7
	mov r3, #3
	bl ov41_0224AC08
	ldr r0, [r4, #0x10]
	mov r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov41_02249480
	b _02249268
_0224918C:
	ldr r0, [r4, #4]
	bl ov41_02248158
	bl ov41_022463FC
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, _02249278 ; =0x000005EA
	bl PlaySE
	b _02249268
_022491A2:
	ldr r0, [r4, #0x10]
	add r1, sp, #0x24
	ldr r5, [r0]
	add r0, sp, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov41_0224942C
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov41_0224883C
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov41_0224883C
	add r0, r6, r0
	cmp r0, #2
	bge _02249220
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _0224920C
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov41_02249B94
	bl MTRandom
	ldr r2, [sp, #0x14]
	mov r1, #0x6c
	sub r1, r1, r2
	bl _u32_div_f
	add r1, #0xa
	str r1, [sp, #0xc]
	bl MTRandom
	ldr r2, [sp, #0x10]
	mov r1, #0x7d
	sub r1, r1, r2
	bl _u32_div_f
	add r1, #0x12
	str r1, [sp, #8]
	b _02249218
_0224920C:
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
_02249218:
	ldr r0, _02249274 ; =0x00000682
	bl PlaySE
	b _02249230
_02249220:
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov41_02249B44
	ldr r0, _0224927C ; =0x000005EB
	bl PlaySE
_02249230:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _0224924E
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r0, [r0, #4]
	ldr r1, [r5]
	ldr r2, [r2, #4]
	bl ov41_022484E8
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
_0224924E:
	ldr r0, [r4, #0x10]
	mov r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov41_02249480
_02249268:
	add r0, r4, #0
	bl ov41_02249418
_0224926E:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_02249274: .word 0x00000682
_02249278: .word 0x000005EA
_0224927C: .word 0x000005EB
	thumb_func_end ov41_022490F0

