	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223ECE4
	.extern ov81_0223EF5C
	.extern ov81_0223F038
	.extern ov81_0223F0BC
	.extern ov81_02240BB0
	.extern ov81_02240E78
	.extern ov81_02240FA4
	.extern ov81_02241450
	.extern ov81_022414E0
	.extern ov81_02241C0C
	.extern ov81_02242218
	.extern ov81_02242300
	.extern ov81_022425C4
	.extern ov81_022425EC
	.extern ov81_02242F40

	.text

	.text
	thumb_func_start ov81_0223ECE4
ov81_0223ECE4: ; 0x0223ECE4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #8
	bhi _0223ED5A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223ECFC: ; jump table
	.short _0223ED0E - _0223ECFC - 2 ; case 0
	.short _0223ED1C - _0223ECFC - 2 ; case 1
	.short _0223EE5E - _0223ECFC - 2 ; case 2
	.short _0223EE64 - _0223ECFC - 2 ; case 3
	.short _0223EEB6 - _0223ECFC - 2 ; case 4
	.short _0223EEC2 - _0223ECFC - 2 ; case 5
	.short _0223EED0 - _0223ECFC - 2 ; case 6
	.short _0223EEF6 - _0223ECFC - 2 ; case 7
	.short _0223EF38 - _0223ECFC - 2 ; case 8
_0223ED0E:
	mov r0, #1
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x13]
	b _0223EF42
_0223ED1C:
	ldr r0, _0223EF48 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_NoHold
	add r5, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r5, r0
	bhi _0223ED52
	bhs _0223EDDA
	cmp r5, #8
	bhi _0223ED5A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223ED40: ; jump table
	.short _0223ED5C - _0223ED40 - 2 ; case 0
	.short _0223ED5C - _0223ED40 - 2 ; case 1
	.short _0223ED5C - _0223ED40 - 2 ; case 2
	.short _0223ED5C - _0223ED40 - 2 ; case 3
	.short _0223ED5C - _0223ED40 - 2 ; case 4
	.short _0223ED5C - _0223ED40 - 2 ; case 5
	.short _0223ED92 - _0223ED40 - 2 ; case 6
	.short _0223EDAA - _0223ED40 - 2 ; case 7
	.short _0223EDC2 - _0223ED40 - 2 ; case 8
_0223ED52:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0223EE12
_0223ED5A:
	b _0223EF42
_0223ED5C:
	ldr r0, _0223EF4C ; =0x000005DC
	bl PlaySE
	ldr r0, _0223EF50 ; =0x00000468
	str r5, [r4, r0]
	add r0, r4, #0
	bl ov81_02241C0C
	mov r2, #0xf
	lsl r2, r2, #6
	ldr r1, [r4, r2]
	add r2, #0xa8
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r3, #6
	bl ov81_02242218
	ldr r1, _0223EF50 ; =0x00000468
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r2, #6
	bl ov81_02242300
	add r0, r4, #0
	bl ov81_02241450
	b _0223EF42
_0223ED92:
	ldr r0, _0223EF4C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xc
	mov r3, #6
	bl ov81_022425C4
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EF42
_0223EDAA:
	ldr r0, _0223EF4C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0xc
	mov r3, #7
	bl ov81_022425C4
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EF42
_0223EDC2:
	ldr r0, _0223EF4C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xf
	mov r3, #8
	bl ov81_022425C4
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EF42
_0223EDDA:
	ldr r0, _0223EF4C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov81_02241C0C
	ldr r0, _0223EF48 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	mov r1, #0xf
	lsl r1, r1, #6
	add r2, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r3, #6
	bl ov81_02242218
	ldr r0, _0223EF48 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #6
	bl ov81_02242300
	b _0223EF42
_0223EE12:
	ldr r0, _0223EF48 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	cmp r0, #6
	blo _0223EE30
	ldr r0, _0223EF4C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov81_022414E0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223EE30:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0223EE38
	b _0223EF42
_0223EE38:
	ldr r0, _0223EF4C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov81_0223EF5C
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223EE58
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov81_02240FA4
_0223EE58:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223EE5E:
	bl ov81_022425EC
	b _0223EF42
_0223EE64:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223EF42
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	beq _0223EE8C
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers
	ldr r0, _0223EF54 ; =0x00000478
	mov r1, #0xff
	str r1, [r4, r0]
	b _0223EF42
_0223EE8C:
	add r0, r4, #0
	bl ov81_02240E78
	add r0, r4, #0
	bl ov81_02240BB0
	mov r1, #7
	lsl r1, r1, #6
	ldr r0, _0223EF58 ; =gOverlayTemplate_PokemonSummary
	ldr r1, [r4, r1]
	mov r2, #0x64
	bl OverlayManager_New
	str r0, [r4, #4]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	add sp, #0xc
	orr r0, r1
	strb r0, [r4, #0x13]
	mov r0, #1
	pop {r4, r5, pc}
_0223EEB6:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223EF42
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223EEC2:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223EF42
	mov r0, #1
	strb r0, [r4, #8]
	b _0223EF42
_0223EED0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r1, [r4, #0x13]
	mov r0, #0x40
	orr r0, r1
	strb r0, [r4, #0x13]
	mov r0, #3
	strb r0, [r4, #8]
	b _0223EF42
_0223EEF6:
	bl ov81_022414E0
	ldr r0, _0223EF50 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov81_02242F40
	cmp r0, #0
	bne _0223EF18
	add r0, r4, #0
	bl ov81_0223F038
	b _0223EF1E
_0223EF18:
	add r0, r4, #0
	bl ov81_0223F0BC
_0223EF1E:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223EF32
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov81_02240FA4
_0223EF32:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223EF38:
	bl ov81_022414E0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0223EF42:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0223EF48: .word 0x00000464
_0223EF4C: .word 0x000005DC
_0223EF50: .word 0x00000468
_0223EF54: .word 0x00000478
_0223EF58: .word gOverlayTemplate_PokemonSummary
	thumb_func_end ov81_0223ECE4

