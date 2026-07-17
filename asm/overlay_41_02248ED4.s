	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_02248ED4
ov41_02248ED4: ; 0x02248ED4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x64
	blo _02248EE2
	bl GF_AssertFail
_02248EE2:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02248ED4

	thumb_func_start ov41_02248EE8
ov41_02248EE8: ; 0x02248EE8
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov41_02248EE8

	thumb_func_start ov41_02248EF4
ov41_02248EF4: ; 0x02248EF4
	push {r3, r4}
	mov r2, #0x19
	mov r4, #0
	lsl r2, r2, #4
_02248EFC:
	ldr r3, [r0, r2]
	cmp r1, r3
	bne _02248F08
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_02248F08:
	add r4, r4, #1
	add r0, r0, #4
	cmp r4, #0x12
	blt _02248EFC
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02248EF4

	thumb_func_start ov41_02248F18
ov41_02248F18: ; 0x02248F18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov41_02248E28
	mov r0, #0xd
	mov r1, #0x34
	bl Heap_Alloc
	str r0, [r5]
	mov r1, #0
	mov r2, #0x34
	bl memset
	ldr r1, [r5]
	ldr r0, [sp, #0x18]
	str r4, [r1, #4]
	str r6, [r1, #8]
	str r7, [r1]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x2c]
	ldr r0, _02248F5C ; =ov41_02248F80
	str r0, [r5, #4]
	ldr r0, _02248F60 ; =ov41_022490F0
	str r0, [r5, #8]
	ldr r0, _02248F64 ; =ov41_02249280
	str r0, [r5, #0xc]
	ldr r0, _02248F68 ; =ov41_02248F6C
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248F5C: .word ov41_02248F80
_02248F60: .word ov41_022490F0
_02248F64: .word ov41_02249280
_02248F68: .word ov41_02248F6C
	thumb_func_end ov41_02248F18

	thumb_func_start ov41_02248F6C
ov41_02248F6C: ; 0x02248F6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl Heap_Free
	add r0, r4, #0
	bl ov41_02248E28
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02248F6C

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

	thumb_func_start ov41_022490AC
ov41_022490AC: ; 0x022490AC
	bx lr
	.balign 4, 0
	thumb_func_end ov41_022490AC

	thumb_func_start ov41_022490B0
ov41_022490B0: ; 0x022490B0
	push {r4, lr}
	sub sp, #8
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022490EA
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _022490C6
	bl GF_AssertFail
_022490C6:
	ldr r0, [r4, #0x10]
	mov r2, #0x1c
	ldr r0, [r0, #4]
	mov r3, #0x1e
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	mov r1, #4
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r4, #0
	bl ov41_02249480
	add r0, r4, #0
	bl ov41_02249418
_022490EA:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022490B0

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

	thumb_func_start ov41_02249280
ov41_02249280: ; 0x02249280
	push {r4, lr}
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _022492A4
	ldr r3, _022492A8 ; =gSystem + 0x40
	ldr r1, _022492AC ; =0x0000FFFF
	ldrh r4, [r3, #0x20]
	cmp r4, r1
	beq _022492A4
	beq _022492A4
	ldrh r3, [r3, #0x22]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x18]
	sub r1, r4, r1
	sub r2, r3, r2
	bl ov41_02249AF4
_022492A4:
	pop {r4, pc}
	nop
_022492A8: .word gSystem + 0x40
_022492AC: .word 0x0000FFFF
	thumb_func_end ov41_02249280

	thumb_func_start ov41_022492B0
ov41_022492B0: ; 0x022492B0
	push {r4, lr}
	ldr r4, [r0]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _022492DA
	ldr r0, [r4, #4]
	bl ov41_02248020
	ldr r0, [r4, #4]
	bl ov41_02248158
	bl ov41_022463FC
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, _022492DC ; =0x000005EB
	bl PlaySE
	add r0, r4, #0
	bl ov41_02249418
_022492DA:
	pop {r4, pc}
	.balign 4, 0
_022492DC: .word 0x000005EB
	thumb_func_end ov41_022492B0

	thumb_func_start ov41_022492E0
ov41_022492E0: ; 0x022492E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [r0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02249384
	ldr r1, _02249388 ; =gSystem + 0x40
	ldrh r2, [r1, #0x20]
	ldr r1, _0224938C ; =0x0000FFFF
	cmp r2, r1
	beq _02249384
	beq _02249384
	add r1, sp, #8
	str r1, [sp]
	add r1, sp, #0x14
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl ov41_02249BAC
	ldr r0, [r4, #0x10]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov41_02249B94
	ldr r0, _02249388 ; =gSystem + 0x40
	ldr r1, [r4, #0x14]
	ldrh r2, [r0, #0x20]
	ldr r3, [sp, #0x18]
	sub r5, r2, r1
	ldrh r1, [r0, #0x22]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x1c]
	sub r6, r1, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	sub r0, r2, r0
	ldr r2, [sp, #8]
	add r7, r6, r1
	sub r2, r3, r2
	ldr r3, [sp, #0x14]
	str r2, [sp, #0x18]
	add r2, r5, r3
	str r0, [sp, #0x1c]
	cmp r2, #0x8a
	bgt _02249342
	mov r0, #0x8a
	sub r5, r0, r3
	b _0224934C
_02249342:
	add r2, r5, r0
	cmp r2, #0xf6
	blt _0224934C
	mov r2, #0xf6
	sub r5, r2, r0
_0224934C:
	cmp r7, #0x12
	bgt _02249356
	mov r0, #0x12
	sub r6, r0, r1
	b _02249362
_02249356:
	ldr r1, [sp, #0x18]
	add r0, r6, r1
	cmp r0, #0x8f
	blt _02249362
	mov r0, #0x8f
	sub r6, r0, r1
_02249362:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov41_022495A4
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov41_022482B8
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, r5, r1
	add r2, r6, r2
	bl ov41_022495A4
_02249384:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02249388: .word gSystem + 0x40
_0224938C: .word 0x0000FFFF
	thumb_func_end ov41_022492E0

	thumb_func_start ov41_02249390
ov41_02249390: ; 0x02249390
	push {r3, r4, r5, lr}
	ldr r4, [r0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022493B8
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _022493A4
	bl GF_AssertFail
_022493A4:
	ldr r0, [r4, #0x10]
	ldr r5, [r0]
	ldr r0, [r4, #4]
	bl ov41_022482A8
	ldr r0, [r4, #4]
	ldr r1, [r5]
	mov r2, #0xe
	bl ov41_0224825C
_022493B8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02249390

	thumb_func_start ov41_022493BC
ov41_022493BC: ; 0x022493BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	add r7, r3, #0
	bl ov41_02249B44
	str r4, [r5, #0x10]
	ldr r0, [sp, #4]
	strh r0, [r5, #0x1c]
	ldr r0, [sp]
	strh r0, [r5, #0x1e]
	add r0, r5, #0
	add r0, #0x20
	strb r6, [r0]
	ldr r0, [sp, #0x20]
	str r7, [r5, #0x14]
	str r0, [r5, #0x18]
	cmp r6, #0
	bne _022493FE
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [r1, #4]
	bl ov41_0224895C
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
	b _02249406
_022493FE:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
_02249406:
	mov r0, #1
	str r0, [r5, #0x30]
	ldr r1, [sp, #0x24]
	add r0, r4, #0
	bl ov41_02249A90
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_022493BC

	thumb_func_start ov41_02249418
ov41_02249418: ; 0x02249418
	mov r2, #0
	str r2, [r0, #0x10]
	strh r2, [r0, #0x1c]
	add r1, r0, #0
	strh r2, [r0, #0x1e]
	add r1, #0x20
	strb r2, [r1]
	add r0, #0x21
	strb r2, [r0]
	bx lr
	thumb_func_end ov41_02249418

	thumb_func_start ov41_0224942C
ov41_0224942C: ; 0x0224942C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [r0]
	add r5, r1, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r7, r3, #0
	bl ov41_02249B94
	ldr r0, [r4, #0x10]
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249B44
	ldr r0, [sp]
	str r0, [r5]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r6]
	ldr r0, [sp, #4]
	str r0, [r7]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224942C

	thumb_func_start ov41_0224946C
ov41_0224946C: ; 0x0224946C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl ov41_02249C20
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov41_0224946C

	thumb_func_start ov41_02249480
ov41_02249480: ; 0x02249480
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r0, _022494F0 ; =ov41_022494F4
	mov r1, #0x2c
	mov r2, #0
	mov r3, #0xd
	bl CreateSysTaskAndEnvironment
	bl SysTask_GetData
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #8
	str r0, [r4]
	ldr r0, [r5, #0x10]
	add r2, sp, #4
	str r0, [r4, #4]
	str r6, [r4, #0x20]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	add r0, #0x3c
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r0, #0x30
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x10]
	bl ov41_02249B44
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #8]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022494F0: .word ov41_022494F4
	thumb_func_end ov41_02249480

	thumb_func_start ov41_022494F4
ov41_022494F4: ; 0x022494F4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r0, [r0]
	cmp r0, #1
	beq _0224956E
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249B44
	ldr r1, [sp, #4]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	bmi _02249532
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02249564
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02249564
_02249532:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov41_02249AF4
	ldr r0, [r4]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #4]
	bl ov41_022486C4
	ldr r0, [r4]
	bl ov41_02248724
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	cmp r0, #0
	bne _0224955A
	bl ov41_022463FC
_0224955A:
	add r0, r5, #0
	bl DestroySysTaskAndEnvironment
	add sp, #8
	pop {r3, r4, r5, pc}
_02249564:
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov41_02249AF4
_0224956E:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_022494F4

	thumb_func_start ov41_02249574
ov41_02249574: ; 0x02249574
	push {r3, lr}
	ldr r3, [r0, #0x10]
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _0224958E
	ldr r3, [r3]
	ldr r0, [r0, #0xc]
	ldr r3, [r3]
	mov r1, #0x1b
	mov r2, #0xd8
	bl ov41_0224AC08
	pop {r3, pc}
_0224958E:
	cmp r1, #1
	bne _022495A0
	ldr r3, [r3]
	ldr r0, [r0, #0xc]
	ldr r3, [r3]
	mov r1, #0x1b
	mov r2, #0xda
	bl ov41_0224AC08
_022495A0:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_02249574

	thumb_func_start ov41_022495A4
ov41_022495A4: ; 0x022495A4
	push {r4, r5, r6, lr}
	ldr r4, [r0]
	add r5, r1, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	bl ov41_02249AF4
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #4]
	sub r1, r5, r1
	sub r2, r6, r2
	bl ov41_02248114
	str r5, [r4, #0x24]
	str r6, [r4, #0x28]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_022495A4

	thumb_func_start ov41_022495C8
ov41_022495C8: ; 0x022495C8
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	str r2, [sp]
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	mov r3, #0xe
	bl GfGfxLoader_LoadFromNarc
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0x76
	bl ov41_022463DC
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl UnscanPokepic
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_022495C8

	thumb_func_start ov41_022495F0
ov41_022495F0: ; 0x022495F0
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl ov41_02249604
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov41_022495F0

	thumb_func_start ov41_02249604
ov41_02249604: ; 0x02249604
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl sub_02070130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0xc0
	mov r3, #0x38
	bl PokepicManager_CreatePokepic
	str r0, [r5]
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov41_022497A0
	ldr r1, [sp, #0x1c]
	mov r2, #0x38
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x18]
	sub r0, r2, r0
	strb r0, [r5, #4]
	ldr r0, [sp, #0x18]
	mov r1, #0xc0
	add r0, #0x38
	strb r0, [r5, #5]
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	strb r0, [r5, #6]
	ldr r0, [sp, #0x1c]
	add r0, #0xc0
	strb r0, [r5, #7]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r5, #4
	bl ov41_02249978
	add r0, r6, #0
	mov r1, #2
	bl sub_02070848
	mov r2, #0
	str r2, [sp]
	add r7, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r3, [sp, #0x38]
	bl GfGfxLoader_LoadFromNarc
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0x14]
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl UnscanPokepic
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _022496C6
	ldr r2, [sp, #0x14]
	add r3, r5, #0
	ldrh r1, [r2, #2]
	ldr r0, [r2, #0x14]
	ldrh r2, [r2]
	lsl r1, r1, #3
	add r3, #8
	lsl r2, r2, #3
	bl ov41_022498E8
	b _022496DC
_022496C6:
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x14]
	ldrh r1, [r1, #2]
	lsl r1, r1, #3
	bl ov41_0224989C
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	strb r0, [r5, #9]
	strb r7, [r5, #0xb]
	strb r7, [r5, #0xa]
_022496DC:
	ldr r0, [sp, #0x10]
	bl Heap_Free
	str r6, [r5, #0xc]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02249604

	thumb_func_start ov41_022496E8
ov41_022496E8: ; 0x022496E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl Pokepic_Delete
	mov r1, #0x10
	mov r0, #0
_022496F6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _022496F6
	pop {r4, pc}
	thumb_func_end ov41_022496E8

	thumb_func_start ov41_02249700
ov41_02249700: ; 0x02249700
	ldr r3, _0224970C ; =Pokepic_SetAttr
	add r2, r1, #0
	ldr r0, [r0]
	mov r1, #2
	bx r3
	nop
_0224970C: .word Pokepic_SetAttr
	thumb_func_end ov41_02249700

	thumb_func_start ov41_02249710
ov41_02249710: ; 0x02249710
	ldr r3, _02249718 ; =Pokepic_GetAttr
	ldr r0, [r0]
	mov r1, #2
	bx r3
	.balign 4, 0
_02249718: .word Pokepic_GetAttr
	thumb_func_end ov41_02249710

	thumb_func_start ov41_0224971C
ov41_0224971C: ; 0x0224971C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov41_022497A0
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	bl Pokepic_SetAttr
	ldr r0, [r5]
	mov r1, #1
	add r2, r6, #0
	bl Pokepic_SetAttr
	ldr r1, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r1, [sp, #8]
	str r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #8]
	str r2, [sp]
	ldr r3, [sp, #8]
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	bl ov41_02249978
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov41_0224971C

	thumb_func_start ov41_02249768
ov41_02249768: ; 0x02249768
	ldr r3, _02249770 ; =TouchscreenHitbox_TouchHeldIsIn
	add r0, r0, #4
	bx r3
	nop
_02249770: .word TouchscreenHitbox_TouchHeldIsIn
	thumb_func_end ov41_02249768

	thumb_func_start ov41_02249774
ov41_02249774: ; 0x02249774
	ldr r3, _0224977C ; =TouchscreenHitbox_PointIsIn
	add r0, r0, #4
	bx r3
	nop
_0224977C: .word TouchscreenHitbox_PointIsIn
	thumb_func_end ov41_02249774

	thumb_func_start ov41_02249780
ov41_02249780: ; 0x02249780
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	mov r1, #0
	add r6, r2, #0
	bl Pokepic_GetAttr
	str r0, [r4]
	ldr r0, [r5]
	mov r1, #1
	bl Pokepic_GetAttr
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02249780

	thumb_func_start ov41_022497A0
ov41_022497A0: ; 0x022497A0
	mov r0, #0x50
	str r0, [r1]
	str r0, [r2]
	bx lr
	thumb_func_end ov41_022497A0

	thumb_func_start ov41_022497A8
ov41_022497A8: ; 0x022497A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov41_02249768
	cmp r0, #0
	bne _022497C2
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022497C2:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249780
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov41_022497A0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r2, r0
	ldr r3, [sp, #8]
	ldr r0, [sp]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [sp]
	ldr r0, _0224981C ; =gSystem + 0x40
	str r1, [sp, #4]
	ldrh r2, [r0, #0x20]
	mov r3, #0
	sub r1, r2, r1
	str r1, [r4]
	ldrh r1, [r0, #0x22]
	ldr r0, [sp]
	sub r2, r1, r0
	str r2, [r6]
	ldr r1, [r4]
	add r0, r7, #0
	bl ov41_022464BC
	cmp r0, #0
	bne _02249816
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249816:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224981C: .word gSystem + 0x40
	thumb_func_end ov41_022497A8

	thumb_func_start ov41_02249820
ov41_02249820: ; 0x02249820
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov41_02249774
	cmp r0, #0
	bne _0224983A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224983A:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249780
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov41_022497A0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r2, r0
	ldr r3, [sp, #8]
	str r1, [sp, #4]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	ldr r0, [sp]
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [sp]
	sub r2, r6, r0
	sub r1, r4, r1
	add r0, r7, #0
	mov r3, #0
	bl ov41_022464BC
	cmp r0, #0
	bne _02249880
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249880:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02249820

	thumb_func_start ov41_02249888
ov41_02249888: ; 0x02249888
	ldrb r2, [r0, #8]
	strb r2, [r1]
	ldrb r2, [r0, #9]
	strb r2, [r1, #1]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #2]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #3]
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02249888

	thumb_func_start ov41_0224989C
ov41_0224989C: ; 0x0224989C
	push {r4, r5, r6, r7}
	mov ip, r0
	add r7, r1, #0
	mov r2, #0
_022498A4:
	mov r3, #0
	add r4, r3, #0
_022498A8:
	add r1, r2, r4
	lsr r0, r1, #0x1f
	lsl r6, r1, #0x1f
	sub r6, r6, r0
	mov r5, #0x1f
	ror r6, r5
	add r5, r0, r6
	lsl r6, r5, #2
	mov r5, #0xf
	add r0, r1, r0
	lsl r5, r6
	asr r1, r0, #1
	mov r0, ip
	lsl r5, r5, #0x18
	ldrsb r0, [r0, r1]
	lsr r5, r5, #0x18
	tst r0, r5
	beq _022498D2
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
_022498D2:
	add r3, r3, #1
	add r4, r4, r7
	cmp r3, #0x50
	blt _022498A8
	add r2, r2, #1
	cmp r2, #0x50
	blt _022498A4
	mov r0, #0x50
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov41_0224989C

	thumb_func_start ov41_022498E8
ov41_022498E8: ; 0x022498E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	add r1, r3, #0
	mov r0, #0x28
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	mov r6, #0
_022498FE:
	mov r2, #0x50
	sub r2, r2, r6
	str r2, [sp, #8]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	mov lr, r2
	ldr r2, [sp, #8]
	mov r0, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r5, r0, #0
	mov ip, r2
_02249916:
	add r7, r6, r5
	lsr r3, r7, #0x1f
	lsl r4, r7, #0x1f
	sub r4, r4, r3
	mov r2, #0x1f
	ror r4, r2
	add r2, r3, r4
	lsl r4, r2, #2
	mov r2, #0xf
	lsl r2, r4
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	add r3, r7, r3
	ldr r2, [sp]
	asr r3, r3, #1
	ldrsb r2, [r2, r3]
	tst r2, r4
	beq _02249964
	ldrb r2, [r1]
	cmp r2, r6
	ble _02249944
	mov r2, lr
	strb r2, [r1]
_02249944:
	ldrb r3, [r1, #1]
	ldr r2, [sp, #8]
	cmp r3, r2
	ble _02249950
	mov r2, ip
	strb r2, [r1, #1]
_02249950:
	ldrb r2, [r1, #2]
	cmp r2, r0
	ble _02249958
	strb r0, [r1, #2]
_02249958:
	mov r2, #0x50
	sub r3, r2, r0
	ldrb r2, [r1, #3]
	cmp r2, r3
	ble _02249964
	strb r3, [r1, #3]
_02249964:
	ldr r2, [sp, #4]
	add r0, r0, #1
	add r5, r5, r2
	cmp r0, #0x50
	blt _02249916
	add r6, r6, #1
	cmp r6, #0x50
	blt _022498FE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_022498E8

	thumb_func_start ov41_02249978
ov41_02249978: ; 0x02249978
	push {r3, r4}
	ldr r4, [sp, #8]
	sub r4, r2, r4
	bmi _02249982
	b _02249984
_02249982:
	mov r4, #0
_02249984:
	strb r4, [r0]
	ldr r4, [sp, #8]
	add r2, r2, r4
	cmp r2, #0xbf
	bgt _02249990
	b _02249992
_02249990:
	mov r2, #0xbf
_02249992:
	strb r2, [r0, #1]
	sub r2, r1, r3
	bmi _0224999A
	b _0224999C
_0224999A:
	mov r2, #0
_0224999C:
	add r1, r1, r3
	strb r2, [r0, #2]
	cmp r1, #0xff
	bgt _022499AA
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
_022499AA:
	mov r1, #0xff
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02249978

	thumb_func_start ov41_022499B4
ov41_022499B4: ; 0x022499B4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	lsl r4, r6, #4
	add r5, r0, #0
	add r0, r2, #0
	add r1, r4, #0
	bl Heap_Alloc
	str r0, [r5]
	cmp r0, #0
	bne _022499CE
	bl GF_AssertFail
_022499CE:
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	bl memset
	str r6, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022499B4

	thumb_func_start ov41_022499DC
ov41_022499DC: ; 0x022499DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl Heap_Free
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022499DC

	thumb_func_start ov41_022499F0
ov41_022499F0: ; 0x022499F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0
	bne _02249A02
	bl GF_AssertFail
_02249A02:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02249A0C
	bl GF_AssertFail
_02249A0C:
	ldr r2, [r5, #4]
	mov r4, #0
	cmp r2, #0
	ble _02249A24
	ldr r1, [r5]
_02249A16:
	ldr r0, [r1]
	cmp r0, #0
	beq _02249A24
	add r4, r4, #1
	add r1, #0x10
	cmp r4, r2
	blt _02249A16
_02249A24:
	cmp r2, r4
	bgt _02249A2C
	bl GF_AssertFail
_02249A2C:
	ldr r0, [r5]
	lsl r1, r4, #4
	str r6, [r0, r1]
	ldr r0, [r5]
	add r0, r0, r1
	str r7, [r0, #4]
	ldr r0, [r5]
	add r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_022499F0

