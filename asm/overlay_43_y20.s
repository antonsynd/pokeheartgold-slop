	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A550
	.public ov43_0222A570
	.extern ov43_0222EDC8
	.extern ov43_0222EE5C
	.extern ov43_0222EFFC

	.text

	.text
	thumb_func_start ov43_0222A550
ov43_0222A550: ; 0x0222A550
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0222A56C ; =ov43_0222EE5C
	add r3, sp, #0
	mov r2, #5
_0222A55A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222A55A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_0222A56C: .word ov43_0222EE5C
	thumb_func_end ov43_0222A550

	thumb_func_start ov43_0222A570
ov43_0222A570: ; 0x0222A570
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl BgConfig_Alloc
	add r3, sp, #0x10
	ldr r4, _0222A664 ; =ov43_0222EDC8
	str r0, [r5]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r6, _0222A668 ; =ov43_0222EFFC
	mov r4, #0
_0222A598:
	lsl r1, r4, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	mov r2, #0
	add r3, r7, #0
	bl BG_ClearCharDataRange
	lsl r1, r4, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #7
	blt _0222A598
	mov r0, #0x16
	lsl r0, r0, #4
	str r0, [sp]
	str r7, [sp, #4]
	mov r2, #0
	ldr r0, [r5, #0x58]
	mov r1, #5
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0xa0
	str r0, [sp]
	str r7, [sp, #4]
	mov r1, #4
	ldr r0, [r5, #0x58]
	add r2, r1, #0
	mov r3, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r5, #0x58]
	ldr r2, [r5]
	mov r1, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r5, #0x58]
	ldr r2, [r5]
	mov r1, #7
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r1, #6
	ldr r0, [r5, #0x58]
	ldr r2, [r5]
	add r3, r1, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r5, #0x58]
	ldr r2, [r5]
	mov r1, #0xa
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r5, #0x58]
	ldr r2, [r5]
	mov r1, #8
	mov r3, #6
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222A664: .word ov43_0222EDC8
_0222A668: .word ov43_0222EFFC
	thumb_func_end ov43_0222A570

