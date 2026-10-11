	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E77F8
	.public ov102_021E940C

	.text

	thumb_func_start ov102_021E77F8
ov102_021E77F8: ; 0x021E77F8
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #3
	bhi _021E7860
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E780C: ; jump table
	.short _021E7814 - _021E780C - 2 ; case 0
	.short _021E7834 - _021E780C - 2 ; case 1
	.short _021E7856 - _021E780C - 2 ; case 2
	.short _021E7834 - _021E780C - 2 ; case 3
_021E7814:
	str r0, [r4, #0x38]
	cmp r0, #2
	beq _021E7820
	cmp r0, #3
	beq _021E782A
	pop {r4, pc}
_021E7820:
	ldr r0, [r4, #0x14]
	mov r1, #0x1c
	bl ov102_021E940C
	pop {r4, pc}
_021E782A:
	ldr r0, [r4, #0x14]
	mov r1, #0x1d
	bl ov102_021E940C
	pop {r4, pc}
_021E7834:
	cmp r0, #2
	beq _021E783E
	cmp r0, #3
	beq _021E7848
	b _021E7850
_021E783E:
	ldr r0, [r4, #0x14]
	mov r1, #0x1e
	bl ov102_021E940C
	b _021E7850
_021E7848:
	ldr r0, [r4, #0x14]
	mov r1, #0x1f
	bl ov102_021E940C
_021E7850:
	mov r0, #4
	str r0, [r4, #0x38]
	pop {r4, pc}
_021E7856:
	sub r1, r0, #2
	cmp r1, #1
	bhi _021E7864
	str r0, [r4, #0x38]
	pop {r4, pc}
_021E7860:
	mov r0, #4
	str r0, [r4, #0x38]
_021E7864:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021E77F8

