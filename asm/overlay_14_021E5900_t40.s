#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7278
	.public ov14_021E7358
	.extern ov14_021E60C0
	.extern ov14_021E71C8

    .text

	.text
	thumb_func_start ov14_021E7278
ov14_021E7278: ; 0x021E7278
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _021E7350 ; =0x000088DC
	ldr r4, [r1, r0]
	ldr r0, _021E7354 ; =0x00000222
	ldrh r5, [r4, #4]
	cmp r5, r0
	bne _021E728E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E728E:
	mov r0, #0
	str r0, [sp]
_021E7292:
	mov r0, #0x87
	lsl r0, r0, #2
	cmp r5, r0
	bhs _021E72CE
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	ldrb r0, [r7, #0x1f]
	add r2, r1, #0
	cmp r6, r0
	bne _021E72C2
	add r0, r7, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r2, r0
	bne _021E72C2
	mov r6, #0
	b _021E72EA
_021E72C2:
	add r0, r7, #0
	add r1, r6, #0
	bl ov14_021E60C0
	add r6, r0, #0
	b _021E72EA
_021E72CE:
	sub r2, r5, r0
	add r0, r7, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	cmp r2, r0
	bne _021E72E0
	mov r6, #0
	b _021E72EA
_021E72E0:
	add r0, r7, #0
	mov r1, #0xff
	bl ov14_021E60C0
	add r6, r0, #0
_021E72EA:
	cmp r6, #0
	beq _021E732E
	add r0, r6, #0
	mov r1, #0xac
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021E732E
	mov r5, #0
_021E72FE:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov14_021E71C8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7328
	mov r1, #1
	lsl r1, r0
	mov r0, #0xff
	ldrb r2, [r4, #6]
	eor r0, r1
	and r0, r2
	strb r0, [r4, #6]
_021E7328:
	add r5, r5, #1
	cmp r5, #4
	blo _021E72FE
_021E732E:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r5, [r4, #4]
	ldr r0, _021E7354 ; =0x00000222
	cmp r5, r0
	bne _021E7340
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7340:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0xf
	blo _021E7292
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7350: .word 0x000088DC
_021E7354: .word 0x00000222
	thumb_func_end ov14_021E7278

	thumb_func_start ov14_021E7358
ov14_021E7358: ; 0x021E7358
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021E7460
	mov r0, #0xa
	mov r1, #0x1c
	bl Heap_Alloc
	add r6, r0, #0
	str r7, [r6]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r6, #4]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl GetBoxMonData
	mov r1, #0
	strh r0, [r6, #6]
	add r0, r7, #0
	add r2, r1, #0
	bl GetBoxMonData
	str r0, [r6, #8]
	add r0, r7, #0
	mov r1, #0xb1
	mov r2, #0
	bl GetBoxMonData
	strb r0, [r6, #0xc]
	add r0, r7, #0
	mov r1, #0xb2
	mov r2, #0
	bl GetBoxMonData
	strb r0, [r6, #0xd]
	add r0, r7, #0
	mov r1, #0xa
	mov r2, #0
	bl GetBoxMonData
	strb r0, [r6, #0xe]
	add r0, r7, #0
	bl GetBoxMonNature
	strb r0, [r6, #0xf]
	add r0, r7, #0
	mov r1, #0xb
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r6, #0x10]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetBoxMonData
	ldrb r1, [r6, #0x12]
	mov r2, #0x7f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r6, #0x12]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r6, #0x12]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r6, #0x12]
	add r0, r7, #0
	bl GetBoxMonGender
	add r2, r6, #0
	ldrb r1, [r6, #0x13]
	mov r3, #0x7f
	add r2, #0x13
	bic r1, r3
	mov r3, #0x7f
	and r0, r3
	orr r0, r1
	strb r0, [r6, #0x13]
	ldrh r0, [r6, #4]
	cmp r0, #0x1d
	beq _021E743C
	cmp r0, #0x20
	beq _021E743C
	ldrb r0, [r6, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021E743C
	ldrb r1, [r2]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r2]
	b _021E7444
_021E743C:
	ldrb r1, [r6, #0x13]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r6, #0x13]
_021E7444:
	mov r4, #0
	add r5, r6, #0
_021E7448:
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r5, #0x14]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blo _021E7448
	b _021E7462
_021E7460:
	mov r6, #0
_021E7462:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7358

