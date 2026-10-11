	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221D314
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221F47C

	.text

	.text
	thumb_func_start ov10_0221D314
ov10_0221D314: ; 0x0221D314
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	add r7, r0, #0
	add r0, r4, #0
	bl ov10_0221EEF0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, _0221D3A4 ; =0x000003CF
	add r0, r5, #0
	ldrb r6, [r4, r3]
	sub r3, #0x79
	ldrh r3, [r4, r3]
	add r1, r4, #0
	add r2, r6, #0
	bl ov10_0221F47C
	mov r2, #0x3d
	str r6, [sp]
	lsl r2, r2, #4
	add r3, r0, #0
	ldrb r0, [r4, r2]
	sub r2, #0x7a
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldrh r2, [r4, r2]
	add r0, r5, #0
	bl ov12_02251D28
	cmp r0, #0x78
	bne _0221D372
	mov r0, #0x50
	b _0221D388
_0221D372:
	cmp r0, #0xf0
	bne _0221D37A
	mov r0, #0xa0
	b _0221D388
_0221D37A:
	cmp r0, #0x1e
	bne _0221D382
	mov r0, #0x14
	b _0221D388
_0221D382:
	cmp r0, #0xf
	bne _0221D388
	mov r0, #0xa
_0221D388:
	ldr r2, [sp, #0x14]
	ldr r1, _0221D3A8 ; =0x00140808
	tst r1, r2
	beq _0221D392
	mov r0, #0
_0221D392:
	cmp r0, r7
	bne _0221D39E
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl ov10_0221EF24
_0221D39E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221D3A4: .word 0x000003CF
_0221D3A8: .word 0x00140808
	thumb_func_end ov10_0221D314

