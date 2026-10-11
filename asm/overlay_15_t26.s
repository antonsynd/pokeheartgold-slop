#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA4F8
	.public ov15_021FA578
	.public ov15_021FA620
	.public ov15_021FA650
	.public ov15_021FA68C
	.extern _02201300
	.extern _02201480
	.extern ov15_021FA170
	.extern ov15_021FA6F4
	.extern ov15_021FAD80
	.extern ov15_021FB14C
	.extern ov15_021FD574
	.extern ov15_021FF4EC
	.extern ov15_021FFF34
	.extern ov15_022002B4

	.text

	.text
	thumb_func_start ov15_021FA4F8
ov15_021FA4F8: ; 0x021FA4F8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x8d
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r6, r1, #4
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	add r7, r2, #0
	mul r7, r1
	mov r2, #0
	mov r1, #2
	add r3, r2, #0
	add r4, r6, r7
	bl ov15_021FD574
	ldr r2, _021FA574 ; =0x00000644
	mov r1, #6
	ldr r2, [r5, r2]
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	sub r2, #8
	bl ov15_021FF4EC
	ldr r1, _021FA574 ; =0x00000644
	add r0, r5, #0
	ldr r1, [r5, r1]
	sub r1, #8
	bl ov15_022002B4
	add r0, r5, #0
	bl ov15_021FB14C
	mov r0, #6
	ldrsh r3, [r4, r0]
	ldr r0, _021FA574 ; =0x00000644
	ldr r1, [r6, r7]
	ldr r2, [r5, r0]
	add r2, r3, r2
	sub r2, #8
	lsl r2, r2, #2
	ldrh r2, [r1, r2]
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r1, #0x66
	strh r2, [r1]
	mov r2, #6
	ldrsh r3, [r4, r2]
	ldr r2, [r5, r0]
	ldr r1, [r6, r7]
	add r2, r3, r2
	sub r2, #8
	lsl r2, r2, #2
	add r1, r1, r2
	ldrh r1, [r1, #2]
	add r0, #0x3e
	strh r1, [r5, r0]
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FA574: .word 0x00000644
	thumb_func_end ov15_021FA4F8

	thumb_func_start ov15_021FA578
ov15_021FA578: ; 0x021FA578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, r0, #4
	add r0, #0x64
	ldrb r2, [r0]
	mov r0, #0xc
	mul r0, r2
	add r4, r3, r0
	cmp r1, #0
	ble _021FA5A8
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r1, r0, #6
	ldrb r0, [r4, #9]
	cmp r1, r0
	bge _021FA5A2
	strh r1, [r4, #6]
	b _021FA5C2
_021FA5A2:
	mov r0, #0
	strh r0, [r4, #6]
	b _021FA5C2
_021FA5A8:
	mov r1, #6
	ldrsh r0, [r4, r1]
	sub r0, r0, #6
	bmi _021FA5B4
	strh r0, [r4, #6]
	b _021FA5C2
_021FA5B4:
	ldrb r0, [r4, #9]
	sub r0, r0, #1
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	strh r1, [r4, #6]
_021FA5C2:
	ldr r0, _021FA618 ; =0x00000671
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021FA5E0
	add r0, r5, #0
	add r1, r4, #0
	bl ov15_021FAD80
	ldr r1, _021FA61C ; =0x0000066C
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov15_021FFF34
	mov r0, #3
	pop {r3, r4, r5, pc}
_021FA5E0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov15_021FA6F4
	add r0, r5, #0
	bl ov15_021FA170
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	beq _021FA60A
	cmp r0, #2
	beq _021FA606
	cmp r0, #3
	beq _021FA60E
	b _021FA612
_021FA606:
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_021FA60A:
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_021FA60E:
	mov r0, #0x1a
	pop {r3, r4, r5, pc}
_021FA612:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021FA618: .word 0x00000671
_021FA61C: .word 0x0000066C
	thumb_func_end ov15_021FA578

	thumb_func_start ov15_021FA620
ov15_021FA620: ; 0x021FA620
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021FA648 ; =0x00000614
	ldrb r2, [r4, r0]
	mov r0, #0xa
	add r1, r2, #0
	mul r1, r0
	mov r0, #0x5a
	sub r0, r0, r1
	add r1, r2, #1
	bl _s32_div_f
	add r1, r0, #6
	ldr r0, _021FA64C ; =0x00000617
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	add r0, r0, #1
	add r1, r1, #4
	strb r1, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
_021FA648: .word 0x00000614
_021FA64C: .word 0x00000617
	thumb_func_end ov15_021FA620

	thumb_func_start ov15_021FA650
ov15_021FA650: ; 0x021FA650
	push {r4, lr}
	ldr r1, _021FA680 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #2
	lsl r1, r1, #0xc
	tst r1, r2
	beq _021FA67C
	ldr r3, _021FA684 ; =_02201480
	ldr r1, [r3]
	add r4, r1, #1
	ldr r1, _021FA688 ; =_02201300
	str r4, [r3]
	ldr r2, [r1]
	cmp r4, r2
	blt _021FA672
	mov r1, #0
	str r1, [r3]
_021FA672:
	ldr r3, _021FA684 ; =_02201480
	mov r1, #1
	ldr r3, [r3]
	bl ov15_021FD574
_021FA67C:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021FA680: .word gSystem
_021FA684: .word _02201480
_021FA688: .word _02201300
	thumb_func_end ov15_021FA650

	thumb_func_start ov15_021FA68C
ov15_021FA68C: ; 0x021FA68C
	push {r4, r5}
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r5, [r0, r2]
	mov r3, #0
	add r2, r5, #0
	add r4, r3, #0
_021FA69A:
	ldrb r0, [r2, #0xc]
	cmp r1, r0
	bne _021FA6AE
	add r0, r5, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021FA6AE
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_021FA6AE:
	add r3, r3, #1
	add r2, #0xc
	add r4, #0xc
	cmp r3, #8
	blt _021FA69A
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov15_021FA68C

