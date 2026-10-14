	.include "macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021F0504
	.extern ov18_021EE3AC
	.extern ov18_021F04C0

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
	thumb_func_start ov18_021F0504
ov18_021F0504: ; 0x021F0504
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #0x14]
	add r6, sp, #0x18
	add r7, r4, #0
_021F0512:
	add r1, r4, #0
	add r2, sp, #0x18
	ldr r0, [r5, #8]
	add r1, #0x11
	add r2, #1
	add r3, sp, #0x18
	bl sub_02019B1C
	ldrsb r0, [r6, r7]
	cmp r0, #2
	beq _021F0532
	cmp r0, #0x14
	beq _021F0532
	add r4, r4, #1
	cmp r4, #6
	blo _021F0512
_021F0532:
	add r0, r4, #0
	add r6, r5, #0
	add r0, #8
	add r6, #0xc
	lsl r7, r0, #4
	add r0, r6, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldr r0, [r5, #8]
	bge _021F0592
	add r1, r4, #0
	add r1, #0x11
	mov r2, #0xa
	mov r3, #0x14
	bl sub_020196E8
	ldr r0, _021F05DC ; =0x000018CA
	ldrsb r1, [r5, r0]
	add r0, #0x36
	ldr r0, [r5, r0]
	add r1, r1, #2
	cmp r1, r0
	bge _021F05D0
	add r0, r5, #0
	bl ov18_021F04C0
	add r3, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021F05E0 ; =0x000F0C00
	add r4, #8
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, _021F05E4 ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl ov18_021EE3AC
	b _021F05D0
_021F0592:
	add r1, r4, #0
	add r1, #0x11
	mov r2, #0xa
	mov r3, #2
	bl sub_020196E8
	ldr r0, _021F05DC ; =0x000018CA
	ldrsb r0, [r5, r0]
	sub r1, r0, #2
	bmi _021F05D0
	add r0, r5, #0
	bl ov18_021F04C0
	add r3, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021F05E0 ; =0x000F0C00
	add r4, #8
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, _021F05E4 ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl ov18_021EE3AC
_021F05D0:
	add r0, r6, r7
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F05DC: .word 0x000018CA
_021F05E0: .word 0x000F0C00
_021F05E4: .word 0x0000065C
	thumb_func_end ov18_021F0504

