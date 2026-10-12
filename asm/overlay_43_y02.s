	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public PalPad_Exit
	.extern ov43_0222A2F0
	.extern ov43_0222A520
	.extern ov43_0222B098
	.extern ov43_0222B93C
	.extern ov43_0222CD34
	.extern ov43_0222CE0C
	.extern ov43_0222D228

	.text

	.text
	thumb_func_start PalPad_Exit
PalPad_Exit: ; 0x0222A0AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r1, #0xa
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0x6c
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222B098
	mov r1, #0xb
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0xac
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222B93C
	mov r0, #0xf
	mov r1, #0x85
	lsl r0, r0, #6
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222CD34
	mov r0, #0xf3
	mov r1, #0x85
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222CE0C
	ldr r0, _0222A140 ; =0x00000408
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222D228
	add r0, r4, #4
	bl ov43_0222A520
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x68
	ldr r1, [r4, r1]
	bl ov43_0222A2F0
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x33
	bl Heap_Destroy
	ldr r0, _0222A144 ; =FS_OVERLAY_ID(OVY_42)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222A140: .word 0x00000408
_0222A144: .word FS_OVERLAY_ID(OVY_42)
	thumb_func_end PalPad_Exit

