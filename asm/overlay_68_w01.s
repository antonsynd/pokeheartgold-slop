	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public MoveRelearner_Main
	.extern ov68_021E5F50
	.extern ov68_021E5F68
	.extern ov68_021E6058
	.extern ov68_021E6078
	.extern ov68_021E60D8
	.extern ov68_021E614C
	.extern ov68_021E61A0
	.extern ov68_021E61B8
	.extern ov68_021E61EC
	.extern ov68_021E734C
	.extern ov68_021E74C0
	.extern ov68_021E74D8
	.extern ov68_021E7568
	.extern ov68_021E7AD8
	.extern ov68_021E7B6C
	.extern ov68_021E7B8C

	.text

	.text
	thumb_func_start MoveRelearner_Main
MoveRelearner_Main: ; 0x021E5968
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0xf
	bhi _021E5A22
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5984: ; jump table
	.short _021E59A4 - _021E5984 - 2 ; case 0
	.short _021E59AC - _021E5984 - 2 ; case 1
	.short _021E59B4 - _021E5984 - 2 ; case 2
	.short _021E59BC - _021E5984 - 2 ; case 3
	.short _021E59C4 - _021E5984 - 2 ; case 4
	.short _021E59CC - _021E5984 - 2 ; case 5
	.short _021E59D4 - _021E5984 - 2 ; case 6
	.short _021E59DC - _021E5984 - 2 ; case 7
	.short _021E59E4 - _021E5984 - 2 ; case 8
	.short _021E59EC - _021E5984 - 2 ; case 9
	.short _021E59F0 - _021E5984 - 2 ; case 10
	.short _021E59F8 - _021E5984 - 2 ; case 11
	.short _021E5A02 - _021E5984 - 2 ; case 12
	.short _021E5A0C - _021E5984 - 2 ; case 13
	.short _021E5A14 - _021E5984 - 2 ; case 14
	.short _021E5A1C - _021E5984 - 2 ; case 15
_021E59A4:
	bl ov68_021E5F50
	str r0, [r4]
	b _021E5A22
_021E59AC:
	bl ov68_021E5F68
	str r0, [r4]
	b _021E5A22
_021E59B4:
	bl ov68_021E6058
	str r0, [r4]
	b _021E5A22
_021E59BC:
	bl ov68_021E6078
	str r0, [r4]
	b _021E5A22
_021E59C4:
	bl ov68_021E60D8
	str r0, [r4]
	b _021E5A22
_021E59CC:
	bl ov68_021E614C
	str r0, [r4]
	b _021E5A22
_021E59D4:
	bl ov68_021E61A0
	str r0, [r4]
	b _021E5A22
_021E59DC:
	bl ov68_021E61B8
	str r0, [r4]
	b _021E5A22
_021E59E4:
	bl ov68_021E61EC
	str r0, [r4]
	b _021E5A22
_021E59EC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E59F0:
	bl ov68_021E74C0
	str r0, [r4]
	b _021E5A22
_021E59F8:
	bl ov68_021E74D8
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5A02:
	bl ov68_021E7568
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5A0C:
	bl ov68_021E7AD8
	str r0, [r4]
	b _021E5A22
_021E5A14:
	bl ov68_021E7B6C
	str r0, [r4]
	b _021E5A22
_021E5A1C:
	bl ov68_021E7B8C
	str r0, [r4]
_021E5A22:
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov68_021E734C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl SpriteSystem_DrawSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end MoveRelearner_Main

