#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"
	.public ov14_021F20F4

    .text

	.text
	thumb_func_start ov14_021F20F4
ov14_021F20F4: ; 0x021F20F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl Save_Bag_Get
	ldr r2, [r4, #0x34]
	ldr r1, _021F21A8 ; =0x000088C8
	mov r3, #0xa
	ldrh r1, [r2, r1]
	mov r2, #1
	bl Bag_AddItem
	cmp r0, #0
	bne _021F212A
	ldr r0, _021F21AC ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x25
	bl ov14_021F68C0
	mov r0, #0x7a
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021F212A:
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	mov r2, #6
	add r3, sp, #0
	bl ov14_021E6094
	add r2, r4, #0
	add r2, #0x21
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r2]
	add r0, r4, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021F216C
	add r0, r4, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r4, #0x34]
	ldrb r1, [r4, #0x1f]
	add r5, r3, r2
	ldr r3, _021F21B0 ; =0x00004094
	add r0, r4, #0
	ldrb r3, [r5, r3]
	bl ov14_021F2ED0
_021F216C:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E7588
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r0, [r4, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
	mov r0, #0x79
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F21A8: .word 0x000088C8
_021F21AC: .word 0x000005F3
_021F21B0: .word 0x00004094
	thumb_func_end ov14_021F20F4

