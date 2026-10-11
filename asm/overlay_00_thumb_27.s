	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6964
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6964
ov00_021E6964: ; 0x021E6964
	push {r3, lr}
	ldr r0, _021E698C ; =_0221A680
	ldr r1, [r0]
	cmp r1, #0
	beq _021E6984
	ldr r0, _021E6990 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #7
	beq _021E697E
	cmp r0, #8
	beq _021E697E
	cmp r0, #0x10
	bne _021E6984
_021E697E:
	bl ov00_021EE490
	pop {r3, pc}
_021E6984:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_021E698C: .word _0221A680
_021E6990: .word 0x00001070
	thumb_func_end ov00_021E6964

