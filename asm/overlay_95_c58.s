	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E7410
	.extern ov95_021E7818

	.text

	.text
	thumb_func_start ov95_021E7410
ov95_021E7410: ; 0x021E7410
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021E741E
	bl GF_AssertFail
_021E741E:
	ldrb r0, [r5, #0x19]
	cmp r0, #1
	beq _021E742A
	cmp r0, #2
	beq _021E742E
	b _021E7432
_021E742A:
	mov r4, #0
	b _021E7436
_021E742E:
	mov r4, #1
	b _021E7436
_021E7432:
	bl GF_AssertFail
_021E7436:
	ldr r1, _021E7448 ; =ov95_021E7818
	lsl r3, r4, #2
	ldr r2, _021E744C ; =ov95_021E7818 + 2
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, r3]
	ldr r0, [r5, #0x10]
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7448: .word ov95_021E7818
_021E744C: .word ov95_021E7818 + 2
	thumb_func_end ov95_021E7410

