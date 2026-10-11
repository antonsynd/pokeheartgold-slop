	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BA90
	.extern _02244C44
	.extern ov40_0222BC44
	.extern ov40_02244CA0
	.extern ov40_02244CC8
	.extern ov40_02244CE4
	.extern ov40_02244D00
	.extern ov40_02244D1C
	.extern ov40_02244D38
	.extern ov40_02244D54
	.extern ov40_02244D70
	.extern ov40_02244D8C

	.text

	.text
	thumb_func_start ov40_0222BA90
ov40_0222BA90: ; 0x0222BA90
	push {r4, r5, lr}
	sub sp, #0x3c
	add r4, r0, #0
	bl GfGfx_DisableEngineAPlanes
	ldr r5, _0222BC14 ; =_02244C44
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _0222BC18 ; =ov40_02244CA0
	add r3, sp, #4
	mov r2, #5
_0222BAB4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222BAB4
	add r0, sp, #4
	bl GfGfx_SetBanks
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0
	ldr r2, _0222BC1C ; =ov40_02244CC8
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r2, _0222BC20 ; =ov40_02244CE4
	add r0, r4, #0
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _0222BC24 ; =ov40_02244D00
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _0222BC28 ; =ov40_02244D1C
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r2, _0222BC2C ; =ov40_02244D38
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _0222BC30 ; =ov40_02244D54
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _0222BC34 ; =ov40_02244D70
	add r0, r4, #0
	mov r1, #6
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _0222BC38 ; =ov40_02244D8C
	add r0, r4, #0
	mov r1, #7
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl ov40_0222BC44
	mov r0, #8
	str r0, [sp]
	ldr r0, _0222BC3C ; =0x04000050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _0222BC40 ; =0x04001050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	add sp, #0x3c
	pop {r4, r5, pc}
	.balign 4, 0
_0222BC14: .word _02244C44
_0222BC18: .word ov40_02244CA0
_0222BC1C: .word ov40_02244CC8
_0222BC20: .word ov40_02244CE4
_0222BC24: .word ov40_02244D00
_0222BC28: .word ov40_02244D1C
_0222BC2C: .word ov40_02244D38
_0222BC30: .word ov40_02244D54
_0222BC34: .word ov40_02244D70
_0222BC38: .word ov40_02244D8C
_0222BC3C: .word 0x04000050
_0222BC40: .word 0x04001050
	thumb_func_end ov40_0222BA90

