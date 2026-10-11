	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_02246778
	.extern _0224BF94

    .text

	.text
	thumb_func_start ov41_02246778
ov41_02246778: ; 0x02246778
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _022467C0 ; =_0224BF94
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _022467C4 ; =0xFFCFFFEF
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2]
	bl NNS_G2dInitOamManagerModule
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r0, #0x1f
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x13
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_022467C0: .word _0224BF94
_022467C4: .word 0xFFCFFFEF
	thumb_func_end ov41_02246778

