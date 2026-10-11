	.include "asm/macros.inc"
	.include "overlay_33.inc"
	.include "global.inc"
	.public ov33_0225D7D4
	.extern ov33_0225DA50

	.text

	.text
	thumb_func_start ov33_0225D7D4
ov33_0225D7D4: ; 0x0225D7D4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0225D818 ; =0x000001BA
	mov r4, #0
	ldrh r2, [r7, r0]
	mov r0, #0xc
	sub r1, r2, #1
	mul r0, r1
	str r0, [sp]
	cmp r2, #0
	bls _0225D816
	add r5, r7, #0
	add r6, r4, #0
	add r5, #0x18
_0225D7F0:
	ldr r3, _0225D81C ; =ov33_0225DA50
	ldr r2, [sp]
	ldr r0, [r7]
	ldr r2, [r3, r2]
	add r1, r5, #0
	add r2, r2, r6
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _0225D818 ; =0x000001BA
	add r4, r4, #1
	ldrh r0, [r7, r0]
	add r6, #8
	add r5, #0x10
	cmp r4, r0
	blo _0225D7F0
_0225D816:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225D818: .word 0x000001BA
_0225D81C: .word ov33_0225DA50
	thumb_func_end ov33_0225D7D4

