#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022378DC
	.extern _02246800
	.extern ov70_02238398
	.extern ov70_02246900
	.extern ov70_02246920

	.text

	.text
	thumb_func_start ov70_022378DC
ov70_022378DC: ; 0x022378DC
	push {r3, lr}
	ldr r1, _02237BC0 ; =_02246800
	ldr r0, [r1]
	cmp r0, #0x18
	bls _022378E8
	b _02237F24
_022378E8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022378F4: ; jump table
	.short _02237F24 - _022378F4 - 2 ; case 0
	.short _02237F24 - _022378F4 - 2 ; case 1
	.short _02237926 - _022378F4 - 2 ; case 2
	.short _02237F18 - _022378F4 - 2 ; case 3
	.short _022379D4 - _022378F4 - 2 ; case 4
	.short _02237F18 - _022378F4 - 2 ; case 5
	.short _02237A5A - _022378F4 - 2 ; case 6
	.short _02237F18 - _022378F4 - 2 ; case 7
	.short _02237ADA - _022378F4 - 2 ; case 8
	.short _02237F18 - _022378F4 - 2 ; case 9
	.short _02237B6E - _022378F4 - 2 ; case 10
	.short _02237F18 - _022378F4 - 2 ; case 11
	.short _02237BEC - _022378F4 - 2 ; case 12
	.short _02237F18 - _022378F4 - 2 ; case 13
	.short _02237C72 - _022378F4 - 2 ; case 14
	.short _02237F18 - _022378F4 - 2 ; case 15
	.short _02237CEA - _022378F4 - 2 ; case 16
	.short _02237F18 - _022378F4 - 2 ; case 17
	.short _02237DBC - _022378F4 - 2 ; case 18
	.short _02237F18 - _022378F4 - 2 ; case 19
	.short _02237E10 - _022378F4 - 2 ; case 20
	.short _02237F18 - _022378F4 - 2 ; case 21
	.short _02237E80 - _022378F4 - 2 ; case 22
	.short _02237F18 - _022378F4 - 2 ; case 23
	.short _02237F24 - _022378F4 - 2 ; case 24
_02237926:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237934
	cmp r0, #7
	beq _0223794C
	pop {r3, pc}
_02237934:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237BC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_0223794C:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	ldr r2, _02237BC4 ; =ov70_02246920
	str r1, [r0]
	ldrb r2, [r2, #0x1c]
	cmp r2, #0xe
	bhi _022379C6
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02237966: ; jump table
	.short _022379C6 - _02237966 - 2 ; case 0
	.short _02237984 - _02237966 - 2 ; case 1
	.short _0223798A - _02237966 - 2 ; case 2
	.short _02237990 - _02237966 - 2 ; case 3
	.short _022379C6 - _02237966 - 2 ; case 4
	.short _022379C6 - _02237966 - 2 ; case 5
	.short _022379C6 - _02237966 - 2 ; case 6
	.short _02237996 - _02237966 - 2 ; case 7
	.short _022379A8 - _02237966 - 2 ; case 8
	.short _022379AE - _02237966 - 2 ; case 9
	.short _022379B4 - _02237966 - 2 ; case 10
	.short _022379BA - _02237966 - 2 ; case 11
	.short _0223799C - _02237966 - 2 ; case 12
	.short _022379A2 - _02237966 - 2 ; case 13
	.short _022379C0 - _02237966 - 2 ; case 14
_02237984:
	mov r1, #0
	str r1, [r0, #4]
	b _022379CE
_0223798A:
	sub r1, #0x1d
	str r1, [r0, #4]
	b _022379CE
_02237990:
	sub r1, #0x1c
	str r1, [r0, #4]
	b _022379CE
_02237996:
	sub r1, #0x19
	str r1, [r0, #4]
	b _022379CE
_0223799C:
	sub r1, #0x1e
	str r1, [r0, #4]
	b _022379CE
_022379A2:
	sub r1, #0x1f
	str r1, [r0, #4]
	b _022379CE
_022379A8:
	sub r1, #0x20
	str r1, [r0, #4]
	b _022379CE
_022379AE:
	sub r1, #0x21
	str r1, [r0, #4]
	b _022379CE
_022379B4:
	sub r1, #0x22
	str r1, [r0, #4]
	b _022379CE
_022379BA:
	sub r1, #0x23
	str r1, [r0, #4]
	b _022379CE
_022379C0:
	sub r1, #0x1a
	str r1, [r0, #4]
	b _022379CE
_022379C6:
	mov r1, #0xc
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_022379CE:
	bl ov38_0221BFEC
	pop {r3, pc}
_022379D4:
	bl ov38_0221BF48
	cmp r0, #1
	beq _022379E2
	cmp r0, #7
	beq _022379FA
	pop {r3, pc}
_022379E2:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237BC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_022379FA:
	ldr r0, _02237BC0 ; =_02246800
	mov r2, #0x18
	ldr r1, _02237BC4 ; =ov70_02246920
	str r2, [r0]
	ldrb r1, [r1, #0x1c]
	cmp r1, #5
	bgt _02237A24
	cmp r1, #0
	blt _02237A4C
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02237A18: ; jump table
	.short _02237A4C - _02237A18 - 2 ; case 0
	.short _02237A2A - _02237A18 - 2 ; case 1
	.short _02237A30 - _02237A18 - 2 ; case 2
	.short _02237A36 - _02237A18 - 2 ; case 3
	.short _02237A4C - _02237A18 - 2 ; case 4
	.short _02237A3C - _02237A18 - 2 ; case 5
_02237A24:
	cmp r1, #0xe
	beq _02237A42
	b _02237A4C
_02237A2A:
	mov r1, #0
	str r1, [r0, #4]
	b _02237A54
_02237A30:
	sub r2, #0x1d
	str r2, [r0, #4]
	b _02237A54
_02237A36:
	sub r2, #0x1c
	str r2, [r0, #4]
	b _02237A54
_02237A3C:
	sub r2, #0x1b
	str r2, [r0, #4]
	b _02237A54
_02237A42:
	mov r1, #1
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237A54
_02237A4C:
	mov r1, #0xc
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237A54:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237A5A:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237A68
	cmp r0, #7
	beq _02237A80
	pop {r3, pc}
_02237A68:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237BC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237A80:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C020
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	bne _02237A9A
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0
	str r1, [r0, #4]
	b _02237AD4
_02237A9A:
	ldr r0, _02237BC8 ; =ov70_02246900
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #3
	beq _02237AB8
	cmp r0, #5
	beq _02237AAE
	cmp r0, #0xe
	beq _02237AC2
	b _02237ACC
_02237AAE:
	mov r1, #2
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237AD4
_02237AB8:
	mov r1, #3
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237AD4
_02237AC2:
	mov r1, #1
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237AD4
_02237ACC:
	mov r1, #0xc
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237AD4:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237ADA:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237AE8
	cmp r0, #7
	beq _02237B00
	pop {r3, pc}
_02237AE8:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237BC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237B00:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C020
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	bne _02237B1A
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #1
	str r1, [r0, #4]
	b _02237B68
_02237B1A:
	ldr r0, _02237BC8 ; =ov70_02246900
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #5
	bgt _02237B34
	cmp r0, #3
	blt _02237B60
	beq _02237B44
	cmp r0, #4
	beq _02237B4E
	cmp r0, #5
	beq _02237B3A
	b _02237B60
_02237B34:
	cmp r0, #0xe
	beq _02237B56
	b _02237B60
_02237B3A:
	mov r1, #2
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237B68
_02237B44:
	mov r1, #3
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237B68
_02237B4E:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0
	str r1, [r0, #4]
	b _02237B68
_02237B56:
	mov r1, #1
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237B68
_02237B60:
	mov r1, #0xc
	ldr r0, _02237BC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237B68:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237B6E:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237B7C
	cmp r0, #7
	beq _02237B94
	pop {r3, pc}
_02237B7C:
	ldr r0, _02237BC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237BC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237B94:
	ldr r1, _02237BC0 ; =_02246800
	mov r2, #0x18
	ldr r0, _02237BC4 ; =ov70_02246920
	str r2, [r1]
	ldrb r0, [r0, #0x1c]
	cmp r0, #5
	bgt _02237BB2
	cmp r0, #1
	blt _02237BDE
	beq _02237BB8
	cmp r0, #3
	beq _02237BD2
	cmp r0, #5
	beq _02237BCC
	b _02237BDE
_02237BB2:
	cmp r0, #0xe
	beq _02237BD8
	b _02237BDE
_02237BB8:
	mov r0, #0
	str r0, [r1, #4]
	b _02237BE6
	nop
_02237BC0: .word _02246800
_02237BC4: .word ov70_02246920
_02237BC8: .word ov70_02246900
_02237BCC:
	sub r2, #0x1b
	str r2, [r1, #4]
	b _02237BE6
_02237BD2:
	sub r2, #0x1c
	str r2, [r1, #4]
	b _02237BE6
_02237BD8:
	sub r2, #0x1a
	str r2, [r1, #4]
	b _02237BE6
_02237BDE:
	mov r1, #0xc
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237BE6:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237BEC:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237BFA
	cmp r0, #7
	beq _02237C12
	pop {r3, pc}
_02237BFA:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237EC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237C12:
	ldr r0, _02237EC0 ; =_02246800
	mov r2, #0x18
	ldr r1, _02237EC4 ; =ov70_02246920
	str r2, [r0]
	ldrb r1, [r1, #0x1c]
	cmp r1, #5
	bgt _02237C3C
	cmp r1, #0
	blt _02237C64
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02237C30: ; jump table
	.short _02237C64 - _02237C30 - 2 ; case 0
	.short _02237C42 - _02237C30 - 2 ; case 1
	.short _02237C4E - _02237C30 - 2 ; case 2
	.short _02237C54 - _02237C30 - 2 ; case 3
	.short _02237C64 - _02237C30 - 2 ; case 4
	.short _02237C48 - _02237C30 - 2 ; case 5
_02237C3C:
	cmp r1, #0xe
	beq _02237C5A
	b _02237C64
_02237C42:
	mov r1, #0
	str r1, [r0, #4]
	b _02237C6C
_02237C48:
	sub r2, #0x1b
	str r2, [r0, #4]
	b _02237C6C
_02237C4E:
	sub r2, #0x1d
	str r2, [r0, #4]
	b _02237C6C
_02237C54:
	sub r2, #0x1c
	str r2, [r0, #4]
	b _02237C6C
_02237C5A:
	mov r1, #1
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237C6C
_02237C64:
	mov r1, #0xc
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237C6C:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237C72:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237C80
	cmp r0, #7
	beq _02237C98
	pop {r3, pc}
_02237C80:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237EC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237C98:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C020
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	blo _02237CBC
	bl ov38_0221C020
	mov r1, #0x49
	lsl r1, r1, #2
	bl _u32_div_f
	ldr r1, _02237EC0 ; =_02246800
	str r0, [r1, #4]
	b _02237CE4
_02237CBC:
	cmp r0, #0
	bne _02237CC8
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0
	str r1, [r0, #4]
	b _02237CE4
_02237CC8:
	ldr r0, _02237EC8 ; =ov70_02246900
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _02237CDC
	mov r1, #1
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237CE4
_02237CDC:
	mov r1, #0xc
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237CE4:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237CEA:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237CF8
	cmp r0, #7
	beq _02237D10
	pop {r3, pc}
_02237CF8:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237EC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237D10:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C020
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	bne _02237D2A
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0
	str r1, [r0, #4]
	b _02237DB6
_02237D2A:
	ldr r0, _02237EC8 ; =ov70_02246900
	ldr r0, [r0, #0x40]
	ldrb r0, [r0]
	cmp r0, #0xe
	bhi _02237DAE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237D40: ; jump table
	.short _02237DAE - _02237D40 - 2 ; case 0
	.short _02237DAE - _02237D40 - 2 ; case 1
	.short _02237D5E - _02237D40 - 2 ; case 2
	.short _02237DAE - _02237D40 - 2 ; case 3
	.short _02237DAE - _02237D40 - 2 ; case 4
	.short _02237DAE - _02237D40 - 2 ; case 5
	.short _02237DAE - _02237D40 - 2 ; case 6
	.short _02237DAE - _02237D40 - 2 ; case 7
	.short _02237D7C - _02237D40 - 2 ; case 8
	.short _02237D86 - _02237D40 - 2 ; case 9
	.short _02237D90 - _02237D40 - 2 ; case 10
	.short _02237D9A - _02237D40 - 2 ; case 11
	.short _02237D68 - _02237D40 - 2 ; case 12
	.short _02237D72 - _02237D40 - 2 ; case 13
	.short _02237DA4 - _02237D40 - 2 ; case 14
_02237D5E:
	mov r1, #4
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237D68:
	mov r1, #5
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237D72:
	mov r1, #6
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237D7C:
	mov r1, #7
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237D86:
	mov r1, #8
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237D90:
	mov r1, #9
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237D9A:
	mov r1, #0xa
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237DA4:
	mov r1, #1
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237DB6
_02237DAE:
	mov r1, #0xc
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237DB6:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237DBC:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237DCA
	cmp r0, #7
	beq _02237DE2
	pop {r3, pc}
_02237DCA:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237EC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237DE2:
	ldr r1, _02237EC0 ; =_02246800
	mov r2, #0x18
	ldr r0, _02237EC4 ; =ov70_02246920
	str r2, [r1]
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	beq _02237DFA
	cmp r0, #2
	beq _02237E06
	cmp r0, #0xe
	beq _02237E00
	b _02237E0A
_02237DFA:
	mov r0, #0
	str r0, [r1, #4]
	b _02237E0A
_02237E00:
	sub r2, #0x1a
	str r2, [r1, #4]
	b _02237E0A
_02237E06:
	sub r2, #0x1d
	str r2, [r1, #4]
_02237E0A:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237E10:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237E1E
	cmp r0, #7
	beq _02237E36
	pop {r3, pc}
_02237E1E:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237EC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237E36:
	ldr r1, _02237EC0 ; =_02246800
	mov r2, #0x18
	ldr r0, _02237EC4 ; =ov70_02246920
	str r2, [r1]
	ldrb r0, [r0, #0x1c]
	cmp r0, #7
	bgt _02237E54
	cmp r0, #1
	blt _02237E72
	beq _02237E5A
	cmp r0, #6
	beq _02237E60
	cmp r0, #7
	beq _02237E66
	b _02237E72
_02237E54:
	cmp r0, #0xe
	beq _02237E6C
	b _02237E72
_02237E5A:
	mov r0, #0
	str r0, [r1, #4]
	b _02237E7A
_02237E60:
	mov r0, #1
	str r0, [r1, #4]
	b _02237E7A
_02237E66:
	mov r0, #2
	str r0, [r1, #4]
	b _02237E7A
_02237E6C:
	sub r2, #0x1a
	str r2, [r1, #4]
	b _02237E7A
_02237E72:
	mov r1, #0xc
	ldr r0, _02237EC0 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237E7A:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237E80:
	bl ov38_0221BF48
	cmp r0, #1
	beq _02237E8E
	cmp r0, #7
	beq _02237EA6
	pop {r3, pc}
_02237E8E:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C014
	bl ov70_02238398
	ldr r1, _02237EC0 ; =_02246800
	str r0, [r1, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
_02237EA6:
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	bl ov38_0221C020
	cmp r0, #8
	bne _02237EBC
	ldr r0, _02237EC0 ; =_02246800
	mov r1, #0
	str r1, [r0, #4]
	b _02237F12
_02237EBC:
	ldr r0, _02237EC4 ; =ov70_02246920
	b _02237ECC
	.balign 4, 0
_02237EC0: .word _02246800
_02237EC4: .word ov70_02246920
_02237EC8: .word ov70_02246900
_02237ECC:
	ldrb r0, [r0, #0x1c]
	cmp r0, #7
	bgt _02237EE2
	cmp r0, #1
	blt _02237F0A
	beq _02237EE8
	cmp r0, #6
	beq _02237EF0
	cmp r0, #7
	beq _02237EF8
	b _02237F0A
_02237EE2:
	cmp r0, #0xe
	beq _02237F00
	b _02237F0A
_02237EE8:
	ldr r0, _02237F28 ; =_02246800
	mov r1, #0
	str r1, [r0, #4]
	b _02237F12
_02237EF0:
	ldr r0, _02237F28 ; =_02246800
	mov r1, #1
	str r1, [r0, #4]
	b _02237F12
_02237EF8:
	ldr r0, _02237F28 ; =_02246800
	mov r1, #2
	str r1, [r0, #4]
	b _02237F12
_02237F00:
	mov r1, #1
	ldr r0, _02237F28 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
	b _02237F12
_02237F0A:
	mov r1, #0xc
	ldr r0, _02237F28 ; =_02246800
	mvn r1, r1
	str r1, [r0, #4]
_02237F12:
	bl ov38_0221BFEC
	pop {r3, pc}
_02237F18:
	mov r0, #0x18
	str r0, [r1]
	sub r0, #0x24
	str r0, [r1, #4]
	bl ov38_0221BFEC
_02237F24:
	pop {r3, pc}
	nop
_02237F28: .word _02246800
	thumb_func_end ov70_022378DC

