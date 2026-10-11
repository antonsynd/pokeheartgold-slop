	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02237E68
	.public ov59_02237F28
	.public ov59_02237F74

	.text

	thumb_func_start ov59_02237E68
ov59_02237E68: ; 0x02237E68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl ov59_02237F74
	cmp r0, #0
	bne _02237E7E
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237E7E:
	add r0, r4, #0
	bl ov59_02237F28
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x86
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_02237E68

