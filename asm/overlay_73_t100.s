#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E85AC
	.public ov73_021E85DC
	.public ov73_021E8628
	.extern ov73_021E8440
	.extern ov73_021E870C
	.extern ov73_021E8B20
	.extern ov73_021E8BBC
	.extern ov73_021EA6D4
	.extern ov73_021EA6F0
	.extern ov73_021EA70C
	.extern ov73_021EA728
	.extern ov73_021EA848

	.text

	.text
	thumb_func_start ov73_021E85AC
ov73_021E85AC: ; 0x021E85AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov73_021E8440
	bl sub_0203A930
	ldr r4, [r5, #0x1c]
	ldr r1, _021E85D8 ; =ov73_021EA848
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x1c]
	cmp r4, r1
	beq _021E85D6
	mov r1, #0xf9
	mov r2, #0
	lsl r1, r1, #4
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_021E85D6:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E85D8: .word ov73_021EA848
	thumb_func_end ov73_021E85AC

	thumb_func_start ov73_021E85DC
ov73_021E85DC: ; 0x021E85DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E8620 ; =0x00000F98
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E85F6
	bl SysTask_Destroy
	ldr r0, _021E8620 ; =0x00000F98
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_021E85F6:
	add r0, r4, #0
	bl ov73_021E8BBC
	add r0, r4, #0
	bl ov73_021E8B20
	ldr r0, [r4, #4]
	bl ov73_021E870C
	ldr r0, _021E8624 ; =0x00000F9C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _021E861A
	mov r0, #5
	pop {r4, pc}
_021E861A:
	mov r0, #1
	pop {r4, pc}
	nop
_021E8620: .word 0x00000F98
_021E8624: .word 0x00000F9C
	thumb_func_end ov73_021E85DC

	thumb_func_start ov73_021E8628
ov73_021E8628: ; 0x021E8628
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _021E86FC ; =ov73_021EA70C
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
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
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E8700 ; =ov73_021EA6F0
	add r3, sp, #0x38
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
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r5, _021E8704 ; =ov73_021EA728
	add r3, sp, #0x1c
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
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E8708 ; =ov73_021EA6D4
	add r3, sp, #0
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
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x96
	bl BG_ClearCharDataRange
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x96
	bl BG_ClearCharDataRange
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_021E86FC: .word ov73_021EA70C
_021E8700: .word ov73_021EA6F0
_021E8704: .word ov73_021EA728
_021E8708: .word ov73_021EA6D4
	thumb_func_end ov73_021E8628

