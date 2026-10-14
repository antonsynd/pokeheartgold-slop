	.include "macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E61B8
	.extern ov68_021E6C14

	.text

	.text
	thumb_func_start ov68_021E61B8
ov68_021E61B8: ; 0x021E61B8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	ldrb r1, [r1, #0x1b]
	cmp r1, #4
	bhs _021E61CE
	mov r1, #0xa
	bl ov68_021E6C14
	mov r1, #4
	b _021E61D6
_021E61CE:
	mov r1, #7
	bl ov68_021E6C14
	mov r1, #3
_021E61D6:
	ldr r0, _021E61E8 ; =0x000001BA
	strb r1, [r4, r0]
	mov r0, #0x1b
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	nop
_021E61E8: .word 0x000001BA
	thumb_func_end ov68_021E61B8

