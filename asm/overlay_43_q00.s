	.include "macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public PalPad_Init
	.extern ov43_0222A148
	.extern ov43_0222A290
	.extern ov43_0222A48C
	.extern ov43_0222AE5C
	.extern ov43_0222B5A8
	.extern ov43_0222CBAC
	.extern ov43_0222CD90
	.extern ov43_0222D134

	.text

	.text
	thumb_func_start PalPad_Init
PalPad_Init: ; 0x02229EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02229FA4 ; =SDK_OVERLAY_OVY_42_ID
	mov r1, #2
	bl HandleLoadOverlay
	mov r2, #7
	mov r0, #3
	mov r1, #0x33
	lsl r2, r2, #0x10
	bl Heap_Create
	ldr r1, _02229FA8 ; =0x000005A4
	add r0, r5, #0
	mov r2, #0x33
	bl OverlayManager_CreateAndGetData
	ldr r2, _02229FA8 ; =0x000005A4
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl OverlayManager_GetArgs
	mov r1, #0x9f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x68
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0x33
	bl ov43_0222A290
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, #4
	add r1, r4, r1
	mov r2, #0x33
	bl ov43_0222A48C
	mov r1, #0xa
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0x6c
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222AE5C
	mov r1, #0xb
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0xac
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222B5A8
	mov r0, #0xf
	mov r1, #0x85
	lsl r0, r0, #6
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222CBAC
	mov r0, #0xf3
	mov r1, #0x85
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222CD90
	ldr r0, _02229FAC ; =0x00000408
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222D134
	ldr r0, _02229FB0 ; =ov43_0222A148
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02229FA4: .word SDK_OVERLAY_OVY_42_ID
_02229FA8: .word 0x000005A4
_02229FAC: .word 0x00000408
_02229FB0: .word ov43_0222A148
	thumb_func_end PalPad_Init

