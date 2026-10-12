	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A4D4
	.extern _0210F930

	.text
	thumb_func_start sub_0203A4D4
sub_0203A4D4: ; 0x0203A4D4
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x96
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #2
	add r4, r2, #0
	bl Heap_AllocAtEnd
	str r0, [sp, #4]
	cmp r0, #0
	beq _0203A52A
	ldr r0, _0203A530 ; =_0210F930
	add r1, sp, #4
	bl sub_0201A3F8
	mov r1, #0x96
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	bl DC_FlushRange
	ldr r0, [sp, #4]
	add r1, sp, #0
	bl NNS_G2dGetUnpackedPaletteData
	cmp r5, #1
	bne _0203A518
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadOBJPltt
	b _0203A524
_0203A518:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_0203A524:
	ldr r0, [sp, #4]
	bl Heap_Free
_0203A52A:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0203A530: .word _0210F930
	thumb_func_end sub_0203A4D4

