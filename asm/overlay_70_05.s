#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022386F4
	.public ov70_0223887C
	.public ov70_02238E98

	.text

	thumb_func_start ov70_022386F4
ov70_022386F4: ; 0x022386F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl Heap_Free
	bl UnloadOVY38
	bl UnloadDwcOverlay
	add r0, r4, #0
	bl ov70_02238E98
	ldr r0, _02238794 ; =0x00000BA4
	ldr r0, [r4, r0]
	bl DestroyMsgData
	ldr r0, _02238798 ; =0x00000BAC
	ldr r0, [r4, r0]
	bl DestroyMsgData
	ldr r0, _0223879C ; =0x00000BA8
	ldr r0, [r4, r0]
	bl DestroyMsgData
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl DestroyMsgData
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl DestroyMsgData
	ldr r0, _022387A0 ; =0x00000B9C
	ldr r0, [r4, r0]
	bl MessageFormat_Delete
	add r0, r4, #0
	bl ov70_0223887C
	bl sub_02034DE0
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r4, #4]
	bl Heap_Free
	ldr r0, [r4]
	bl Heap_Free
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #4
	bl FontID_Release
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _022387A4 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2]
	ldr r2, _022387A8 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x3d
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02238794: .word 0x00000BA4
_02238798: .word 0x00000BAC
_0223879C: .word 0x00000BA8
_022387A0: .word 0x00000B9C
_022387A4: .word 0xFFFF1FFF
_022387A8: .word 0x04001000
	thumb_func_end ov70_022386F4

