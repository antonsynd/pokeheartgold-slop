#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EC7B8
	.public ov112_021EC7D0
	.public ov112_021EC8A4
	.public ov112_021EC950
	.extern ov112_021E9FA4
	.extern ov112_021EA010
	.extern ov112_021ECA88
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EC7B8
ov112_021EC7B8: ; 0x021EC7B8
	push {r3, lr}
	ldr r1, _021EC7CC ; =0x0001EC76
	ldrh r0, [r0, r1]
	mov r1, #5
	sub r0, r0, #1
	bl _s32_div_f
	add r0, r0, #1
	pop {r3, pc}
	nop
_021EC7CC: .word 0x0001EC76
	thumb_func_end ov112_021EC7B8

	thumb_func_start ov112_021EC7D0
ov112_021EC7D0: ; 0x021EC7D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _021EC88C ; =0x000F0100
	add r5, r0, #0
	mov r4, #0
_021EC7DA:
	ldr r0, _021EC890 ; =0x0001EC54
	ldr r1, [r5, r0]
	lsl r0, r1, #2
	add r1, r1, r0
	add r0, r5, r4
	add r1, r1, r0
	ldr r0, _021EC894 ; =0x0001EC58
	ldrsb r1, [r1, r0]
	ldr r0, _021EC898 ; =0x0001E44C
	cmp r1, #0
	blt _021EC7FA
	ldr r0, [r5, r0]
	add r1, #0x5b
	bl NewString_ReadMsgData
	b _021EC802
_021EC7FA:
	ldr r0, [r5, r0]
	mov r1, #0x76
	bl NewString_ReadMsgData
_021EC802:
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #4
	str r7, [sp]
	bl ov112_021E9FA4
	add r0, r6, #0
	bl String_Delete
	add r4, r4, #1
	cmp r4, #5
	blt _021EC7DA
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	ldr r2, _021EC890 ; =0x0001EC54
	str r3, [sp, #4]
	ldr r0, _021EC89C ; =0x0001E448
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #0xa
	add r2, r2, #1
	bl BufferIntegerAsString
	add r0, r5, #0
	bl ov112_021EC7B8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	ldr r0, _021EC89C ; =0x0001E448
	str r3, [sp, #4]
	ldr r0, [r5, r0]
	mov r1, #0xb
	bl BufferIntegerAsString
	ldr r1, _021EC89C ; =0x0001E448
	mov r2, #0x51
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0x9a
	bl ReadMsgData_ExpandPlaceholders
	add r4, r0, #0
	ldr r0, _021EC8A0 ; =0x00010E00
	mov r1, #7
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov112_021E9FA4
	add r0, r4, #0
	bl String_Delete
	ldr r2, _021EC890 ; =0x0001EC54
	add r0, r5, #0
	ldr r1, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	bl ov112_021EC8A4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC88C: .word 0x000F0100
_021EC890: .word 0x0001EC54
_021EC894: .word 0x0001EC58
_021EC898: .word 0x0001E44C
_021EC89C: .word 0x0001E448
_021EC8A0: .word 0x00010E00
	thumb_func_end ov112_021EC7D0

	thumb_func_start ov112_021EC8A4
ov112_021EC8A4: ; 0x021EC8A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r2, #5
	beq _021EC8B8
	bl ov112_021ECA88
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EC8EE
_021EC8B8:
	ldr r0, _021EC944 ; =0x0001E44C
	mov r1, #0x76
	ldr r0, [r4, r0]
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, _021EC948 ; =0x00010200
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl ov112_021EA010
	add r0, r5, #0
	bl String_Delete
	ldr r0, _021EC94C ; =0x0001EBB8
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EC94C ; =0x0001EBB8
	add r0, r4, r0
	bl CopyWindowToVram
	pop {r3, r4, r5, pc}
_021EC8EE:
	add r0, r4, #0
	bl ov112_021ECA88
	add r1, r0, #0
	ldr r0, _021EC944 ; =0x0001E44C
	add r1, #0x5b
	ldr r0, [r4, r0]
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, _021EC948 ; =0x00010200
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl ov112_021EA010
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	bl ov112_021ECA88
	add r1, r0, #0
	ldr r0, _021EC944 ; =0x0001E44C
	add r1, #0x77
	ldr r0, [r4, r0]
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r0, _021EC948 ; =0x00010200
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #0
	bl ov112_021EA010
	add r0, r5, #0
	bl String_Delete
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EC944: .word 0x0001E44C
_021EC948: .word 0x00010200
_021EC94C: .word 0x0001EBB8
	thumb_func_end ov112_021EC8A4

	thumb_func_start ov112_021EC950
ov112_021EC950: ; 0x021EC950
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021EC990 ; =0x0001EC54
	mov r2, #0
	str r2, [r6, r0]
	sub r1, r0, #4
	str r2, [r6, r1]
	add r0, r0, #4
	add r0, r6, r0
	mov r1, #0xff
	mov r2, #0x1e
	bl MI_CpuFill8
	mov r5, #0
	ldr r7, _021EC994 ; =0x0001E440
	add r4, r5, #0
_021EC970:
	ldr r0, [r6, r7]
	add r1, r4, #0
	bl Pokewalker_CourseIsUnlocked
	cmp r0, #0
	beq _021EC984
	ldr r0, _021EC998 ; =0x0001EC58
	add r1, r6, r5
	strb r4, [r1, r0]
	add r5, r5, #1
_021EC984:
	add r4, r4, #1
	cmp r4, #0x1b
	blt _021EC970
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC990: .word 0x0001EC54
_021EC994: .word 0x0001E440
_021EC998: .word 0x0001EC58
	thumb_func_end ov112_021EC950

