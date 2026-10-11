	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E5900
	.extern ov85_021E6764
	.extern ov85_021E678C
	.extern ov85_021E752C
	.extern ov85_021E7650
	.extern ov85_021E7D08
	.extern ov85_021E7E3C
	.extern ov85_021E7F74
	.extern ov85_021E80E0
	.extern ov85_021E82F8
	.extern ov85_021E83E0
	.extern ov85_021EA788

	.text

	.text
	thumb_func_start ov85_021E5900
ov85_021E5900: ; 0x021E5900
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl OverlayManager_GetArgs
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_020398D4
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #2
	bl sub_0201A728
	mov r2, #2
	mov r0, #3
	mov r1, #0x66
	lsl r2, r2, #0x12
	bl Heap_Create
	ldr r1, _021E5A28 ; =0x00000DCC
	add r0, r5, #0
	mov r2, #0x66
	bl OverlayManager_CreateAndGetData
	ldr r2, _021E5A28 ; =0x00000DCC
	add r6, r0, #0
	mov r1, #0
	bl memset
	add r0, r6, #0
	str r6, [r4, #0x34]
	add r0, #0xcc
	str r4, [r0]
	add r0, r6, #0
	ldr r1, [r4, #0x30]
	add r0, #0xd0
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xcc
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl SaveArray_Party_Get
	str r0, [r6, #0x24]
	mov r0, #0xbb
	mov r1, #0x66
	bl NARC_New
	mov r1, #0x36
	lsl r1, r1, #6
	str r0, [r6, r1]
	mov r0, #8
	mov r1, #0x66
	bl GF_CreateVramTransferManager
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	add r0, r6, #0
	bl ov85_021E678C
	ldr r0, _021E5A2C ; =ov85_021E6764
	add r1, r6, #0
	bl Main_SetVBlankIntrCB
	add r0, r6, #0
	bl ov85_021E752C
	add r0, r6, #0
	bl ov85_021E7650
	mov r4, #0
	add r5, r4, #0
	bl sub_0203769C
	add r1, r6, #0
	add r1, #0xd4
	mov ip, r1
	add r1, r6, #0
	add r1, #0xcc
	ldr r7, [r1]
	mov r3, #1
	ldr r1, [r7, #0xc]
_021E59B6:
	add r2, r3, #0
	lsl r2, r4
	tst r2, r1
	beq _021E59C4
	cmp r4, r0
	beq _021E59CA
	add r5, r5, #1
_021E59C4:
	add r4, r4, #1
	cmp r4, #5
	blt _021E59B6
_021E59CA:
	ldr r1, [r7, #8]
	mov r0, #0xa
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021E5A30 ; =ov85_021EA788
	lsl r1, r5, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	lsl r1, r0, #0xc
	mov r0, ip
	str r1, [r0, #0x40]
	bl GF_GetCurrentPlayingBGM
	str r0, [r6, #0x1c]
	add r0, r6, #0
	bl ov85_021E7D08
	add r0, r6, #0
	bl ov85_021E7E3C
	add r0, r6, #0
	bl ov85_021E7F74
	add r0, r6, #0
	bl ov85_021E80E0
	add r0, r6, #0
	bl ov85_021E82F8
	add r0, r6, #0
	bl ov85_021E83E0
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E5A28: .word 0x00000DCC
_021E5A2C: .word ov85_021E6764
_021E5A30: .word ov85_021EA788
	thumb_func_end ov85_021E5900

