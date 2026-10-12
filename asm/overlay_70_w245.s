#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F7E4
	.public ov70_0223F828
	.public ov70_0223F864
	.public ov70_0223F8A8
	.public ov70_0223F8D0
	.public ov70_0223F904
	.extern ov70_022459C8
	.extern ov70_022459F4
	.extern ov70_02245A4C
	.extern ov70_02245B5C

	.text

	.text
	thumb_func_start ov70_0223F7E4
ov70_0223F7E4: ; 0x0223F7E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	cmp r2, #0
	bne _0223F7F4
	ldr r5, _0223F820 ; =ov70_02245A4C
	mov r6, #0xc
	b _0223F7F8
_0223F7F4:
	ldr r5, _0223F824 ; =ov70_022459F4
	mov r6, #0xb
_0223F7F8:
	add r0, r6, #0
	mov r1, #0x3d
	bl ListMenuItems_New
	mov r4, #0
	str r0, [r7]
	cmp r6, #0
	ble _0223F81C
_0223F808:
	ldr r0, [r7]
	ldr r1, [sp]
	ldr r2, [r5]
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
	add r5, #8
	cmp r4, r6
	blt _0223F808
_0223F81C:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F820: .word ov70_02245A4C
_0223F824: .word ov70_022459F4
	thumb_func_end ov70_0223F7E4

	thumb_func_start ov70_0223F828
ov70_0223F828: ; 0x0223F828
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	bne _0223F83E
	ldr r6, _0223F85C ; =ov70_02245A4C
	cmp r4, #0xc
	blt _0223F848
	bl GF_AssertFail
	b _0223F848
_0223F83E:
	ldr r6, _0223F860 ; =ov70_022459F4
	cmp r4, #0xb
	blt _0223F848
	bl GF_AssertFail
_0223F848:
	lsl r0, r4, #3
	add r1, r6, r0
	mov r0, #4
	ldrsh r0, [r1, r0]
	strb r0, [r5, #3]
	mov r0, #6
	ldrsh r0, [r1, r0]
	strb r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_0223F85C: .word ov70_02245A4C
_0223F860: .word ov70_022459F4
	thumb_func_end ov70_0223F828

	thumb_func_start ov70_0223F864
ov70_0223F864: ; 0x0223F864
	push {r4, r5, r6, r7}
	cmp r2, #0
	bne _0223F870
	ldr r4, _0223F8A0 ; =ov70_02245A4C
	mov r3, #0xc
	b _0223F874
_0223F870:
	ldr r4, _0223F8A4 ; =ov70_022459F4
	mov r3, #0xb
_0223F874:
	mov r2, #0
	cmp r3, #0
	ble _0223F898
	mov r5, #6
	mov r6, #4
_0223F87E:
	ldrsh r7, [r4, r6]
	cmp r0, r7
	bne _0223F890
	ldrsh r7, [r4, r5]
	cmp r1, r7
	bne _0223F890
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
_0223F890:
	add r2, r2, #1
	add r4, #8
	cmp r2, r3
	blt _0223F87E
_0223F898:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0223F8A0: .word ov70_02245A4C
_0223F8A4: .word ov70_022459F4
	thumb_func_end ov70_0223F864

	thumb_func_start ov70_0223F8A8
ov70_0223F8A8: ; 0x0223F8A8
	cmp r1, #0
	bne _0223F8B4
	ldr r1, _0223F8C8 ; =0x000012CC
	mov r2, #0
	str r2, [r0, r1]
	bx lr
_0223F8B4:
	sub r1, r1, #1
	cmp r1, #0x82
	bhs _0223F8C4
	lsl r2, r1, #1
	ldr r1, _0223F8CC ; =ov70_02245B5C
	ldrh r2, [r1, r2]
	ldr r1, _0223F8C8 ; =0x000012CC
	str r2, [r0, r1]
_0223F8C4:
	bx lr
	nop
_0223F8C8: .word 0x000012CC
_0223F8CC: .word ov70_02245B5C
	thumb_func_end ov70_0223F8A8

	thumb_func_start ov70_0223F8D0
ov70_0223F8D0: ; 0x0223F8D0
	push {r3, r4}
	ldr r3, _0223F900 ; =ov70_022459C8
	mov r4, #0
_0223F8D6:
	ldrb r2, [r3, #1]
	cmp r0, r2
	bne _0223F8F0
	ldr r3, _0223F900 ; =ov70_022459C8
	lsl r0, r4, #1
	ldrb r2, [r3, r0]
	add r0, r4, #1
	lsl r0, r0, #1
	str r2, [r1]
	ldrb r0, [r3, r0]
	sub r0, r0, r2
	pop {r3, r4}
	bx lr
_0223F8F0:
	add r4, r4, #1
	add r3, r3, #2
	cmp r4, #0x16
	blo _0223F8D6
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0223F900: .word ov70_022459C8
	thumb_func_end ov70_0223F8D0

	thumb_func_start ov70_0223F904
ov70_0223F904: ; 0x0223F904
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r0, r2, #0
	add r1, sp, #4
	bl ov70_0223F8D0
	mov r1, #0x3d
	add r7, r0, #0
	bl ListMenuItems_New
	str r0, [r5]
	mov r4, #0
	b _0223F938
_0223F922:
	ldr r2, [sp, #4]
	ldr r0, [r5]
	add r3, r2, r4
	lsl r6, r3, #1
	ldr r2, _0223F944 ; =ov70_02245B5C
	ldr r1, [sp]
	ldrh r2, [r2, r6]
	add r3, r3, #1
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
_0223F938:
	cmp r4, r7
	blt _0223F922
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F944: .word ov70_02245B5C
	thumb_func_end ov70_0223F904

