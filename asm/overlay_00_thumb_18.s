	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E63CC
	.extern _0221A680
	.extern ov00_021E5E34
	.extern ov00_021E6388

	.text

	.text
	thumb_func_start ov00_021E63CC
ov00_021E63CC: ; 0x021E63CC
	push {r4, lr}
	cmp r0, #0
	bne _021E63EA
	cmp r1, #0
	bne _021E63E4
	bl ov00_021EE490
	mov r1, #1
	sub r0, r1, r0
	bl ov00_021E6388
	b _021E63F4
_021E63E4:
	bl ov00_021E5E34
	b _021E63F4
_021E63EA:
	ldr r0, _021E6414 ; =_0221A680
	mov r2, #0xc
	ldr r1, [r0]
	ldr r0, _021E6418 ; =0x00001070
	str r2, [r1, r0]
_021E63F4:
	ldr r0, _021E6414 ; =_0221A680
	ldr r4, [r0]
	ldr r0, _021E641C ; =0x00000FB4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E6412
	bl ov00_021EE490
	ldr r3, _021E6414 ; =_0221A680
	ldr r2, _021E6420 ; =0x00000FB8
	ldr r3, [r3]
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r3, r2]
	blx r2
_021E6412:
	pop {r4, pc}
	.balign 4, 0
_021E6414: .word _0221A680
_021E6418: .word 0x00001070
_021E641C: .word 0x00000FB4
_021E6420: .word 0x00000FB8
	thumb_func_end ov00_021E63CC

