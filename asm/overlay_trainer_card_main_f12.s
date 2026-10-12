#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E67A4
	.public ov51_021E6888
	.extern ov51_021E66C0
	.extern ov51_021E6C6C
	.extern ov51_021E6D44
	.extern ov51_021E6E10
	.extern ov51_021E71D0
	.extern ov51_021E76EC
	.extern ov51_021E77A0
	.extern ov51_021E7804
	.extern ov51_021E786C

	.text

	.text
	thumb_func_start ov51_021E67A4
ov51_021E67A4: ; 0x021E67A4
	push {r4, lr}
	ldr r1, _021E6884 ; =0x00003436
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #4
	bhi _021E6880
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E67BC: ; jump table
	.short _021E67C6 - _021E67BC - 2 ; case 0
	.short _021E67D6 - _021E67BC - 2 ; case 1
	.short _021E6800 - _021E67BC - 2 ; case 2
	.short _021E683E - _021E67BC - 2 ; case 3
	.short _021E6860 - _021E67BC - 2 ; case 4
_021E67C6:
	mov r1, #0
	bl ov51_021E77A0
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E67D6:
	add r0, r1, #6
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _021E67E6
	mov r0, #0
	pop {r4, pc}
_021E67E6:
	add r0, r4, #0
	mov r1, #0
	bl ov51_021E7804
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E6E10
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E6800:
	mov r1, #0
	bl ov51_021E786C
	cmp r0, #0
	blt _021E6880
	bne _021E6818
	add r0, r4, #0
	mov r1, #0
	bl ov51_021E6E10
	mov r0, #1
	pop {r4, pc}
_021E6818:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021E6830
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E77A0
	b _021E6834
_021E6830:
	mov r0, #2
	pop {r4, pc}
_021E6834:
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E683E:
	add r0, r1, #6
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _021E684E
	mov r0, #0
	pop {r4, pc}
_021E684E:
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E7804
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E6860:
	mov r1, #1
	bl ov51_021E786C
	cmp r0, #0
	beq _021E6870
	cmp r0, #1
	beq _021E687C
	b _021E6880
_021E6870:
	add r0, r4, #0
	mov r1, #0
	bl ov51_021E6E10
	mov r0, #1
	pop {r4, pc}
_021E687C:
	mov r0, #2
	pop {r4, pc}
_021E6880:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E6884: .word 0x00003436
	thumb_func_end ov51_021E67A4

	thumb_func_start ov51_021E6888
ov51_021E6888: ; 0x021E6888
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021E69D4 ; =0x00003436
	add r4, r0, #0
	ldrb r2, [r4, r1]
	mov r5, #0
	cmp r2, #5
	bls _021E6898
	b _021E69C4
_021E6898:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E68A4: ; jump table
	.short _021E68B0 - _021E68A4 - 2 ; case 0
	.short _021E68DE - _021E68A4 - 2 ; case 1
	.short _021E6918 - _021E68A4 - 2 ; case 2
	.short _021E6930 - _021E68A4 - 2 ; case 3
	.short _021E696E - _021E68A4 - 2 ; case 4
	.short _021E697E - _021E68A4 - 2 ; case 5
_021E68B0:
	mov r0, #8
	sub r1, #0xa2
	str r0, [r4, r1]
	ldr r1, _021E69D8 ; =0x000030FC
	lsl r2, r0, #9
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	add r0, #0x80
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r2, [r4, r0]
	add r2, #0x80
	str r2, [r4, r0]
	ldr r0, _021E69DC ; =SEQ_SE_DP_CARD5
	bl PlaySE
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E68DE:
	add r3, r1, #0
	sub r3, #0xa2
	ldr r7, [r4, r3]
	ldr r6, _021E69D8 ; =0x000030FC
	mov r3, #0xc
	mov r0, #2
	sub r3, r3, r7
	ldr r2, [r4, r6]
	lsl r0, r3
	sub r0, r2, r0
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	cmp r0, #0
	bgt _021E6904
	mov r0, #0x24
	str r0, [r4, r6]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
_021E6904:
	ldr r0, _021E69E0 ; =0x00003394
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #1
	bgt _021E69C4
	mov r1, #1
	str r1, [r4, r0]
	b _021E69C4
_021E6918:
	ldr r2, _021E69E4 ; =0x000030F4
	mov r1, #1
	ldr r3, [r4, r2]
	eor r1, r3
	str r1, [r4, r2]
	bl ov51_021E66C0
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E6930:
	ldr r1, _021E69E4 ; =0x000030F4
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021E6946
	bl ov51_021E6C6C
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E76EC
	b _021E6964
_021E6946:
	add r2, r4, #0
	ldr r0, [r4]
	mov r1, #7
	add r2, #0xec
	bl ov51_021E6D44
	ldr r0, _021E69E8 ; =0x0000343A
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E6964
	add r0, r4, #0
	add r1, r5, #0
	bl ov51_021E76EC
_021E6964:
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E696E:
	add r1, r4, #4
	bl ov51_021E71D0
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E697E:
	add r0, r1, #0
	sub r0, #0xa2
	ldr r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0xa2
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa2
	ldr r0, [r4, r0]
	cmp r0, #8
	ble _021E699C
	mov r0, #8
	sub r1, #0xa2
	str r0, [r4, r1]
_021E699C:
	ldr r2, _021E69E0 ; =0x00003394
	ldr r3, _021E69D8 ; =0x000030FC
	ldr r6, [r4, r2]
	mov r2, #0xc
	mov r0, #2
	sub r2, r2, r6
	add r6, r0, #0
	ldr r1, [r4, r3]
	lsl r6, r2
	add r1, r1, r6
	str r1, [r4, r3]
	ldr r2, [r4, r3]
	lsl r1, r0, #0xb
	cmp r2, r1
	blt _021E69C4
	str r1, [r4, r3]
	str r1, [r4, r3]
	add r0, r3, #4
	str r1, [r4, r0]
	mov r5, #1
_021E69C4:
	ldr r1, _021E69E8 ; =0x0000343A
	mov r0, #4
	ldrb r2, [r4, r1]
	orr r0, r2
	strb r0, [r4, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E69D4: .word 0x00003436
_021E69D8: .word 0x000030FC
_021E69DC: .word SEQ_SE_DP_CARD5
_021E69E0: .word 0x00003394
_021E69E4: .word 0x000030F4
_021E69E8: .word 0x0000343A
	thumb_func_end ov51_021E6888

