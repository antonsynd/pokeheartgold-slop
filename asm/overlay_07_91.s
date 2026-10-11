	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221E280
	.extern ov07_0221DE04
	.extern ov07_0221DEC0

	.text

	.text
	thumb_func_start ov07_0221E280
ov07_0221E280: ; 0x0221E280
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0221E292
	cmp r0, #1
	beq _0221E316
	b _0221E39A
_0221E292:
	ldrb r0, [r4, #0xd]
	ldr r2, [r4, #0x48]
	cmp r0, #0
	bne _0221E2D4
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r3, #0x6a
	str r1, [sp, #8]
	add r0, r2, #0
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	mov r3, #0xe
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldrsb r3, [r4, r3]
	ldr r0, [r0]
	mov r1, #1
	lsr r2, r2, #0x10
	bl PaletteData_ForceBeginPaletteFade
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x48]
	mov r2, #2
	add r0, #0xc8
	ldr r0, [r0]
	lsl r2, r2, #8
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	b _0221E310
_0221E2D4:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0221E3B4 ; =0x0000FFFF
	mov r3, #0x6a
	str r0, [sp, #8]
	add r0, r2, #0
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	mov r3, #0xe
	add r0, #0xc8
	lsl r2, r2, #0x10
	ldrsb r3, [r4, r3]
	ldr r0, [r0]
	mov r1, #1
	lsr r2, r2, #0x10
	bl PaletteData_ForceBeginPaletteFade
	ldr r0, _0221E3B4 ; =0x0000FFFF
	mov r2, #2
	str r0, [sp]
	ldr r0, [r4, #0x48]
	mov r1, #0
	add r0, #0xc8
	ldr r0, [r0]
	lsl r2, r2, #8
	mov r3, #0x10
	bl PaletteData_BlendPalettes
_0221E310:
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
_0221E316:
	ldr r0, [r4, #0x48]
	add r0, #0xc8
	ldr r0, [r0]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	bne _0221E3AE
	ldr r0, [r4, #0x48]
	mov r2, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #3
	add r3, r2, #0
	bl SetBgControlParam
	ldr r1, [r4, #0x48]
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	mov r2, #3
	bl ov07_0221DE04
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0221E364
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	mov r3, #0xe
	add r0, #0xc8
	mov r1, #1
	ldrsb r3, [r4, r3]
	ldr r0, [r0]
	lsl r2, r1, #9
	bl PaletteData_ForceBeginPaletteFade
	b _0221E382
_0221E364:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0221E3B4 ; =0x0000FFFF
	mov r3, #0xe
	str r0, [sp, #8]
	ldr r0, [r4, #0x48]
	mov r1, #1
	add r0, #0xc8
	ldrsb r3, [r4, r3]
	ldr r0, [r0]
	lsl r2, r1, #9
	bl PaletteData_ForceBeginPaletteFade
_0221E382:
	add r0, r4, #0
	bl ov07_0221DEC0
	mov r0, #0x5f
	ldr r1, [r4, #0x48]
	mov r2, #2
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldrb r0, [r4, #5]
	add r0, r0, #1
	strb r0, [r4, #5]
	b _0221E3AE
_0221E39A:
	ldr r0, [r4, #0x48]
	add r0, #0xc8
	ldr r0, [r0]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	bne _0221E3AE
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0221E3AE:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0221E3B4: .word 0x0000FFFF
	thumb_func_end ov07_0221E280

