#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02094400
	.public sub_02094528
	.public sub_02094668
	.extern sub_02094758
	.extern sub_02094C08
	.extern sub_02094C88
	.extern sub_02094EB4
	.extern sub_02094F14

	.text

	.text
	thumb_func_start sub_02094400
sub_02094400: ; 0x02094400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	ldr r1, [r5, #4]
	mov r0, #0x14
	bl NARC_New
	str r0, [sp, #0x1c]
	mov r1, #1
	ldr r0, [r5, #4]
	lsl r1, r1, #0xc
	bl Heap_AllocAtEnd
	str r0, [sp, #0x20]
	mov r7, #0
	add r4, r5, #0
_02094420:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetOamMode
	ldr r6, _02094514 ; =0x0000463C
	ldrb r1, [r5, #0xf]
	ldr r0, [r5, r6]
	add r6, #0xc
	ldr r6, [r5, r6]
	add r2, r7, #0
	add r3, sp, #0x24
	blx r6
	cmp r0, #0
	beq _02094494
	mov r0, #0x67
	lsl r0, r0, #2
	add r3, sp, #0x24
	add r2, r4, r0
	mov r6, #6
_0209444A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0209444A
	ldr r0, [sp, #0x20]
	mov r3, #0x66
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, _02094518 ; =0x000008D4
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	add r0, sp, #0x24
	add r1, r5, r1
	add r2, r7, #0
	bl sub_02094C08
	add r0, sp, #0x24
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _02094486
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	b _020944BA
_02094486:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetOamMode
	b _020944BA
_02094494:
	ldr r0, [sp, #0x20]
	ldr r1, _02094518 ; =0x000008D4
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r1, r5, r1
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	add r0, sp, #0x24
	add r2, r7, #0
	mov r3, #0
	bl sub_02094C08
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_020944BA:
	add r7, r7, #1
	add r4, #0x34
	cmp r7, #0x1e
	blt _02094420
	ldr r0, [sp, #0x20]
	bl Heap_Free
	ldr r0, [sp, #0x1c]
	bl NARC_Delete
	ldr r1, _0209451C ; =sub_02094758
	ldr r0, _02094520 ; =0x00004644
	str r1, [r5, r0]
	ldrb r1, [r5, #0xf]
	add r0, r5, #0
	bl sub_02094C88
	add r0, r5, #0
	bl sub_02094EB4
	mov r0, #0x14
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02094524 ; =0x000046D4
	mov r2, #0
	ldr r0, [r5, r0]
	mov r1, #2
	add r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	add r3, r2, #0
	bl CopyRectToBgTilemapRect
	ldr r0, [r5]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02094514: .word 0x0000463C
_02094518: .word 0x000008D4
_0209451C: .word sub_02094758
_02094520: .word 0x00004644
_02094524: .word 0x000046D4
	thumb_func_end sub_02094400

	thumb_func_start sub_02094528
sub_02094528: ; 0x02094528
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r6, r0, #0
	ldr r1, [r6, #4]
	mov r0, #0x14
	bl NARC_New
	str r0, [sp, #0x20]
	mov r1, #1
	ldr r0, [r6, #4]
	lsl r1, r1, #0xc
	bl Heap_AllocAtEnd
	str r0, [sp, #0x24]
	ldr r0, _02094654 ; =0x00004640
	ldr r0, [r6, r0]
	bl Party_GetCount
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	str r0, [sp, #0x1c]
	cmp r0, #0
	ble _020945C0
	add r5, r6, #0
_0209455A:
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0x28
	bl sub_02094F14
	mov r0, #0x67
	lsl r0, r0, #2
	add r3, sp, #0x28
	add r2, r5, r0
	mov r7, #6
_0209456E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _0209456E
	ldr r0, [sp, #0x24]
	mov r3, #0x66
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, _02094658 ; =0x000008D4
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, sp, #0x28
	add r1, r6, r1
	add r2, r4, #0
	bl sub_02094C08
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _020945AA
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	b _020945B6
_020945AA:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetOamMode
_020945B6:
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r5, #0x34
	cmp r4, r0
	blt _0209455A
_020945C0:
	mov r1, #0
	str r1, [sp, #0x28]
	add r0, sp, #0x28
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	cmp r4, #0x1e
	bge _02094606
	mov r0, #0x34
	mul r0, r4
	add r5, r6, r0
	mov r7, #0x40
_020945DA:
	ldr r0, [sp, #0x24]
	ldr r1, _02094658 ; =0x000008D4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r6, r1
	str r0, [sp, #4]
	add r0, sp, #0x28
	add r2, r4, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02094C08
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, #0x34
	cmp r4, #0x1e
	blt _020945DA
_02094606:
	ldr r0, [sp, #0x24]
	bl Heap_Free
	ldr r0, [sp, #0x20]
	bl NARC_Delete
	ldr r1, _0209465C ; =sub_02094758
	ldr r0, _02094660 ; =0x00004644
	str r1, [r6, r0]
	ldrb r1, [r6, #0xf]
	add r0, r6, #0
	bl sub_02094C88
	add r0, r6, #0
	bl sub_02094EB4
	mov r1, #0x14
	str r1, [sp]
	mov r2, #0
	ldr r0, _02094664 ; =0x000046D0
	str r1, [sp, #4]
	ldr r0, [r6, r0]
	add r3, r2, #0
	add r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r6]
	mov r1, #2
	bl CopyRectToBgTilemapRect
	ldr r0, [r6]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02094654: .word 0x00004640
_02094658: .word 0x000008D4
_0209465C: .word sub_02094758
_02094660: .word 0x00004644
_02094664: .word 0x000046D0
	thumb_func_end sub_02094528

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

