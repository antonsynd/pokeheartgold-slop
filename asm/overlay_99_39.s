	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E77D8
	.public ov99_021E7C58
	.public ov99_021E7CE4

	.text

	thumb_func_start ov99_021E7CE4
ov99_021E7CE4: ; 0x021E7CE4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, r2
	beq _021E7D2A
	cmp r4, #0x20
	bhs _021E7D2A
	bl ov99_021E7C58
	cmp r4, #0x1e
	bge _021E7D0C
	mov r1, #0xfd
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x1c
	orr r0, r2
	str r0, [r5, r1]
	b _021E7D12
_021E7D0C:
	add r0, r5, #0
	bl ov99_021E77D8
_021E7D12:
	cmp r4, #0x1e
	bne _021E7D1A
	mov r1, #0xc
	b _021E7D1C
_021E7D1A:
	mov r1, #0xe
_021E7D1C:
	cmp r6, #0
	beq _021E7D22
	add r1, r1, #1
_021E7D22:
	ldr r0, _021E7D2C ; =0x00000408
	ldr r0, [r5, r0]
	bl ManagedSprite_SetAnim
_021E7D2A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E7D2C: .word 0x00000408
	thumb_func_end ov99_021E7CE4

