	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6D9C
	.extern ov68_021E6C14

	.text

	.text
	thumb_func_start ov68_021E6D9C
ov68_021E6D9C: ; 0x021E6D9C
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl ov68_021E6C14
	ldr r1, _021E6DB4 ; =0x000001BA
	mov r0, #2
	strb r0, [r4, r1]
	mov r2, #3
	sub r1, #0xa
	str r2, [r4, r1]
	pop {r4, pc}
	.balign 4, 0
_021E6DB4: .word 0x000001BA
	thumb_func_end ov68_021E6D9C

