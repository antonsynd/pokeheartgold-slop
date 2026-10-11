#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_020850F4.inc"
	.include "global.inc"
	.public sub_020853B4
	.public sub_02085400

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_020853B4
sub_020853B4: ; 0x020853B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	mov r1, #0x34
	add r5, r2, #0
	add r7, r3, #0
	bl Heap_Alloc
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r6, #1
	str r6, [r4]
	bl String_New
	str r0, [r4, #0x1c]
	str r7, [r4, #0x20]
	mov r2, #0
	add r1, r5, #0
	add r3, r4, #0
_020853DA:
	ldr r0, [r1]
	add r2, r2, #1
	str r0, [r3, #4]
	add r1, r1, #4
	add r3, r3, #4
	cmp r2, #4
	blt _020853DA
	sub r0, r2, #1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r0, r2, #2
	add r0, r4, r0
	str r1, [r0, #4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020853B4

	thumb_func_start sub_02085400
sub_02085400: ; 0x02085400
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_020853B4
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02085400

