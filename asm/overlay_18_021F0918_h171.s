	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F5EFC
	.extern ov18_021F11C0
	.extern ov18_021F1A7C
	.extern ov18_021F3CA8

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
	thumb_func_start ov18_021F5EFC
ov18_021F5EFC: ; 0x021F5EFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r3, sp, #0xc
	add r7, r2, #0
	add r2, sp, #0xc
	add r3, #1
	add r5, r0, #0
	bl ov18_021F3CA8
	ldr r0, _021F5FF4 ; =0x000018C7
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bne _021F5F32
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r6, #1
	mov r4, #2
	bl ov18_021F11C0
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ov18_021F11C0
	b _021F5F4A
_021F5F32:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r6, #3
	mov r4, #4
	bl ov18_021F11C0
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov18_021F11C0
_021F5F4A:
	ldr r1, _021F5FF4 ; =0x000018C7
	mov r2, #0x20
	ldrb r3, [r5, r1]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1a
	lsr r3, r2, #0x1f
	mov r2, #1
	eor r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1a
	orr r0, r2
	strb r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	sub r1, #0x25
	add r3, sp, #0xc
	ldrb r2, [r3]
	ldrh r1, [r5, r1]
	ldrb r3, [r3, #1]
	add r0, r5, #0
	bl ov18_021F1A7C
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x40
	mov r2, #0x78
	lsl r3, r1, #0xf
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r1, _021F5FF8 ; =0x000018A2
	str r7, [sp, #8]
	add r3, sp, #0xc
	ldrb r2, [r3]
	ldrh r1, [r5, r1]
	ldrb r3, [r3, #1]
	add r0, r5, #0
	bl ov18_021F1A7C
	mov r2, #0
	ldr r0, _021F5FF8 ; =0x000018A2
	str r2, [sp]
	add r3, sp, #0xc
	ldrb r1, [r3, #1]
	ldrh r0, [r5, r0]
	ldrb r3, [r3]
	bl GetMonPicHeightBySpeciesGenderForm
	add r2, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	add r2, #0x78
	ldr r0, [r1, r0]
	lsl r2, r2, #0x10
	mov r3, #2
	mov r1, #0xc0
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov18_021F11C0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5FF4: .word 0x000018C7
_021F5FF8: .word 0x000018A2
	thumb_func_end ov18_021F5EFC

