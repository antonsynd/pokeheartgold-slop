#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EFDE4.inc"
	.include "global.inc"
	.public ov14_021EFDF4

    .text

	.text
	thumb_func_start ov14_021EFDF4
ov14_021EFDF4: ; 0x021EFDF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	ldr r5, [r0, #0xc]
	add r1, #0x21
	ldrh r2, [r5]
	ldrb r1, [r1]
	cmp r2, r1
	beq _021EFE10
	ldr r1, _021EFEF0 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021EFEB0
_021EFE10:
	add r0, r4, #0
	ldrh r5, [r5, #2]
	bl ov14_021F1F38
	ldr r0, [r4, #0x34]
	ldr r1, _021EFEF4 ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021EFE6C
	ldr r1, _021EFEF0 ; =0x000088C8
	ldrh r0, [r0, r1]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EFE7A
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r5, r0
	beq _021EFE7A
	ldr r0, _021EFEF8 ; =0x000005F3
	bl PlaySE
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #7
	bl sub_0201980C
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x28
	bl ov14_021F68C0
	mov r0, #0x92
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EFE6C:
	mov r1, #0x28
	bl ov14_021F6654
	ldr r1, [r4, #0x34]
	ldr r0, _021EFEF4 ; =0x0000044A
	mov r2, #0
	strb r2, [r1, r0]
_021EFE7A:
	ldr r1, [r4, #0x34]
	ldr r0, _021EFEF0 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021EFE98
	ldr r0, _021EFEFC ; =0x000005EA
	bl PlaySE
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F34C8
_021EFE98:
	ldr r0, [r4, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x8b
	pop {r3, r4, r5, pc}
_021EFEB0:
	mov r1, #0x28
	bl ov14_021F6654
	ldr r0, _021EFEFC ; =0x000005EA
	bl PlaySE
	ldrh r1, [r5]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x8e
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFEF0: .word 0x000088C8
_021EFEF4: .word 0x0000044A
_021EFEF8: .word 0x000005F3
_021EFEFC: .word 0x000005EA
	thumb_func_end ov14_021EFDF4

