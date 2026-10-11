#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02094DF8
	.public sub_02094EB4
	.extern _021083AC
	.extern _021083C8
	.extern _021083E4
	.extern _02108400

	.text

	.text
	thumb_func_start sub_02094DF8
sub_02094DF8: ; 0x02094DF8
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _02094EA4 ; =_021083E4
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02094EA8 ; =_021083C8
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02094EAC ; =_021083AC
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02094EB0 ; =_02108400
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_02094EA4: .word _021083E4
_02094EA8: .word _021083C8
_02094EAC: .word _021083AC
_02094EB0: .word _02108400
	thumb_func_end sub_02094DF8

	thumb_func_start sub_02094EB4
sub_02094EB4: ; 0x02094EB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xd]
	mov r6, #0
	cmp r0, #0
	ble _02094F12
	add r4, r6, #0
	sub r7, r6, #1
_02094EC4:
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r0, r0, r4
	ldr r1, [r0, #4]
	cmp r1, r7
	beq _02094F00
	ldrb r2, [r5, #0xf]
	ldr r1, [r0, #8]
	cmp r2, r1
	bne _02094F00
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r0, r0, r4
	ldr r1, [r0, #4]
	mov r0, #0x34
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	b _02094F08
_02094F00:
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_02094F08:
	ldrb r0, [r5, #0xd]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02094EC4
_02094F12:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02094EB4

