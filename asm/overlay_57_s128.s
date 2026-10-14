	.include "macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B7C4

	.text

	.text
	thumb_func_start ov57_0223B7C4
ov57_0223B7C4: ; 0x0223B7C4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xfb
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	lsl r0, r0, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, #0xff
	beq _0223B7EA
	ldr r2, [r5]
	lsl r0, r0, #2
	add r0, r2, r0
	add r1, #0x6c
	ldr r0, [r0, #4]
	ldr r1, [r5, r1]
	bl CopyPokemonToPokemon
	pop {r3, r4, r5, r6, r7, pc}
_0223B7EA:
	ldr r1, [r5]
	mov r6, #0
	ldr r0, [r1]
	cmp r0, #0
	ble _0223B820
	add r4, r6, #0
_0223B7F6:
	add r0, r1, r4
	ldr r7, [r0, #4]
	mov r1, #0x4c
	add r0, r7, #0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _0223B814
	ldr r1, _0223B824 ; =0x00000458
	add r0, r7, #0
	ldr r1, [r5, r1]
	bl CopyPokemonToPokemon
	pop {r3, r4, r5, r6, r7, pc}
_0223B814:
	ldr r1, [r5]
	add r6, r6, #1
	ldr r0, [r1]
	add r4, r4, #4
	cmp r6, r0
	blt _0223B7F6
_0223B820:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B824: .word 0x00000458
	thumb_func_end ov57_0223B7C4

