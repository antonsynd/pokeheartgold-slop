	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221EBA4
	.public ov07_0221EC7C
	.extern ov07_0221BFC0
	.extern ov07_0221FB04
	.extern ov07_0221FB30

	.text

	.text
	thumb_func_start ov07_0221EBA4
ov07_0221EBA4: ; 0x0221EBA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov07_0221FB04
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl SetBgPriority
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl ToggleBgLayer
	add r0, r5, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _0221EBEA
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #4
	bl SetBgControlParam
	b _0221EC10
_0221EBEA:
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #0
	lsr r3, r3, #0x18
	bl SetBgControlParam
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #4
	bl SetBgControlParam
_0221EC10:
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	add r0, r5, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _0221EC4E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x19
	add r2, r5, #0
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	add r2, #0xc4
	ldr r1, [r5, r1]
	ldr r2, [r2]
	add r3, r4, #0
	bl GfGfxLoader_LoadCharData
	b _0221EC56
_0221EC4E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov07_0221FB30
_0221EC56:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	add r5, #0xc4
	ldr r2, [r5]
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnData
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov07_0221EBA4

	thumb_func_start ov07_0221EC7C
ov07_0221EC7C: ; 0x0221EC7C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	bl ov07_0221FB04
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl SetBgPriority
	add r0, r5, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _0221ECB4
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #3
	bl SetBgControlParam
	b _0221ECD8
_0221ECB4:
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	mov r2, #0
	ldr r0, [r0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl SetBgControlParam
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #3
	bl SetBgControlParam
_0221ECD8:
	add r5, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov07_0221EC7C

