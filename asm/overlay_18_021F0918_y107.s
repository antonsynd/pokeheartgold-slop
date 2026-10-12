	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F3D98
	.extern ov18_021F11EC
	.extern ov18_021F1534
	.extern ov18_021F3CA8
	.extern ov18_021F3E24
	.extern ov18_021F40A0
	.extern ov18_021F40E4
	.extern ov18_021F4188
	.extern ov18_021F69C0
	.extern ov18_021FA610

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
	thumb_func_start ov18_021F3D98
ov18_021F3D98: ; 0x021F3D98
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov18_021F3E24
	mov r6, #1
	mov r4, #0x34
	add r5, r7, #4
_021F3DA6:
	add r2, r4, #0
	ldr r1, _021F3E00 ; =ov18_021FA610
	sub r2, #0x34
	add r0, r7, #0
	add r1, r1, r2
	bl ov18_021F11EC
	mov r1, #0x67
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r6, #8
	bls _021F3DA6
	add r0, r7, #0
	mov r1, #1
	bl ov18_021F69C0
	add r2, sp, #0
	add r0, r7, #0
	mov r1, #0
	add r2, #1
	add r3, sp, #0
	bl ov18_021F3CA8
	ldr r1, _021F3E04 ; =0x000018A2
	add r2, sp, #0
	ldrh r1, [r7, r1]
	ldrb r2, [r2, #1]
	add r0, r7, #0
	mov r3, #1
	bl ov18_021F1534
	add r0, r7, #0
	bl ov18_021F40E4
	add r0, r7, #0
	bl ov18_021F40A0
	add r0, r7, #0
	bl ov18_021F4188
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3E00: .word ov18_021FA610
_021F3E04: .word 0x000018A2
	thumb_func_end ov18_021F3D98

