#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"
	.public ov14_021F1D6C
	.extern ov14_021F1F24

    .text

	.text
	thumb_func_start ov14_021F1D6C
ov14_021F1D6C: ; 0x021F1D6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0x21
	strb r1, [r2]
	ldr r2, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	mov r3, #0
	ldrh r4, [r2, r1]
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	bl ov14_021E6070
	ldr r2, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	strh r0, [r2, r1]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F1DCA
	cmp r4, #0
	bne _021F1DAE
	ldr r1, [r5, #0x34]
	ldr r0, _021F1EAC ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021F1DBC
_021F1DAE:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83F4
	b _021F1DD6
_021F1DBC:
	beq _021F1DD6
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	b _021F1DD6
_021F1DCA:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
_021F1DD6:
	ldr r2, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	bl ov14_021F5FBC
	ldr r0, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021F1E52
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F396C
	ldr r0, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
	ldr r1, [r5, #0x34]
	ldr r0, _021F1EAC ; =0x000088C8
	ldrh r0, [r1, r0]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021F1E46
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #9
	bl ov14_021F6928
	b _021F1E6C
_021F1E46:
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #0xa
	bl ov14_021F6928
	b _021F1E6C
_021F1E52:
	mov r1, #0xb
	bl ov14_021F2A44
	cmp r0, #1
	bne _021F1E6C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r0, r5, #0
	bl ov14_021F40DC
_021F1E6C:
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	mov r3, #1
	bl ov14_021F2F88
	add r2, sp, #0
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldr r1, [r5, #0x34]
	ldr r0, _021F1EB0 ; =0x000040B8
	add r3, #8
	str r3, [r1, r0]
	mov r1, #0
	ldrsh r2, [r2, r1]
	ldr r1, [r5, #0x34]
	add r0, r0, #4
	add r2, #8
	str r2, [r1, r0]
	add r0, r5, #0
	bl ov14_021F1F24
	ldr r1, _021F1EB4 ; =ov14_021EACD4
	add r0, r5, #0
	mov r2, #0x8d
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F1EAC: .word 0x000088C8
_021F1EB0: .word 0x000040B8
_021F1EB4: .word ov14_021EACD4
	thumb_func_end ov14_021F1D6C

