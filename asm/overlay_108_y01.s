	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public SafariAreaCustomizer_Exit
	.extern ov108_021E5A48

	.text

	.text
	thumb_func_start SafariAreaCustomizer_Exit
SafariAreaCustomizer_Exit: ; 0x021E5948
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r6, r0, #0
	bl ov108_021E5A48
	ldr r2, _021E5974 ; =0x000184EC
	ldr r4, [r6]
	add r0, r6, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl OverlayManager_FreeData
	add r0, r4, #0
	bl Heap_Destroy
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021E5974: .word 0x000184EC
	thumb_func_end SafariAreaCustomizer_Exit

