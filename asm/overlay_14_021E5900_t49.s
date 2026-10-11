#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E783C
	.public ov14_021E78AC
	.extern ov14_021E76D0
	.extern ov14_021E7740
	.extern ov14_021E7808

    .text

	.text
	thumb_func_start ov14_021E783C
ov14_021E783C: ; 0x021E783C
	push {r3, r4, r5, r6, r7, lr}
	cmp r2, #0
	bne _021E785A
	ldr r4, [r0, #0x34]
	ldr r2, _021E78A4 ; =0x00000448
	ldrsb r3, [r4, r2]
	sub r3, #0x17
	strb r3, [r4, r2]
	ldr r4, [r0, #0x34]
	ldrsb r3, [r4, r2]
	cmp r3, #0
	bge _021E7874
	add r3, #0x40
	strb r3, [r4, r2]
	b _021E7874
_021E785A:
	cmp r2, #1
	bne _021E7874
	ldr r4, [r0, #0x34]
	ldr r2, _021E78A4 ; =0x00000448
	ldrsb r3, [r4, r2]
	add r3, #0x17
	strb r3, [r4, r2]
	ldr r4, [r0, #0x34]
	ldrsb r3, [r4, r2]
	cmp r3, #0x40
	blt _021E7874
	sub r3, #0x40
	strb r3, [r4, r2]
_021E7874:
	ldr r6, [r0, #0x34]
	ldr r2, _021E78A8 ; =0x00000449
	ldrb r2, [r6, r2]
	cmp r2, #0
	bne _021E7886
	mov r3, #0x97
	lsl r3, r3, #2
	mov r5, #0xe
	b _021E788A
_021E7886:
	mov r3, #0xb8
	mov r5, #0xf
_021E788A:
	ldr r7, _021E78A8 ; =0x00000449
	mov r2, #1
	ldrb r4, [r6, r7]
	eor r2, r4
	strb r2, [r6, r7]
	str r5, [sp]
	ldr r4, [r0, #0x34]
	sub r2, r7, #1
	ldrsb r2, [r4, r2]
	bl ov14_021E7808
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E78A4: .word 0x00000448
_021E78A8: .word 0x00000449
	thumb_func_end ov14_021E783C

	thumb_func_start ov14_021E78AC
ov14_021E78AC: ; 0x021E78AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021E7928 ; =0x00000449
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021E78C6
	mov r6, #0x97
	lsl r6, r6, #2
	mov r4, #0xe
	b _021E78CA
_021E78C6:
	mov r6, #0xb8
	mov r4, #0xf
_021E78CA:
	ldr r1, _021E7928 ; =0x00000449
	ldr r3, _021E7928 ; =0x00000449
	ldrb r2, [r0, r1]
	mov r1, #1
	sub r3, r3, #1
	eor r2, r1
	ldr r1, _021E7928 ; =0x00000449
	strb r2, [r0, r1]
	ldr r2, [r5, #0x34]
	add r0, r5, #0
	ldrsb r2, [r2, r3]
	add r1, r7, #0
	add r3, r6, #0
	bl ov14_021E76D0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r4, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, #0x34]
	add r2, r7, #0
	ldr r0, [r0, #0x18]
	mov r1, #0x13
	add r2, #0x28
	mov r3, #0xa
	bl PaletteData_LoadNarc
	str r4, [sp]
	ldr r3, [r5, #0x34]
	ldr r2, _021E792C ; =0x00000448
	add r0, r5, #0
	ldrsb r2, [r3, r2]
	add r1, r7, #0
	add r3, r6, #0
	bl ov14_021E7740
	ldr r0, [r5, #0x34]
	mov r1, #3
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E7928: .word 0x00000449
_021E792C: .word 0x00000448
	thumb_func_end ov14_021E78AC

