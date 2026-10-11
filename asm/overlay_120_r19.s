	.include "asm/macros.inc"
	.include "overlay_120.inc"
	.include "global.inc"
	.public ov120_0225FD2C
	.public ov120_0225FDA0

	.text

	.text
	thumb_func_start ov120_0225FD2C
ov120_0225FD2C: ; 0x0225FD2C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #4
	add r4, r3, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r3, sp, #0xc
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	ldr r2, [sp, #0xc]
	mov r3, #0
	lsl r1, r4, #0x18
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl LoadRectToBgTilemapRect
	ldr r1, [sp, #0xc]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	str r2, [sp, #8]
	bl BgTilemapRectChangePalette
	add r0, r6, #0
	bl Heap_Free
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov120_0225FD2C

	thumb_func_start ov120_0225FDA0
ov120_0225FDA0: ; 0x0225FDA0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrh r2, [r4, #0x1e]
	ldr r1, [r4]
	cmp r2, #0
	beq _0225FDB8
	cmp r2, #1
	beq _0225FDD6
	cmp r2, #2
	beq _0225FDF4
	b _0225FE00
_0225FDB8:
	ldr r3, [r4, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r1, #0x10]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0x10]
	mov r1, #1
	bl BG_LoadCharTilesData
	ldrh r0, [r4, #0x1e]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4, #0x1e]
	pop {r3, r4, pc}
_0225FDD6:
	ldr r3, [r4, #0x10]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r1, #0x10]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0x10]
	mov r1, #3
	bl BG_LoadCharTilesData
	ldrh r0, [r4, #0x1e]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4, #0x1e]
	pop {r3, r4, pc}
_0225FDF4:
	mov r1, #0
	str r1, [r4, #0x18]
	bl SysTask_Destroy
	add sp, #4
	pop {r3, r4, pc}
_0225FE00:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov120_0225FDA0

