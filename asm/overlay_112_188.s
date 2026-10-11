#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ECAA8
	.extern ov112_021E9888
	.extern ov112_021EA51C
	.extern ov112_021EA6A0
	.extern ov112_021EC440
	.extern ov112_021EC8A4
	.extern ov112_021ECA18
	.extern ov112_021ECA88
	.extern ov112_021ECDA0
	.extern ov112_021FF0C4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ECAA8
ov112_021ECAA8: ; 0x021ECAA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #4
	bl ov112_021E9888
	mov r1, #0
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	beq _021ECB7C
	cmp r5, #4
	bhi _021ECB1C
	ldr r0, _021ECCAC ; =0x0001EC50
	str r5, [r4, r0]
	add r0, r4, #0
	bl ov112_021ECA88
	cmp r0, #0
	blt _021ECAF6
	ldr r2, _021ECCB0 ; =ov112_021FF0C4
	lsl r3, r5, #2
	ldr r2, [r2, r3]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0xb
	bl ov112_021EC440
	ldr r0, _021ECCB4 ; =0x000005DD
	bl PlaySE
	ldr r2, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	bl ov112_021EC8A4
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021ECAF6:
	ldr r2, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	bl ov112_021EC8A4
	ldr r0, _021ECCBC ; =0x000005DC
	bl PlaySE
	ldr r1, _021ECCAC ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021ECCB0 ; =ov112_021FF0C4
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	b _021ECB78
_021ECB1C:
	cmp r5, #6
	bne _021ECB3C
	add r0, r4, #0
	bl ov112_021ECDA0
	ldr r1, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov112_021ECA18
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	bl ov112_021EA6A0
	b _021ECB78
_021ECB3C:
	cmp r5, #7
	bne _021ECB5E
	add r0, r4, #0
	mov r1, #1
	bl ov112_021ECDA0
	ldr r1, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov112_021ECA18
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	bl ov112_021EA6A0
	b _021ECB78
_021ECB5E:
	ldr r2, _021ECCB0 ; =ov112_021FF0C4
	lsl r3, r5, #2
	ldr r2, [r2, r3]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0xb
	bl ov112_021EC440
	ldr r0, _021ECCB4 ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021ECB78:
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_021ECB7C:
	ldr r0, _021ECCC0 ; =gSystem
	mov r2, #0x40
	ldr r0, [r0, #0x48]
	tst r2, r0
	beq _021ECBB8
	ldr r0, _021ECCAC ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _021ECB98
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, _021ECCBC ; =0x000005DC
	bl PlaySE
_021ECB98:
	ldr r1, _021ECCAC ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021ECCB0 ; =ov112_021FF0C4
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	ldr r2, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	bl ov112_021EC8A4
	b _021ECCA6
_021ECBB8:
	mov r2, #0x80
	tst r2, r0
	beq _021ECBF0
	ldr r0, _021ECCAC ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #5
	bge _021ECBD0
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, _021ECCBC ; =0x000005DC
	bl PlaySE
_021ECBD0:
	ldr r1, _021ECCAC ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021ECCB0 ; =ov112_021FF0C4
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	ldr r2, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	bl ov112_021EC8A4
	b _021ECCA6
_021ECBF0:
	mov r2, #0x20
	tst r2, r0
	beq _021ECC12
	add r0, r4, #0
	bl ov112_021ECDA0
	ldr r1, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov112_021ECA18
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	bl ov112_021EA6A0
	b _021ECCA6
_021ECC12:
	mov r1, #0x10
	tst r1, r0
	beq _021ECC36
	add r0, r4, #0
	mov r1, #1
	bl ov112_021ECDA0
	ldr r1, _021ECCB8 ; =0x0001EC54
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov112_021ECA18
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	bl ov112_021EA6A0
	b _021ECCA6
_021ECC36:
	mov r1, #1
	tst r1, r0
	beq _021ECC8A
	ldr r0, _021ECCAC ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #4
	ble _021ECC5C
	ldr r2, _021ECCB0 ; =ov112_021FF0C4
	lsl r3, r1, #2
	ldr r2, [r2, r3]
	add r0, r4, #0
	mov r3, #0xb
	bl ov112_021EC440
	ldr r0, _021ECCB4 ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021ECC5C:
	add r0, r4, #0
	bl ov112_021ECA88
	cmp r0, #0
	blt _021ECC82
	ldr r0, _021ECCAC ; =0x0001EC50
	ldr r2, _021ECCB0 ; =ov112_021FF0C4
	ldr r1, [r4, r0]
	add r0, r4, #0
	lsl r3, r1, #2
	ldr r2, [r2, r3]
	mov r3, #0xb
	bl ov112_021EC440
	ldr r0, _021ECCB4 ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021ECC82:
	ldr r0, _021ECCBC ; =0x000005DC
	bl PlaySE
	b _021ECCA6
_021ECC8A:
	mov r1, #2
	tst r0, r1
	beq _021ECCA6
	add r0, r4, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0xb
	bl ov112_021EC440
	ldr r0, _021ECCBC ; =0x000005DC
	bl PlaySE
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021ECCA6:
	mov r0, #0xa
	pop {r3, r4, r5, pc}
	nop
_021ECCAC: .word 0x0001EC50
_021ECCB0: .word ov112_021FF0C4
_021ECCB4: .word 0x000005DD
_021ECCB8: .word 0x0001EC54
_021ECCBC: .word 0x000005DC
_021ECCC0: .word gSystem
	thumb_func_end ov112_021ECAA8

