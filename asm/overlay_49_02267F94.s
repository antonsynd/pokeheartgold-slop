	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_02267F94
ov49_02267F94: ; 0x02267F94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x24
	bl ov49_02259154
	mov r1, #2
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	lsl r0, r1, #1
	add r0, r2, r0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _022680A8
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	add r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0xa8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
_02267FD8:
	cmp r4, #3
	bhi _02268056
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267FE8: ; jump table
	.short _02267FF0 - _02267FE8 - 2 ; case 0
	.short _02268008 - _02267FE8 - 2 ; case 1
	.short _02268020 - _02267FE8 - 2 ; case 2
	.short _0226803C - _02267FE8 - 2 ; case 3
_02267FF0:
	mov r0, #3
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	sub r7, r1, r0
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	add r6, r1, r0
	ldr r5, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x20]
	b _02268056
_02268008:
	mov r0, #3
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r7, r1, r0
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	add r6, r1, r0
	ldr r5, [sp, #0x2c]
	ldr r0, _022680AC ; =0x00007FFF
	str r0, [sp, #0x20]
	b _02268056
_02268020:
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	sub r7, r1, r0
	ldr r1, [sp, #0x28]
	lsl r0, r0, #1
	add r6, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	sub r5, r1, r0
	ldr r0, _022680AC ; =0x00007FFF
	str r0, [sp, #0x20]
	b _02268056
_0226803C:
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r7, r1, r0
	ldr r1, [sp, #0x28]
	lsl r0, r0, #1
	add r6, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	sub r5, r1, r0
	mov r0, #0
	str r0, [sp, #0x20]
_02268056:
	str r6, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl ov49_0226540C
	mov r3, #6
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldr r2, _022680B0 ; =0x00000CCC
	lsl r3, r3, #0xc
	bl ov49_022655F4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	add r0, #0xd8
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl sub_020182A8
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _02267FD8
_022680A8:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022680AC: .word 0x00007FFF
_022680B0: .word 0x00000CCC
	thumb_func_end ov49_02267F94

	thumb_func_start ov49_022680B4
ov49_022680B4: ; 0x022680B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _02268134
	ldr r0, [sp]
	ldr r6, [sp]
	str r0, [sp, #4]
	add r0, #0xa8
	add r6, #8
	ldr r5, [sp]
	str r0, [sp, #4]
	add r4, r0, #0
	add r7, r6, #0
_022680D8:
	ldr r0, [sp, #4]
	bl ov49_02265628
	ldr r2, [sp]
	mov r1, #0
	ldrsh r1, [r2, r1]
	add r0, r6, #0
	bl ov49_02265434
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0x10
	bl ov49_02265660
	add r0, r7, #0
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	bl ov49_022655E0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r1, r1, r0
	add r0, r5, #0
	str r1, [sp, #0x14]
	add r0, #0xd8
	ldr r0, [r0]
	ldr r3, [sp, #0x1c]
	bl sub_020182A8
	ldr r0, [sp, #4]
	add r6, #0x28
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, #0x28
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	cmp r0, r1
	blt _022680D8
_02268134:
	ldr r0, [sp, #8]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_022680B4

	thumb_func_start ov49_0226813C
ov49_0226813C: ; 0x0226813C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x1c
	bl ov49_02259154
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r4, #0
	add r1, r1, r0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x24]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226821E
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x18]
	add r1, #8
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, #0xa8
	str r1, [sp, #0x14]
_0226817A:
	cmp r4, #3
	bhi _022681E2
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226818A: ; jump table
	.short _02268192 - _0226818A - 2 ; case 0
	.short _022681A2 - _0226818A - 2 ; case 1
	.short _022681B2 - _0226818A - 2 ; case 2
	.short _022681D4 - _0226818A - 2 ; case 3
_02268192:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	add r5, r1, r0
	b _022681E2
_022681A2:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	add r5, r1, r0
	b _022681E2
_022681B2:
	cmp r0, #3
	bne _022681C4
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	ldr r7, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
	b _022681E2
_022681C4:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
	b _022681E2
_022681D4:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
_022681E2:
	str r6, [sp]
	ldr r0, [sp, #0x24]
	add r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl ov49_0226540C
	mov r3, #2
	ldr r0, [sp, #0x14]
	ldr r1, _02268228 ; =0x00001555
	ldr r2, _0226822C ; =0x0000071C
	lsl r3, r3, #0x10
	bl ov49_022655F4
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0226817A
_0226821E:
	ldr r0, [sp, #0x10]
	bl ov49_02268230
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02268228: .word 0x00001555
_0226822C: .word 0x0000071C
	thumb_func_end ov49_0226813C

	thumb_func_start ov49_02268230
ov49_02268230: ; 0x02268230
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _022682C2
	add r4, r5, #0
	add r0, r5, #0
	add r4, #0xa8
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	str r4, [sp]
	add r6, r0, #0
	add r7, r5, #0
_02268252:
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0xe
	bne _0226826A
	mov r3, #3
	ldr r2, _022682D0 ; =0x00000E38
	add r0, r4, #0
	mov r1, #0
	lsl r3, r3, #0xe
	bl ov49_022655F4
	b _02268270
_0226826A:
	add r0, r4, #0
	bl ov49_02265628
_02268270:
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #4]
	bl ov49_02265434
	ldr r0, [sp]
	add r1, sp, #0xc
	bl ov49_02265660
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0x14
	add r3, sp, #0x18
	bl ov49_022655E0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r2, r1, r0
	add r0, r7, #0
	str r2, [sp, #0x14]
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl sub_020182A8
	ldr r0, [sp, #4]
	ldrh r1, [r5, #4]
	add r0, #0x28
	str r0, [sp, #4]
	ldr r0, [sp]
	add r4, #0xc
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	add r6, #0x28
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #8]
	cmp r0, r1
	blt _02268252
_022682C2:
	mov r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x16
	blt _022682CC
	mov r0, #1
_022682CC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022682D0: .word 0x00000E38
	thumb_func_end ov49_02268230

	thumb_func_start ov49_022682D4
ov49_022682D4: ; 0x022682D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0x10
	bl ov49_02259154
	mov r1, #2
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #0x10]
	mov r0, #5
	ldr r2, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _02268330
	mov r6, #5
	mov r7, #7
	lsl r6, r6, #0xc
	lsl r7, r7, #0xc
_0226830C:
	str r6, [sp]
	mov r0, #0xe
	mov r3, #0xd
	str r7, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x10
	lsl r3, r3, #0xc
	bl ov49_022683FC
	ldrh r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0226830C
_02268330:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_022682D4

	thumb_func_start ov49_02268334
ov49_02268334: ; 0x02268334
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _022683D6
	add r4, r5, #0
	str r4, [sp, #0x10]
	add r4, #8
	str r4, [sp, #0x10]
	add r7, r5, #0
_0226834C:
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #0x10]
	bl ov49_02265434
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov49_022655E0
	add r0, r7, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl sub_020182A8
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _022683C4
	ldrb r0, [r5, #7]
	add r2, sp, #0x18
	cmp r0, #0
	bne _022683A2
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	ldr r0, _022683F8 ; =0xFFFFD000
	ldr r3, _022683F8 ; =0xFFFFD000
	str r0, [sp, #4]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_022683FC
	b _022683C4
_022683A2:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #4
	mov r3, #0xa
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	lsl r3, r3, #0xc
	bl ov49_022683FC
_022683C4:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, #0x28
	str r0, [sp, #0x10]
	ldrh r0, [r5, #4]
	add r4, #0x28
	add r7, r7, #4
	cmp r6, r0
	blt _0226834C
_022683D6:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _022683F2
	ldrb r0, [r5, #7]
	add r0, r0, #1
	cmp r0, #3
	bge _022683EC
	strb r0, [r5, #7]
	mov r0, #0
	strh r0, [r5]
	b _022683F2
_022683EC:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022683F2:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022683F8: .word 0xFFFFD000
	thumb_func_end ov49_02268334

	thumb_func_start ov49_022683FC
ov49_022683FC: ; 0x022683FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #3
	bhi _0226845A
	add r3, r5, r5
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02268418: ; jump table
	.short _02268420 - _02268418 - 2 ; case 0
	.short _0226842E - _02268418 - 2 ; case 1
	.short _0226843C - _02268418 - 2 ; case 2
	.short _0226844C - _02268418 - 2 ; case 3
_02268420:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	sub r2, r0, r6
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226845A
_0226842E:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r0, r6
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226845A
_0226843C:
	ldr r1, [r4]
	ldr r0, [sp, #0x2c]
	sub r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226845A
_0226844C:
	ldr r1, [r4]
	ldr r0, [sp, #0x2c]
	add r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	ldr r1, [r4, #8]
_0226845A:
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x34]
	add r1, r7, #0
	str r0, [sp, #0xc]
	mov r0, #0x28
	add r1, #8
	mul r0, r5
	add r0, r1, r0
	ldr r1, [r4]
	ldr r3, [r4, #4]
	bl ov49_0226540C
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl sub_020182A8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_022683FC

	thumb_func_start ov49_02268490
ov49_02268490: ; 0x02268490
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x60
	add r6, r2, #0
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x60
	add r4, r0, #0
	bl memset
	mov r1, #0xa
	ldr r2, _022684EC ; =ov49_0226A7E0
	mul r1, r5
	add r0, r4, #0
	add r1, r2, r1
	bl ov49_022686C0
	ldr r2, _022684F0 ; =ov49_0226A7D8
	lsl r1, r6, #1
	add r0, r4, #0
	add r1, r2, r1
	bl ov49_022686E4
	mov r1, #0
	add r2, r4, #0
	mov r0, #0x3c
_022684C6:
	add r1, r1, #1
	str r0, [r2, #0x48]
	add r2, r2, #4
	cmp r1, #2
	blt _022684C6
	mov r2, #0
	add r1, r4, #0
	mov r0, #0x3c
_022684D6:
	add r2, r2, #1
	str r0, [r1, #0x50]
	add r1, r1, #4
	cmp r2, #4
	blt _022684D6
	add r0, r4, #0
	bl ov49_022686F0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_022684EC: .word ov49_0226A7E0
_022684F0: .word ov49_0226A7D8
	thumb_func_end ov49_02268490

	thumb_func_start ov49_022684F4
ov49_022684F4: ; 0x022684F4
	ldr r3, _022684F8 ; =Heap_Free
	bx r3
	.balign 4, 0
_022684F8: .word Heap_Free
	thumb_func_end ov49_022684F4

	thumb_func_start ov49_022684FC
ov49_022684FC: ; 0x022684FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r4, [sp, #4]
	mov r0, #0
	add r6, r4, #0
	add r5, r4, #0
	add r7, r0, #0
	add r6, #0x30
	add r5, #0x18
_02268510:
	ldr r1, [r4, #0x48]
	add r1, r1, #1
	cmp r1, #0x3c
	bgt _0226852C
	str r1, [r4, #0x48]
	mov r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x48]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov49_02268664
	mov r0, #1
_0226852C:
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #2
	blt _02268510
	ldr r4, [sp, #4]
	mov r1, #0
	add r7, r4, #0
	add r6, r4, #0
	add r5, r4, #0
	str r1, [sp, #8]
	add r7, #8
	add r6, #0x38
	add r5, #0x20
_0226854A:
	ldr r1, [r4, #0x50]
	add r1, r1, #1
	cmp r1, #0x3c
	bgt _02268566
	str r1, [r4, #0x50]
	mov r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x50]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_02268664
	mov r0, #1
_02268566:
	ldr r1, [sp, #8]
	add r4, r4, #4
	add r1, r1, #1
	add r7, r7, #4
	add r6, r6, #4
	add r5, r5, #4
	str r1, [sp, #8]
	cmp r1, #4
	blt _0226854A
	cmp r0, #0
	beq _02268582
	ldr r0, [sp, #4]
	bl ov49_022686F0
_02268582:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_022684FC

	thumb_func_start ov49_02268588
ov49_02268588: ; 0x02268588
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	ldr r2, _022685F4 ; =ov49_0226A7E0
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #1]
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #3]
	strb r0, [r5, #0x1b]
	mov r0, #0
	str r0, [r5, #0x48]
	mov r0, #0xa
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	bl ov49_02268640
	add r6, r4, #2
	add r4, r5, #0
	mov r7, #0
	add r4, #0x38
_022685BA:
	ldrb r1, [r5, #8]
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #9]
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xa]
	add r0, #0x22
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xb]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0
	str r0, [r5, #0x50]
	add r0, r4, #0
	add r1, r6, #0
	bl ov49_02268640
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #2
	add r4, r4, #4
	cmp r7, #4
	blt _022685BA
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022685F4: .word ov49_0226A7E0
	thumb_func_end ov49_02268588

	thumb_func_start ov49_022685F8
ov49_022685F8: ; 0x022685F8
	ldrb r2, [r0, #4]
	ldr r3, _02268618 ; =ov49_02268640
	lsl r1, r1, #1
	strb r2, [r0, #0x1c]
	ldrb r2, [r0, #5]
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #6]
	strb r2, [r0, #0x1e]
	ldrb r2, [r0, #7]
	strb r2, [r0, #0x1f]
	mov r2, #0
	str r2, [r0, #0x4c]
	ldr r2, _0226861C ; =ov49_0226A7D8
	add r0, #0x34
	add r1, r2, r1
	bx r3
	.balign 4, 0
_02268618: .word ov49_02268640
_0226861C: .word ov49_0226A7D8
	thumb_func_end ov49_022685F8

	thumb_func_start ov49_02268620
ov49_02268620: ; 0x02268620
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02268620

	thumb_func_start ov49_02268624
ov49_02268624: ; 0x02268624
	push {r3, r4}
	mov r3, #0
	mov r2, #2
	ldrsb r4, [r0, r3]
	ldrsb r2, [r0, r2]
	mov r3, #1
	ldrsb r0, [r0, r3]
	lsl r2, r2, #0xa
	lsl r0, r0, #5
	orr r0, r4
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4}
	bx lr
	thumb_func_end ov49_02268624

	thumb_func_start ov49_02268640
ov49_02268640: ; 0x02268640
	push {r3, r4}
	ldrh r3, [r1]
	mov r2, #0x1f
	and r3, r2
	strb r3, [r0]
	ldrh r4, [r1]
	lsl r3, r2, #5
	and r3, r4
	asr r3, r3, #5
	strb r3, [r0, #1]
	ldrh r3, [r1]
	lsl r1, r2, #0xa
	and r1, r3
	asr r1, r1, #0xa
	strb r1, [r0, #2]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02268640

	thumb_func_start ov49_02268664
ov49_02268664: ; 0x02268664
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	add r6, r3, #0
	sub r0, r2, r0
	str r0, [sp, #4]
	mov r0, #2
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	sub r0, r2, r0
	str r0, [sp]
	mov r0, #0
	ldrsb r7, [r5, r0]
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	sub r0, r0, r7
	mul r0, r6
	bl _s32_div_f
	add r0, r7, r0
	strb r0, [r4]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	mul r0, r6
	bl _s32_div_f
	mov r1, #1
	ldrsb r1, [r5, r1]
	add r0, r1, r0
	strb r0, [r4, #1]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	mul r0, r6
	bl _s32_div_f
	mov r1, #2
	ldrsb r1, [r5, r1]
	add r0, r1, r0
	strb r0, [r4, #2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02268664

	thumb_func_start ov49_022686C0
ov49_022686C0: ; 0x022686C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_02268640
	mov r6, #0
	add r4, r4, #2
	add r5, #8
_022686D0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02268640
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #4
	blt _022686D0
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_022686C0

	thumb_func_start ov49_022686E4
ov49_022686E4: ; 0x022686E4
	ldr r3, _022686EC ; =ov49_02268640
	add r0, r0, #4
	bx r3
	nop
_022686EC: .word ov49_02268640
	thumb_func_end ov49_022686E4

	thumb_func_start ov49_022686F0
ov49_022686F0: ; 0x022686F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #4
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r7, #2
	add r6, sp, #4
_02268700:
	add r0, r5, #0
	add r1, r7, #0
	bl ov49_02268624
	ldrh r1, [r6, #2]
	add r0, r4, #0
	bl NNS_G3dGlbLightColor
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02268700
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #8
	add r1, #2
	bl ov49_02268624
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0xc
	bl ov49_02268624
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	mov r2, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0x10
	add r1, #2
	bl ov49_02268624
	ldr r0, [sp]
	add r1, sp, #4
	add r0, #0x14
	str r0, [sp]
	bl ov49_02268624
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	mov r2, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_022686F0

	thumb_func_start ov49_02268764
ov49_02268764: ; 0x02268764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0x1c
	add r6, r0, #0
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x1c
	mov r0, #0
_0226877A:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0226877A
	str r5, [r4]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov49_02259FF8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov49_02259FF0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl ov45_0222A3BC
	bl ov49_02268974
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov45_0222A3D4
	bl ov49_022689A0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl ov45_0222A3EC
	bl ov49_022689D4
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl ov49_02268490
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_02268FAC
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, r6, #0
	bl ov49_02268A0C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov49_02258BEC
	ldr r0, [r4, #4]
	bl ov45_0222A35C
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov45_0222A324
	ldr r0, [r4, #4]
	bl ov45_0222A374
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov45_0222A3A0
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov45_0222A330
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov45_0222A394
	cmp r5, #2
	bne _02268820
	ldr r0, [r4, #8]
	bl ov49_0225E714
_02268820:
	cmp r5, #1
	beq _02268834
	cmp r5, #0
	bne _02268834
	cmp r7, #1
	bne _02268834
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov49_0225E760
_02268834:
	ldr r0, [sp]
	cmp r0, #1
	bne _02268840
	ldr r0, [r4, #8]
	bl ov49_0225E574
_02268840:
	cmp r6, #1
	bne _0226884A
	add r0, r4, #0
	bl ov49_02268A00
_0226884A:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02268764

	thumb_func_start ov49_02268850
ov49_02268850: ; 0x02268850
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov49_02268A6C
	ldr r0, [r4, #0x14]
	bl ov49_02269090
	ldr r0, [r4, #0x10]
	bl ov49_022684F4
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02268850

	thumb_func_start ov49_02268870
ov49_02268870: ; 0x02268870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov45_0222A288
	cmp r0, #0
	beq _0226889C
	ldr r0, [r5, #4]
	bl ov45_0222A3BC
	bl ov49_02268974
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ov49_02268588
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ov49_02258C08
_0226889C:
	ldr r0, [r5, #4]
	mov r1, #2
	bl ov45_0222A288
	cmp r0, #0
	beq _022688BA
	ldr r0, [r5, #4]
	bl ov45_0222A3D4
	bl ov49_022689A0
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov49_022685F8
_022688BA:
	ldr r0, [r5, #4]
	mov r1, #3
	bl ov45_0222A288
	cmp r0, #0
	beq _022688D8
	ldr r0, [r5, #4]
	bl ov45_0222A3EC
	bl ov49_022689D4
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov49_02268620
_022688D8:
	ldr r0, [r5, #4]
	bl ov45_0222A3A0
	cmp r0, #1
	bne _022688FE
	ldr r0, [r5, #4]
	bl ov45_0222A35C
	cmp r0, #0
	bne _022688FE
	ldr r0, [r5, #8]
	bl ov49_0225E824
	cmp r0, #0
	bne _022688FE
	ldr r0, [r5, #8]
	mov r1, #1
	bl ov49_0225E760
_022688FE:
	ldr r0, [r5, #4]
	mov r1, #5
	bl ov45_0222A288
	cmp r0, #0
	beq _02268922
	ldr r0, [r5, #4]
	bl ov45_0222A35C
	cmp r0, #1
	bne _02268922
	ldr r0, [r5, #8]
	bl ov49_0225E714
	ldr r0, [r5, #8]
	mov r1, #2
	bl ov49_0225E760
_02268922:
	ldr r0, [r5, #4]
	mov r1, #6
	bl ov45_0222A288
	cmp r0, #0
	beq _0226893E
	ldr r0, [r5, #4]
	bl ov45_0222A374
	cmp r0, #1
	bne _0226893E
	ldr r0, [r5, #8]
	bl ov49_0225E574
_0226893E:
	ldr r0, [r5, #4]
	bl ov45_0222A330
	cmp r0, #1
	bne _02268954
	ldr r0, [r5, #8]
	bl ov49_0225E580
	add r0, r5, #0
	bl ov49_02268A00
_02268954:
	ldr r0, [r5, #0x10]
	bl ov49_022684FC
	ldr r0, [r5, #0x14]
	bl ov49_02269098
	ldr r0, [r5, #0x18]
	bl ov49_02268A7C
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02268870

	thumb_func_start ov49_02268968
ov49_02268968: ; 0x02268968
	ldr r3, _02268970 ; =ov49_02269154
	ldr r0, [r0, #0x14]
	bx r3
	nop
_02268970: .word ov49_02269154
	thumb_func_end ov49_02268968

	thumb_func_start ov49_02268974
ov49_02268974: ; 0x02268974
	push {r3, lr}
	cmp r0, #6
	bhi _02268998
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02268986: ; jump table
	.short _02268998 - _02268986 - 2 ; case 0
	.short _02268994 - _02268986 - 2 ; case 1
	.short _02268994 - _02268986 - 2 ; case 2
	.short _02268994 - _02268986 - 2 ; case 3
	.short _02268994 - _02268986 - 2 ; case 4
	.short _02268994 - _02268986 - 2 ; case 5
	.short _02268994 - _02268986 - 2 ; case 6
_02268994:
	sub r0, r0, #1
	pop {r3, pc}
_02268998:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov49_02268974

	thumb_func_start ov49_022689A0
ov49_022689A0: ; 0x022689A0
	push {r3, lr}
	cmp r0, #0xa
	bhi _022689CC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022689B2: ; jump table
	.short _022689CC - _022689B2 - 2 ; case 0
	.short _022689CC - _022689B2 - 2 ; case 1
	.short _022689CC - _022689B2 - 2 ; case 2
	.short _022689CC - _022689B2 - 2 ; case 3
	.short _022689CC - _022689B2 - 2 ; case 4
	.short _022689CC - _022689B2 - 2 ; case 5
	.short _022689CC - _022689B2 - 2 ; case 6
	.short _022689C8 - _022689B2 - 2 ; case 7
	.short _022689C8 - _022689B2 - 2 ; case 8
	.short _022689C8 - _022689B2 - 2 ; case 9
	.short _022689C8 - _022689B2 - 2 ; case 10
_022689C8:
	sub r0, r0, #7
	pop {r3, pc}
_022689CC:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov49_022689A0

	thumb_func_start ov49_022689D4
ov49_022689D4: ; 0x022689D4
	push {r3, lr}
	add r1, r0, #0
	sub r1, #0xb
	cmp r1, #3
	bhi _022689F6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022689EA: ; jump table
	.short _022689F2 - _022689EA - 2 ; case 0
	.short _022689F2 - _022689EA - 2 ; case 1
	.short _022689F2 - _022689EA - 2 ; case 2
	.short _022689F2 - _022689EA - 2 ; case 3
_022689F2:
	sub r0, #0xb
	pop {r3, pc}
_022689F6:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_022689D4

	thumb_func_start ov49_02268A00
ov49_02268A00: ; 0x02268A00
	ldr r3, _02268A08 ; =NNS_G3dGlbLightColor
	mov r0, #2
	mov r1, #0
	bx r3
	.balign 4, 0
_02268A08: .word NNS_G3dGlbLightColor
	thumb_func_end ov49_02268A00

	thumb_func_start ov49_02268A0C
ov49_02268A0C: ; 0x02268A0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x10
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02268A22:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02268A22
	str r5, [r4]
	add r0, r5, #0
	str r6, [r4, #4]
	bl ov45_0222B1DC
	add r7, r0, #0
	add r0, r5, #0
	bl ov45_0222A35C
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02268A66
	cmp r7, #0
	beq _02268A66
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225E624
	add r0, r4, #0
	bl ov49_02268D94
	add r0, r5, #0
	bl ov45_0222B1EC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_02268C74
_02268A66:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02268A0C

	thumb_func_start ov49_02268A6C
ov49_02268A6C: ; 0x02268A6C
	push {r4, lr}
	add r4, r0, #0
	bl ov49_02268DB0
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	thumb_func_end ov49_02268A6C

	thumb_func_start ov49_02268A7C
ov49_02268A7C: ; 0x02268A7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl ov45_0222B1DC
	add r4, r0, #0
	ldr r0, [r5]
	bl ov45_0222B1EC
	add r7, r0, #0
	ldr r0, [r5]
	bl ov45_0222A35C
	add r6, r0, #0
	ldrh r0, [r5, #0xa]
	cmp r0, r6
	beq _02268ABC
	strh r6, [r5, #0xa]
	cmp r6, #1
	bne _02268ABC
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov49_0225E624
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov49_02268C74
	add r0, r5, #0
	bl ov49_02268D94
_02268ABC:
	cmp r6, #0
	beq _02268ADA
	ldrb r0, [r5, #8]
	cmp r0, r4
	beq _02268AD0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov49_02268C74
_02268AD0:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov49_02268ADC
_02268ADA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02268A7C

	thumb_func_start ov49_02268ADC
ov49_02268ADC: ; 0x02268ADC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _02268AEC
	bl GF_AssertFail
_02268AEC:
	cmp r4, #6
	bhs _02268AFC
	ldr r2, _02268B00 ; =ov49_0226A84C
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_02268AFC:
	pop {r4, r5, r6, pc}
	nop
_02268B00: .word ov49_0226A84C
	thumb_func_end ov49_02268ADC

	thumb_func_start ov49_02268B04
ov49_02268B04: ; 0x02268B04
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02268B04

	thumb_func_start ov49_02268B08
ov49_02268B08: ; 0x02268B08
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02268B08

	thumb_func_start ov49_02268B0C
ov49_02268B0C: ; 0x02268B0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	mov r1, #0xe
	bl _u32_div_f
	cmp r1, #0
	bne _02268B86
	ldr r5, _02268B88 ; =ov49_0226A8B4
	mov r4, #0
_02268B20:
	ldr r0, [r7, #0xc]
	add r1, r4, #0
	lsl r2, r0, #3
	ldr r0, _02268B8C ; =ov49_0226A894
	mov r6, #0
	add r3, r0, r2
	mov r0, #3
	and r1, r0
	ldr r0, _02268B8C ; =ov49_0226A894
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _02268B40
	mov r0, #1
	str r0, [sp]
	add r6, r0, #0
	b _02268B4C
_02268B40:
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _02268B4C
	add r0, r6, #0
	str r0, [sp]
	mov r6, #1
_02268B4C:
	cmp r6, #1
	bne _02268B72
	cmp r4, #0x11
	bhs _02268B6E
	ldrb r1, [r5]
	mov r3, #1
	ldr r0, [r7, #4]
	ldr r2, [sp]
	lsl r3, r3, #0xc
	bl ov49_0225E85C
	add r6, r0, #0
	cmp r6, #1
	beq _02268B74
	bl GF_AssertFail
	b _02268B74
_02268B6E:
	mov r6, #0
	b _02268B74
_02268B72:
	mov r6, #1
_02268B74:
	add r5, r5, #1
	add r4, r4, #1
	cmp r6, #1
	beq _02268B20
	ldr r0, [r7, #0xc]
	add r1, r0, #1
	mov r0, #3
	and r0, r1
	str r0, [r7, #0xc]
_02268B86:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02268B88: .word ov49_0226A8B4
_02268B8C: .word ov49_0226A894
	thumb_func_end ov49_02268B0C

	thumb_func_start ov49_02268B90
ov49_02268B90: ; 0x02268B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #6
	bl _u32_div_f
	cmp r1, #0
	bne _02268C20
	ldr r0, [r5, #0xc]
	lsl r1, r0, #1
	ldr r0, _02268C24 ; =ov49_0226A83C
	ldrb r0, [r0, r1]
	str r0, [sp]
	ldr r0, _02268C28 ; =ov49_0226A83D
	ldrb r0, [r0, r1]
	add r1, sp, #4
	bl ov49_02268D0C
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _02268BE2
	mov r7, #1
	add r6, r4, #0
	lsl r7, r7, #0xc
_02268BC4:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_0225E85C
	cmp r0, #1
	beq _02268BDA
	bl GF_AssertFail
_02268BDA:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _02268BC4
_02268BE2:
	ldr r0, [sp]
	add r1, sp, #4
	bl ov49_02268D0C
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _02268C14
	mov r6, #1
	lsl r7, r6, #0xc
_02268BF6:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_0225E85C
	cmp r0, #1
	beq _02268C0C
	bl GF_AssertFail
_02268C0C:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _02268BF6
_02268C14:
	ldr r0, [r5, #0xc]
	mov r1, #7
	add r0, r0, #1
	bl _u32_div_f
	str r1, [r5, #0xc]
_02268C20:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02268C24: .word ov49_0226A83C
_02268C28: .word ov49_0226A83D
	thumb_func_end ov49_02268B90

	thumb_func_start ov49_02268C2C
ov49_02268C2C: ; 0x02268C2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhs _02268C64
	lsl r2, r0, #3
	ldr r0, _02268C68 ; =ov49_0226A864
	ldr r0, [r0, r2]
	cmp r0, r1
	bhs _02268C64
	ldr r1, _02268C6C ; =ov49_0226A868
	ldr r0, [r4, #4]
	ldr r1, [r1, r2]
	bl ov49_0225E894
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	lsl r2, r1, #3
	ldr r1, _02268C6C ; =ov49_0226A868
	ldr r1, [r1, r2]
	bl ov49_0225E6E0
	ldr r0, _02268C70 ; =0x000005B4
	bl PlaySE
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_02268C64:
	pop {r4, pc}
	nop
_02268C68: .word ov49_0226A864
_02268C6C: .word ov49_0226A868
_02268C70: .word 0x000005B4
	thumb_func_end ov49_02268C2C

	thumb_func_start ov49_02268C74
ov49_02268C74: ; 0x02268C74
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _02268C84
	bl GF_AssertFail
_02268C84:
	cmp r4, #6
	bhs _02268CA4
	add r1, r5, #0
	mov r0, #0
	add r1, #0xc
	strb r0, [r5, #0xc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r2, _02268CA8 ; =ov49_0226A87C
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
	strb r4, [r5, #8]
_02268CA4:
	pop {r4, r5, r6, pc}
	nop
_02268CA8: .word ov49_0226A87C
	thumb_func_end ov49_02268C74

	thumb_func_start ov49_02268CAC
ov49_02268CAC: ; 0x02268CAC
	ldr r3, _02268CB8 ; =ov49_0225E82C
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	.balign 4, 0
_02268CB8: .word ov49_0225E82C
	thumb_func_end ov49_02268CAC

	thumb_func_start ov49_02268CBC
ov49_02268CBC: ; 0x02268CBC
	ldr r3, _02268CC8 ; =ov49_0225E82C
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r2, r1, #0xc
	bx r3
	nop
_02268CC8: .word ov49_0225E82C
	thumb_func_end ov49_02268CBC

	thumb_func_start ov49_02268CCC
ov49_02268CCC: ; 0x02268CCC
	ldr r3, _02268CD8 ; =ov49_0225E82C
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	.balign 4, 0
_02268CD8: .word ov49_0225E82C
	thumb_func_end ov49_02268CCC

	thumb_func_start ov49_02268CDC
ov49_02268CDC: ; 0x02268CDC
	ldr r3, _02268CE8 ; =ov49_0225E82C
	mov r2, #1
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bx r3
	.balign 4, 0
_02268CE8: .word ov49_0225E82C
	thumb_func_end ov49_02268CDC

	thumb_func_start ov49_02268CEC
ov49_02268CEC: ; 0x02268CEC
	push {r4, lr}
	add r4, r0, #0
	bl ov49_02268DB0
	mov r2, #1
	ldr r0, [r4, #4]
	mov r1, #0
	lsl r2, r2, #0xc
	bl ov49_0225E82C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov49_0225E624
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02268CEC

	thumb_func_start ov49_02268D0C
ov49_02268D0C: ; 0x02268D0C
	push {r3, lr}
	cmp r0, #6
	bhi _02268D72
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268D1E: ; jump table
	.short _02268D2C - _02268D1E - 2 ; case 0
	.short _02268D36 - _02268D1E - 2 ; case 1
	.short _02268D40 - _02268D1E - 2 ; case 2
	.short _02268D4A - _02268D1E - 2 ; case 3
	.short _02268D54 - _02268D1E - 2 ; case 4
	.short _02268D5E - _02268D1E - 2 ; case 5
	.short _02268D68 - _02268D1E - 2 ; case 6
_02268D2C:
	mov r0, #6
	str r0, [r1, #4]
	ldr r0, _02268D78 ; =ov49_0226A834
	str r0, [r1]
	pop {r3, pc}
_02268D36:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _02268D7C ; =ov49_0226A82C
	str r0, [r1]
	pop {r3, pc}
_02268D40:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _02268D80 ; =ov49_0226A824
	str r0, [r1]
	pop {r3, pc}
_02268D4A:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _02268D84 ; =ov49_0226A81C
	str r0, [r1]
	pop {r3, pc}
_02268D54:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _02268D88 ; =ov49_0226A820
	str r0, [r1]
	pop {r3, pc}
_02268D5E:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _02268D8C ; =ov49_0226A828
	str r0, [r1]
	pop {r3, pc}
_02268D68:
	mov r0, #3
	str r0, [r1, #4]
	ldr r0, _02268D90 ; =ov49_0226A830
	str r0, [r1]
	pop {r3, pc}
_02268D72:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
_02268D78: .word ov49_0226A834
_02268D7C: .word ov49_0226A82C
_02268D80: .word ov49_0226A824
_02268D84: .word ov49_0226A81C
_02268D88: .word ov49_0226A820
_02268D8C: .word ov49_0226A828
_02268D90: .word ov49_0226A830
	thumb_func_end ov49_02268D0C


    .rodata

ov49_0226A7D8: ; 0x0226A7D8
	.byte 0xCE, 0x39, 0x94, 0x52, 0xFF, 0x7F, 0x08, 0x21

ov49_0226A7E0: ; 0x0226A7E0
	.byte 0xF7, 0x66, 0x10, 0x42, 0xCE, 0x39, 0x94, 0x52, 0x10, 0x42, 0x4A, 0x41, 0x10, 0x42, 0xCE, 0x39
	.byte 0x94, 0x52, 0x10, 0x42, 0x08, 0x31, 0x10, 0x42, 0xCE, 0x39, 0x94, 0x52, 0x10, 0x42, 0xA5, 0x20
	.byte 0x10, 0x42, 0xAD, 0x39, 0x94, 0x52, 0x10, 0x42, 0x63, 0x1C, 0x10, 0x42, 0x4A, 0x31, 0x94, 0x52
	.byte 0xCE, 0x41, 0x00, 0x18, 0x10, 0x42, 0x08, 0x29, 0x94, 0x52, 0x8C, 0x41

ov49_0226A81C: ; 0x0226A81C
	.byte 0x04, 0x00, 0x00, 0x00

ov49_0226A820: ; 0x0226A820
	.byte 0x03, 0x00, 0x00, 0x00

ov49_0226A824: ; 0x0226A824
	.byte 0x0F, 0x10, 0x00, 0x00

ov49_0226A828: ; 0x0226A828
	.byte 0x09, 0x0A, 0x00, 0x00

ov49_0226A82C: ; 0x0226A82C
	.byte 0x0B, 0x0C, 0x00, 0x00

ov49_0226A830: ; 0x0226A830
	.byte 0x01, 0x02, 0x00, 0x00

ov49_0226A834: ; 0x0226A834
	.byte 0x05, 0x0D, 0x06, 0x07, 0x0E, 0x08, 0x00, 0x00

ov49_0226A83C: ; 0x0226A83C
	.byte 0x00

ov49_0226A83D: ; 0x0226A83D
	.byte 0x05, 0x01, 0x06
	.byte 0x02, 0x00, 0x03, 0x01, 0x04, 0x02, 0x05, 0x03, 0x06, 0x04, 0x00, 0x00

ov49_0226A84C: ; 0x0226A84C
	.word ov49_02268B04
	.word ov49_02268B04
	.word ov49_02268B08
	.word ov49_02268B0C
	.word ov49_02268B90
	.word ov49_02268C2C

ov49_0226A864: ; 0x0226A864
	.byte 0x0A, 0x00, 0x00, 0x00

ov49_0226A868: ; 0x0226A868
	.byte 0x00, 0x10, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00

ov49_0226A87C: ; 0x0226A87C
	.word ov49_02268CAC
	.word ov49_02268CAC
	.word ov49_02268CBC
	.word ov49_02268CCC
	.word ov49_02268CDC
	.word ov49_02268CEC

ov49_0226A894: ; 0x0226A894
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00

ov49_0226A8B4: ; 0x0226A8B4
	.byte 0x06, 0x0D, 0x05, 0x0B, 0x07, 0x0E, 0x08, 0x0C, 0x01, 0x00, 0x02, 0x0A
	.byte 0x10, 0x09, 0x04, 0x03, 0x0F, 0x00, 0x00, 0x00

