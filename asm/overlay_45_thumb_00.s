#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02229EE0
	.extern ov45_02229FE0
	.extern ov45_02229FF4
	.extern ov45_0222CD1C
	.extern ov45_0222CD84

	.text

	.text
	thumb_func_start ov45_02229EE0
ov45_02229EE0: ; 0x02229EE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02229F68 ; =FS_OVERLAY_ID(OVY_42)
	mov r1, #2
	bl HandleLoadOverlay
	bl LoadDwcOverlay
	bl LoadOVY38
	mov r0, #3
	bl sub_02039FD8
	mov r2, #5
	mov r0, #3
	mov r1, #0x6f
	lsl r2, r2, #0xc
	bl Heap_Create
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0x6f
	bl OverlayManager_CreateAndGetData
	add r5, r0, #0
	add r2, r5, #0
	mov r1, #0x10
	mov r0, #0
_02229F18:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02229F18
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x6f
	str r0, [r5]
	bl ov45_02229FF4
	str r0, [r5, #4]
	mov r0, #0x6f
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	ldr r2, [r4]
	ldr r3, [r5, #4]
	bl ov45_0222CD1C
	str r0, [r5, #8]
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	ldr r0, _02229F6C ; =ov45_02229FE0
	add r1, r5, #0
	mov r2, #0
	bl SysTask_CreateOnVWaitQueue
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	bl ov45_0222CD84
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02229F68: .word FS_OVERLAY_ID(OVY_42)
_02229F6C: .word ov45_02229FE0
	thumb_func_end ov45_02229EE0

