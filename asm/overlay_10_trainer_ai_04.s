	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DE88
	.public ov10_0221EEF0
	.public ov10_0221EF24
	.public ov10_0221EF34

	.text

	thumb_func_start ov10_0221DE88
ov10_0221DE88: ; 0x0221DE88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r6, r0, #0
	ldr r0, _0221DEE8 ; =0x000003CF
	mov r1, #1
	add r3, r6, #0
	ldrb r2, [r5, r0]
	and r3, r1
	and r1, r2
	cmp r3, r1
	bne _0221DED2
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _0221DEEC ; =0x00002DB8
	b _0221DED8
_0221DED2:
	lsl r1, r6, #1
	add r1, r5, r1
	sub r0, #0x3b
_0221DED8:
	ldrh r0, [r1, r0]
	cmp r0, r4
	bne _0221DEE6
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
_0221DEE6:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221DEE8: .word 0x000003CF
_0221DEEC: .word 0x00002DB8
	thumb_func_end ov10_0221DE88

