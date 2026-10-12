	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E7E40
	.extern ov86_021E8230

	.text

	.text
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

