	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B3B0
	.public ov59_0223B3DC
	.public ov59_0223B414
	.public ov59_0223B434
	.extern ov59_0223B2B4
	.extern ov59_0223C374
	.extern ov59_0223C95C
	.extern ov59_0223C978
	.extern ov59_0223C9B0
	.extern ov59_0223C9CC
	.extern ov59_0223C9E8
	.extern ov59_0223CA04
	.extern ov59_0223CA68

	.text

	.text
	thumb_func_start ov59_0223B3B0
ov59_0223B3B0: ; 0x0223B3B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223B3D8 ; =ov59_0223C95C
	add r4, r1, #0
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0223B3CA
	mov r0, #2
	pop {r3, r4, r5, pc}
_0223B3CA:
	mov r0, #1
	str r0, [r4]
	str r0, [r5, #0x44]
	add r0, r5, #0
	bl ov59_0223B2B4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223B3D8: .word ov59_0223C95C
	thumb_func_end ov59_0223B3B0

	thumb_func_start ov59_0223B3DC
ov59_0223B3DC: ; 0x0223B3DC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223B3EE
	bl SpriteSystem_TransferOam
_0223B3EE:
	ldr r0, [r4, #0x78]
	bl ov59_0223C374
	bl GF_RunVramTransferTasks
	ldr r0, [r4, #0x54]
	bl DoScheduledBgGpuUpdates
	ldr r3, _0223B40C ; =0x027E0000
	ldr r1, _0223B410 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_0223B40C: .word 0x027E0000
_0223B410: .word 0x00003FF8
	thumb_func_end ov59_0223B3DC

	thumb_func_start ov59_0223B414
ov59_0223B414: ; 0x0223B414
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223B430 ; =ov59_0223CA68
	add r3, sp, #0
	mov r2, #5
_0223B41E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223B41E
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_0223B430: .word ov59_0223CA68
	thumb_func_end ov59_0223B414

	thumb_func_start ov59_0223B434
ov59_0223B434: ; 0x0223B434
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	bl ov59_0223B414
	ldr r0, [r4]
	bl BgConfig_Alloc
	add r3, sp, #0x70
	ldr r5, _0223B538 ; =ov59_0223C978
	str r0, [r4, #0x54]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _0223B53C ; =0x04000304
	ldr r0, _0223B540 ; =0xFFFF7FFF
	ldrh r1, [r2]
	ldr r5, _0223B544 ; =ov59_0223C9B0
	add r3, sp, #0x54
	and r0, r1
	strh r0, [r2]
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223B548 ; =ov59_0223C9CC
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223B54C ; =ov59_0223C9E8
	add r3, sp, #0x1c
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223B550 ; =ov59_0223CA04
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0x54]
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r3, [r4]
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223B538: .word ov59_0223C978
_0223B53C: .word 0x04000304
_0223B540: .word 0xFFFF7FFF
_0223B544: .word ov59_0223C9B0
_0223B548: .word ov59_0223C9CC
_0223B54C: .word ov59_0223C9E8
_0223B550: .word ov59_0223CA04
	thumb_func_end ov59_0223B434

