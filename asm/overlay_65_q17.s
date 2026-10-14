#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CE1C

	.text

	.text
	thumb_func_start ov65_0221CE1C
ov65_0221CE1C: ; 0x0221CE1C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl DoScheduledBgGpuUpdates
	ldr r0, _0221CE84 ; =0x0000211C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0221CE6C
	sub r4, r0, #1
	ldr r0, _0221CE88 ; =0x000007FC
	mov r2, #0x32
	lsl r2, r2, #6
	add r1, r4, #0
	add r0, r5, r0
	mul r1, r2
	add r0, r0, r1
	bl GXS_LoadOBJ
	lsl r1, r4, #4
	mov r0, #0x20
	add r2, r5, r1
	str r0, [sp]
	mov r0, #0x1a
	add r3, r4, #2
	ldr r1, _0221CE8C ; =0x000020FC
	str r0, [sp, #4]
	ldrh r0, [r2, r1]
	add r1, r1, #4
	ldrh r1, [r2, r1]
	mov r2, #5
	lsl r3, r3, #5
	bl GfGfxLoader_GXLoadPal
	ldr r0, _0221CE84 ; =0x0000211C
	mov r1, #0
	str r1, [r5, r0]
_0221CE6C:
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _0221CE90 ; =0x027E0000
	ldr r1, _0221CE94 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221CE84: .word 0x0000211C
_0221CE88: .word 0x000007FC
_0221CE8C: .word 0x000020FC
_0221CE90: .word 0x027E0000
_0221CE94: .word 0x00003FF8
	thumb_func_end ov65_0221CE1C

