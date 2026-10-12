	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F2D24
	.extern ov18_021F2CB4
	.extern ov18_021F2CC0

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
	thumb_func_start ov18_021F2D24
ov18_021F2D24: ; 0x021F2D24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #4
	add r7, r5, r0
	lsl r0, r4, #2
	str r0, [sp, #4]
	add r1, sp, #8
	ldr r0, [r7, r0]
	add r1, #2
	add r2, sp, #8
	add r6, r3, #0
	bl ManagedSprite_GetPositionXY
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F2CB4
	cmp r6, r0
	bhs _021F2D52
	add r6, r0, #0
_021F2D52:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F2CC0
	cmp r6, r0
	bls _021F2D60
	add r6, r0, #0
_021F2D60:
	ldr r0, [sp, #4]
	add r2, sp, #8
	mov r1, #2
	ldrsh r1, [r2, r1]
	lsl r2, r6, #0x10
	ldr r0, [r7, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F2CB4
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F2CC0
	sub r0, r0, r7
	str r0, [sp]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov18_021F8950
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	lsl r0, r0, #8
	bl _u32_div_f
	sub r1, r6, r7
	mov r3, #0
	lsl r2, r1, #8
	add r6, r3, #0
	add r7, r3, #0
_021F2DA6:
	cmp r2, r6
	blo _021F2DC0
	add r1, r7, r0
	cmp r2, r1
	bhs _021F2DC0
	ldr r0, _021F2DD0 ; =0x00001859
	ldrb r1, [r5, r0]
	cmp r1, r3
	beq _021F2DCA
	add sp, #0xc
	strb r3, [r5, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F2DC0:
	add r3, r3, #1
	add r6, r6, r0
	add r7, r7, r0
	cmp r3, r4
	bls _021F2DA6
_021F2DCA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2DD0: .word 0x00001859
	thumb_func_end ov18_021F2D24

