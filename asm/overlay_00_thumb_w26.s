	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6690
	.public ov00_021E6790
	.public ov00_021E67E0
	.public ov00_021E6850
	.extern _0221A680
	.extern ov00_021E62D8
	.extern ov00_021E6CE8
	.extern ov00_021E765C
	.extern ov00_021E7ACC
	.extern ov00_021E7AE0
	.extern ov00_021E7AF4

	.text

	.text
	thumb_func_start ov00_021E6690
ov00_021E6690: ; 0x021E6690
	push {r3, r4, r5, lr}
	sub sp, #8
	add r0, sp, #4
	add r1, sp, #0
	mov r4, #0
	bl ov00_021EC11C
	add r5, r0, #0
	beq _021E6762
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _021E66AE
	ldr r0, [sp]
	cmp r0, #1
	bne _021E66B0
_021E66AE:
	add r4, r5, #0
_021E66B0:
	ldr r0, [sp]
	cmp r0, #7
	bhi _021E6762
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E66C2: ; jump table
	.short _021E6762 - _021E66C2 - 2 ; case 0
	.short _021E66D2 - _021E66C2 - 2 ; case 1
	.short _021E66D8 - _021E66C2 - 2 ; case 2
	.short _021E66DE - _021E66C2 - 2 ; case 3
	.short _021E66DE - _021E66C2 - 2 ; case 4
	.short _021E66DE - _021E66C2 - 2 ; case 5
	.short _021E66DE - _021E66C2 - 2 ; case 6
	.short _021E6744 - _021E66C2 - 2 ; case 7
_021E66D2:
	bl ov00_021EC210
	b _021E6762
_021E66D8:
	bl ov00_021EC210
	b _021E6762
_021E66DE:
	ldr r0, _021E6784 ; =_0221A680
	ldr r1, [r0]
	cmp r1, #0
	beq _021E6734
	ldr r0, _021E6788 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #0x12
	bhi _021E6730
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E66FA: ; jump table
	.short _021E6724 - _021E66FA - 2 ; case 0
	.short _021E6724 - _021E66FA - 2 ; case 1
	.short _021E6724 - _021E66FA - 2 ; case 2
	.short _021E6720 - _021E66FA - 2 ; case 3
	.short _021E6720 - _021E66FA - 2 ; case 4
	.short _021E6720 - _021E66FA - 2 ; case 5
	.short _021E6720 - _021E66FA - 2 ; case 6
	.short _021E6720 - _021E66FA - 2 ; case 7
	.short _021E6720 - _021E66FA - 2 ; case 8
	.short _021E6720 - _021E66FA - 2 ; case 9
	.short _021E6730 - _021E66FA - 2 ; case 10
	.short _021E6730 - _021E66FA - 2 ; case 11
	.short _021E6720 - _021E66FA - 2 ; case 12
	.short _021E6730 - _021E66FA - 2 ; case 13
	.short _021E6730 - _021E66FA - 2 ; case 14
	.short _021E6730 - _021E66FA - 2 ; case 15
	.short _021E6720 - _021E66FA - 2 ; case 16
	.short _021E6720 - _021E66FA - 2 ; case 17
	.short _021E6720 - _021E66FA - 2 ; case 18
_021E6720:
	bl ov00_021ED9B4
_021E6724:
	bl sub_0203993C
	cmp r0, #0x21
	beq _021E6730
	bl ov00_021EC8D8
_021E6730:
	bl ov00_021EC210
_021E6734:
	ldr r0, _021E6784 ; =_0221A680
	ldr r2, [r0]
	cmp r2, #0
	beq _021E6762
	ldr r0, _021E6788 ; =0x00001070
	mov r1, #0xe
	str r1, [r2, r0]
	b _021E6762
_021E6744:
	ldr r1, _021E6784 ; =_0221A680
	ldr r3, [r1]
	cmp r3, #0
	beq _021E6762
	ldr r0, _021E6788 ; =0x00001070
	mov r2, #0xf
	str r2, [r3, r0]
	ldr r1, [r1]
	sub r0, #0xb0
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021E6762
	ldr r0, [sp, #4]
	neg r0, r0
	blx r1
_021E6762:
	ldr r0, _021E6784 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E678C ; =0x000010DE
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021E6770
	mov r4, #0x1a
_021E6770:
	cmp r5, #0
	beq _021E677E
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r5, #0
	bl sub_02038F74
_021E677E:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6784: .word _0221A680
_021E6788: .word 0x00001070
_021E678C: .word 0x000010DE
	thumb_func_end ov00_021E6690

	thumb_func_start ov00_021E6790
ov00_021E6790: ; 0x021E6790
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021E67D8 ; =_0221A680
	mov r5, #0
	ldr r1, [r6]
	ldr r0, _021E67DC ; =0x0000107C
	add r4, r5, #0
	ldr r0, [r1, r0]
	cmp r0, #0
	ble _021E67D4
	ldr r7, _021E67DC ; =0x0000107C
_021E67A4:
	bl ov00_021EE490
	cmp r4, r0
	beq _021E67CA
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl ov00_021EE530
	cmp r0, #0
	beq _021E67CA
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r5, #1
	bl ov00_021F9580
	cmp r0, #0
	bne _021E67CA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E67CA:
	ldr r0, [r6]
	add r4, r4, #1
	ldr r0, [r0, r7]
	cmp r4, r0
	blt _021E67A4
_021E67D4:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E67D8: .word _0221A680
_021E67DC: .word 0x0000107C
	thumb_func_end ov00_021E6790

	thumb_func_start ov00_021E67E0
ov00_021E67E0: ; 0x021E67E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E6840 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6844 ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E683A
	bl ov00_021E6790
	cmp r0, #0
	beq _021E683A
	bl ov00_021EE4FC
	ldr r1, _021E6848 ; =0x0000FFFE
	tst r0, r1
	beq _021E683A
	ldr r1, _021E6840 ; =_0221A680
	ldr r0, _021E6844 ; =0x00001078
	ldr r2, [r1]
	mov r3, #1
	str r3, [r2, r0]
	ldr r2, [r1]
	add r0, #0x5c
	ldrh r0, [r2, r0]
	lsl r1, r0, #8
	mov r0, #2
	orr r0, r1
	str r0, [r2]
	bl ov00_021EE4FC
	ldr r1, _021E6840 ; =_0221A680
	mov r2, #4
	ldr r1, [r1]
	bl ov00_021F9750
	ldr r0, _021E6840 ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _021E684C ; =0x000010AC
	str r2, [r1, r0]
	mov r0, #1
	pop {r4, pc}
_021E683A:
	mov r0, #0
	pop {r4, pc}
	nop
_021E6840: .word _0221A680
_021E6844: .word 0x00001078
_021E6848: .word 0x0000FFFE
_021E684C: .word 0x000010AC
	thumb_func_end ov00_021E67E0

	thumb_func_start ov00_021E6850
ov00_021E6850: ; 0x021E6850
	push {r3, r4, r5, r6, r7, lr}
	bl ov00_021EDB1C
	bl ov00_021E6CE8
	ldr r0, _021E694C ; =_0221A680
	ldr r1, _021E6950 ; =0x00001090
	ldr r2, [r0]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _021E68D8
	add r0, r1, #0
	add r0, #0x44
	ldrh r0, [r2, r0]
	cmp r0, #1
	bne _021E6888
	add r0, r1, #0
	add r0, #0x40
	ldr r0, [r2, r0]
	cmp r0, #1
	bne _021E6888
	add r1, #0x46
	ldrh r0, [r2, r1]
	cmp r0, #1
	bne _021E6888
	bl ov00_021E7AE0
	b _021E688C
_021E6888:
	bl ov00_021E7ACC
_021E688C:
	bl ov00_021E765C
	ldr r0, _021E694C ; =_0221A680
	ldr r4, [r0]
	bl ov00_021EE4FC
	mov r1, #0x42
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _021E68D8
	add r0, r1, #0
	add r0, #0x5f
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021E68D8
	add r1, #0x1c
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021E68D8
	bl ov00_021EE4FC
	add r4, r0, #0
	bl ov00_021EE490
	add r1, r0, #0
	add r0, r4, #0
	bl ov00_021E7AF4
	cmp r0, #0
	beq _021E68D8
	bl ov00_021EE4FC
	ldr r1, _021E694C ; =_0221A680
	ldr r2, [r1]
	mov r1, #0x42
	lsl r1, r1, #6
	str r0, [r2, r1]
_021E68D8:
	ldr r6, _021E694C ; =_0221A680
	ldr r1, _021E6954 ; =0x00001070
	ldr r0, [r6]
	ldr r2, [r0, r1]
	cmp r2, #0x12
	bne _021E68F0
	bl ov00_021E6690
	cmp r0, #0
	bne _021E694A
	mov r0, #0x17
	pop {r3, r4, r5, r6, r7, pc}
_021E68F0:
	cmp r2, #0x11
	bne _021E68F8
	mov r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E68F8:
	sub r2, r2, #7
	cmp r2, #1
	bhi _021E6946
	add r1, #0xc
	ldr r1, [r0, r1]
	mov r4, #0
	cmp r1, #0
	ble _021E6946
	ldr r7, _021E6958 ; =0x000010AC
	add r5, r4, #0
_021E690C:
	ldr r2, _021E6958 ; =0x000010AC
	add r1, r0, r5
	ldr r0, _021E6958 ; =0x000010AC
	ldr r2, [r1, r2]
	ldr r0, [r1, r0]
	add r2, r2, #1
	str r2, [r1, r7]
	cmp r0, #0x78
	blt _021E6938
	ldr r1, [r6]
	ldr r0, _021E695C ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E6938
	add r0, r4, #0
	bl ov00_021E67E0
	cmp r0, #0
	beq _021E6938
	bl ov00_021E62D8
	b _021E6946
_021E6938:
	ldr r0, [r6]
	ldr r1, _021E6960 ; =0x0000107C
	add r4, r4, #1
	ldr r1, [r0, r1]
	add r5, r5, #4
	cmp r4, r1
	blt _021E690C
_021E6946:
	bl ov00_021E6690
_021E694A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E694C: .word _0221A680
_021E6950: .word 0x00001090
_021E6954: .word 0x00001070
_021E6958: .word 0x000010AC
_021E695C: .word 0x00001078
_021E6960: .word 0x0000107C
	thumb_func_end ov00_021E6850

