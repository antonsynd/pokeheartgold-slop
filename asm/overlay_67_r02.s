	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E5984
	.public ov67_021E5A6C
	.public ov67_021E5B44
	.public ov67_021E5BC0
	.public ov67_021E5BE0
	.extern ov67_021E5C04
	.extern ov67_021E5C44
	.extern ov67_021E5DA0
	.extern ov67_021E5E84
	.extern ov67_021E5EB0
	.extern ov67_021E6008
	.extern ov67_021E6080
	.extern ov67_021E60B4
	.extern ov67_021E60F4
	.extern ov67_021E6220
	.extern ov67_021E63E8
	.extern ov67_021E6474
	.extern ov67_021E65C0
	.extern ov67_021E681C
	.extern ov67_021E6820
	.extern ov67_021E6990
	.extern ov67_021E69D8
	.extern ov67_021E6A00
	.extern ov67_021E6A40
	.extern ov67_021E6BC4
	.extern ov67_021E6C04
	.extern ov67_021E6E38

	.text

	.text
	thumb_func_start ov67_021E5984
ov67_021E5984: ; 0x021E5984
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #8
	bhi _021E5A52
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E59A2: ; jump table
	.short _021E59B4 - _021E59A2 - 2 ; case 0
	.short _021E59C2 - _021E59A2 - 2 ; case 1
	.short _021E59DE - _021E59A2 - 2 ; case 2
	.short _021E59F8 - _021E59A2 - 2 ; case 3
	.short _021E5A00 - _021E59A2 - 2 ; case 4
	.short _021E5A08 - _021E59A2 - 2 ; case 5
	.short _021E5A18 - _021E59A2 - 2 ; case 6
	.short _021E5A36 - _021E59A2 - 2 ; case 7
	.short _021E5A44 - _021E59A2 - 2 ; case 8
_021E59B4:
	bl ov67_021E5A6C
	cmp r0, #0
	beq _021E5A52
	mov r0, #1
	str r0, [r4]
	b _021E5A52
_021E59C2:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #2
	str r0, [r4]
	b _021E5A52
_021E59DE:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5A52
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _021E59F2
	mov r0, #3
	str r0, [r4]
	b _021E5A52
_021E59F2:
	mov r0, #4
	str r0, [r4]
	b _021E5A52
_021E59F8:
	bl ov67_021E5C04
	str r0, [r4]
	b _021E5A52
_021E5A00:
	bl ov67_021E5C44
	str r0, [r4]
	b _021E5A52
_021E5A08:
	bl ov67_021E6A40
	cmp r0, #0
	bne _021E5A52
	ldr r0, _021E5A68 ; =0x0000049C
	ldr r0, [r5, r0]
	str r0, [r4]
	b _021E5A52
_021E5A18:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #7
	str r0, [r4]
	b _021E5A52
_021E5A36:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5A52
	mov r0, #8
	str r0, [r4]
	b _021E5A52
_021E5A44:
	bl ov67_021E5B44
	cmp r0, #0
	beq _021E5A52
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E5A52:
	ldr r0, [r4]
	cmp r0, #1
	blt _021E5A62
	cmp r0, #7
	bgt _021E5A62
	add r0, r5, #0
	bl ov67_021E69D8
_021E5A62:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E5A68: .word 0x0000049C
	thumb_func_end ov67_021E5984

	thumb_func_start ov67_021E5A6C
ov67_021E5A6C: ; 0x021E5A6C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #4
	bhi _021E5B24
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5A82: ; jump table
	.short _021E5A8C - _021E5A82 - 2 ; case 0
	.short _021E5AD6 - _021E5A82 - 2 ; case 1
	.short _021E5AE2 - _021E5A82 - 2 ; case 2
	.short _021E5AE8 - _021E5A82 - 2 ; case 3
	.short _021E5B14 - _021E5A82 - 2 ; case 4
_021E5A8C:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E5B30 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E5B34 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r2, _021E5B38 ; =0x04000304
	ldr r0, _021E5B3C ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	bl ov67_021E5BC0
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	add r0, r4, #0
	bl ov67_021E5DA0
	b _021E5B24
_021E5AD6:
	bl ov67_021E5EB0
	add r0, r4, #0
	bl ov67_021E60B4
	b _021E5B24
_021E5AE2:
	bl ov67_021E6820
	b _021E5B24
_021E5AE8:
	bl ov67_021E6008
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _021E5AFA
	add r0, r4, #0
	bl ov67_021E6220
	b _021E5B24
_021E5AFA:
	add r0, r4, #0
	bl ov67_021E63E8
	add r0, r4, #0
	bl ov67_021E65C0
	add r0, r4, #0
	bl ov67_021E681C
	add r0, r4, #0
	bl ov67_021E6BC4
	b _021E5B24
_021E5B14:
	ldr r0, _021E5B40 ; =ov67_021E5BE0
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021E5B24:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	nop
_021E5B30: .word 0xFFFFE0FF
_021E5B34: .word 0x04001000
_021E5B38: .word 0x04000304
_021E5B3C: .word 0xFFFF7FFF
_021E5B40: .word ov67_021E5BE0
	thumb_func_end ov67_021E5A6C

	thumb_func_start ov67_021E5B44
ov67_021E5B44: ; 0x021E5B44
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E5B54
	cmp r1, #1
	beq _021E5B7E
	b _021E5BAE
_021E5B54:
	ldrh r1, [r4, #8]
	cmp r1, #0
	beq _021E5B64
	bl ov67_021E6C04
	add r0, r4, #0
	bl ov67_021E6474
_021E5B64:
	add r0, r4, #0
	bl ov67_021E6990
	add r0, r4, #0
	bl ov67_021E6080
	add r0, r4, #0
	bl ov67_021E60F4
	add r0, r4, #0
	bl ov67_021E5E84
	b _021E5BAE
_021E5B7E:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E5BB8 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E5BBC ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021E5BAE:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E5BB8: .word 0xFFFFE0FF
_021E5BBC: .word 0x04001000
	thumb_func_end ov67_021E5B44

	thumb_func_start ov67_021E5BC0
ov67_021E5BC0: ; 0x021E5BC0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5BDC ; =ov67_021E6E38
	add r3, sp, #0
	mov r2, #5
_021E5BCA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5BCA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5BDC: .word ov67_021E6E38
	thumb_func_end ov67_021E5BC0

	thumb_func_start ov67_021E5BE0
ov67_021E5BE0: ; 0x021E5BE0
	push {r4, lr}
	add r4, r0, #0
	bl ov67_021E6A00
	ldr r0, [r4, #0x10]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E5BFC ; =0x027E0000
	ldr r1, _021E5C00 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5BFC: .word 0x027E0000
_021E5C00: .word 0x00003FF8
	thumb_func_end ov67_021E5BE0

