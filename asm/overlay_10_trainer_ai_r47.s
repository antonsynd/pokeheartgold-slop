	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221D260
	.extern ov10_0221EF24
	.extern ov10_0221F47C

	.text

	.text
	thumb_func_start ov10_0221D260
ov10_0221D260: ; 0x0221D260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	mov r0, #0
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	str r0, [r5, r1]
	add r4, r0, #0
_0221D27C:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0221D308 ; =0x000003CF
	ldrb r2, [r5, r0]
	mov r0, #0xc0
	mul r0, r2
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _0221D30C ; =0x00002D4C
	ldrh r6, [r1, r0]
	add r0, r7, #0
	add r1, r5, #0
	add r3, r6, #0
	bl ov10_0221F47C
	add r3, r0, #0
	cmp r6, #0
	beq _0221D2F8
	ldr r0, _0221D308 ; =0x000003CF
	add r1, r5, #0
	ldrb r0, [r5, r0]
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov12_02251D28
	cmp r0, #0x78
	bne _0221D2C8
	mov r0, #0x50
	b _0221D2DE
_0221D2C8:
	cmp r0, #0xf0
	bne _0221D2D0
	mov r0, #0xa0
	b _0221D2DE
_0221D2D0:
	cmp r0, #0x1e
	bne _0221D2D8
	mov r0, #0x14
	b _0221D2DE
_0221D2D8:
	cmp r0, #0xf
	bne _0221D2DE
	mov r0, #0xa
_0221D2DE:
	ldr r2, [sp, #0x14]
	ldr r1, _0221D310 ; =0x00140808
	tst r1, r2
	beq _0221D2E8
	mov r0, #0
_0221D2E8:
	mov r1, #0xd7
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, r0
	bhs _0221D2F8
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r5, r1]
_0221D2F8:
	ldr r0, [sp, #0x10]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0221D27C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D308: .word 0x000003CF
_0221D30C: .word 0x00002D4C
_0221D310: .word 0x00140808
	thumb_func_end ov10_0221D260

