	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E7DF8
	.public ov86_021E7E40
	.extern ov86_021E8230

	.text

	.text
	thumb_func_start ov86_021E7DF8
ov86_021E7DF8: ; 0x021E7DF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _021E7E38 ; =ov86_021E8230
	lsl r1, r2, #3
	ldr r0, [r0, r1]
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, _021E7E3C ; =ov86_021E8230 + 4
	ldr r7, [r0, r1]
	cmp r7, #0
	bls _021E7E34
_021E7E12:
	ldr r2, [sp, #4]
	lsl r6, r4, #4
	lsl r3, r4, #3
	ldr r0, [sp]
	add r1, r5, r6
	add r2, r2, r3
	bl AddWindow
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r7
	blo _021E7E12
_021E7E34:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7E38: .word ov86_021E8230
_021E7E3C: .word ov86_021E8230 + 4
	thumb_func_end ov86_021E7DF8

	thumb_func_start ov86_021E7E40
ov86_021E7E40: ; 0x021E7E40
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021E7E64 ; =ov86_021E8230 + 4
	lsl r1, r1, #3
	ldr r5, [r0, r1]
	mov r4, #0
	cmp r5, #0
	bls _021E7E62
_021E7E50:
	lsl r0, r4, #4
	add r0, r6, r0
	bl RemoveWindow
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _021E7E50
_021E7E62:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E7E64: .word ov86_021E8230 + 4
	thumb_func_end ov86_021E7E40

