	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02247124
	.extern ov71_0224BBDC

	.text

	.text
	thumb_func_start ov71_02247124
ov71_02247124: ; 0x02247124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, [sp, #0x60]
	add r4, r1, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	cmp r0, #0
	beq _0224713C
	mov r7, #0x19
	lsl r7, r7, #8
	b _02247140
_0224713C:
	mov r7, #0x32
	lsl r7, r7, #6
_02247140:
	mov r0, #0x38
	add r1, r7, #0
	bl Heap_AllocAtEnd
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _02247202
	ldr r3, _02247228 ; =ov71_0224BBDC
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r4, #0
	ldr r0, [r5]
	bne _02247164
	ldr r4, [r0]
	b _02247166
_02247164:
	ldr r4, [r0, #4]
_02247166:
	add r0, r4, #0
	bl AcquireBoxMonLock
	str r0, [sp, #0x20]
	add r0, sp, #0x38
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl GetBoxmonSpriteCharAndPlttNarcIds
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl GetBoxMonData
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _022471A0
	ldr r0, [sp, #0x30]
	lsl r0, r0, #1
	str r0, [sp, #0x30]
_022471A0:
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #1
	bne _022471B8
	ldr r0, _0224722C ; =0x00000147
	cmp r6, r0
	bne _022471B8
	add r6, r0, #0
	add r6, #0xa7
_022471B8:
	ldr r0, [sp, #0x24]
	add r1, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r2, #0x38
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	add r3, sp, #0x28
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	bl sub_02014510
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	bl DC_FlushRange
	ldr r1, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	lsl r1, r1, #0x18
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x24]
	lsr r1, r1, #0x18
	add r3, r7, #0
	bl BG_LoadCharTilesData
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	bl ReleaseBoxMonLock
	ldr r0, [sp, #0x24]
	bl Heap_Free
_02247202:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	blo _0224720C
	mov r2, #4
	b _0224720E
_0224720C:
	mov r2, #0
_0224720E:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x38
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	add r1, sp, #0x28
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x14]
	lsl r3, r3, #5
	bl GfGfxLoader_GXLoadPal
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02247228: .word ov71_0224BBDC
_0224722C: .word 0x00000147
	thumb_func_end ov71_02247124

