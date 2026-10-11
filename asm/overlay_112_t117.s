#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EB5DC
	.public ov112_021EB664
	.public ov112_021EB780
	.extern ov112_021E7CA4
	.extern ov112_021E9888
	.extern ov112_021E9F40
	.extern ov112_021E9FA4
	.extern ov112_021EA51C
	.extern ov112_021EA570
	.extern ov112_021EB90C
	.extern ov112_021EB950
	.extern ov112_021EB9C0
	.extern ov112_021EB9E4
	.extern ov112_021EC440
	.extern ov112_021FF09C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EB5DC
ov112_021EB5DC: ; 0x021EB5DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #2
	mov r2, #0xc
	bl ov112_021E7CA4
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x10
	bl ov112_021E7CA4
	ldr r0, _021EB64C ; =0x000F0100
	ldr r2, _021EB650 ; =0x0001E45C
	str r0, [sp]
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #3
	mov r3, #4
	bl ov112_021E9FA4
	ldr r0, _021EB64C ; =0x000F0100
	mov r1, #4
	str r0, [sp]
	ldr r2, _021EB654 ; =0x0001E460
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r3, r1, #0
	bl ov112_021E9FA4
	ldr r0, _021EB64C ; =0x000F0100
	ldr r2, _021EB658 ; =0x0001E464
	str r0, [sp]
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #5
	mov r3, #4
	bl ov112_021E9FA4
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9F40
	ldr r1, _021EB65C ; =0x0001EC50
	mov r0, #0
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021EB660 ; =ov112_021FF09C
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	mov r0, #0x12
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021EB64C: .word 0x000F0100
_021EB650: .word 0x0001E45C
_021EB654: .word 0x0001E460
_021EB658: .word 0x0001E464
_021EB65C: .word 0x0001EC50
_021EB660: .word ov112_021FF09C
	thumb_func_end ov112_021EB5DC

	thumb_func_start ov112_021EB664
ov112_021EB664: ; 0x021EB664
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	bl ov112_021E9888
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021EB690
	ldr r2, _021EB76C ; =ov112_021FF09C
	lsl r3, r1, #2
	ldr r2, [r2, r3]
	add r0, r4, #0
	mov r3, #0x13
	bl ov112_021EC440
	ldr r0, _021EB770 ; =0x000005DD
	bl PlaySE
	mov r0, #0x19
	pop {r4, pc}
_021EB690:
	ldr r0, _021EB774 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021EB6C2
	ldr r0, _021EB778 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EB6B0
	ldr r0, _021EB77C ; =0x000005DC
	bl PlaySE
	ldr r0, _021EB778 ; =0x0001EC50
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
_021EB6B0:
	ldr r1, _021EB778 ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021EB76C ; =ov112_021FF09C
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	b _021EB766
_021EB6C2:
	mov r1, #0x80
	tst r1, r0
	beq _021EB6F0
	ldr r0, _021EB778 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #3
	bge _021EB6DE
	ldr r0, _021EB77C ; =0x000005DC
	bl PlaySE
	ldr r0, _021EB778 ; =0x0001EC50
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_021EB6DE:
	ldr r1, _021EB778 ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021EB76C ; =ov112_021FF09C
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	b _021EB766
_021EB6F0:
	mov r1, #1
	tst r1, r0
	beq _021EB712
	ldr r0, _021EB770 ; =0x000005DD
	bl PlaySE
	ldr r0, _021EB778 ; =0x0001EC50
	ldr r2, _021EB76C ; =ov112_021FF09C
	ldr r1, [r4, r0]
	add r0, r4, #0
	lsl r3, r1, #2
	ldr r2, [r2, r3]
	mov r3, #0x13
	bl ov112_021EC440
	mov r0, #0x19
	pop {r4, pc}
_021EB712:
	mov r1, #2
	tst r0, r1
	beq _021EB72E
	ldr r0, _021EB77C ; =0x000005DC
	bl PlaySE
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x13
	bl ov112_021EC440
	mov r0, #0x19
	pop {r4, pc}
_021EB72E:
	bl ov112_021EB9C0
	cmp r0, #0
	beq _021EB748
	ldr r0, _021EB77C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	bl ov112_021EB90C
	mov r0, #0x1a
	pop {r4, pc}
_021EB748:
	bl ov112_021EB9E4
	cmp r0, #0
	beq _021EB766
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EB950
	cmp r0, #0
	beq _021EB766
	ldr r0, _021EB77C ; =0x000005DC
	bl PlaySE
	mov r0, #0x1a
	pop {r4, pc}
_021EB766:
	mov r0, #0x12
	pop {r4, pc}
	nop
_021EB76C: .word ov112_021FF09C
_021EB770: .word 0x000005DD
_021EB774: .word gSystem
_021EB778: .word 0x0001EC50
_021EB77C: .word 0x000005DC
	thumb_func_end ov112_021EB664

	thumb_func_start ov112_021EB780
ov112_021EB780: ; 0x021EB780
	push {r4, lr}
	add r4, r0, #0
	bl ov112_021EA570
	ldr r0, _021EB7D4 ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #3
	bhi _021EB7C8
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EB79C: ; jump table
	.short _021EB7A4 - _021EB79C - 2 ; case 0
	.short _021EB7AE - _021EB79C - 2 ; case 1
	.short _021EB7B8 - _021EB79C - 2 ; case 2
	.short _021EB7C2 - _021EB79C - 2 ; case 3
_021EB7A4:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x10]
	b _021EB7D0
_021EB7AE:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x10]
	b _021EB7D0
_021EB7B8:
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0x10]
	b _021EB7D0
_021EB7C2:
	mov r0, #0xb
	str r0, [r4, #4]
	b _021EB7D0
_021EB7C8:
	cmp r1, #4
	blt _021EB7D0
	bl GF_AssertFail
_021EB7D0:
	mov r0, #0x1a
	pop {r4, pc}
	.balign 4, 0
_021EB7D4: .word 0x0001EC50
	thumb_func_end ov112_021EB780

