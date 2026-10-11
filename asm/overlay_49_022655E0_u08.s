	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265760

    .text

	.text
	thumb_func_start ov49_02265760
ov49_02265760: ; 0x02265760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _022657A8 ; =NNS_GfdDefaultFuncFreeTexVram
	add r5, r0, #0
	mov r4, #0
_0226576A:
	ldr r0, _022657AC ; =0x00010640
	ldr r0, [r5, r0]
	bl NNS_G3dGetTex
	add r1, sp, #4
	add r2, sp, #0
	add r6, r0, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r0, [sp, #4]
	ldr r1, [r7]
	blx r1
	ldr r0, [sp]
	ldr r1, [r7]
	blx r1
	add r0, r6, #0
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _022657B0 ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r1, [r1]
	blx r1
	ldr r0, _022657AC ; =0x00010640
	ldr r0, [r5, r0]
	bl Heap_Free
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _0226576A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022657A8: .word NNS_GfdDefaultFuncFreeTexVram
_022657AC: .word 0x00010640
_022657B0: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end ov49_02265760

