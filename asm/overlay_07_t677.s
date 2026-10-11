	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02233228
	.extern ov07_02232F74
	.extern ov07_02237200
	.extern ov07_0223730E
	.extern ov07_02237310

	.text

	.text
	thumb_func_start ov07_02233228
ov07_02233228: ; 0x02233228
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02233238
	cmp r1, #1
	beq _0223324E
	b _022332AE
_02233238:
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223324E:
	ldr r1, [r5, #0xc]
	mov r0, #6
	add r2, r1, #0
	mul r2, r0
	ldr r0, _022332B8 ; =ov07_0223730E
	ldr r1, _022332BC ; =ov07_02237310
	ldrsh r0, [r0, r2]
	ldrh r1, [r1, r2]
	str r0, [sp]
	ldr r0, [r5, #0x30]
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r5, #0xc]
	ldr r4, _022332C0 ; =ov07_02237200
	add r0, r0, #1
	str r0, [r5, #0xc]
	mov r6, #0
	mov r7, #0x75
_02233272:
	ldr r1, [r5, #0xc]
	ldr r0, [r4]
	cmp r1, r0
	bne _02233286
	ldr r0, [r4, #4]
	add r1, r7, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0200602C
_02233286:
	add r6, r6, #1
	add r4, #8
	cmp r6, #5
	blt _02233272
	ldr r0, [r5, #0xc]
	cmp r0, #0x14
	bgt _0223329A
	ldr r0, [sp]
	cmp r0, #0xff
	bne _022332A2
_0223329A:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022332B4
_022332A2:
	ldr r0, [r5, #0x30]
	ldr r2, [sp]
	mov r1, #0
	bl ManagedSprite_OffsetPositionXY
	b _022332B4
_022332AE:
	mov r1, #0xe
	bl ov07_02232F74
_022332B4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022332B8: .word ov07_0223730E
_022332BC: .word ov07_02237310
_022332C0: .word ov07_02237200
	thumb_func_end ov07_02233228

