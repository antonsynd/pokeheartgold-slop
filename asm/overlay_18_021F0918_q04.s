	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F0B70
	.extern ov18_021F09D8

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
	thumb_func_start ov18_021F0B70
ov18_021F0B70: ; 0x021F0B70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #0x14]
	add r6, sp, #0x18
	sub r7, r4, #2
_021F0B7E:
	add r1, r4, #0
	add r2, sp, #0x18
	ldr r0, [r5, #8]
	add r1, #0x11
	add r2, #1
	add r3, sp, #0x18
	bl sub_02019B1C
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, r7
	beq _021F0BA0
	cmp r0, #0x10
	beq _021F0BA0
	add r4, r4, #1
	cmp r4, #6
	blo _021F0B7E
_021F0BA0:
	add r0, r4, #0
	add r6, r5, #0
	add r0, #0xa
	add r6, #0xc
	lsl r7, r0, #4
	add r0, r6, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldr r0, [r5, #8]
	bge _021F0BFC
	add r1, r4, #0
	add r1, #0x11
	mov r2, #8
	mov r3, #0x10
	bl sub_020196E8
	ldr r0, _021F0C44 ; =0x000018C5
	ldrsb r1, [r5, r0]
	sub r0, r0, #1
	ldrsb r0, [r5, r0]
	add r1, r1, #2
	cmp r1, r0
	bge _021F0C38
	add r0, r5, #0
	bl ov18_021F09D8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, #0xa
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r1, _021F0C48 ; =0x000F0C00
	add r2, r4, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, _021F0C4C ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov18_021EE3AC
	b _021F0C38
_021F0BFC:
	mov r2, #8
	add r1, r4, #0
	add r3, r2, #0
	add r1, #0x11
	sub r3, #0xa
	bl sub_020196E8
	ldr r0, _021F0C44 ; =0x000018C5
	ldrsb r0, [r5, r0]
	sub r1, r0, #2
	bmi _021F0C38
	add r0, r5, #0
	bl ov18_021F09D8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, #0xa
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r1, _021F0C48 ; =0x000F0C00
	add r2, r4, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, _021F0C4C ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov18_021EE3AC
_021F0C38:
	add r0, r6, r7
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F0C44: .word 0x000018C5
_021F0C48: .word 0x000F0C00
_021F0C4C: .word 0x0000065C
	thumb_func_end ov18_021F0B70

