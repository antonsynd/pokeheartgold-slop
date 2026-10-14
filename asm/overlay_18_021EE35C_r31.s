	.include "macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EEED0
	.extern ov18_021EE3AC

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
	thumb_func_start ov18_021EEED0
ov18_021EEED0: ; 0x021EEED0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0xc
	add r6, r1, #0
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r6, #0xa
	bls _021EEEEA
	b _021EF1CE
_021EEEEA:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEEF6: ; jump table
	.short _021EEF0C - _021EEEF6 - 2 ; case 0
	.short _021EEF4A - _021EEEF6 - 2 ; case 1
	.short _021EEFA4 - _021EEEF6 - 2 ; case 2
	.short _021EEFE2 - _021EEEF6 - 2 ; case 3
	.short _021EF020 - _021EEEF6 - 2 ; case 4
	.short _021EF05E - _021EEEF6 - 2 ; case 5
	.short _021EF09C - _021EEEF6 - 2 ; case 6
	.short _021EF0DA - _021EEEF6 - 2 ; case 7
	.short _021EF116 - _021EEEF6 - 2 ; case 8
	.short _021EF154 - _021EEEF6 - 2 ; case 9
	.short _021EF192 - _021EEEF6 - 2 ; case 10
_021EEF0C:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xd
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EEF4A:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xe
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _021EF1E0 ; =0x0000102C
	mov r0, #0x66
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, _021EF1D8 ; =0x00020100
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, _021EF1DC ; =0x0000065C
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r3, #0xf
	bl ov18_021EE3AC
	b _021EF1CE
_021EEFA4:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x10
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EEFE2:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x11
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF020:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x12
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF05E:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF09C:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x13
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF0DA:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r2, #0x16
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF116:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x15
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF154:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x19
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF192:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x17
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x18
	mov r3, #0x70
	bl ov18_021F9648
_021EF1CE:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EF1D8: .word 0x00020100
_021EF1DC: .word 0x0000065C
_021EF1E0: .word 0x0000102C
	thumb_func_end ov18_021EEED0

