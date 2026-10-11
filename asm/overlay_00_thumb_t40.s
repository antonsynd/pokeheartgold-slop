	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6ED8
	.extern _0221A680
	.extern ov00_021E6388

	.text

	.text
	thumb_func_start ov00_021E6ED8
ov00_021E6ED8: ; 0x021E6ED8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021E6FA0 ; =_0221A680
	add r3, r0, #0
	add r0, r1, #0
	add r6, r2, #0
	mov r4, #0
	ldr r2, [r7]
	ldr r1, _021E6FA4 ; =0x000010A0
	ldr r5, [sp, #0x18]
	str r4, [r2, r1]
	cmp r3, #0
	bne _021E6F9E
	cmp r0, #0
	bne _021E6F92
	bl sub_0203993C
	bl sub_02034098
	cmp r0, #0
	beq _021E6F08
	sub r0, r4, #1
	cmp r5, r0
	bne _021E6F08
	mov r4, #1
_021E6F08:
	ldr r0, _021E6FA0 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6FA8 ; =0x00000FBC
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021E6F1E
	add r0, r5, #0
	blx r1
	cmp r0, #0
	bne _021E6F1E
	mov r4, #1
_021E6F1E:
	ldr r0, _021E6FA0 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6FAC ; =0x000010E0
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021E6F2E
	cmp r4, #0
	beq _021E6F66
_021E6F2E:
	bl ov00_021EE4FC
	ldr r1, _021E6FA0 ; =_0221A680
	ldr r2, [r1]
	ldr r1, _021E6FB0 ; =0x000010D8
	ldr r1, [r2, r1]
	mvn r1, r1
	and r0, r1
	str r0, [sp]
	bl ov00_021EE4FC
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _021E6F66
	add r0, sp, #0
	bl ov00_021EE384
	ldr r0, [sp]
	eor r0, r4
	cmp r0, #1
	bne _021E6F9E
	ldr r0, _021E6FA0 ; =_0221A680
	mov r2, #6
	ldr r1, [r0]
	ldr r0, _021E6FB4 ; =0x00001070
	str r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E6F66:
	ldr r0, _021E6FA0 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6FB8 ; =0x00001094
	str r5, [r1, r0]
	bl ov00_021EE4FC
	ldr r2, _021E6FA0 ; =_0221A680
	ldr r1, _021E6FB0 ; =0x000010D8
	ldr r3, [r2]
	str r0, [r3, r1]
	ldr r2, [r2]
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _021E6F8A
	mov r0, #6
	sub r1, #0x68
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021E6F8A:
	add r0, r5, #0
	bl ov00_021E6388
	pop {r3, r4, r5, r6, r7, pc}
_021E6F92:
	cmp r6, #0
	bne _021E6F9E
	ldr r0, [r7]
	sub r2, r4, #1
	sub r1, #8
	str r2, [r0, r1]
_021E6F9E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6FA0: .word _0221A680
_021E6FA4: .word 0x000010A0
_021E6FA8: .word 0x00000FBC
_021E6FAC: .word 0x000010E0
_021E6FB0: .word 0x000010D8
_021E6FB4: .word 0x00001070
_021E6FB8: .word 0x00001094
	thumb_func_end ov00_021E6ED8

