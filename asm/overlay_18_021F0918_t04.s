	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F0D2C
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
	thumb_func_start ov18_021F0D2C
ov18_021F0D2C: ; 0x021F0D2C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x2c
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021F0D70 ; =0x000018C5
	add r0, r4, #0
	ldrsb r1, [r4, r1]
	bl ov18_021F09D8
	add r3, r0, #0
	mov r0, #0x3c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _021F0D74 ; =0x00020100
	mov r2, #2
	str r0, [sp, #0xc]
	ldr r1, _021F0D78 ; =0x0000065C
	str r2, [sp, #0x10]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov18_021EE3AC
	add r4, #0x2c
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021F0D70: .word 0x000018C5
_021F0D74: .word 0x00020100
_021F0D78: .word 0x0000065C
	thumb_func_end ov18_021F0D2C

