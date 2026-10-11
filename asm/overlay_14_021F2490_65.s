#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F46B0
	.public ov14_021F4958
	.public ov14_021F4A64

    .text

	thumb_func_start ov14_021F4958
ov14_021F4958: ; 0x021F4958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x13
	mov r1, #0x46
	mov r2, #0xa
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	add r1, sp, #4
	add r7, r0, #0
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #4]
	ldr r2, [r5, #0x34]
	ldr r1, _021F49C4 ; =0x000040C8
	lsl r4, r6, #0xa
	add r1, r2, r1
	mov r2, #1
	ldr r0, [r0, #0x14]
	add r1, r1, r4
	lsl r2, r2, #0xa
	bl MI_CpuCopy8
	add r0, r7, #0
	bl Heap_Free
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E7930
	add r2, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp]
	ldr r3, [r5, #0x34]
	ldr r1, _021F49C4 ; =0x000040C8
	add r0, r5, #0
	add r1, r3, r1
	add r1, r1, r4
	mov r3, #8
	bl ov14_021F46B0
	ldr r3, [r5, #0x34]
	ldr r2, _021F49C4 ; =0x000040C8
	add r0, r5, #0
	add r2, r3, r2
	add r1, r6, #0
	add r2, r2, r4
	bl ov14_021F4A64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F49C4: .word 0x000040C8
	thumb_func_end ov14_021F4958

