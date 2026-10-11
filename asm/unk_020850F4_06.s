#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_020850F4.inc"
	.include "global.inc"
	.public sub_0208545C
	.public sub_020855CC
	.extern _02102630
	.extern _02102658
	.extern _021026AC

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208545C
sub_0208545C: ; 0x0208545C
	push {r4, r5, lr}
	sub sp, #0xec
	add r4, r0, #0
	bl GfGfx_DisableEngineAPlanes
	ldr r5, _020855BC ; =_02102630
	add r3, sp, #0
	mov r2, #5
_0208546C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208546C
	add r0, sp, #0
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
	ldr r5, _020855C0 ; =_02102658
	add r3, sp, #0x98
	mov r2, #0xa
_020854B8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020854B8
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	add r2, sp, #0x98
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xb4
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xd0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #3
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
	ldr r5, _020855C4 ; =_021026AC
	add r3, sp, #0x28
	mov r2, #0xe
_02085526:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02085526
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0x28
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x44
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x60
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x7c
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
	add r1, r0, #0
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
	ldr r0, _020855C8 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0xec
	pop {r4, r5, pc}
	.balign 4, 0
_020855BC: .word _02102630
_020855C0: .word _02102658
_020855C4: .word _021026AC
_020855C8: .word gSystem + 0x60
	thumb_func_end sub_0208545C

	thumb_func_start sub_020855CC
sub_020855CC: ; 0x020855CC
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PaletteData_PushTransparentBuffers
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl DoScheduledBgGpuUpdates
	ldr r3, _020855FC ; =OS_IRQTable
	ldr r1, _02085600 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_020855FC: .word OS_IRQTable
_02085600: .word 0x00003FF8
	thumb_func_end sub_020855CC

