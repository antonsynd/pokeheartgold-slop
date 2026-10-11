#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02239740
	.public ov70_02239834
	.extern ov70_02238D84
	.extern ov70_02238D8C
	.extern ov70_02238E50
	.extern ov70_02238E64
	.extern ov70_02239730
	.extern ov70_02239B84
	.extern ov70_02239BDC
	.extern ov70_02245240
	.extern ov70_02245242

	.text

	.text
	thumb_func_start ov70_02239740
ov70_02239740: ; 0x02239740
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	cmp r1, #0
	beq _02239756
	cmp r1, #1
	beq _022397CC
	cmp r1, #2
	beq _022397E8
	add sp, #4
	pop {r3, r4, pc}
_02239756:
	ldrh r1, [r4, #0x36]
	cmp r1, #0
	bne _02239772
	mov r1, #5
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223981C ; =0x000005DC
	bl PlaySE
	add sp, #4
	pop {r3, r4, pc}
_02239772:
	ldrh r1, [r4, #0x3a]
	cmp r1, #0
	bne _02239796
	mov r1, #7
	mov r2, #0xb
	bl ov70_02238E50
	mov r0, #2
	str r0, [r4, #0x1c]
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _02239820 ; =0x00000708
	strh r0, [r4, #0x3a]
	ldr r0, _0223981C ; =0x000005DC
	bl PlaySE
	add sp, #4
	pop {r3, r4, pc}
_02239796:
	ldr r0, _02239824 ; =0x00000DCC
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetAnimActiveFlag
	ldr r0, _02239828 ; =0x00000F0F
	mov r1, #0x22
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov70_02239B84
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #5
	bl ov70_02238D84
	ldr r0, _0223982C ; =0x000005F3
	bl PlaySE
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #6
	add sp, #4
	str r1, [r4, r0]
	pop {r3, r4, pc}
_022397CC:
	ldr r1, _02239830 ; =0x000011DE
	mov r2, #0
	strh r2, [r4, r1]
	mov r1, #4
	mov r2, #0xd
	bl ov70_02238E50
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223981C ; =0x000005DC
	bl PlaySE
	add sp, #4
	pop {r3, r4, pc}
_022397E8:
	bl ov70_02238E64
	add r2, r0, #0
	ldr r0, _02239828 ; =0x00000F0F
	mov r1, #7
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl ov70_02239BDC
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xc
	bl ov70_02238D84
	ldr r0, _02239824 ; =0x00000DCC
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetAnimActiveFlag
	ldr r0, _0223981C ; =0x000005DC
	bl PlaySE
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223981C: .word 0x000005DC
_02239820: .word 0x00000708
_02239824: .word 0x00000DCC
_02239828: .word 0x00000F0F
_0223982C: .word 0x000005F3
_02239830: .word 0x000011DE
	thumb_func_end ov70_02239740

	thumb_func_start ov70_02239834
ov70_02239834: ; 0x02239834
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov70_02239730
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02239876
	mov r0, #0x47
	lsl r0, r0, #2
	strh r4, [r5, r0]
	ldr r0, _0223993C ; =0x000005DC
	bl PlaySE
	mov r0, #0x47
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r1, _02239940 ; =ov70_02245240
	ldr r3, _02239944 ; =ov70_02245242
	lsl r2, r0, #2
	ldr r0, _02239948 ; =0x00000DCC
	ldrh r1, [r1, r2]
	ldrh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl ov70_02238D8C
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02239740
	mov r0, #3
	pop {r3, r4, r5, pc}
_02239876:
	ldr r0, _0223994C ; =gSystem
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _022398AC
	add r0, r5, #0
	bl ov70_02238E64
	add r2, r0, #0
	ldr r0, _02239950 ; =0x00000F0F
	mov r1, #7
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl ov70_02239BDC
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0xc
	bl ov70_02238D84
	ldr r0, _02239948 ; =0x00000DCC
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetAnimActiveFlag
	b _02239938
_022398AC:
	mov r1, #1
	tst r1, r0
	beq _022398C0
	mov r1, #0x47
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ov70_02239740
	b _02239938
_022398C0:
	mov r1, #0x40
	add r2, r0, #0
	tst r2, r1
	beq _022398FE
	add r0, r1, #0
	add r0, #0xdc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _02239938
	add r0, r1, #0
	add r0, #0xdc
	ldrh r0, [r5, r0]
	add r1, #0xdc
	sub r0, r0, #1
	strh r0, [r5, r1]
	ldr r0, _0223993C ; =0x000005DC
	bl PlaySE
	mov r0, #0x47
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r1, _02239940 ; =ov70_02245240
	ldr r2, _02239944 ; =ov70_02245242
	lsl r3, r0, #2
	ldr r0, _02239948 ; =0x00000DCC
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r5, r0]
	bl ov70_02238D8C
	b _02239938
_022398FE:
	mov r1, #0x80
	tst r0, r1
	beq _02239938
	add r0, r1, #0
	add r0, #0x9c
	ldrh r0, [r5, r0]
	cmp r0, #2
	bhs _02239938
	add r0, r1, #0
	add r0, #0x9c
	ldrh r0, [r5, r0]
	add r1, #0x9c
	add r0, r0, #1
	strh r0, [r5, r1]
	ldr r0, _0223993C ; =0x000005DC
	bl PlaySE
	mov r0, #0x47
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	ldr r1, _02239940 ; =ov70_02245240
	ldr r2, _02239944 ; =ov70_02245242
	lsl r3, r0, #2
	ldr r0, _02239948 ; =0x00000DCC
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r5, r0]
	bl ov70_02238D8C
_02239938:
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223993C: .word 0x000005DC
_02239940: .word ov70_02245240
_02239944: .word ov70_02245242
_02239948: .word 0x00000DCC
_0223994C: .word gSystem
_02239950: .word 0x00000F0F
	thumb_func_end ov70_02239834

