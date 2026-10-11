	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CF48
	.public ov10_0221EEF0
	.public ov10_0221EF24

	.text

	thumb_func_start ov10_0221CF48
ov10_0221CF48: ; 0x0221CF48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r3, _0221CF88 ; =0x000003CF
	add r0, r6, #0
	ldrb r2, [r5, r3]
	add r3, r3, #1
	ldrb r3, [r5, r3]
	add r1, r5, #0
	bl CheckSortSpeed
	cmp r4, r0
	beq _0221CF86
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
_0221CF86:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221CF88: .word 0x000003CF
	thumb_func_end ov10_0221CF48

