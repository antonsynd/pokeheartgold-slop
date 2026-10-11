	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022395B8
	.extern ov57_0223BDF4

	.text

	.text
	thumb_func_start ov57_022395B8
ov57_022395B8: ; 0x022395B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0x34
	str r1, [sp, #0x10]
	str r0, [sp]
	mov r0, #0x57
	mov r1, #8
	mov r2, #1
	add r3, sp, #0x18
	bl GfGfxLoader_GetCharData
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r7, [r1, #0x14]
	ldr r1, [r1, #0x10]
	add r0, r7, #0
	bl DC_FlushRange
	ldr r5, _0223966C ; =ov57_0223BDF4
	mov r4, #0
_022395E2:
	add r0, r4, #1
	str r0, [sp]
	ldr r2, [r5]
	add r0, r6, #0
	lsl r2, r2, #5
	mov r1, #1
	add r2, r7, r2
	mov r3, #0x20
	bl BG_LoadCharTilesData
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blo _022395E2
	ldr r0, [sp, #0x14]
	bl Heap_Free
	mov r0, #0
	str r0, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r1, #0x57
	mov r2, #2
	mov r3, #0x34
	bl PaletteData_LoadFromNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0x34
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xd
	bl LoadUserFrameGfx1
	bl sub_0200E3D8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #0x26
	mov r3, #0x34
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #0x10
	mov r2, #8
	mov r3, #0x34
	bl PaletteData_LoadNarc
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223966C: .word ov57_0223BDF4
	thumb_func_end ov57_022395B8

