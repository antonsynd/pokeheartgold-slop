	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A9B8
	.public ov59_0223AA6C
	.public ov59_0223AB00

	.text

	thumb_func_start ov59_0223A9B8
ov59_0223A9B8: ; 0x0223A9B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl ov59_0223AB00
	cmp r0, #0
	bne _0223A9CE
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A9CE:
	add r0, r4, #0
	bl ov59_0223AA6C
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x86
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_0223A9B8

