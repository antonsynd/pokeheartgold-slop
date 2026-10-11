	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E6694
	.public ov111_021E66DC

	.text

	.text
	thumb_func_start ov111_021E6694
ov111_021E6694: ; 0x021E6694
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bne _021E669E
	bl GF_AssertFail
_021E669E:
	mov r4, #0
	add r5, r7, #0
	add r6, r4, #0
_021E66A4:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E66B0
	bl Sprite_DeleteAndFreeResources
	str r6, [r5, #4]
_021E66B0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E66A4
	add r4, r7, #0
	mov r5, #0
	add r4, #0xc
_021E66BE:
	add r0, r4, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	bl RemoveWindow
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #6
	blt _021E66BE
	add r0, r7, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov111_021E6694

	thumb_func_start ov111_021E66DC
ov111_021E66DC: ; 0x021E66DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x20
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	str r6, [r4, #4]
	str r5, [r4]
	ldr r0, [sp]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	add r1, sp, #8
	str r0, [r4, #0x10]
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	strb r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov111_021E66DC

