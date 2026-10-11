	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225D628
	.public ov91_0225D8F0
	.public ov91_0225DBD0
	.public ov91_0225F414
	.public ov91_0225F4C0
	.public ov91_0225F508
	.public ov91_0225F878
	.public ov91_0225FA9C
	.public ov91_0225FB80
	.public ov91_0225FCD8
	.public ov91_0225FDE0
	.public ov91_0225FF00
	.public ov91_022604F4
	.public ov91_02260C48
	.public ov91_02260D14
	.public ov91_02260F50
	.public ov91_022613AC
	.public ov91_02261580

	.text

	thumb_func_start ov91_0225F508
ov91_0225F508: ; 0x0225F508
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0225F638 ; =0x000086CC
	mov r2, #0x20
	add r0, r5, r0
	add r4, r1, #0
	bl HeapExp_FndInitAllocator
	bl ov91_0225F414
	ldr r0, _0225F63C ; =0x00001AB4
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r3, r4, #0
	bl ov91_0225F4C0
	ldr r0, _0225F63C ; =0x00001AB4
	add r1, r4, #0
	add r0, r5, r0
	bl ov91_0225F878
	ldr r0, _0225F63C ; =0x00001AB4
	add r1, r4, #0
	add r0, r5, r0
	bl ov91_0225FA9C
	ldr r0, _0225F63C ; =0x00001AB4
	add r1, r4, #0
	add r0, r5, r0
	bl ov91_0225FCD8
	mov r0, #0xbd
	add r1, r4, #0
	bl NARC_New
	add r6, r0, #0
	ldr r0, _0225F63C ; =0x00001AB4
	add r1, r6, #0
	add r0, r5, r0
	add r2, r4, #0
	bl ov91_0225FB80
	ldr r0, [r5, #0x14]
	ldr r1, _0225F63C ; =0x00001AB4
	str r0, [sp]
	ldr r0, _0225F638 ; =0x000086CC
	str r4, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r0, _0225F640 ; =0x00001C54
	ldr r3, [r5, #0x10]
	add r0, r5, r0
	add r1, r5, r1
	add r2, r6, #0
	bl ov91_02260F50
	ldr r0, _0225F644 ; =0x00001F74
	ldr r3, _0225F638 ; =0x000086CC
	add r0, r5, r0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r5, r3
	bl ov91_0225FF00
	ldr r0, _0225F63C ; =0x00001AB4
	add r1, r6, #0
	add r0, r5, r0
	add r2, r4, #0
	bl ov91_022604F4
	ldr r0, _0225F63C ; =0x00001AB4
	ldr r1, _0225F648 ; =0x00008544
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r1, r5, r1
	add r3, r4, #0
	bl ov91_02260C48
	ldr r0, _0225F63C ; =0x00001AB4
	ldr r1, _0225F64C ; =0x0000854C
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r1, r5, r1
	add r3, r4, #0
	bl ov91_02260D14
	ldr r0, _0225F63C ; =0x00001AB4
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r1, r6, #0
	add r3, r4, #0
	bl ov91_0225FDE0
	ldr r0, [r5, #0x14]
	ldr r1, _0225F63C ; =0x00001AB4
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r2, _0225F650 ; =0x0000877C
	ldr r0, _0225F654 ; =0x00001F38
	ldr r2, [r5, r2]
	ldr r3, [r5, #0x10]
	add r0, r5, r0
	add r1, r5, r1
	bl ov91_0225D8F0
	ldr r0, _0225F63C ; =0x00001AB4
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r3, r4, #0
	bl ov91_0225DBD0
	str r4, [sp]
	ldr r0, _0225F658 ; =0x00001E38
	ldr r1, _0225F63C ; =0x00001AB4
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r5, r0
	add r1, r5, r1
	bl ov91_0225D628
	ldr r1, [r5, #0x14]
	ldr r0, _0225F65C ; =0x000021A8
	lsl r1, r1, #0x18
	add r0, r5, r0
	lsr r1, r1, #0x18
	bl ov91_022613AC
	ldr r0, _0225F660 ; =0x0000862C
	ldr r1, _0225F63C ; =0x00001AB4
	add r0, r5, r0
	add r1, r5, r1
	add r2, r6, #0
	add r3, r4, #0
	bl ov91_02261580
	add r0, r6, #0
	bl NARC_Delete
	ldr r0, _0225F664 ; =0x00001AD0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov90_02258BD4
	ldr r1, _0225F668 ; =0x000021A4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0225F638: .word 0x000086CC
_0225F63C: .word 0x00001AB4
_0225F640: .word 0x00001C54
_0225F644: .word 0x00001F74
_0225F648: .word 0x00008544
_0225F64C: .word 0x0000854C
_0225F650: .word 0x0000877C
_0225F654: .word 0x00001F38
_0225F658: .word 0x00001E38
_0225F65C: .word 0x000021A8
_0225F660: .word 0x0000862C
_0225F664: .word 0x00001AD0
_0225F668: .word 0x000021A4
	thumb_func_end ov91_0225F508

