	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E7BEC

	.text

	.text
	thumb_func_start ov85_021E7BEC
ov85_021E7BEC: ; 0x021E7BEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x54]
	sub r0, r1, r0
	str r0, [r4, #0x54]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021E7C14
	mov r0, #0x1a
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0xe
	cmp r1, r0
	bgt _021E7C14
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, _021E7C28 ; =0x0000064F
	bl PlaySE
_021E7C14:
	mov r0, #2
	ldr r1, [r4, #0x54]
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _021E7C24
	str r0, [r4, #0x54]
	mov r0, #2
	str r0, [r5]
_021E7C24:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7C28: .word 0x0000064F
	thumb_func_end ov85_021E7BEC

