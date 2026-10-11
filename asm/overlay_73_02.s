#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E5C74
	.public ov73_021E5CD8
	.public ov73_021E5D00
	.public ov73_021E5D20
	.public ov73_021E5E0C
	.public ov73_021E72F4
	.public ov73_021E7740
	.public ov73_021EA52A
	.public ov73_021EA52B
	.public ov73_021EA540
	.public ov73_021EA578
	.public ov73_021EA594
	.public ov73_021EA5B0
	.public ov73_021EA5CC
	.public ov73_021EA5E8

	.text

	thumb_func_start ov73_021E5C74
ov73_021E5C74: ; 0x021E5C74
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	add r1, #0xc
	cmp r0, #0
	beq _021E5CCE
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	lsl r2, r0, #1
	ldr r0, _021E5CD0 ; =ov73_021EA52A
	ldrb r0, [r0, r2]
	cmp r3, r0
	ble _021E5CBE
	mov r0, #0
	str r0, [r1, #8]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	lsl r3, r2, #1
	ldr r2, _021E5CD4 ; =ov73_021EA52B
	ldrb r2, [r2, r3]
	cmp r2, #0xff
	bne _021E5CA4
	str r0, [r1, #4]
_021E5CA4:
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	lsl r2, r1, #1
	ldr r1, _021E5CD4 ; =ov73_021EA52B
	ldrb r1, [r1, r2]
	mov r2, #0x20
	lsl r1, r1, #5
	add r0, r0, r1
	mov r1, #0
	bl GX_LoadOBJPltt
	b _021E5CC4
_021E5CBE:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021E5CC4:
	mov r0, #0xde
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov73_021E72F4
_021E5CCE:
	pop {r4, pc}
	.balign 4, 0
_021E5CD0: .word ov73_021EA52A
_021E5CD4: .word ov73_021EA52B
	thumb_func_end ov73_021E5C74

	thumb_func_start ov73_021E5CD8
ov73_021E5CD8: ; 0x021E5CD8
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r0, [r4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E5CF8 ; =0x027E0000
	ldr r1, _021E5CFC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5CF8: .word 0x027E0000
_021E5CFC: .word 0x00003FF8
	thumb_func_end ov73_021E5CD8

	thumb_func_start ov73_021E5D00
ov73_021E5D00: ; 0x021E5D00
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5D1C ; =ov73_021EA5E8
	add r3, sp, #0
	mov r2, #5
_021E5D0A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5D0A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5D1C: .word ov73_021EA5E8
	thumb_func_end ov73_021E5D00

	thumb_func_start ov73_021E5D20
ov73_021E5D20: ; 0x021E5D20
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _021E5DF8 ; =ov73_021EA540
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E5DFC ; =ov73_021EA5B0
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E00 ; =ov73_021EA5CC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E04 ; =ov73_021EA578
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E08 ; =ov73_021EA594
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x32
	bl BG_ClearCharDataRange
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x32
	bl BG_ClearCharDataRange
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_021E5DF8: .word ov73_021EA540
_021E5DFC: .word ov73_021EA5B0
_021E5E00: .word ov73_021EA5CC
_021E5E04: .word ov73_021EA578
_021E5E08: .word ov73_021EA594
	thumb_func_end ov73_021E5D20

	thumb_func_start ov73_021E5E0C
ov73_021E5E0C: ; 0x021E5E0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r7, #0
	add r6, r0, #0
	add r4, r0, #0
	add r5, r0, #0
_021E5E1C:
	mov r0, #8
	mov r1, #0x32
	bl String_New
	str r0, [r6, #0x2c]
	mov r0, #0xce
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021E5EC8 ; =0x00004A3C
	add r7, r7, #1
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021E5ECC ; =0x00004A44
	add r4, #8
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x36
	lsl r0, r0, #4
	str r1, [r6, r0]
	add r6, r6, #4
	add r5, #0x10
	cmp r7, #5
	blt _021E5E1C
	mov r0, #0xb4
	mov r1, #0x32
	bl String_New
	ldr r1, [sp]
	str r0, [r1, #0x44]
	mov r0, #0x28
	mov r1, #0x32
	bl String_New
	ldr r1, [sp]
	mov r2, #0
	str r0, [r1, #0x48]
	mov r1, #0xc6
	ldr r0, [sp]
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r2, [sp]
	ldr r0, [r0, #0x28]
	ldr r2, [r2, #0x48]
	mov r1, #0x11
	bl ReadMsgDataIntoString
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov73_021E7740
	mov r0, #0x32
	bl sub_0205B4A4
	mov r2, #0xdf
	ldr r1, [sp]
	lsl r2, r2, #2
	str r0, [r1, r2]
	ldr r2, [sp]
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r0, [sp, #4]
	mov r1, #7
	add r2, #0x1c
	mov r3, #0x32
	bl GfGfxLoader_GetPlttDataFromOpenNarc
	ldr r1, [sp]
	ldr r2, _021E5ED0 ; =0x00004A18
	str r0, [r1, #0x18]
	mov r0, #0
	str r0, [r1, r2]
	add r3, r2, #4
	mov r4, #2
	str r4, [r1, r3]
	sub r2, r2, #3
	strb r0, [r1, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E5EC8: .word 0x00004A3C
_021E5ECC: .word 0x00004A44
_021E5ED0: .word 0x00004A18
	thumb_func_end ov73_021E5E0C

