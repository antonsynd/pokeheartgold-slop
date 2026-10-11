	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DE24
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221DE24
ov10_0221DE24: ; 0x0221DE24
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	ldr r1, _0221DE80 ; =0x000003CF
	add r2, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, r2
	beq _0221DE64
	lsl r2, r2, #1
	add r2, r4, r2
	sub r1, #0x3b
	ldrh r1, [r2, r1]
	add r0, r4, #0
	mov r2, #1
	bl GetItemVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
_0221DE64:
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0221DE84 ; =0x00002DB8
	add r0, r4, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl GetItemVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0221DE80: .word 0x000003CF
_0221DE84: .word 0x00002DB8
	thumb_func_end ov10_0221DE24

