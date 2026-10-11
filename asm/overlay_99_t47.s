	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E71B0

	.text

	.text
	thumb_func_start ov99_021E71B0
ov99_021E71B0: ; 0x021E71B0
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	lsl r2, r1, #5
	lsl r1, r1, #0xd
	lsr r3, r2, #0x18
	lsr r2, r1, #0x1b
	mov r1, #0x1e
	mul r1, r2
	add r2, r3, r1
	ldr r1, _021E71D8 ; =0x000001ED
	cmp r2, r1
	blt _021E71CE
	mov r0, #0
	bx lr
_021E71CE:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x14]
	bx lr
	nop
_021E71D8: .word 0x000001ED
	thumb_func_end ov99_021E71B0

