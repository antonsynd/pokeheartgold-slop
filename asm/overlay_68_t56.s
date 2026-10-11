	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E74D8
	.extern _021E7BE8
	.extern ov68_021E5B14
	.extern ov68_021E6BEC

	.text

	.text
	thumb_func_start ov68_021E74D8
ov68_021E74D8: ; 0x021E74D8
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _021E7560 ; =_021E7BE8
	add r1, sp, #0
	ldrb r3, [r2]
	ldrb r2, [r2, #1]
	add r4, r0, #0
	strb r3, [r1]
	strb r2, [r1, #1]
	bl ov68_021E5B14
	ldr r0, [r4]
	mov r1, #0x17
	ldr r0, [r0]
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x11
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x14
	strb r2, [r4, r0]
	mov r0, #1
	add r1, #0x13
	strb r0, [r4, r1]
	add r0, r4, #0
	bl ov68_021E6BEC
	mov r1, #0x62
	lsl r1, r1, #2
	strh r0, [r4, r1]
	mov r2, #2
	sub r0, r1, #6
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #1
	add r0, #0x14
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x18
	sub r1, #0x18
	str r2, [r4, r0]
	add r0, r4, r1
	add r1, sp, #0
	bl sub_02089D40
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, _021E7564 ; =gOverlayTemplate_PokemonSummary
	add r1, r4, r1
	mov r2, #0x42
	bl OverlayManager_New
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xc
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E7560: .word _021E7BE8
_021E7564: .word gOverlayTemplate_PokemonSummary
	thumb_func_end ov68_021E74D8

