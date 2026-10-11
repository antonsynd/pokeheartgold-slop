#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E01C
	.public ov70_0223E094

	.text

	thumb_func_start ov70_0223E01C
ov70_0223E01C: ; 0x0223E01C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r2, #0
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r1, _0223E084 ; =0x00000B9C
	add r2, r7, #0
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0223E048
	ldr r0, _0223E088 ; =0x00000F18
	b _0223E04A
_0223E048:
	ldr r0, _0223E08C ; =0x00001158
_0223E04A:
	add r4, r5, r0
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl DrawFrameAndWindow2
	mov r3, #0
	str r3, [sp]
	str r6, [sp, #4]
	ldr r2, _0223E090 ; =0x00000BBC
	str r3, [sp, #8]
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #1
	bl AddTextPrinterParameterized
	mov r1, #0xbf
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r7, #0
	bl String_Delete
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223E084: .word 0x00000B9C
_0223E088: .word 0x00000F18
_0223E08C: .word 0x00001158
_0223E090: .word 0x00000BBC
	thumb_func_end ov70_0223E01C

	thumb_func_start ov70_0223E094
ov70_0223E094: ; 0x0223E094
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r2, r3, #0
	bl NARC_AllocAndReadWholeMember
	add r4, r0, #0
	beq _0223E0B6
	add r1, r5, #0
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r0, #0
	bne _0223E0B6
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223E0B6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_0223E094

