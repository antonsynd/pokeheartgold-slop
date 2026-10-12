#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E944C
	.public ov73_021E955C
	.public ov73_021E9598
	.public ov73_021E95CC
	.public ov73_021E9618
	.public ov73_021E96EC
	.public ov73_021E9728
	.extern ov73_021E83EC
	.extern ov73_021E9FF8
	.extern ov73_021EA15C
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E944C
ov73_021E944C: ; 0x021E944C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _021E953A
	bl ov72_02237B74
	ldr r1, _021E9558 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _021E9550
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E9476: ; jump table
	.short _021E9516 - _021E9476 - 2 ; case 0
	.short _021E9506 - _021E9476 - 2 ; case 1
	.short _021E9526 - _021E9476 - 2 ; case 2
	.short _021E94F6 - _021E9476 - 2 ; case 3
	.short _021E94F6 - _021E9476 - 2 ; case 4
	.short _021E94E6 - _021E9476 - 2 ; case 5
	.short _021E94D6 - _021E9476 - 2 ; case 6
	.short _021E9486 - _021E9476 - 2 ; case 7
_021E9486:
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0x90
	add r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	add r1, #0xa0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202D7C0
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x13
	bl ov73_021E83EC
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov00_021ECB94
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x94
	add r4, #0x9c
	ldr r1, [r1]
	ldr r2, [r4]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0
	bl sub_0202D678
	b _021E9550
_021E94D6:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E94E6:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E94F6:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0xb
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9506:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9516:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9526:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E9550
_021E953A:
	ldr r0, _021E9558 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E9550
	bl sub_020399EC
_021E9550:
	mov r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E9558: .word 0x00000F94
	thumb_func_end ov73_021E944C

	thumb_func_start ov73_021E955C
ov73_021E955C: ; 0x021E955C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9590 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9594 ; =0x00000BD4
	mov r2, #3
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov73_021E83EC
	add r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9590: .word 0x00000F0F
_021E9594: .word 0x00000BD4
	thumb_func_end ov73_021E955C

	thumb_func_start ov73_021E9598
ov73_021E9598: ; 0x021E9598
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E95C4 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E95C8 ; =0x00000BD4
	mov r2, #7
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x1a
	bl ov73_021E83EC
	add r0, r4, #0
	bl ov73_021EA15C
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E95C4: .word 0x00000F0F
_021E95C8: .word 0x00000BD4
	thumb_func_end ov73_021E9598

	thumb_func_start ov73_021E95CC
ov73_021E95CC: ; 0x021E95CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0202D568
	add r4, r0, #0
	ldr r0, [r5]
	add r1, sp, #0
	ldr r0, [r0, #4]
	bl sub_0202D7F0
	ldr r0, [r5]
	ldr r2, _021E9610 ; =0x00000AD8
	ldr r0, [r0, #0xc]
	mov r1, #1
	add r2, r5, r2
	bl sub_02069528
	add r1, sp, #0
	ldrb r0, [r1]
	ldr r3, _021E9610 ; =0x00000AD8
	ldrb r1, [r1, #1]
	add r2, r4, #0
	add r3, r5, r3
	bl ov72_02237C30
	mov r0, #0x1b
	str r0, [r5, #0x1c]
	ldr r0, _021E9614 ; =0x00000F94
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9610: .word 0x00000AD8
_021E9614: .word 0x00000F94
	thumb_func_end ov73_021E95CC

	thumb_func_start ov73_021E9618
ov73_021E9618: ; 0x021E9618
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _021E96CC
	bl ov72_02237B74
	ldr r1, _021E96E8 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _021E96E2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E9640: ; jump table
	.short _021E96A8 - _021E9640 - 2 ; case 0
	.short _021E9698 - _021E9640 - 2 ; case 1
	.short _021E96B8 - _021E9640 - 2 ; case 2
	.short _021E96A8 - _021E9640 - 2 ; case 3
	.short _021E9688 - _021E9640 - 2 ; case 4
	.short _021E9678 - _021E9640 - 2 ; case 5
	.short _021E9668 - _021E9640 - 2 ; case 6
	.short _021E9650 - _021E9640 - 2 ; case 7
_021E9650:
	ldr r0, [r4]
	mov r1, #5
	ldr r0, [r0]
	mov r2, #2
	bl sub_0202D5DC
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x1c
	bl ov73_021E83EC
	b _021E96E2
_021E9668:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9678:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9688:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9698:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E96A8:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E96B8:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E96E2
_021E96CC:
	ldr r0, _021E96E8 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E96E2
	bl sub_020399EC
_021E96E2:
	mov r0, #3
	pop {r4, pc}
	nop
_021E96E8: .word 0x00000F94
	thumb_func_end ov73_021E9618

	thumb_func_start ov73_021E96EC
ov73_021E96EC: ; 0x021E96EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9720 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9724 ; =0x00000BD4
	mov r2, #8
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov73_021E83EC
	add r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9720: .word 0x00000F0F
_021E9724: .word 0x00000BD4
	thumb_func_end ov73_021E96EC

	thumb_func_start ov73_021E9728
ov73_021E9728: ; 0x021E9728
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9750 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9754 ; =0x00000BD4
	mov r2, #5
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x1e
	bl ov73_021E83EC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9750: .word 0x00000F0F
_021E9754: .word 0x00000BD4
	thumb_func_end ov73_021E9728

