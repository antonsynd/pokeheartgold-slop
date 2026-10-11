#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F8D0
	.extern ov65_0222010C
	.extern ov65_02220144

	.text

	.text
	thumb_func_start ov65_0221F8D0
ov65_0221F8D0: ; 0x0221F8D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	mov r2, #1
	str r2, [sp]
	mov r3, #0xa
	str r3, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r6, #8
	str r6, [sp, #0xc]
	add r5, r1, #0
	str r0, [sp, #0x14]
	str r2, [sp, #0x10]
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r2, #1
	add r1, r5, #0
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, #0x10
	mov r3, #0x14
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x15
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x29
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	add r1, #0x60
	mov r2, #1
	mov r3, #0x1a
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0x60
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, _0221FAD0 ; =0x000003D9
	mov r1, #0
	mov r3, #0xa
	bl LoadUserFrameGfx2
	mov r1, #0
	str r1, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, _0221FAD4 ; =0x000003F7
	mov r3, #0xb
	bl LoadUserFrameGfx1
	mov r1, #0x15
	str r1, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r3, #2
	lsl r1, r1, #4
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	bl AddWindowParameterized
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	mov r1, #0x16
	lsl r1, r1, #4
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	bl AddWindowParameterized
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x36
	mov r1, #0x17
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl AddWindowParameterized
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r1, #0xa2
	str r1, [sp, #0x10]
	add r1, #0xee
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	mov r2, #0
	mov r3, #0x14
	bl AddWindowParameterized
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r4, _0221FAD8 ; =ov65_0222010C
	mov r7, #0
	mov r6, #0x33
_0221FA3A:
	add r0, r7, #7
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	ldrh r0, [r4, #2]
	ldr r1, [sp, #0x18]
	mov r2, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	add r1, r5, r1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r6, #0x10
	add r4, r4, #4
	cmp r7, #0xe
	blt _0221FA3A
	ldr r4, _0221FADC ; =ov65_02220144
	mov r6, #0
_0221FA84:
	add r0, r6, #0
	add r0, #0x1a
	lsl r7, r0, #4
	ldrh r0, [r4, #2]
	add r1, r5, r7
	mov r2, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldrh r0, [r4, #8]
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #0xa
	cmp r6, #8
	blt _0221FA84
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0221FAD0: .word 0x000003D9
_0221FAD4: .word 0x000003F7
_0221FAD8: .word ov65_0222010C
_0221FADC: .word ov65_02220144
	thumb_func_end ov65_0221F8D0

