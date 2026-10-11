	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222D9E8
	.public ov40_0223992C
	.public ov40_02239954
	.public ov40_022399B8
	.public ov40_022453AC

	.text

	thumb_func_start ov40_022399B8
ov40_022399B8: ; 0x022399B8
	push {r3, r4, r5, lr}
	ldr r1, _02239A48 ; =0x00000B38
	add r5, r0, #0
	mov r0, #0x6d
	bl Heap_Alloc
	ldr r2, _02239A48 ; =0x00000B38
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	add r0, #0xc
	ldr r0, [r5, r0]
	str r0, [r4, #0x1c]
	mov r0, #3
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02087E1C
	cmp r0, #0
	bne _022399EE
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
_022399EE:
	mov r0, #3
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov40_0223992C
	ldr r1, [r5, #0x48]
	ldr r0, _02239A4C ; =0x00000744
	str r1, [r4, r0]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov40_0222D9E8
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02239A50 ; =ov40_022453AC
	ldr r2, _02239A54 ; =ov40_02239954
	mov r1, #3
	add r3, r5, #0
	bl TouchHitboxController_Create
	add r4, #0xdc
	str r0, [r4]
	add r0, r5, #0
	mov r1, #1
	bl ov40_0222BF80
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02239A48: .word 0x00000B38
_02239A4C: .word 0x00000744
_02239A50: .word ov40_022453AC
_02239A54: .word ov40_02239954
	thumb_func_end ov40_022399B8

