	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222D148
	.extern ov07_0221BFD0
	.extern ov07_0221C410
	.extern ov07_0221C470
	.extern ov07_0221C4E8
	.extern ov07_0221FA48
	.extern ov07_0221FA78
	.extern ov07_0221FAE8
	.extern ov07_0221FAEC
	.extern ov07_0221FAF8
	.extern ov07_02222AC4
	.extern ov07_02222CCC
	.extern ov07_02222D88
	.extern ov07_0222D050
	.extern ov07_02231924
	.extern ov07_02231E74
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_0222D148
ov07_0222D148: ; 0x0222D148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x14]
	mov r1, #0x4c
	bl ov07_022324D8
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	str r0, [r4]
	bl ov07_0221FA78
	str r0, [r4, #0x18]
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x10
	bl ov07_02231E74
	mov r2, #8
	str r2, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0
	mov r3, #0x10
	bl ov07_02222AC4
	ldr r0, [r4]
	bl ov07_0221C470
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_0221FA48
	mov r1, #0
	str r0, [r4, #0x10]
	bl Pokepic_GetAttr
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Pokepic_GetAttr
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl Pokepic_GetAttr
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, #0x28
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4]
	mov r1, #0
	bl ov07_0221C4E8
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl ov07_0221C470
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_02231924
	cmp r0, #5
	beq _0222D1D8
	cmp r0, #2
	bne _0222D1EA
_0222D1D8:
	ldr r0, [r4, #0x48]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl ManagedSprite_SetPriority
	b _0222D224
_0222D1EA:
	ldr r0, [r4]
	mov r1, #1
	bl ov07_0221FAEC
	add r6, r0, #0
	ldr r0, [r4]
	bl ov07_0221FAE8
	add r1, r0, #0
	lsl r0, r6, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl SetBgPriority
	ldr r0, [r4]
	bl ov07_0221FAE8
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl SetBgPriority
	ldr r0, [r4, #0x48]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_0222D224:
	add r0, r5, #0
	add r0, #0x50
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	str r5, [sp, #0x18]
	cmp r5, #0
	bge _0222D234
	mov r5, #0
_0222D234:
	cmp r6, #0xbf
	ble _0222D23A
	mov r6, #0xbf
_0222D23A:
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl ov07_0221FAF8
	ldr r1, [sp, #0x18]
	sub r7, #0x28
	str r0, [sp, #0x1c]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	neg r0, r0
	neg r1, r1
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov07_02222D88
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	bl ov07_0221BFD0
	mov r1, #0x64
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	mov r3, #5
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r0, r5, #0x18
	lsl r1, r6, #0x18
	ldr r2, _0222D2A8 ; =0x0000038E
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsl r3, r3, #0xc
	bl ov07_02222CCC
	mov r2, #1
	str r0, [r4, #0x14]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	lsl r2, r2, #8
	mov r3, #8
	bl PaletteData_BlendPalettes
	ldr r0, [r4]
	ldr r1, _0222D2AC ; =ov07_0222D050
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222D2A8: .word 0x0000038E
_0222D2AC: .word ov07_0222D050
	thumb_func_end ov07_0222D148

