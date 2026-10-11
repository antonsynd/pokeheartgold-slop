	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D6EC
	.public ov40_0222D73C
	.public ov40_0222D78C

	.text

	thumb_func_start ov40_0222D6EC
ov40_0222D6EC: ; 0x0222D6EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0222D738 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x31
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222D738 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1a
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222D738 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1b
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222D738: .word 0x00002E94
	thumb_func_end ov40_0222D6EC

	thumb_func_start ov40_0222D73C
ov40_0222D73C: ; 0x0222D73C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0222D788 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x7a
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222D788 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x7b
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222D788 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x7c
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222D788: .word 0x00002E94
	thumb_func_end ov40_0222D73C

	thumb_func_start ov40_0222D78C
ov40_0222D78C: ; 0x0222D78C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0222D7D8 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1e
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222D7D8 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x20
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222D7D8 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1f
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222D7D8: .word 0x00002E94
	thumb_func_end ov40_0222D78C

