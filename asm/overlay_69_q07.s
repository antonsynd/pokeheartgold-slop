	.include "asm/macros.inc"
	.include "overlay_69.inc"
	.include "global.inc"
	.public ov69_021E62B0

	.text

	.text
	thumb_func_start ov69_021E62B0
ov69_021E62B0: ; 0x021E62B0
	push {r4, r5, r6, r7}
	ldr r1, [r0, #0xc]
	mov r4, #0
	cmp r1, #0
	bls _021E62EE
	ldr r1, _021E62F4 ; =0x0000C328
	add r5, r0, #0
	mov r3, #3
	sub r2, r1, #4
_021E62C2:
	ldrh r6, [r5, #0x3a]
	ldr r7, [r0, r2]
	cmp r7, r6
	bne _021E62E4
	ldrh r6, [r5, #0x3c]
	ldr r7, [r0, r1]
	cmp r7, r6
	bne _021E62E4
	strh r3, [r5, #0x38]
	mov r6, #0x10
	ldrsh r7, [r5, r6]
	ldr r6, _021E62F8 ; =0x0000C2C4
	str r7, [r0, r6]
	mov r6, #0x12
	ldrsh r7, [r5, r6]
	ldr r6, _021E62FC ; =0x0000C2C8
	str r7, [r0, r6]
_021E62E4:
	ldr r6, [r0, #0xc]
	add r4, r4, #1
	add r5, #0x30
	cmp r4, r6
	blo _021E62C2
_021E62EE:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021E62F4: .word 0x0000C328
_021E62F8: .word 0x0000C2C4
_021E62FC: .word 0x0000C2C8
	thumb_func_end ov69_021E62B0

