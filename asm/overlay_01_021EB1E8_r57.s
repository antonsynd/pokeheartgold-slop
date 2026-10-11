#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021ECC70
	.extern ov01_021EB5F4
	.extern ov01_021EC29C
	.extern ov01_021EC304

	.text

	.text
	thumb_func_start ov01_021ECC70
ov01_021ECC70: ; 0x021ECC70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r5, [r6, #8]
	add r0, sp, #0
	add r1, r6, #0
	bl ov01_021EC304
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021ECC92
	cmp r0, #1
	beq _021ECCEA
	cmp r0, #2
	beq _021ECCFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021ECC92:
	mov r4, #0
	mov r7, #2
_021ECC96:
	ldr r0, [r5, #0x10]
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [r5]
	add r0, r1, #1
	str r0, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	ble _021ECCD8
	bl MTRandom
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #7
	bhs _021ECCC8
	str r7, [r5, #0xc]
	b _021ECCD8
_021ECCC8:
	mov r0, #1
	str r0, [r5, #0xc]
	mov r0, #4
	str r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #3
	bl Sprite_SetAnimationFrame
_021ECCD8:
	add r4, r4, #1
	cmp r4, #2
	blt _021ECC96
	ldr r0, [r6, #4]
	add r1, sp, #0
	bl ov01_021EB5F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021ECCEA:
	ldr r1, [r5]
	sub r0, r1, #1
	str r0, [r5]
	cmp r1, #0
	bgt _021ECD02
	mov r0, #2
	add sp, #0xc
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_021ECCFC:
	add r0, r6, #0
	bl ov01_021EC29C
_021ECD02:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021ECC70

