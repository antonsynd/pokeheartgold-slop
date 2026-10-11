	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241398
	.public ov81_02242FDC
	.public ov81_022430E8

	.text

	thumb_func_start ov81_02241398
ov81_02241398: ; 0x02241398
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl BG_ClearCharDataRange
	ldr r0, [r4, #0x4c]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0x50
	bl ov81_02242FDC
	ldr r0, _022413DC ; =0x0000047C
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _022413D2
	add r4, #0x70
	add r0, r4, #0
	bl ov81_022430E8
_022413D2:
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	pop {r4, pc}
	.balign 4, 0
_022413DC: .word 0x0000047C
	thumb_func_end ov81_02241398

