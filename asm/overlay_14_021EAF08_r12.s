#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EB8C0
	.extern ov14_021F7D1C
	.extern ov14_021F7D2C
	.extern ov14_021F7D3C

    .text

	.text
	thumb_func_start ov14_021EB8C0
ov14_021EB8C0: ; 0x021EB8C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	bl ov14_021E7588
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EB9D4
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021EB8EC
	ldr r1, _021EBAD8 ; =ov14_021F7D2C
	add r0, r5, #0
	mov r2, #4
	bl ov14_021F5EE4
	b _021EB954
_021EB8EC:
	cmp r0, #0
	bne _021EB90E
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F43F4
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021F3488
	ldr r1, _021EBADC ; =ov14_021F7D1C
	add r0, r5, #0
	mov r2, #4
	bl ov14_021F5EE4
	b _021EB954
_021EB90E:
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021EB934
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021F3488
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EB944
	add r0, r5, #0
	bl ov14_021E8664
	b _021EB944
_021EB934:
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EB944
	add r0, r5, #0
	bl ov14_021E8664
_021EB944:
	ldr r1, _021EBAE0 ; =ov14_021F7D3C
	add r0, r5, #0
	mov r2, #5
	bl ov14_021F5EE4
	add r0, r5, #0
	bl ov14_021E87F4
_021EB954:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83C4
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r5]
	cmp r1, #0x1e
	bhs _021EB984
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021EB980
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	mov r4, #0x51
	b _021EB9BE
_021EB980:
	mov r4, #0xc
	b _021EB9BE
_021EB984:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021EB9A4
	add r0, r5, #0
	bl ov14_021F0BF4
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	mov r4, #0x5b
	b _021EB9BE
_021EB9A4:
	add r0, r5, #0
	bl ov14_021F0B70
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F43F4
	add r0, r5, #0
	mov r1, #5
	mov r2, #9
	bl ov14_021F6AC0
	mov r4, #0x24
_021EB9BE:
	add r0, r5, #0
	bl ov14_021F3F6C
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	beq _021EBACC
	ldr r0, [r5, #0x34]
	bl ov14_021E8874
	b _021EBACC
_021EB9D4:
	add r0, r5, #0
	bl ov14_021F0BB4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8610
	add r0, r5, #0
	bl ov14_021F4720
	add r0, r5, #0
	bl ov14_021F4848
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E86E0
_021EBA0A:
	add r0, r5, #0
	bl ov14_021E9554
	cmp r0, #0
	bne _021EBA0A
	add r0, r5, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EBA2E
	add r2, r5, #0
	add r2, #0x21
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #4
	bl ov14_021F6AC0
	b _021EBA4A
_021EBA2E:
	add r2, r5, #0
	add r2, #0x28
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #4
	bl ov14_021F6AC0
	ldr r1, [r5, #0x34]
	ldr r0, _021EBAE4 ; =0x0000044B
	mov r2, #1
	strb r2, [r1, r0]
	add r0, r5, #0
	bl ov14_021EA1F0
_021EBA4A:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r2, [r5, #0x34]
	ldr r0, _021EBAE8 ; =0x0000043C
	add r1, #0x25
	str r1, [r2, r0]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021EBA7E
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
	mov r4, #0x82
	b _021EBA8E
_021EBA7E:
	add r0, r5, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EBA8C
	mov r4, #0x29
	b _021EBA8E
_021EBA8C:
	mov r4, #0x73
_021EBA8E:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	beq _021EBAA6
	add r0, r5, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EBAA6
	ldr r0, [r5, #0x34]
	bl ov14_021E8874
_021EBAA6:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _021EBAB8
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F43F4
_021EBAB8:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x26
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x27
	strb r1, [r0]
_021EBACC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F01D8
	pop {r3, r4, r5, pc}
	nop
_021EBAD8: .word ov14_021F7D2C
_021EBADC: .word ov14_021F7D1C
_021EBAE0: .word ov14_021F7D3C
_021EBAE4: .word 0x0000044B
_021EBAE8: .word 0x0000043C
	thumb_func_end ov14_021EB8C0

