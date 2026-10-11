	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public SafariDecoration_Init
	.extern ov108_021E8968
	.extern ov108_021E8AD4
	.extern ov108_021E929C

	.text

	.text
	thumb_func_start SafariDecoration_Init
SafariDecoration_Init: ; 0x021E8850
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021E8862
	cmp r1, #1
	beq _021E88B0
	b _021E88C0
_021E8862:
	bl ov108_021E8AD4
	mov r2, #0x12
	mov r0, #3
	mov r1, #0x5f
	lsl r2, r2, #0xe
	bl Heap_Create
	add r0, r4, #0
	bl OverlayManager_GetArgs
	mov r1, #0x53
	add r6, r0, #0
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0x5f
	bl OverlayManager_CreateAndGetData
	mov r2, #0x53
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x5f
	str r0, [r4]
	add r0, r4, #0
	add r1, r6, #0
	bl ov108_021E8968
	mov r1, #0
	mov r0, #0x43
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021E88C0
_021E88B0:
	bl OverlayManager_GetData
	bl ov108_021E929C
	cmp r0, #0
	beq _021E88C0
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E88C0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end SafariDecoration_Init

