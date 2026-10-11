	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02237D40
	.public ov59_02237DA8
	.extern ov59_02237E94
	.extern ov59_02237F3C
	.extern ov59_02237FA4
	.extern ov59_0223801C
	.extern ov59_02238068
	.extern ov59_022380E4
	.extern ov59_022380EC
	.extern ov59_0223811C
	.extern ov59_02238124
	.extern ov59_02238218
	.extern ov59_022382F4
	.extern ov59_0223834C
	.extern ov59_022383B4
	.extern ov59_022384E4
	.extern ov59_02238578
	.extern ov59_0223858C
	.extern ov59_02238624

	.text

	.text
	thumb_func_start ov59_02237D40
ov59_02237D40: ; 0x02237D40
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	cmp r1, #0
	beq _02237D52
	cmp r1, #1
	beq _02237D94
	b _02237DA4
_02237D52:
	bl ov59_02238624
	mov r2, #2
	mov r0, #3
	mov r1, #0x86
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r1, #0xa7
	add r0, r6, #0
	lsl r1, r1, #2
	mov r2, #0x86
	bl OverlayManager_CreateAndGetData
	mov r2, #0xa7
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x86
	str r0, [r4]
	add r0, r6, #0
	bl OverlayManager_GetArgs
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov59_02237E94
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02237DA4
_02237D94:
	bl OverlayManager_GetData
	bl ov59_02237F3C
	cmp r0, #0
	beq _02237DA4
	mov r0, #1
	pop {r4, r5, r6, pc}
_02237DA4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_02237D40

	thumb_func_start ov59_02237DA8
ov59_02237DA8: ; 0x02237DA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0x10
	bhi _02237E5A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02237DC4: ; jump table
	.short _02237DE6 - _02237DC4 - 2 ; case 0
	.short _02237DEE - _02237DC4 - 2 ; case 1
	.short _02237DF6 - _02237DC4 - 2 ; case 2
	.short _02237DFE - _02237DC4 - 2 ; case 3
	.short _02237E06 - _02237DC4 - 2 ; case 4
	.short _02237E0E - _02237DC4 - 2 ; case 5
	.short _02237E16 - _02237DC4 - 2 ; case 6
	.short _02237E1E - _02237DC4 - 2 ; case 7
	.short _02237E26 - _02237DC4 - 2 ; case 8
	.short _02237E2E - _02237DC4 - 2 ; case 9
	.short _02237E36 - _02237DC4 - 2 ; case 10
	.short _02237E3E - _02237DC4 - 2 ; case 11
	.short _02237E5A - _02237DC4 - 2 ; case 12
	.short _02237E5A - _02237DC4 - 2 ; case 13
	.short _02237E46 - _02237DC4 - 2 ; case 14
	.short _02237E4E - _02237DC4 - 2 ; case 15
	.short _02237E56 - _02237DC4 - 2 ; case 16
_02237DE6:
	bl ov59_02237FA4
	str r0, [r4]
	b _02237E5A
_02237DEE:
	bl ov59_0223801C
	str r0, [r4]
	b _02237E5A
_02237DF6:
	bl ov59_02238068
	str r0, [r4]
	b _02237E5A
_02237DFE:
	bl ov59_022380E4
	str r0, [r4]
	b _02237E5A
_02237E06:
	bl ov59_022380EC
	str r0, [r4]
	b _02237E5A
_02237E0E:
	bl ov59_0223811C
	str r0, [r4]
	b _02237E5A
_02237E16:
	bl ov59_02238124
	str r0, [r4]
	b _02237E5A
_02237E1E:
	bl ov59_02238218
	str r0, [r4]
	b _02237E5A
_02237E26:
	bl ov59_022382F4
	str r0, [r4]
	b _02237E5A
_02237E2E:
	bl ov59_0223834C
	str r0, [r4]
	b _02237E5A
_02237E36:
	bl ov59_022383B4
	str r0, [r4]
	b _02237E5A
_02237E3E:
	bl ov59_022384E4
	str r0, [r4]
	b _02237E5A
_02237E46:
	bl ov59_02238578
	str r0, [r4]
	b _02237E5A
_02237E4E:
	bl ov59_0223858C
	str r0, [r4]
	b _02237E5A
_02237E56:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02237E5A:
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl SpriteSystem_DrawSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_02237DA8

