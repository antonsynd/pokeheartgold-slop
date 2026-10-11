	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_063
	.public ov80_0222DCF0

	.text

	thumb_func_start FrtCmd_063
FrtCmd_063: ; 0x0222DC70
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	add r0, r5, #0
	bl FrontierScript_ReadVar
	add r1, r5, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _0222DCE8 ; =0x0000045D
	mov r0, #5
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	mov r0, #0xb
	mov r1, #0x30
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetData
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	str r0, [r4, #8]
	ldr r0, [r5]
	bl FrontierSystem_GetFrontierMap
	str r0, [r4]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0]
	bl Frontier_SetData
	ldr r1, _0222DCEC ; =ov80_0222DCF0
	add r0, r5, #0
	bl FrontierScriptContext_Pause
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r2, #2
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl PaletteData_FillPaletteInBuffer
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222DCE8: .word 0x0000045D
_0222DCEC: .word ov80_0222DCF0
	thumb_func_end FrtCmd_063

