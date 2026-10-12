#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223EB34
	.extern ov70_02239D44
	.extern ov70_02245920

	.text

	.text
	thumb_func_start ov70_0223EB34
ov70_0223EB34: ; 0x0223EB34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223EBC8 ; =0x00000F18
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl AddWindowParameterized
	ldr r1, _0223EBC8 ; =0x00000F18
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _0223EBCC ; =0x00001058
	ldr r0, [sp, #0x14]
	ldr r4, _0223EBD0 ; =ov70_02245920
	mov r7, #0
	mov r6, #0x96
	add r5, r0, r1
_0223EB76:
	ldrh r0, [r4, #2]
	add r1, r5, #0
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	bl CopyWindowToVram
	add r7, r7, #1
	add r6, #0x16
	add r4, r4, #4
	add r5, #0x10
	cmp r7, #6
	blt _0223EB76
	ldr r0, [sp, #0x14]
	mov r1, #3
	bl ov70_02239D44
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223EBC8: .word 0x00000F18
_0223EBCC: .word 0x00001058
_0223EBD0: .word ov70_02245920
	thumb_func_end ov70_0223EB34

