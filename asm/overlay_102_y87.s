	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E94CC
	.extern ov102_021E91C4
	.extern ov102_021E94A4
	.extern ov102_021E95E0
	.extern ov102_021E978C
	.extern ov102_021EA314
	.extern ov102_021EA41C
	.extern ov102_021EB1A4
	.extern ov102_021EB1F8
	.extern ov102_021EB694
	.extern ov102_021EB6E0
	.extern ov102_021EBC34
	.extern ov102_021EBD00
	.extern ov102_021EC20C
	.extern ov102_021EC248

	.text

	.text
	thumb_func_start ov102_021E94CC
ov102_021E94CC: ; 0x021E94CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _021E95D0 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _021E95D4 ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r2, [r1]
	ldr r3, _021E95D8 ; =0xFFCFFFEF
	add r5, r2, #0
	ldr r2, _021E95DC ; =0x00100010
	and r5, r3
	orr r2, r5
	str r2, [r1]
	ldr r1, [r0]
	add r2, r1, #0
	and r2, r3
	mov r1, #0x10
	orr r1, r2
	str r1, [r0]
	mov r0, #0x4c
	mov r1, #0x23
	bl NARC_New
	add r5, r0, #0
	add r0, r4, #0
	bl ov102_021E978C
	add r0, r4, #0
	add r1, r5, #0
	bl ov102_021E95E0
	ldr r0, [r4]
	bl ov102_021E91C4
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EA314
	mov r1, #0x1e
	ldr r2, [r4]
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EA41C
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EB1A4
	mov r1, #0x79
	ldr r2, [r4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EB1F8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EB694
	mov r1, #0x7a
	ldr r2, [r4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EB6E0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EBC34
	mov r1, #0x7b
	ldr r2, [r4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	bl ov102_021EBD00
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov102_021EC20C
	mov r1, #0x1f
	ldr r2, [r4]
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4]
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov102_021EC248
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	bl GX_DispOn
	add r0, r5, #0
	bl NARC_Delete
	add r0, r4, #0
	bl ov102_021E94A4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E95D0: .word 0xFFFFE0FF
_021E95D4: .word 0x04001000
_021E95D8: .word 0xFFCFFFEF
_021E95DC: .word 0x00100010
	thumb_func_end ov102_021E94CC

