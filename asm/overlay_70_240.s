#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E50
	.public ov70_022414A0
	.public ov70_02241648
	.public ov70_0224182C
	.public ov70_02241868
	.public ov70_022418A4
	.public ov70_02245D50

	.text

	thumb_func_start ov70_022414A0
ov70_022414A0: ; 0x022414A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3d
	bl AllocMonZeroed
	ldr r1, _02241640 ; =0x000011F0
	str r0, [r4, r1]
	ldr r0, [r4, #0x24]
	cmp r0, #0xa
	bls _022414B6
	b _02241618
_022414B6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022414C2: ; jump table
	.short _02241618 - _022414C2 - 2 ; case 0
	.short _02241618 - _022414C2 - 2 ; case 1
	.short _02241618 - _022414C2 - 2 ; case 2
	.short _02241618 - _022414C2 - 2 ; case 3
	.short _02241618 - _022414C2 - 2 ; case 4
	.short _02241618 - _022414C2 - 2 ; case 5
	.short _02241618 - _022414C2 - 2 ; case 6
	.short _022414D8 - _022414C2 - 2 ; case 7
	.short _0224151C - _022414C2 - 2 ; case 8
	.short _022415B2 - _022414C2 - 2 ; case 9
	.short _02241560 - _022414C2 - 2 ; case 10
_022414D8:
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl Mon_GetBoxMon
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xf8
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	str r1, [r0]
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0224182C
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #3
	sub r0, #0x2c
	str r2, [r4, r0]
	mov r0, #2
	sub r1, #0x28
	str r0, [r4, r1]
	b _02241618
_0224151C:
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl Mon_GetBoxMon
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xf8
	str r1, [r0]
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0224182C
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #3
	sub r0, #0x2c
	str r2, [r4, r0]
	mov r0, #4
	sub r1, #0x28
	str r0, [r4, r1]
	b _02241618
_02241560:
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl Mon_GetBoxMon
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	ldr r0, [r4]
	ldr r1, _02241640 ; =0x000011F0
	ldr r0, [r0]
	ldr r1, [r4, r1]
	bl sub_0202DB64
	ldr r0, _02241640 ; =0x000011F0
	ldr r0, [r4, r0]
	bl Mon_GetBoxMon
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_0224182C
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #3
	sub r0, #0x2c
	str r2, [r4, r0]
	mov r0, #1
	sub r1, #0x28
	str r0, [r4, r1]
	b _02241618
_022415B2:
	ldr r0, [r4]
	ldr r1, [r4, r1]
	ldr r0, [r0]
	bl sub_0202DB64
	ldr r0, _02241640 ; =0x000011F0
	ldr r0, [r4, r0]
	bl Mon_GetBoxMon
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	mov r0, #0x26
	lsl r0, r0, #4
	add r2, r4, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	mul r0, r1
	add r0, r2, r0
	bl Mon_GetBoxMon
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	mov r0, #0x26
	lsl r0, r0, #4
	add r2, r4, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	mul r0, r1
	add r0, r2, r0
	bl ov70_0224182C
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x30
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #3
	sub r0, #0x2c
	str r2, [r4, r0]
	mov r0, #1
	sub r1, #0x28
	str r0, [r4, r1]
_02241618:
	ldr r0, [r4]
	mov r2, #0x3d
	ldr r1, [r0, #0x24]
	mov r0, #0x43
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r4, #0
	ldr r0, _02241644 ; =ov70_02245D50
	add r1, #0xf8
	bl OverlayManager_New
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	mov r0, #0x45
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_02241640: .word 0x000011F0
_02241644: .word ov70_02245D50
	thumb_func_end ov70_022414A0

	thumb_func_start ov70_02241648
ov70_02241648: ; 0x02241648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	mov r4, #3
	cmp r0, #0
	beq _0224165E
	cmp r0, #1
	bne _0224165C
	b _022417C8
_0224165C:
	b _022417FE
_0224165E:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl OverlayManager_Run
	cmp r0, #0
	bne _0224166E
	b _022417FE
_0224166E:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl OverlayManager_Delete
	ldr r1, [r5, #0x24]
	cmp r1, #9
	bne _022416E8
	add r0, r5, #0
	bl ov70_02241868
	mov r1, #6
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	add r3, r0, #0
	add r0, sp, #0x28
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #0
	add r1, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl GetMonEvolution
	add r2, r0, #0
	beq _022416DA
	ldr r3, [r5]
	add r1, r6, #0
	ldr r0, [r3, #0x38]
	str r0, [sp]
	ldr r0, [r3, #0x10]
	str r0, [sp, #4]
	ldr r0, [r3, #0x2c]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #0x3d
	str r0, [sp, #0x18]
	ldr r3, [r3, #0x24]
	mov r0, #0
	bl sub_02075A7C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #1
	str r0, [r5, #0x2c]
	b _022417FE
_022416DA:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	mov r4, #4
	b _022417FE
_022416E8:
	cmp r1, #8
	beq _022416F0
	cmp r1, #0xa
	bne _022417BA
_022416F0:
	add r0, r5, #0
	bl ov70_02241868
	add r6, r0, #0
	mov r0, #0x3d
	bl AllocMonZeroed
	add r7, r0, #0
	ldr r0, [r5]
	add r1, r7, #0
	ldr r0, [r0]
	bl sub_0202DB64
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x1c]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne _02241742
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl GetMonData
	mov r1, #0
	str r0, [sp, #0x20]
	add r0, r7, #0
	add r2, r1, #0
	bl GetMonData
	ldr r1, [sp, #0x20]
	cmp r1, r0
	beq _022417A6
_02241742:
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r3, r0, #0
	add r0, sp, #0x24
	lsl r3, r3, #0x10
	str r0, [sp]
	mov r0, #0
	add r1, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl GetMonEvolution
	add r2, r0, #0
	beq _02241798
	ldr r3, [r5]
	add r1, r6, #0
	ldr r0, [r3, #0x38]
	str r0, [sp]
	ldr r0, [r3, #0x10]
	str r0, [sp, #4]
	ldr r0, [r3, #0x2c]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #0x3d
	str r0, [sp, #0x18]
	ldr r3, [r3, #0x24]
	mov r0, #0
	bl sub_02075A7C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #1
	str r0, [r5, #0x2c]
	b _022417B2
_02241798:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	mov r4, #4
	b _022417B2
_022417A6:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	mov r4, #4
_022417B2:
	add r0, r7, #0
	bl Heap_Free
	b _022417FE
_022417BA:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	mov r4, #4
	b _022417FE
_022417C8:
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02075D3C
	cmp r0, #0
	beq _022417FE
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02075D4C
	add r0, r5, #0
	bl ov70_022418A4
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02241804 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xc
	bl ov70_02238E50
	mov r4, #4
_022417FE:
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02241804: .word 0xFFFF1FFF
	thumb_func_end ov70_02241648

