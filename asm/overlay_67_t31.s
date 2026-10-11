	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E6C14
	.extern ov67_021E6A08
	.extern ov67_021E6A28

	.text

	.text
	thumb_func_start ov67_021E6C14
ov67_021E6C14: ; 0x021E6C14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021E6C58 ; =0x000004A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	add r3, sp, #0
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	add r0, r5, #0
	mov r1, #0
	bl ov67_021E6A28
	cmp r4, #0xc
	bne _021E6C4A
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl ov67_021E6A08
	pop {r3, r4, r5, pc}
_021E6C4A:
	add r0, r5, #0
	mov r1, #0
	mov r2, #7
	bl ov67_021E6A08
	pop {r3, r4, r5, pc}
	nop
_021E6C58: .word 0x000004A4
	thumb_func_end ov67_021E6C14

