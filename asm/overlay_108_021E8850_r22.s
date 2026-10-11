	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9BD4

	.text

	.text
	thumb_func_start ov108_021E9BD4
ov108_021E9BD4: ; 0x021E9BD4
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0
	add r4, r0, #0
	ldr r0, _021E9C08 ; =0x04000050
	add r2, r1, #0
	mov r3, #0x1f
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _021E9C0C ; =0x00000528
	ldr r0, [r4, r0]
	bl Heap_Free
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Heap_Free
	ldr r0, _021E9C10 ; =0x00000518
	ldr r0, [r4, r0]
	bl Heap_Free
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9C08: .word 0x04000050
_021E9C0C: .word 0x00000528
_021E9C10: .word 0x00000518
	thumb_func_end ov108_021E9BD4

