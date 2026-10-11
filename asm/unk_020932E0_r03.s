#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02093630
	.public sub_0209389C
	.public sub_02093908
	.public sub_0209396C
	.public sub_020939B8
	.extern sub_02094794
	.extern sub_02094860
	.extern sub_020948C4
	.extern sub_020949F4
	.extern sub_02094A70
	.extern sub_02094A90
	.extern sub_02094F5C
	.extern sub_0209501C
	.extern sub_020950C0
	.extern sub_020950F8
	.extern sub_02095238
	.extern sub_02095354
	.extern sub_020954CC
	.extern sub_02095540
	.extern sub_020955EC
	.extern sub_0209569C
	.extern sub_020956B8
	.extern sub_02095780
	.extern sub_02095794

	.text

	.text
	thumb_func_start sub_02093630
sub_02093630: ; 0x02093630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	str r4, [sp]
	bl System_GetTouchHeld
	cmp r0, #0
	bne _02093714
	ldr r0, _02093874 ; =0x000046C0
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02093714
	ldr r1, _02093878 ; =gSystem
	ldr r4, [r1, #0x48]
	cmp r4, #0
	beq _02093714
	sub r0, #8
	ldr r0, [r5, r0]
	mov r7, #0
	add r6, r7, #0
	bl sub_02095DD8
	cmp r4, #0x20
	bgt _0209367A
	bge _02093688
	cmp r4, #2
	bgt _02093674
	cmp r4, #1
	blt _020936EE
	beq _020936C0
	cmp r4, #2
	beq _020936D8
	b _020936EE
_02093674:
	cmp r4, #0x10
	beq _0209369C
	b _020936EE
_0209367A:
	cmp r4, #0x40
	bgt _02093682
	beq _020936B0
	b _020936EE
_02093682:
	cmp r4, #0x80
	beq _020936B8
	b _020936EE
_02093688:
	cmp r0, #5
	bne _02093694
	add r0, r5, #0
	bl sub_02095540
	b _020936EE
_02093694:
	sub r0, r7, #1
	lsl r0, r0, #0x18
	asr r7, r0, #0x18
	b _020936EE
_0209369C:
	cmp r0, #5
	bne _020936A8
	add r0, r5, #0
	bl sub_020955EC
	b _020936EE
_020936A8:
	add r0, r7, #1
	lsl r0, r0, #0x18
	asr r7, r0, #0x18
	b _020936EE
_020936B0:
	sub r0, r6, #1
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	b _020936EE
_020936B8:
	add r0, r6, #1
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	b _020936EE
_020936C0:
	add r0, r5, #0
	bl sub_02095354
	str r0, [sp]
	cmp r0, #0
	beq _020936EE
	cmp r0, #3
	beq _020936EE
	ldr r0, _0209387C ; =0x000005DD
	bl PlaySE
	b _020936EE
_020936D8:
	add r0, r5, #0
	bl sub_020954CC
	str r0, [sp]
	cmp r0, #0
	beq _020936EE
	cmp r0, #3
	beq _020936EE
	ldr r0, _0209387C ; =0x000005DD
	bl PlaySE
_020936EE:
	cmp r7, #0
	bne _020936F6
	cmp r6, #0
	beq _02093714
_020936F6:
	ldr r0, _02093880 ; =0x000046B8
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl sub_02095D88
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02095238
	cmp r6, #0
	beq _02093714
	ldr r0, _02093884 ; =0x000005DC
	bl PlaySE
_02093714:
	cmp r4, #0
	bne _02093720
	ldr r0, _02093888 ; =0x000046BC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02093722
_02093720:
	b _02093860
_02093722:
	bl System_GetTouchNew
	cmp r0, #0
	bne _0209372C
	b _02093832
_0209372C:
	ldr r0, _0209388C ; =0x00004680
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02093832
	mov r1, #1
	add r0, #0x44
	str r1, [r5, r0]
	ldr r0, _02093890 ; =0x000007E4
	ldr r0, [r5, r0]
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0209382A
	cmp r4, #0x1e
	bge _0209378A
	ldrb r0, [r5, #0xf]
	cmp r0, #0x12
	bne _0209375A
	cmp r4, #6
	bge _02093824
_0209375A:
	ldr r0, _02093880 ; =0x000046B8
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	mov r1, #2
	lsr r2, r2, #0x18
	bl sub_02095D40
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02094794
	cmp r0, #1
	bne _02093824
	ldr r0, _02093894 ; =0x000005EB
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_020948C4
	mov r0, #1
	str r0, [sp]
	b _02093824
_0209378A:
	cmp r4, #0x21
	blt _020937CE
	ldrb r0, [r5, #0xd]
	add r0, #0x21
	cmp r4, r0
	bge _020937CE
	ldr r0, _02093880 ; =0x000046B8
	add r2, r4, #0
	sub r2, #0x21
	lsl r2, r2, #0x18
	ldr r0, [r5, r0]
	mov r1, #3
	lsr r2, r2, #0x18
	bl sub_02095D40
	add r1, r4, #0
	add r0, r5, #0
	sub r1, #0x21
	bl sub_02094860
	cmp r0, #1
	bne _02093824
	ldr r0, _02093894 ; =0x000005EB
	bl PlaySE
	sub r4, #0x21
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_020948C4
	mov r0, #1
	str r0, [sp]
	b _02093824
_020937CE:
	cmp r4, #0x1e
	beq _020937EC
	cmp r4, #0x1f
	beq _020937DC
	cmp r4, #0x20
	beq _020937E4
	b _02093824
_020937DC:
	add r0, r5, #0
	bl sub_02095540
	b _02093824
_020937E4:
	add r0, r5, #0
	bl sub_020955EC
	b _02093824
_020937EC:
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _02093824
	mov r0, #0xe
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, sp, #4
	bl Sprite_SetMatrix
	ldr r0, _02093880 ; =0x000046B8
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_02095D40
	add r0, r5, #0
	bl sub_0209569C
	mov r0, #3
	str r0, [sp]
_02093824:
	add r0, r5, #0
	bl sub_020956B8
_0209382A:
	ldr r0, _02093874 ; =0x000046C0
	mov r1, #1
	str r1, [r5, r0]
	b _02093860
_02093832:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _02093850
	ldr r0, _02093898 ; =0x000046C4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02093850
	add r0, r5, #0
	bl sub_020949F4
	ldr r0, _02093874 ; =0x000046C0
	mov r1, #1
	str r1, [r5, r0]
	b _02093860
_02093850:
	add r0, r5, #0
	bl sub_02094A70
	ldr r0, _02093874 ; =0x000046C0
	mov r1, #0
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_02093860:
	ldrb r1, [r5, #0xe]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _0209386C
	mov r0, #1
	str r0, [r5, #0x14]
_0209386C:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02093874: .word 0x000046C0
_02093878: .word gSystem
_0209387C: .word 0x000005DD
_02093880: .word 0x000046B8
_02093884: .word 0x000005DC
_02093888: .word 0x000046BC
_0209388C: .word 0x00004680
_02093890: .word 0x000007E4
_02093894: .word 0x000005EB
_02093898: .word 0x000046C4
	thumb_func_end sub_02093630

	thumb_func_start sub_0209389C
sub_0209389C: ; 0x0209389C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #0xf
	strb r1, [r0, #0x11]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _020938EC
	ldr r0, _02093904 ; =0x00004660
	mov r1, #0
	add r0, r4, r0
	bl sub_020950F8
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl sub_0209501C
	b _020938F6
_020938EC:
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0209501C
_020938F6:
	bl sub_02095780
	mov r0, #2
	str r0, [r4, #0x14]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02093904: .word 0x00004660
	thumb_func_end sub_0209389C

	thumb_func_start sub_02093908
sub_02093908: ; 0x02093908
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0209391C
	cmp r0, #2
	beq _02093932
	pop {r4, pc}
_0209391C:
	ldr r0, _02093964 ; =0x00004660
	mov r1, #1
	add r0, r4, r0
	bl sub_020950F8
	ldr r0, [r4, #8]
	bl YesNoPrompt_Reset
	mov r0, #6
	str r0, [r4, #0x14]
	pop {r4, pc}
_02093932:
	ldr r0, _02093964 ; =0x00004660
	mov r1, #1
	add r0, r4, r0
	bl sub_020950F8
	ldr r0, [r4, #8]
	bl YesNoPrompt_Reset
	ldr r1, _02093968 ; =0x000046B0
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl sub_02094F5C
	add r0, r4, #0
	bl sub_020950C0
	bl sub_02095794
	add r0, r4, #0
	bl sub_020956B8
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
	nop
_02093964: .word 0x00004660
_02093968: .word 0x000046B0
	thumb_func_end sub_02093908

	thumb_func_start sub_0209396C
sub_0209396C: ; 0x0209396C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #0xf
	strb r1, [r0, #0x11]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl sub_0209501C
	bl sub_02095780
	mov r0, #5
	str r0, [r4, #0x14]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_0209396C

	thumb_func_start sub_020939B8
sub_020939B8: ; 0x020939B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _020939CC
	cmp r0, #2
	beq _02093A10
	pop {r4, pc}
_020939CC:
	ldr r0, _02093A34 ; =0x00004660
	mov r1, #1
	add r0, r4, r0
	bl sub_020950F8
	ldr r0, [r4, #8]
	bl YesNoPrompt_Reset
	ldr r1, _02093A38 ; =0x00004684
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl sub_02094F5C
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0x2d
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #2
	bl sub_02094A90
	ldr r0, _02093A3C ; =0x000046BC
	mov r1, #0
	str r1, [r4, r0]
	bl sub_02095794
	add r0, r4, #0
	bl sub_020956B8
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
_02093A10:
	ldr r0, _02093A34 ; =0x00004660
	mov r1, #1
	add r0, r4, r0
	bl sub_020950F8
	ldr r0, [r4, #8]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	mov r1, #0
	bl sub_02094A90
	bl sub_02095794
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
	nop
_02093A34: .word 0x00004660
_02093A38: .word 0x00004684
_02093A3C: .word 0x000046BC
	thumb_func_end sub_020939B8

