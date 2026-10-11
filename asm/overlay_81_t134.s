	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243140

	.text

	.text
	thumb_func_start ov81_02243140
ov81_02243140: ; 0x02243140
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r4, r2, #0
	mov r0, #0x64
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x87
	mov r2, #1
	add r3, sp, #0x24
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	str r0, [sp, #0x20]
	cmp r4, #0
	bne _0224316A
	mov r0, #0xb
	str r0, [sp, #0x10]
	mov r0, #7
	str r0, [sp, #0x18]
	b _02243172
_0224316A:
	mov r0, #0xe
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x18]
_02243172:
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bls _022431D2
_02243184:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r4, #0
	add r2, r1, r0
	lsl r1, r0, #6
	ldr r0, [sp, #0x1c]
	add r5, r0, r1
	lsl r0, r2, #0x18
	lsr r6, r0, #0x18
_02243196:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	lsl r2, r4, #1
	ldrh r3, [r5, r2]
	ldr r2, _022431DC ; =0x000003D9
	add r0, r7, #0
	add r2, r3, r2
	lsl r2, r2, #0x10
	mov r1, #5
	lsr r2, r2, #0x10
	add r3, r4, #0
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x20
	blo _02243196
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	blo _02243184
_022431D2:
	ldr r0, [sp, #0x20]
	bl Heap_Free
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022431DC: .word 0x000003D9
	thumb_func_end ov81_02243140

