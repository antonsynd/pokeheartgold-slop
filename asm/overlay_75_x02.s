	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02246B00
	.public ov75_02246B48
	.public ov75_02246B98
	.extern gApplication_TitleScreen
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02246B00
ov75_02246B00: ; 0x02246B00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl ov75_02246B98
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl String_Delete
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl String_Delete
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x73
	bl Heap_Destroy
	mov r0, #0x59
	bl Heap_Destroy
	ldr r0, _02246B40 ; =FS_OVERLAY_ID(intro_title)
	ldr r1, _02246B44 ; =gApplication_TitleScreen
	bl RegisterMainOverlay
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02246B40: .word FS_OVERLAY_ID(intro_title)
_02246B44: .word gApplication_TitleScreen
	thumb_func_end ov75_02246B00

	thumb_func_start ov75_02246B48
ov75_02246B48: ; 0x02246B48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _02246B8E
	ldr r0, _02246B90 ; =FS_OVERLAY_ID(OVY_70)
	mov r1, #2
	bl HandleLoadOverlay
	bl LoadDwcOverlay
	bl LoadOVY38
	mov r0, #0x73
	bl sub_02039FD8
	ldr r1, _02246B94 ; =0x00020020
	mov r0, #0x73
	bl Heap_Alloc
	str r0, [r4, #0xc]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl NNS_FndCreateExpHeapEx
	str r0, [r4, #0x10]
	bl sub_02034D8C
	mov r0, #4
	bl Sys_ClearSleepDisableFlag
_02246B8E:
	pop {r4, pc}
	.balign 4, 0
_02246B90: .word FS_OVERLAY_ID(OVY_70)
_02246B94: .word 0x00020020
	thumb_func_end ov75_02246B48

	thumb_func_start ov75_02246B98
ov75_02246B98: ; 0x02246B98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246BC4
	ldr r0, [r4, #0x10]
	bl NNS_FndDestroyExpHeap
	ldr r0, [r4, #0xc]
	bl Heap_Free
	bl UnloadOVY38
	bl UnloadDwcOverlay
	bl sub_02034DE0
	ldr r0, _02246BC8 ; =FS_OVERLAY_ID(OVY_70)
	bl UnloadOverlayByID
	mov r0, #0
	str r0, [r4, #0x7c]
_02246BC4:
	pop {r4, pc}
	nop
_02246BC8: .word FS_OVERLAY_ID(OVY_70)
	thumb_func_end ov75_02246B98

