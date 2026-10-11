	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222CAD8

	.text

	thumb_func_start ov40_0222CAD8
ov40_0222CAD8: ; 0x0222CAD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, [r0, #0x14]
	ldr r7, [r0, #0x1c]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x18]
	ldr r0, [r0]
	str r1, [sp, #0xc]
	cmp r0, #6
	bhi _0222CB2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CAF8: ; jump table
	.short _0222CB06 - _0222CAF8 - 2 ; case 0
	.short _0222CB2E - _0222CAF8 - 2 ; case 1
	.short _0222CB0E - _0222CAF8 - 2 ; case 2
	.short _0222CB26 - _0222CAF8 - 2 ; case 3
	.short _0222CB1E - _0222CAF8 - 2 ; case 4
	.short _0222CB16 - _0222CAF8 - 2 ; case 5
	.short _0222CB16 - _0222CAF8 - 2 ; case 6
_0222CB06:
	mov r6, #0x3f
	mov r4, #0x18
	mov r5, #0x19
	b _0222CB34
_0222CB0E:
	mov r6, #0x11
	mov r4, #0x12
	mov r5, #0x13
	b _0222CB34
_0222CB16:
	mov r6, #8
	mov r4, #9
	mov r5, #0xa
	b _0222CB34
_0222CB1E:
	mov r6, #0xb
	mov r4, #0xc
	mov r5, #0xd
	b _0222CB34
_0222CB26:
	mov r6, #0xe
	mov r4, #0xf
	mov r5, #0x10
	b _0222CB34
_0222CB2E:
	mov r6, #0x30
	mov r4, #0x16
	mov r5, #0x17
_0222CB34:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0222CBB8 ; =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r6, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0222CBBC ; =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r6, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222CBB8 ; =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r4, #0
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222CBBC ; =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r4, #0
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222CBB8 ; =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r5, #0
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222CBBC ; =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r3, r5, #0
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222CBB8: .word 0x00002711
_0222CBBC: .word 0x00002712
	thumb_func_end ov40_0222CAD8

