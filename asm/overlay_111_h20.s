	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E6180

	.text

	.text
	thumb_func_start ov111_021E6180
ov111_021E6180: ; 0x021E6180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r7, [r5, #0xc]
	ldr r6, [r5, #0x10]
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #5
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #6
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #7
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #8
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	ldr r1, [r5]
	mov r0, #0x14
	bl NARC_New
	str r0, [sp, #0x10]
	mov r4, #0
_021E61EE:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #1
	str r0, [sp, #8]
	ldr r2, [r5, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #9
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	add r4, r4, #1
	cmp r4, #2
	blt _021E61EE
	bl sub_02074490
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	add r5, #0x28
	strb r0, [r5]
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	ldr r0, [sp, #0x10]
	bl NARC_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov111_021E6180

