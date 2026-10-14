	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D5B0
	.extern ov07_0221D3CC
	.extern ov07_0221D4FC
	.extern ov07_0221FA48
	.extern ov07_0221FAE8

	.text

	.text
	thumb_func_start ov07_0221D5B0
ov07_0221D5B0: ; 0x0221D5B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r2, r1, #4
	str r2, [r5, #0x18]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r5, #0x18]
	ldr r4, [r2]
	add r2, r2, #4
	str r2, [r5, #0x18]
	bl ov07_0221D3CC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0]
	lsl r0, r6, #2
	add r0, r1, r0
	add r0, #0xb0
	ldr r1, [r0]
	ldr r0, [r1, #4]
	ldr r7, [r1]
	str r0, [sp, #0x14]
	ldr r0, [r1, #8]
	str r0, [sp, #0x10]
	mov r0, #2
	bl BgGetCharPtr
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #8
	bl MI_CpuFill8
	mov r0, #2
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc4
	mov r3, #0x32
	ldr r0, [r0]
	mov r1, #2
	add r2, r7, #0
	lsl r3, r3, #6
	bl BG_LoadCharTilesData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [r5]
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x1b
	add r2, r5, #0
	str r0, [sp, #0xc]
	lsl r1, r1, #4
	add r2, #0xc4
	ldr r0, [r5, r1]
	ldr r2, [r2]
	sub r1, #0xa4
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	cmp r4, #1
	bne _0221D696
	ldr r0, [r5]
	mov r1, #0x10
	bl Heap_Alloc
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0]
	ldr r0, [r5, r1]
	add r1, r6, #0
	str r2, [r0]
	add r0, r5, #0
	bl ov07_0221FA48
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	str r0, [r2, #8]
	ldr r0, [r5, r1]
	mov r2, #0
	strb r2, [r0, #4]
	ldr r0, [r5, r1]
	strb r2, [r0, #5]
	ldr r0, _0221D710 ; =ov07_0221D4FC
	ldr r1, [r5, r1]
	ldr r2, _0221D714 ; =0x00001001
	bl SysTask_CreateOnMainQueue
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	str r0, [r1, #0xc]
_0221D696:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA48
	mov r1, #0
	bl Pokepic_GetAttr
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA48
	mov r1, #1
	bl Pokepic_GetAttr
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA48
	mov r1, #0x29
	bl Pokepic_GetAttr
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0xc4
	sub r7, #0x28
	ldr r0, [r0]
	mov r1, #2
	mov r2, #0
	neg r3, r7
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	add r0, #0xc4
	sub r4, #0x28
	ldr r0, [r0]
	mov r1, #2
	mov r2, #3
	neg r3, r4
	bl BgSetPosTextAndCommit
	mov r0, #2
	mov r1, #1
	bl ToggleBgLayer
	add r0, r5, #0
	bl ov07_0221FAE8
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl SetBgPriority
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D710: .word ov07_0221D4FC
_0221D714: .word 0x00001001
	thumb_func_end ov07_0221D5B0

