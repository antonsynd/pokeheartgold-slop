	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A4AC
	.extern _0210F930

	.text
	thumb_func_start sub_0203A4AC
sub_0203A4AC: ; 0x0203A4AC
	push {r3, lr}
	mov r1, #0x96
	lsl r1, r1, #2
	bl Heap_AllocAtEnd
	str r0, [sp]
	ldr r0, _0203A4D0 ; =_0210F930
	add r1, sp, #0
	bl sub_0201A3F8
	mov r1, #0x96
	ldr r0, [sp]
	lsl r1, r1, #2
	bl DC_FlushRange
	ldr r0, [sp]
	pop {r3, pc}
	nop
_0203A4D0: .word _0210F930
	thumb_func_end sub_0203A4AC

