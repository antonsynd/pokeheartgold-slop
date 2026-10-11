	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225D9D4

	.text

	.text
	thumb_func_start ov31_0225D9D4
ov31_0225D9D4: ; 0x0225D9D4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r1, #0
	beq _0225D9EA
	cmp r1, #1
	beq _0225DA26
	cmp r1, #2
	beq _0225DA64
	add sp, #8
	pop {r3, r4, r5, pc}
_0225D9EA:
	mov r0, #8
	str r0, [sp]
	mov r0, #0x3c
	mov r1, #0x11
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4, #4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4, #4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #8
	pop {r3, r4, r5, pc}
_0225DA26:
	ldr r0, [r4, #4]
	mov r1, #5
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	mov r0, #8
	str r0, [sp]
	mov r0, #0x3c
	mov r1, #0x13
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4, #4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4, #4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, pc}
_0225DA64:
	ldr r0, [r4, #4]
	mov r1, #5
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	mov r0, #8
	str r0, [sp]
	mov r0, #0x3c
	mov r1, #0x14
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4, #4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4, #4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov31_0225D9D4

