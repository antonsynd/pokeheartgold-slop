	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EBAC
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221EBAC
ov10_0221EBAC: ; 0x0221EBAC
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
	lsl r1, r0, #1
	add r2, r4, r1
	ldr r1, _0221EC00 ; =0x0000305C
	ldrh r1, [r2, r1]
	cmp r1, #0xb6
	beq _0221EBE8
	cmp r1, #0xc5
	beq _0221EBE8
	cmp r1, #0xcb
	beq _0221EBE8
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0221EBE8:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221EC04 ; =0x00002DC8
	add r1, r4, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0x13
	lsr r1, r0, #0x1e
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_0221EC00: .word 0x0000305C
_0221EC04: .word 0x00002DC8
	thumb_func_end ov10_0221EBAC

