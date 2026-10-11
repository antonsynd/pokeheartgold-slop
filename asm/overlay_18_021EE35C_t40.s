	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EF5D8
	.public ov18_021EF764
	.public ov18_021EF848
	.extern ov18_021E613C
	.extern ov18_021E7698
	.extern ov18_021EF388
	.extern ov18_021EFBE8
	.extern ov18_021EFC3C
	.extern ov18_021EFC9C
	.extern ov18_021F9DE4

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
	thumb_func_start ov18_021EF5D8
ov18_021EF5D8: ; 0x021EF5D8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	mov r0, #0x93
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x9b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x9f
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xab
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xaf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x29
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2a
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2b
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xa7
	lsl r0, r0, #2
	mov r2, #0x2c
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r3, r2, #0
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2d
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2e
	mov r3, #0x2c
	bl ov18_021F9648
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x25
	bl ov18_021EFBE8
	mov r0, #0x93
	lsl r0, r0, #2
	mov r4, #0x24
	add r5, r5, r0
_021EF748:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x2b
	bls _021EF748
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EF75C: .word 0x00020100
_021EF760: .word 0x0000065C
	thumb_func_end ov18_021EF5D8

	thumb_func_start ov18_021EF764
ov18_021EF764: ; 0x021EF764
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	ldr r0, _021EF834 ; =0x0000041C
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EF838 ; =0x0000043C
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF83C ; =0x00020100
	ldr r1, _021EF840 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EF834 ; =0x0000041C
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x1b
	mov r3, #0x18
	bl ov18_021F9648
	mov r4, #0
_021EF7A4:
	add r0, r4, #0
	bl ov18_021E7698
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r4, #0x1a
	bne _021EF7B6
	mov r6, #0x71
	b _021EF7BA
_021EF7B6:
	add r6, r4, #0
	add r6, #0x45
_021EF7BA:
	add r0, r7, #0
	mov r1, #7
	bl _s32_div_f
	str r1, [sp, #0x10]
	add r0, r7, #0
	mov r1, #7
	bl _s32_div_f
	lsl r0, r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF83C ; =0x00020100
	ldr r3, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EF840 ; =0x0000065C
	ldr r0, _021EF838 ; =0x0000043C
	lsl r3, r3, #5
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r6, #0
	add r3, #0x18
	bl ov18_021F9648
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1b
	blo _021EF7A4
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x42
	bl ov18_021EFC3C
	ldr r0, _021EF834 ; =0x0000041C
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, _021EF838 ; =0x0000043C
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, _021EF844 ; =0x0000042C
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EF834: .word 0x0000041C
_021EF838: .word 0x0000043C
_021EF83C: .word 0x00020100
_021EF840: .word 0x0000065C
_021EF844: .word 0x0000042C
	thumb_func_end ov18_021EF764

	thumb_func_start ov18_021EF848
ov18_021EF848: ; 0x021EF848
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0
	add r6, r0, #0
	bl ov18_021E613C
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF908 ; =0x00020100
	mov r2, #0x1c
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EF90C ; =0x0000065C
	mov r0, #0xb3
	lsl r0, r0, #2
	ldr r1, [r6, r1]
	add r0, r6, r0
	add r3, r2, #0
	bl ov18_021F9648
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r5, _021EF910 ; =ov18_021F9DE4 + 7 * 8 + 2
	mov r7, #0x2f
	add r4, r6, r0
_021EF88A:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF908 ; =0x00020100
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EF90C ; =0x0000065C
	sub r2, #0x5e
	ldrh r2, [r2]
	ldr r1, [r6, r1]
	add r0, r4, #0
	mov r3, #0x20
	bl ov18_021F9648
	add r7, r7, #1
	add r4, #0x10
	add r5, r5, #2
	cmp r7, #0x40
	bls _021EF88A
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	ldr r1, _021EF914 ; =0x00001870
	add r0, r6, #0
	ldr r1, [r6, r1]
	mov r2, #0x2d
	mov r3, #0x1d
	bl ov18_021EFC9C
	ldr r1, _021EF918 ; =0x00001874
	add r0, r6, #0
	ldr r1, [r6, r1]
	mov r2, #0x2e
	mov r3, #0x23
	bl ov18_021EFC9C
	mov r0, #0xb3
	lsl r0, r0, #2
	mov r4, #0x2c
	add r5, r6, r0
_021EF8F6:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x40
	bls _021EF8F6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF908: .word 0x00020100
_021EF90C: .word 0x0000065C
_021EF910: .word ov18_021F9DE4 + 7 * 8 + 2
_021EF914: .word 0x00001870
_021EF918: .word 0x00001874
	thumb_func_end ov18_021EF848

