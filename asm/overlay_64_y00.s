	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public HallOfFameShowcase_Init
	.extern ov64_021E5A88
	.extern ov64_021E5B00
	.extern ov64_021E5B10
	.extern ov64_021E5CD0
	.extern ov64_021E607C
	.extern ov64_021E6170
	.extern ov64_021E622C
	.extern ov64_021E652C

	.text

	.text
	thumb_func_start HallOfFameShowcase_Init
HallOfFameShowcase_Init: ; 0x021E5900
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #0
	bl GfGfx_EngineASetPlanes
	mov r0, #0
	bl GfGfx_EngineBSetPlanes
	ldr r0, _021E59B4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021E59B8 ; =0x04001050
	strh r1, [r0]
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	ldr r2, _021E59BC ; =0x04000304
	ldr r0, _021E59C0 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r2, #1
	mov r0, #3
	mov r1, #0x3b
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r1, #0x1d
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0x3b
	bl OverlayManager_CreateAndGetData
	mov r2, #0x1d
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl OverlayManager_GetArgs
	str r0, [r4]
	bl Save_HOF_GetNumRecords
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb4
	mov r1, #0x3b
	bl NARC_New
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	bl ov64_021E5B00
	add r0, r4, #0
	bl ov64_021E5B10
	add r0, r4, #0
	bl ov64_021E5CD0
	add r0, r4, #0
	bl ov64_021E607C
	add r0, r4, #0
	bl ov64_021E6170
	add r0, r4, #0
	bl ov64_021E622C
	add r0, r4, #0
	mov r1, #0
	bl ov64_021E652C
	ldr r0, _021E59C4 ; =ov64_021E5A88
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E59B4: .word 0x04000050
_021E59B8: .word 0x04001050
_021E59BC: .word 0x04000304
_021E59C0: .word 0xFFFF7FFF
_021E59C4: .word ov64_021E5A88
	thumb_func_end HallOfFameShowcase_Init

