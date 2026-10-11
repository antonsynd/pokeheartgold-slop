	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7AF4
	.extern _0221A684

	.text

	.text
	thumb_func_start ov00_021E7AF4
ov00_021E7AF4: ; 0x021E7AF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021E7B54 ; =_0221A684
	add r7, r1, #0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021E7B0A
	ldr r0, _021E7B58 ; =0x000019E8
	ldr r0, [r1, r0]
	cmp r0, #3
	beq _021E7B0E
_021E7B0A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7B0E:
	mov r4, #0
	add r5, r4, #0
_021E7B12:
	cmp r4, r7
	beq _021E7B48
	mov r0, #1
	lsl r0, r4
	tst r0, r6
	beq _021E7B48
	ldr r0, _021E7B54 ; =_0221A684
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _021E7B5C ; =0x000019D8
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _021E7B48
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl VCT_AddConferenceClient
	cmp r0, #0
	beq _021E7B3C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7B3C:
	ldr r0, _021E7B54 ; =_0221A684
	mov r1, #1
	ldr r0, [r0, #4]
	add r2, r0, r5
	ldr r0, _021E7B5C ; =0x000019D8
	str r1, [r2, r0]
_021E7B48:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E7B12
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7B54: .word _0221A684
_021E7B58: .word 0x000019E8
_021E7B5C: .word 0x000019D8
	thumb_func_end ov00_021E7AF4

