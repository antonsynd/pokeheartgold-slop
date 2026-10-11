	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_022589A8
	.extern _02259FA0
	.extern ov47_02258A60
	.extern ov47_02258CC0
	.extern ov47_02259278

	.text

	.text
	thumb_func_start ov47_022589A8
ov47_022589A8: ; 0x022589A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r5, #0
	bl OverlayManager_GetArgs
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	ldr r3, [r6, #8]
	mov r1, #0x5e
	lsl r6, r3, #2
	ldr r3, _02258A10 ; =_02259FA0
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x34
	ldr r3, [r3, r6]
	add r1, r4, r1
	add r2, r4, #0
	blx r3
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x81
	bl ov47_02259278
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov47_02258CC0
	add r0, r4, #0
	bl ov47_02258A60
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x81
	bl Heap_Destroy
	mov r0, #0
	bl sub_0200616C
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02258A10: .word _02259FA0
	thumb_func_end ov47_022589A8

