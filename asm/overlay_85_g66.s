	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6A2C
	.extern ov85_021EA538
	.extern ov85_021EA60C
	.extern ov85_021EA628
	.extern ov85_021EA644
	.extern ov85_021EA660
	.extern ov85_021EA67C

	.text

	.text
	thumb_func_start ov85_021E6A2C
ov85_021E6A2C: ; 0x021E6A2C
	push {r4, r5, lr}
	sub sp, #0x9c
	add r4, r0, #0
	mov r0, #0x66
	bl BgConfig_Alloc
	ldr r1, _021E6B48 ; =0x00000D84
	ldr r2, _021E6B4C ; =0x04000304
	str r0, [r4, r1]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	ldr r5, _021E6B50 ; =ov85_021EA538
	orr r0, r1
	strh r0, [r2]
	add r3, sp, #0x8c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E6B54 ; =ov85_021EA60C
	add r3, sp, #0x70
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
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #1
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x66
	bl BG_ClearCharDataRange
	ldr r5, _021E6B58 ; =ov85_021EA628
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #2
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6B5C ; =ov85_021EA644
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #3
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6B60 ; =ov85_021EA660
	add r3, sp, #0x1c
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
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #6
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6B64 ; =ov85_021EA67C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	ldr r0, _021E6B48 ; =0x00000D84
	mov r3, #0
	ldr r0, [r4, r0]
	bl InitBgFromTemplate
	ldr r0, _021E6B48 ; =0x00000D84
	mov r1, #7
	ldr r0, [r4, r0]
	bl BgClearTilemapBufferAndCommit
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021E6B48: .word 0x00000D84
_021E6B4C: .word 0x04000304
_021E6B50: .word ov85_021EA538
_021E6B54: .word ov85_021EA60C
_021E6B58: .word ov85_021EA628
_021E6B5C: .word ov85_021EA644
_021E6B60: .word ov85_021EA660
_021E6B64: .word ov85_021EA67C
	thumb_func_end ov85_021E6A2C

