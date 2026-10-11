	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223894C
	.public ov72_0223897C
	.public ov72_022389C8
	.extern ov72_022387C4
	.extern ov72_02238AEC
	.extern ov72_02238FFC
	.extern ov72_02239098
	.extern ov72_0223B3D8
	.extern ov72_0223B3F4
	.extern ov72_0223B410
	.extern ov72_0223B42C
	.extern ov72_0223B448
	.extern ov72_0223B660

	.text

	.text
	thumb_func_start ov72_0223894C
ov72_0223894C: ; 0x0223894C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov72_022387C4
	bl sub_0203A930
	ldr r4, [r5, #0x1c]
	ldr r1, _02238978 ; =ov72_0223B660
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x1c]
	cmp r4, r1
	beq _02238976
	mov r1, #0xfd
	mov r2, #0
	lsl r1, r1, #4
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_02238976:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02238978: .word ov72_0223B660
	thumb_func_end ov72_0223894C

	thumb_func_start ov72_0223897C
ov72_0223897C: ; 0x0223897C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022389C0 ; =0x00000FD8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238996
	bl SysTask_Destroy
	ldr r0, _022389C0 ; =0x00000FD8
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_02238996:
	add r0, r4, #0
	bl ov72_02239098
	add r0, r4, #0
	bl ov72_02238FFC
	ldr r0, [r4, #4]
	bl ov72_02238AEC
	ldr r0, _022389C4 ; =0x00000FDC
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _022389BA
	mov r0, #5
	pop {r4, pc}
_022389BA:
	mov r0, #1
	pop {r4, pc}
	nop
_022389C0: .word 0x00000FD8
_022389C4: .word 0x00000FDC
	thumb_func_end ov72_0223897C

	thumb_func_start ov72_022389C8
ov72_022389C8: ; 0x022389C8
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _02238AD8 ; =ov72_0223B42C
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
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
	ldr r5, _02238ADC ; =ov72_0223B410
	add r3, sp, #0x54
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
	ldr r5, _02238AE0 ; =ov72_0223B448
	add r3, sp, #0x38
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
	ldr r5, _02238AE4 ; =ov72_0223B3D8
	add r3, sp, #0x1c
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
	ldr r5, _02238AE8 ; =ov72_0223B3F4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x43
	bl BG_ClearCharDataRange
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x43
	bl BG_ClearCharDataRange
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x43
	bl BG_ClearCharDataRange
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_02238AD8: .word ov72_0223B42C
_02238ADC: .word ov72_0223B410
_02238AE0: .word ov72_0223B448
_02238AE4: .word ov72_0223B3D8
_02238AE8: .word ov72_0223B3F4
	thumb_func_end ov72_022389C8

