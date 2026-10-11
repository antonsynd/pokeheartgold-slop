	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public ListMenuCursorNew
	.extern _020F60DC

	.public NNS_G3dGlb

	.text
	thumb_func_start ListMenuCursorNew
ListMenuCursorNew: ; 0x02015788
	push {r3, r4, r5, lr}
	mov r1, #8
	add r5, r0, #0
	bl Heap_Alloc
	add r4, r0, #0
	beq _020157AA
	ldr r0, _020157B0 ; =0x0001020F
	add r1, r5, #0
	str r0, [r4]
	mov r0, #4
	bl String_New
	ldr r1, _020157B4 ; =_020F60DC
	str r0, [r4, #4]
	bl CopyU16ArrayToString
_020157AA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_020157B0: .word 0x0001020F
_020157B4: .word _020F60DC
	thumb_func_end ListMenuCursorNew

