#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ECCC4
	.public ov112_021ECDA0
	.extern ov112_021E9A78
	.extern ov112_021E9C10
	.extern ov112_021EA51C
	.extern ov112_021EA570
	.extern ov112_021EC7B8
	.extern ov112_021EC7D0
	.extern ov112_021ECA88
	.extern ov112_021FF0C4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ECCC4
ov112_021ECCC4: ; 0x021ECCC4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov112_021EA570
	ldr r0, _021ECD90 ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #5
	bhi _021ECD80
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ECCE2: ; jump table
	.short _021ECCEE - _021ECCE2 - 2 ; case 0
	.short _021ECCEE - _021ECCE2 - 2 ; case 1
	.short _021ECCEE - _021ECCE2 - 2 ; case 2
	.short _021ECCEE - _021ECCE2 - 2 ; case 3
	.short _021ECCEE - _021ECCE2 - 2 ; case 4
	.short _021ECD34 - _021ECCE2 - 2 ; case 5
_021ECCEE:
	lsl r2, r1, #2
	ldr r1, _021ECD94 ; =ov112_021FF0C4
	add r0, r4, #0
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	add r0, r4, #0
	bl ov112_021ECA88
	cmp r0, #0
	blt _021ECD88
	add r0, r4, #0
	bl ov112_021EA570
	mov r1, #0x10
	mov r2, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	add r0, r4, #0
	bl ov112_021ECA88
	ldr r1, _021ECD98 ; =0x0001D798
	add sp, #0x10
	str r0, [r4, r1]
	mov r0, #0xc
	pop {r4, pc}
_021ECD34:
	add r0, r4, #0
	mov r1, #2
	bl ov112_021E9C10
	add r0, r4, #0
	mov r1, #3
	bl ov112_021E9C10
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9A78
	add r0, r4, #0
	mov r1, #0
	bl ov112_021E9A78
	ldr r0, _021ECD9C ; =0x0001D77C
	mov r1, #0
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov112_021EA570
	mov r1, #0x10
	mov r2, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	add sp, #0x10
	mov r0, #0
	pop {r4, pc}
_021ECD80:
	cmp r1, #6
	blt _021ECD88
	bl GF_AssertFail
_021ECD88:
	mov r0, #0xa
	add sp, #0x10
	pop {r4, pc}
	nop
_021ECD90: .word 0x0001EC50
_021ECD94: .word ov112_021FF0C4
_021ECD98: .word 0x0001D798
_021ECD9C: .word 0x0001D77C
	thumb_func_end ov112_021ECCC4

	thumb_func_start ov112_021ECDA0
ov112_021ECDA0: ; 0x021ECDA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	ldr r1, _021ECE18 ; =0x0001EC50
	bge _021ECDD2
	ldr r0, [r5, r1]
	cmp r0, #5
	beq _021ECDFE
	add r0, r1, #4
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r0, #0
	ble _021ECDFE
	add r0, r1, #4
	ldr r0, [r5, r0]
	sub r2, r0, #1
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0
	str r0, [r5, r1]
	ldr r0, _021ECE1C ; =0x000005DC
	bl PlaySE
	b _021ECDFE
_021ECDD2:
	ldr r2, [r5, r1]
	cmp r2, #5
	beq _021ECDFE
	add r1, r1, #4
	ldr r1, [r5, r1]
	lsl r1, r1, #0x18
	asr r4, r1, #0x18
	bl ov112_021EC7B8
	sub r0, r0, #1
	cmp r4, r0
	bge _021ECDFE
	ldr r0, _021ECE20 ; =0x0001EC54
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021ECE1C ; =0x000005DC
	bl PlaySE
_021ECDFE:
	ldr r1, _021ECE18 ; =0x0001EC50
	add r0, r5, #0
	ldr r1, [r5, r1]
	lsl r2, r1, #2
	ldr r1, _021ECE24 ; =ov112_021FF0C4
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	add r0, r5, #0
	bl ov112_021EC7D0
	pop {r3, r4, r5, pc}
	nop
_021ECE18: .word 0x0001EC50
_021ECE1C: .word 0x000005DC
_021ECE20: .word 0x0001EC54
_021ECE24: .word ov112_021FF0C4
	thumb_func_end ov112_021ECDA0

