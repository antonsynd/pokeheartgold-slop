	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F39C4
	.extern ov18_021F118C
	.extern ov18_021F11C0

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
	thumb_func_start ov18_021F39C4
ov18_021F39C4: ; 0x021F39C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r0, #0
	ldr r1, _021F3A50 ; =0x0000270F
	add r0, r2, #0
	str r2, [sp]
	cmp r0, r1
	bne _021F39DC
	ldr r0, _021F3A54 ; =0x00018696
	str r0, [sp]
	b _021F39EC
_021F39DC:
	ldr r1, _021F3A58 ; =0x00035D2E
	mul r2, r1
	ldr r1, _021F3A5C ; =0x0000C350
	add r0, r2, r1
	lsl r1, r1, #1
	bl _u32_div_f
	str r0, [sp]
_021F39EC:
	mov r0, #0
	ldr r5, _021F3A60 ; =0x00002710
	str r0, [sp, #4]
	add r4, r0, #0
_021F39F4:
	ldr r0, [sp]
	add r1, r5, #0
	bl _u32_div_f
	add r2, r0, #0
	bne _021F3A06
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021F3A20
_021F3A06:
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, r4
	add r2, #0x2b
	bl ov18_021F118C
	add r0, r7, #0
	add r1, r6, r4
	mov r2, #1
	bl ov18_021F11C0
	b _021F3A2A
_021F3A20:
	add r0, r7, #0
	add r1, r6, r4
	mov r2, #0
	bl ov18_021F11C0
_021F3A2A:
	ldr r0, [sp]
	add r1, r5, #0
	bl _u32_div_f
	str r1, [sp]
	add r0, r5, #0
	mov r1, #0xa
	bl _u32_div_f
	add r5, r0, #0
	cmp r4, #2
	bne _021F3A46
	mov r0, #1
	str r0, [sp, #4]
_021F3A46:
	add r4, r4, #1
	cmp r4, #5
	blo _021F39F4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3A50: .word 0x0000270F
_021F3A54: .word 0x00018696
_021F3A58: .word 0x00035D2E
_021F3A5C: .word 0x0000C350
_021F3A60: .word 0x00002710
	thumb_func_end ov18_021F39C4

