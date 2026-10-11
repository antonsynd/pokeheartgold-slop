	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E5E30
	.extern ov85_021E7B40
	.extern ov85_021E8610
	.extern ov85_021EA7C4

	.text

	.text
	thumb_func_start ov85_021E5E30
ov85_021E5E30: ; 0x021E5E30
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	sub r1, r1, #1
	str r1, [r5, #0xc]
	cmp r1, #0
	ble _021E5E46
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021E5E46:
	mov r1, #0xf
	str r1, [r5, #0xc]
	bl ov85_021E8610
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	mov r0, #0xa
	add r3, r1, #0
	ldr r2, [r4, #0x10]
	mul r3, r0
	ldr r0, _021E5EB0 ; =ov85_021EA7C4
	lsl r1, r2, #1
	add r0, r0, r3
	ldrh r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	mov r0, #0x2d
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0xb0
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #8]
	lsl r1, r2, #2
	add r1, r5, r1
	add r1, #0x72
	ldrh r1, [r1]
	ldr r3, [r4]
	add r0, r5, #0
	bl ov85_021E7B40
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl _s32_div_f
	str r1, [r4, #0x10]
	ldr r0, [r4]
	add r1, r0, #1
	str r1, [r4]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021E5EA8
	mov r0, #0
	str r0, [r5, #0xc]
	mov r0, #0x12
	str r0, [r5]
_021E5EA8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E5EB0: .word ov85_021EA7C4
	thumb_func_end ov85_021E5E30

