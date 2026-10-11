	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EC9B4
	.public ov103_021EC9D8
	.public ov103_021EC9E8
	.public ov103_021ECBBC
	.public ov103_021ECC1C
	.public ov103_021ECD18
	.public ov103_021ECD68
	.public ov103_021ECE0C
	.public ov103_021ECE18
	.public ov103_021ECE54
	.public ov103_021ECE80
	.public ov103_021ECE94
	.public ov103_021ECEEC
	.public ov103_021ECF48
	.public ov103_021ED00C
	.public ov103_021ED0A0
	.public ov103_021ED0C0
	.public ov103_021ED314
	.public ov103_021ED3E8
	.public ov103_021EDEA8
	.public ov103_021EDF50
	.public ov103_021EE390
	.public ov103_021EE3C0
	.public ov103_021EE550
	.public ov103_021EE644
	.public ov103_021EEA48
	.public ov103_021EEAA0

	.text

	thumb_func_start ov103_021ED314
ov103_021ED314: ; 0x021ED314
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #0
	bl GfGfx_EngineASetPlanes
	mov r0, #0
	bl GfGfx_EngineBSetPlanes
	ldr r0, _021ED3D4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021ED3D8 ; =0x04001050
	strh r1, [r0]
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	ldr r2, _021ED3DC ; =0x04000304
	ldr r0, _021ED3E0 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #3
	mov r1, #0x9d
	lsl r2, r0, #0x11
	bl Heap_Create
	mov r1, #0x2f
	mov r0, #0x9d
	lsl r1, r1, #4
	bl Heap_Alloc
	mov r2, #0x2f
	mov r1, #0
	lsl r2, r2, #4
	str r0, [r4, #0xc]
	bl MI_CpuFill8
	add r0, r4, #0
	bl ov103_021ED00C
	bl ov103_021EC9D8
	add r0, r4, #0
	bl ov103_021EC9E8
	add r0, r4, #0
	bl ov103_021ECC1C
	add r0, r4, #0
	bl ov103_021ECD18
	add r0, r4, #0
	bl ov103_021EE390
	add r0, r4, #0
	bl ov103_021ECD68
	add r0, r4, #0
	bl ov103_021EDEA8
	add r0, r4, #0
	bl ov103_021ECE80
	add r0, r4, #0
	bl ov103_021EEA48
	ldr r0, [r4, #0xc]
	bl ov103_021ECE18
	add r0, r4, #0
	bl ov103_021EE550
	add r0, r4, #0
	bl ov103_021EE644
	add r0, r4, #0
	bl ov103_021ED0C0
	add r0, r4, #0
	bl ov103_021ECEEC
	ldr r0, _021ED3E4 ; =ov103_021EC9B4
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r0, [r4, #0x28]
	pop {r4, pc}
	nop
_021ED3D4: .word 0x04000050
_021ED3D8: .word 0x04001050
_021ED3DC: .word 0x04000304
_021ED3E0: .word 0xFFFF7FFF
_021ED3E4: .word ov103_021EC9B4
	thumb_func_end ov103_021ED314

	thumb_func_start ov103_021ED3E8
ov103_021ED3E8: ; 0x021ED3E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	add r0, r4, #0
	bl ov103_021ECF48
	ldr r0, [r4, #0xc]
	bl ov103_021ECE54
	add r0, r4, #0
	bl ov103_021EEAA0
	add r0, r4, #0
	bl ov103_021ECE94
	add r0, r4, #0
	bl ov103_021EDF50
	add r0, r4, #0
	bl ov103_021ECE0C
	add r0, r4, #0
	bl ov103_021EE3C0
	add r0, r4, #0
	bl ov103_021ECBBC
	add r0, r4, #0
	bl ov103_021ED0A0
	bl sub_02021238
	ldr r1, _021ED458 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	ldr r1, _021ED45C ; =0x04001050
	strh r0, [r1]
	bl GfGfx_EngineASetPlanes
	mov r0, #0
	bl GfGfx_EngineBSetPlanes
	ldr r0, [r4, #0xc]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0x9d
	bl Heap_Destroy
	ldr r0, [r4, #0x28]
	pop {r4, pc}
	nop
_021ED458: .word 0x04000050
_021ED45C: .word 0x04001050
	thumb_func_end ov103_021ED3E8

