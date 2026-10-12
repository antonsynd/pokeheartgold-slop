	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E75C0
	.extern ov68_021E7898
	.extern ov68_021E7910
	.extern ov68_021E7C08
	.extern ov68_021E7CF0
	.extern ov68_021E7D64

	.text

	.text
	thumb_func_start ov68_021E75C0
ov68_021E75C0: ; 0x021E75C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x42
	str r0, [sp, #8]
	ldr r0, _021E75F8 ; =ov68_021E7CF0
	ldr r1, _021E75FC ; =ov68_021E7D64
	ldr r2, _021E7600 ; =ov68_021E7C08
	add r3, r4, #0
	bl GridInputHandler_Create
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov68_021E7898
	add r0, r4, #0
	bl ov68_021E7910
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021E75F8: .word ov68_021E7CF0
_021E75FC: .word ov68_021E7D64
_021E7600: .word ov68_021E7C08
	thumb_func_end ov68_021E75C0

