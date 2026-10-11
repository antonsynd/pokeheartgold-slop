	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public SafariAreaCustomizer_Exit
	.public SafariAreaCustomizer_Main
	.extern ov108_021E5A48
	.extern ov108_021E5A78
	.extern ov108_021E5A8C
	.extern ov108_021E5AA0
	.extern ov108_021E5AF0
	.extern ov108_021E5B48
	.extern ov108_021E5B98
	.extern ov108_021E5BFC

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

	thumb_func_start SafariAreaCustomizer_Main
SafariAreaCustomizer_Main: ; 0x021E5978
	push {r4, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	cmp r1, #7
	bhi _021E59DE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5992: ; jump table
	.short _021E59A2 - _021E5992 - 2 ; case 0
	.short _021E59AA - _021E5992 - 2 ; case 1
	.short _021E59B2 - _021E5992 - 2 ; case 2
	.short _021E59BA - _021E5992 - 2 ; case 3
	.short _021E59C2 - _021E5992 - 2 ; case 4
	.short _021E59CA - _021E5992 - 2 ; case 5
	.short _021E59D2 - _021E5992 - 2 ; case 6
	.short _021E59DA - _021E5992 - 2 ; case 7
_021E59A2:
	bl ov108_021E5A78
	str r0, [r4]
	b _021E59DE
_021E59AA:
	bl ov108_021E5A8C
	str r0, [r4]
	b _021E59DE
_021E59B2:
	bl ov108_021E5AA0
	str r0, [r4]
	b _021E59DE
_021E59BA:
	bl ov108_021E5AF0
	str r0, [r4]
	b _021E59DE
_021E59C2:
	bl ov108_021E5B48
	str r0, [r4]
	b _021E59DE
_021E59CA:
	bl ov108_021E5B98
	str r0, [r4]
	b _021E59DE
_021E59D2:
	bl ov108_021E5BFC
	str r0, [r4]
	b _021E59DE
_021E59DA:
	mov r0, #1
	pop {r4, pc}
_021E59DE:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end SafariAreaCustomizer_Main

