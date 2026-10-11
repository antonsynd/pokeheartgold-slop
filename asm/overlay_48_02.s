	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_022589FC
	.public ov48_022594A8
	.public ov48_02259868
	.public ov48_02259984
	.public ov48_02259C38
	.public ov48_02259D94
	.public ov48_02259F14
	.public ov48_0225A108
	.public ov48_0225B0A4

	.text

	thumb_func_start ov48_022589FC
ov48_022589FC: ; 0x022589FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r5, #0
	bl OverlayManager_GetArgs
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	ldr r0, _02258A74 ; =0x0000C40C
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x20
	bl ov48_0225A108
	mov r0, #0xc7
	lsl r0, r0, #8
	add r0, r4, r0
	bl ov48_02259F14
	ldr r0, _02258A78 ; =0x0000C3E0
	add r0, r4, r0
	bl ov48_02259D94
	ldr r0, _02258A7C ; =0x0000C3CC
	add r0, r4, r0
	bl ov48_02259C38
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov48_02259868
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov48_02259984
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov48_0225B0A4
	add r4, #0x20
	add r0, r4, #0
	bl ov48_022594A8
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x70
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02258A74: .word 0x0000C40C
_02258A78: .word 0x0000C3E0
_02258A7C: .word 0x0000C3CC
	thumb_func_end ov48_022589FC

