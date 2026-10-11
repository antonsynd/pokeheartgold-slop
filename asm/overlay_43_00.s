	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public PalPad_Exit
	.public PalPad_Init
	.public PalPad_Main
	.public ov43_0222A148
	.public ov43_0222A290
	.public ov43_0222A2F0
	.public ov43_0222A48C
	.public ov43_0222A500
	.public ov43_0222A520
	.public ov43_0222AE5C
	.public ov43_0222AE64
	.public ov43_0222B098
	.public ov43_0222B5A8
	.public ov43_0222B5D0
	.public ov43_0222B93C
	.public ov43_0222CBAC
	.public ov43_0222CBB4
	.public ov43_0222CD34
	.public ov43_0222CD90
	.public ov43_0222CD98
	.public ov43_0222CE0C
	.public ov43_0222D134
	.public ov43_0222D15C
	.public ov43_0222D228

	.text

	thumb_func_start PalPad_Init
PalPad_Init: ; 0x02229EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02229FA4 ; =FS_OVERLAY_ID(OVY_42)
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
_02229FA4: .word FS_OVERLAY_ID(OVY_42)
_02229FA8: .word 0x000005A4
_02229FAC: .word 0x00000408
_02229FB0: .word ov43_0222A148
	thumb_func_end PalPad_Init

	thumb_func_start PalPad_Main
PalPad_Main: ; 0x02229FB4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _02229FCC
	cmp r0, #1
	beq _0222A084
	b _0222A098
_02229FCC:
	ldr r0, [r4]
	cmp r0, #5
	bhi _0222A064
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02229FDE: ; jump table
	.short _02229FEA - _02229FDE - 2 ; case 0
	.short _0222A000 - _02229FDE - 2 ; case 1
	.short _0222A016 - _02229FDE - 2 ; case 2
	.short _0222A032 - _02229FDE - 2 ; case 3
	.short _0222A048 - _02229FDE - 2 ; case 4
	.short _0222A05E - _02229FDE - 2 ; case 5
_02229FEA:
	mov r1, #0xa
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0x6c
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222AE64
	add r6, r0, #0
	b _0222A064
_0222A000:
	mov r1, #0xb
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0xac
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222B5D0
	add r6, r0, #0
	b _0222A064
_0222A016:
	mov r0, #0x33
	str r0, [sp]
	mov r0, #0xf
	mov r2, #0x85
	lsl r0, r0, #6
	lsl r2, r2, #2
	add r0, r4, r0
	add r1, r4, #0
	add r2, r4, r2
	add r3, r4, #4
	bl ov43_0222CBB4
	add r6, r0, #0
	b _0222A064
_0222A032:
	mov r0, #0xf3
	mov r1, #0x85
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222CD98
	add r6, r0, #0
	b _0222A064
_0222A048:
	ldr r0, _0222A0A4 ; =0x00000408
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x33
	bl ov43_0222D15C
	add r6, r0, #0
	b _0222A064
_0222A05E:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0222A064:
	cmp r6, #1
	bne _0222A098
	ldr r0, _0222A0A8 ; =0x0000021D
	ldrb r1, [r4, r0]
	str r1, [r4]
	add r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	strb r1, [r4, r0]
	mov r0, #0x5a
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	str r0, [r5]
	b _0222A098
_0222A084:
	mov r0, #0x5a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _0222A098
	mov r0, #0
	str r0, [r5]
_0222A098:
	add r0, r4, #4
	bl ov43_0222A500
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222A0A4: .word 0x00000408
_0222A0A8: .word 0x0000021D
	thumb_func_end PalPad_Main

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

