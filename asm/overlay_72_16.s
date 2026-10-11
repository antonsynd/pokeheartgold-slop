	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238EE4
	.public ov72_0223A3E0

	.text

	thumb_func_start ov72_02238EE4
ov72_02238EE4: ; 0x02238EE4
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xa4
	ldr r1, _02238FE0 ; =0x00000E58
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl AddWindowParameterized
	ldr r0, _02238FE0 ; =0x00000E58
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	ldr r1, _02238FE4 ; =0x00000E38
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x1a
	bl AddWindowParameterized
	ldr r0, _02238FE4 ; =0x00000E38
	mov r1, #0xf
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x9c
	ldr r1, _02238FE8 ; =0x00000E28
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #0x1a
	bl AddWindowParameterized
	ldr r0, _02238FE8 ; =0x00000E28
	mov r1, #0xf
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #1
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r1, _02238FEC ; =0x00000E48
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #4
	bl AddWindowParameterized
	ldr r0, _02238FEC ; =0x00000E48
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r3, #1
	ldr r0, _02238FF0 ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _02238FF4 ; =0x00000BE4
	ldr r0, _02238FEC ; =0x00000E48
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov72_0223A3E0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02238FF8 ; =0x00000E18
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, _02238FF8 ; =0x00000E18
	mov r1, #0xf
	add r0, r4, r0
	bl FillWindowPixelBuffer
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_02238FE0: .word 0x00000E58
_02238FE4: .word 0x00000E38
_02238FE8: .word 0x00000E28
_02238FEC: .word 0x00000E48
_02238FF0: .word 0x000F0E00
_02238FF4: .word 0x00000BE4
_02238FF8: .word 0x00000E18
	thumb_func_end ov72_02238EE4

