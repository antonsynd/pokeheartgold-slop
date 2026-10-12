	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F49F8
	.extern ov18_021F11C0
	.extern ov18_021F11EC
	.extern ov18_021F4A6C
	.extern ov18_021F4D64
	.extern ov18_021F4DDC
	.extern ov18_021F4E28
	.extern ov18_021FA7B0

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F49F8
ov18_021F49F8: ; 0x021F49F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov18_021F4A6C
	mov r6, #1
	mov r4, #0x34
	add r5, r7, #4
_021F4A06:
	add r2, r4, #0
	ldr r1, _021F4A4C ; =ov18_021FA7B0
	sub r2, #0x34
	add r0, r7, #0
	add r1, r1, r2
	bl ov18_021F11EC
	mov r1, #0x67
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r6, #0xa
	blo _021F4A06
	add r0, r7, #0
	bl ov18_021F4D64
	add r0, r7, #0
	bl ov18_021F4DDC
	add r0, r7, #0
	bl ov18_021F4E28
	add r0, r7, #0
	mov r1, #3
	mov r2, #0
	bl ov18_021F11C0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl ov18_021F11C0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4A4C: .word ov18_021FA7B0
	thumb_func_end ov18_021F49F8

