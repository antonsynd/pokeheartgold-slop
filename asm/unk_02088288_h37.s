#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_02089CB4
	.public sub_02089D40
	.public sub_02089D68
	.extern sub_02089F98
	.extern sub_0208A8F4
	.extern sub_0208A950

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_02089CB4
sub_02089CB4: ; 0x02089CB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _02089CCE
	cmp r0, #1
	beq _02089CCE
	cmp r0, #2
	beq _02089CD6
	b _02089CDC
_02089CCE:
	ldr r0, _02089D3C ; =0x000007BC
	mov r1, #0
	strb r1, [r4, r0]
	b _02089CDC
_02089CD6:
	ldr r0, _02089D3C ; =0x000007BC
	mov r1, #1
	strb r1, [r4, r0]
_02089CDC:
	add r0, r4, #0
	bl sub_0208B448
	add r0, r4, #0
	bl sub_0208B5A8
	add r0, r4, #0
	bl sub_0208C2A0
	add r0, r4, #0
	bl sub_0208BD38
	add r0, r4, #0
	bl sub_0208BCD4
	add r0, r4, #0
	bl sub_0208C42C
	add r0, r4, #0
	bl sub_0208CBD4
	add r0, r4, #0
	bl sub_02089F98
	add r0, r4, #0
	bl sub_0208B9C8
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _02089D26
	add r0, r4, #0
	bl sub_0208A8F4
	pop {r4, pc}
_02089D26:
	add r0, r4, #0
	bl sub_0208B400
	add r0, r4, #0
	bl sub_0208BF9C
	add r0, r4, #0
	bl sub_0208BFD0
	pop {r4, pc}
	nop
_02089D3C: .word 0x000007BC
	thumb_func_end sub_02089CB4

	thumb_func_start sub_02089D40
sub_02089D40: ; 0x02089D40
	push {r3, r4, r5, r6}
	mov r6, #0
	strb r6, [r0, #0x15]
	add r0, #0x15
	mov r3, #1
_02089D4A:
	ldrb r5, [r1, r6]
	cmp r5, #4
	beq _02089D64
	add r2, r3, #0
	ldrb r4, [r0]
	lsl r2, r5
	orr r2, r4
	strb r2, [r0]
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, #4
	blo _02089D4A
_02089D64:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_02089D40

	thumb_func_start sub_02089D68
sub_02089D68: ; 0x02089D68
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _02089E10 ; =0x000007BC
	add r5, r0, #0
	ldrsb r1, [r5, r1]
	cmp r1, r4
	beq _02089E0C
	bl sub_0208C4E0
	ldr r0, _02089E10 ; =0x000007BC
	strb r4, [r5, r0]
	add r0, r5, #0
	bl sub_0208B448
	add r0, r5, #0
	bl sub_0208B5A8
	add r0, r5, #0
	bl sub_0208B89C
	add r0, r5, #0
	bl sub_0208B9C8
	add r0, r5, #0
	bl sub_0208C2A0
	add r0, r5, #0
	bl sub_0208BCD4
	add r0, r5, #0
	bl sub_0208C42C
	mov r0, #3
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0x14
	mov r2, #0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r5]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	mov r0, #3
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0x14
	mov r2, #0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #4
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r5]
	mov r1, #4
	bl BgCommitTilemapBufferToVram
	add r0, r5, #0
	bl sub_0208CBD4
	add r0, r5, #0
	bl sub_02089F98
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #2
	bne _02089E0C
	add r0, r5, #0
	bl sub_0208A950
_02089E0C:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02089E10: .word 0x000007BC
	thumb_func_end sub_02089D68

