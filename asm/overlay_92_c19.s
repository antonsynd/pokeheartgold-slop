	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225D3CC
	.extern ov92_0225D594
	.extern ov92_0225D7CC
	.extern ov92_0225DD88
	.extern ov92_022638B0

	.text

	.text
	thumb_func_start ov92_0225D3CC
ov92_0225D3CC: ; 0x0225D3CC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xc1
	mov r1, #0x71
	bl NARC_New
	str r0, [r4, #0x48]
	mov r0, #0xbd
	mov r1, #0x71
	bl NARC_New
	str r0, [r4, #0x4c]
	mov r0, #0x71
	bl BgConfig_Alloc
	str r0, [r4, #0x58]
	mov r0, #0x71
	bl PaletteData_Init
	str r0, [r4, #0x5c]
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x71
	mov r2, #1
	add r3, r1, #0
	bl GF_3DVramMan_Create
	str r0, [r4, #0x60]
	mov r0, #0x71
	bl Camera_New
	str r0, [r4, #0x64]
	add r0, r4, #0
	bl ov92_0225DD88
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	mov r2, #2
	ldr r0, [r4, #0x5c]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x71
	bl PaletteData_AllocBuffers
	mov r1, #1
	ldr r0, [r4, #0x5c]
	lsl r2, r1, #9
	mov r3, #0x71
	bl PaletteData_AllocBuffers
	mov r1, #2
	ldr r0, [r4, #0x5c]
	lsl r2, r1, #8
	mov r3, #0x71
	bl PaletteData_AllocBuffers
	mov r2, #2
	ldr r0, [r4, #0x5c]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x71
	bl PaletteData_AllocBuffers
	ldr r0, [r4, #0x58]
	bl ov92_0225D594
	add r0, r4, #0
	bl ov92_0225D7CC
	ldr r0, _0225D490 ; =0x04000060
	ldr r1, _0225D494 ; =0xFFFFCFFF
	ldrh r2, [r0]
	add r3, r2, #0
	and r3, r1
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0225D498 ; =ov92_022638B0
	bl G3X_SetEdgeColorTable
	add r4, #0x6c
	add r0, r4, #0
	mov r1, #0x71
	mov r2, #0x20
	bl HeapExp_FndInitAllocator
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_0225D490: .word 0x04000060
_0225D494: .word 0xFFFFCFFF
_0225D498: .word ov92_022638B0
	thumb_func_end ov92_0225D3CC

