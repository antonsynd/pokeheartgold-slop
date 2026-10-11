#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E83EC
	.public ov73_021E9378
	.public ov73_021E9F34

	.text

	thumb_func_start ov73_021E9378
ov73_021E9378: ; 0x021E9378
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xbd
	add r2, r4, #0
	lsl r0, r0, #4
	add r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r3, #2
	mov r0, #0xbd
	add r2, r4, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r0, r0, #4
	add r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2]
	bl BufferIntegerAsString
	ldr r0, _021E93E0 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, _021E93E4 ; =0x00000BD4
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r3, r2, #0
	bl ov73_021E9F34
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x11
	bl ov73_021E83EC
	add r4, #0xa0
	ldr r2, _021E93E8 ; =0x00000A38
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021E93E0: .word 0x00000F0F
_021E93E4: .word 0x00000BD4
_021E93E8: .word 0x00000A38
	thumb_func_end ov73_021E9378

