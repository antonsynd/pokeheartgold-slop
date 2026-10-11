	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223311C

	.text

	thumb_func_start ov40_0223311C
ov40_0223311C: ; 0x0223311C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _02233168 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x32
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233168 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1c
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233168 ; =0x00002E94
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x1d
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02233168: .word 0x00002E94
	thumb_func_end ov40_0223311C

