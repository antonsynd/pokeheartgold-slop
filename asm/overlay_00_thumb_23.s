	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6554
	.extern _0221A680
	.extern ov00_021E6A4C

	.text

	.text
	thumb_func_start ov00_021E6554
ov00_021E6554: ; 0x021E6554
	push {r4, r5, r6, lr}
	ldr r5, _021E65C0 ; =_0221A680
	add r4, r3, #0
	ldr r3, [r5]
	ldr r2, _021E65C4 ; =0x00001078
	mov r1, #0
	str r1, [r3, r2]
	add r3, r2, #0
	ldr r6, [r5]
	add r3, #0x54
	str r1, [r6, r3]
	add r3, r2, #0
	add r3, #0x28
	ldr r6, [r5]
	cmp r0, #0
	str r1, [r6, r3]
	bne _021E65A8
	ldr r0, [r5]
	add r2, #0x6d
	ldrb r0, [r0, r2]
	cmp r0, #1
	bne _021E65A8
	bl ov00_021EE448
	cmp r0, #1
	bne _021E65A8
	add r0, r5, #0
	ldr r2, [r0]
	ldr r0, _021E65C8 ; =0x00001070
	ldr r1, [r2, r0]
	cmp r1, #6
	beq _021E6598
	mov r1, #0x10
	str r1, [r2, r0]
_021E6598:
	ldr r0, _021E65C0 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E65CC ; =0x00001090
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E65A8
	bl ov00_021E6A4C
_021E65A8:
	ldr r0, _021E65C0 ; =_0221A680
	ldr r1, _021E65D0 ; =0x00000FAC
	ldr r3, [r0]
	ldr r2, [r3, r1]
	cmp r2, #0
	beq _021E65BC
	add r1, r1, #4
	ldr r1, [r3, r1]
	add r0, r4, #0
	blx r2
_021E65BC:
	pop {r4, r5, r6, pc}
	nop
_021E65C0: .word _0221A680
_021E65C4: .word 0x00001078
_021E65C8: .word 0x00001070
_021E65CC: .word 0x00001090
_021E65D0: .word 0x00000FAC
	thumb_func_end ov00_021E6554

