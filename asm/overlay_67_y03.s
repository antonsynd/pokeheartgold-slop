	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E5A6C
	.extern ov67_021E5BC0
	.extern ov67_021E5BE0
	.extern ov67_021E5DA0
	.extern ov67_021E5EB0
	.extern ov67_021E6008
	.extern ov67_021E60B4
	.extern ov67_021E6220
	.extern ov67_021E63E8
	.extern ov67_021E65C0
	.extern ov67_021E681C
	.extern ov67_021E6820
	.extern ov67_021E6BC4

	.text

	.text
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

