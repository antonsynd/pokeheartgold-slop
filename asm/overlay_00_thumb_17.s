	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6388
	.extern _0221A680
	.extern ov00_021E62F4
	.extern ov00_021E727C

	.text

	.text
	thumb_func_start ov00_021E6388
ov00_021E6388: ; 0x021E6388
	push {r4, r5, r6, lr}
	ldr r4, _021E63C0 ; =_0221A680
	ldr r0, _021E63C4 ; =0x00001070
	ldr r1, [r4]
	mov r2, #7
	str r2, [r1, r0]
	ldr r1, [r4]
	add r0, #0xc
	ldr r0, [r1, r0]
	mov r5, #0
	cmp r0, #0
	ble _021E63BA
	ldr r6, _021E63C8 ; =0x0000107C
_021E63A2:
	bl ov00_021EE490
	cmp r5, r0
	beq _021E63B0
	add r0, r5, #0
	bl ov00_021E727C
_021E63B0:
	ldr r0, [r4]
	add r5, r5, #1
	ldr r0, [r0, r6]
	cmp r5, r0
	blt _021E63A2
_021E63BA:
	bl ov00_021E62F4
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E63C0: .word _0221A680
_021E63C4: .word 0x00001070
_021E63C8: .word 0x0000107C
	thumb_func_end ov00_021E6388

