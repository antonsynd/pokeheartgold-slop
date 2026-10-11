	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E5B98
	.public ov108_021E5BFC
	.public ov108_021E5C54
	.public ov108_021E5D0C
	.extern ov108_021E6BA0
	.extern ov108_021E6C68
	.extern ov108_021E6D24
	.extern ov108_021E6D80
	.extern ov108_021E6F58
	.extern ov108_021E6F74
	.extern ov108_021E7014
	.extern ov108_021E7080
	.extern ov108_021E71EC
	.extern ov108_021E7224
	.extern ov108_021E72A4
	.extern ov108_021E72CC
	.extern ov108_021E730C
	.extern ov108_021E733C
	.extern ov108_021E7510
	.extern ov108_021E7BFC
	.extern ov108_021E846C

	.text

	.text
	thumb_func_start ov108_021E5B98
ov108_021E5B98: ; 0x021E5B98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5BAA
	cmp r0, #1
	beq _021E5BD8
	b _021E5BF0
_021E5BAA:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021E5BF0
_021E5BD8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5BF0
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov108_021E846C
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, pc}
_021E5BF0:
	add r0, r4, #0
	bl ov108_021E846C
	mov r0, #5
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov108_021E5B98

	thumb_func_start ov108_021E5BFC
ov108_021E5BFC: ; 0x021E5BFC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5C0E
	cmp r0, #1
	beq _021E5C2E
	b _021E5C46
_021E5C0E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021E5C46
_021E5C2E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5C46
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov108_021E846C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E5C46:
	add r0, r4, #0
	bl ov108_021E846C
	mov r0, #6
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov108_021E5BFC

	thumb_func_start ov108_021E5C54
ov108_021E5C54: ; 0x021E5C54
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021E5C68
	cmp r1, #1
	beq _021E5CB8
	cmp r1, #2
	beq _021E5CE2
	b _021E5CF6
_021E5C68:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E5D00 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E5D04 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	b _021E5CF6
_021E5CB8:
	bl ov108_021E6C68
	add r0, r4, #0
	bl ov108_021E6D80
	add r0, r4, #0
	bl ov108_021E6F74
	add r0, r4, #0
	bl ov108_021E7080
	add r0, r4, #0
	bl ov108_021E7224
	add r0, r4, #0
	bl ov108_021E72CC
	add r0, r4, #0
	bl ov108_021E733C
	b _021E5CF6
_021E5CE2:
	bl ov108_021E7BFC
	ldr r0, _021E5D08 ; =ov108_021E6BA0
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021E5CF6:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E5D00: .word 0xFFFFE0FF
_021E5D04: .word 0x04001000
_021E5D08: .word ov108_021E6BA0
	thumb_func_end ov108_021E5C54

	thumb_func_start ov108_021E5D0C
ov108_021E5D0C: ; 0x021E5D0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E5D1C
	cmp r0, #2
	beq _021E5D54
	b _021E5D7C
_021E5D1C:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r4, #0
	bl ov108_021E7510
	add r0, r4, #0
	bl ov108_021E730C
	add r0, r4, #0
	bl ov108_021E72A4
	add r0, r4, #0
	bl ov108_021E71EC
	add r0, r4, #0
	bl ov108_021E7014
	add r0, r4, #0
	bl ov108_021E6F58
	add r0, r4, #0
	bl ov108_021E6D24
	b _021E5D7C
_021E5D54:
	bl sub_02021238
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E5D88 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E5D8C ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021E5D7C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	nop
_021E5D88: .word 0xFFFFE0FF
_021E5D8C: .word 0x04001000
	thumb_func_end ov108_021E5D0C

