#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02094668
	.extern sub_02094758
	.extern sub_02094C08

	.text

	.text
	thumb_func_start sub_02094668
sub_02094668: ; 0x02094668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [r4, #4]
	mov r0, #0x14
	add r7, r2, #0
	add r6, r3, #0
	bl NARC_New
	str r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r1, r1, #0xc
	bl Heap_AllocAtEnd
	str r0, [sp, #0x18]
	mov r3, #0
	mov r1, #0x83
	ldr r0, _02094740 ; =0x000008DC
	add r5, r4, #0
	add r2, r3, #0
	lsl r1, r1, #2
_02094696:
	add r3, r3, #1
	str r2, [r5, r0]
	add r5, r5, r1
	cmp r3, #0x1e
	blt _02094696
	cmp r6, #0
	beq _020946E6
	ldr r1, [sp, #0xc]
	ldr r0, _02094744 ; =0x000007EC
	add r3, r7, #0
	mov r2, #0x34
	mul r3, r2
	mul r2, r1
	add r1, r4, r2
	add r5, r4, r0
	mov ip, r2
	add r2, r5, r3
	add r6, r1, r0
	mov r7, #6
_020946BC:
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r7, r7, #1
	bne _020946BC
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, _02094748 ; =0x00000222
	str r0, [sp, #8]
	add r0, r5, r3
	ldr r5, _0209474C ; =0x000008D4
	mov r3, ip
	add r1, r4, r5
	add r3, r4, r3
	sub r5, #0xec
	ldr r2, [sp, #0xc]
	ldr r3, [r3, r5]
	bl sub_02094C08
	b _0209472A
_020946E6:
	mov r0, #0x67
	lsl r0, r0, #2
	add r6, r4, r0
	add r5, r7, #0
	mov r1, #0x34
	mul r5, r1
	ldr r0, [sp, #0xc]
	add r3, r6, r5
	mul r1, r0
	str r1, [sp, #0x10]
	ldr r0, _02094744 ; =0x000007EC
	add r1, r4, r1
	add r2, r1, r0
	mov r7, #6
_02094702:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _02094702
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r3, r4, r3
	str r0, [sp, #4]
	ldr r0, _02094748 ; =0x00000222
	str r0, [sp, #8]
	add r0, r6, r5
	ldr r5, _0209474C ; =0x000008D4
	ldr r2, [sp, #0xc]
	add r1, r4, r5
	sub r5, #0xec
	ldr r3, [r3, r5]
	bl sub_02094C08
_0209472A:
	ldr r0, [sp, #0x18]
	bl Heap_Free
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	ldr r1, _02094750 ; =sub_02094758
	ldr r0, _02094754 ; =0x00004644
	str r1, [r4, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02094740: .word 0x000008DC
_02094744: .word 0x000007EC
_02094748: .word 0x00000222
_0209474C: .word 0x000008D4
_02094750: .word sub_02094758
_02094754: .word 0x00004644
	thumb_func_end sub_02094668

