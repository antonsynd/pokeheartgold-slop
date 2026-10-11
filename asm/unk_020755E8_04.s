#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "unk_020755E8.inc"
	.include "global.inc"
	.public sub_0207584C
	.public sub_020758D0
	.extern _020FFECC
	.extern sub_020757AC
	.extern sub_02075804

	.text
	thumb_func_start sub_0207584C
sub_0207584C: ; 0x0207584C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xb8
	ldr r6, _020758C8 ; =0x0000049D
	ldr r0, [r0]
	add r7, r1, #0
	add r4, r6, #1
	cmp r0, #0
	bne _02075862
	bl GF_AssertFail
_02075862:
	cmp r7, #0
	bne _02075878
	add r2, r5, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl BufferMoveName
	ldr r6, _020758CC ; =0x000004A2
	add r4, r6, #1
_02075878:
	add r1, r5, #0
	ldr r2, [r5, #8]
	add r0, r5, #0
	add r1, #0x8c
	add r3, r6, #0
	bl sub_02075804
	add r1, r5, #0
	ldr r2, [r5, #8]
	add r0, r5, #0
	add r1, #0x9c
	add r3, r4, #0
	bl sub_02075804
	add r0, r5, #0
	mov r1, #0
	add r0, #0x8a
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8b
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020757AC
	mov r0, #5
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #1
	bl ToggleBgLayer
	add r5, #0xb4
	ldr r0, [r5]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020758C8: .word 0x0000049D
_020758CC: .word 0x000004A2
	thumb_func_end sub_0207584C

	thumb_func_start sub_020758D0
sub_020758D0: ; 0x020758D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020759C0 ; =_020FFECC
	mov r4, #0
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _020758EC
	bl GF_AssertFail
_020758EC:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02075920
	ldr r0, _020759C4 ; =0x000005DC
	bl PlaySE
	cmp r6, #0
	beq _02075904
	cmp r6, #1
	beq _0207590E
	b _0207591A
_02075904:
	add r0, r5, #0
	mov r4, #1
	add r0, #0x8b
	strb r4, [r0]
	b _020759A0
_0207590E:
	add r0, r5, #0
	mov r1, #2
	add r0, #0x8b
	strb r1, [r0]
	mov r4, #1
	b _020759A0
_0207591A:
	bl GF_AssertFail
	b _020759A0
_02075920:
	ldr r0, _020759C8 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0207594A
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #1
	beq _020759A0
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8b
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020757AC
	ldr r0, _020759C4 ; =0x000005DC
	bl PlaySE
	b _020759A0
_0207594A:
	mov r1, #0x80
	tst r1, r0
	beq _02075970
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #2
	beq _020759A0
	add r0, r5, #0
	mov r1, #2
	add r0, #0x8b
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020757AC
	ldr r0, _020759C4 ; =0x000005DC
	bl PlaySE
	b _020759A0
_02075970:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _02075992
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207598E
	bl GF_AssertFail
	add r0, r5, #0
	mov r1, #2
	add r0, #0x8b
	strb r1, [r0]
_0207598E:
	mov r4, #1
	b _020759A0
_02075992:
	mov r2, #2
	tst r0, r2
	beq _020759A0
	add r0, r5, #0
	add r0, #0x8b
	strb r2, [r0]
	add r4, r1, #0
_020759A0:
	cmp r4, #0
	beq _020759BA
	add r0, r5, #0
	bl sub_020757AC
	add r5, #0xb4
	ldr r0, [r5]
	mov r1, #3
	bl ManagedSprite_SetAnim
	ldr r0, _020759C4 ; =0x000005DC
	bl PlaySE
_020759BA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_020759C0: .word _020FFECC
_020759C4: .word 0x000005DC
_020759C8: .word gSystem
	thumb_func_end sub_020758D0

