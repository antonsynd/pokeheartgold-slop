#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"

    .text

	thumb_func_start ov14_021F2490
ov14_021F2490: ; 0x021F2490
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #0x34]
	ldr r0, _021F252C ; =0x000088D4
	add r6, r2, #0
	ldrb r2, [r3, r0]
	add r4, r1, #0
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r2, r1
	strb r2, [r3, r0]
	mov r0, #0x2f
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl sub_02019B10
	lsl r0, r0, #0x19
	ldr r3, [r5, #0x34]
	ldr r1, _021F252C ; =0x000088D4
	mov r7, #0xfe
	ldrb r2, [r3, r1]
	lsr r0, r0, #0x18
	bic r2, r7
	orr r0, r2
	strb r0, [r3, r1]
	ldr r2, [r5, #0x34]
	add r0, r1, #1
	ldrb r3, [r2, r0]
	mov r0, #0xf
	bic r3, r0
	add r7, r3, #0
	mov r0, #3
	orr r7, r0
	add r3, r1, #1
	strb r7, [r2, r3]
	ldr r3, [r5, #0x34]
	add r2, r1, #1
	ldrb r2, [r3, r2]
	mov r7, #0xf0
	bic r2, r7
	mov r7, #0x20
	orr r7, r2
	add r2, r1, #1
	strb r7, [r3, r2]
	ldr r7, [r5, #0x34]
	mov r2, #0
	add r3, r1, #2
	strb r2, [r7, r3]
	add r3, r1, #3
	ldr r7, [r5, #0x34]
	cmp r4, #0
	strb r2, [r7, r3]
	bne _021F2506
	ldr r2, [r5, #0x34]
	add r1, r1, #4
	strb r0, [r2, r1]
	b _021F250E
_021F2506:
	ldr r2, [r5, #0x34]
	mov r3, #0x16
	add r0, r1, #4
	strb r3, [r2, r0]
_021F250E:
	ldr r1, [r5, #0x34]
	ldr r0, _021F2530 ; =0x000088D9
	mov r2, #0x14
	strb r2, [r1, r0]
	add r1, r0, #1
	ldr r2, [r5, #0x34]
	mov r3, #9
	strb r3, [r2, r1]
	ldr r1, [r5, #0x34]
	mov r2, #4
	add r0, r0, #2
	strb r2, [r1, r0]
	str r6, [r5, #0x30]
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F252C: .word 0x000088D4
_021F2530: .word 0x000088D9
	thumb_func_end ov14_021F2490

	thumb_func_start ov14_021F2534
ov14_021F2534: ; 0x021F2534
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	ldr r1, [r1, #8]
	cmp r1, #3
	bhi _021F2570
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F254C: ; jump table
	.short _021F2554 - _021F254C - 2 ; case 0
	.short _021F255E - _021F254C - 2 ; case 1
	.short _021F255E - _021F254C - 2 ; case 2
	.short _021F255E - _021F254C - 2 ; case 3
_021F2554:
	mov r1, #2
	mov r2, #1
	bl ov14_021F3488
	pop {r4, pc}
_021F255E:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F43F4
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
_021F2570:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2534

	thumb_func_start ov14_021F2574
ov14_021F2574: ; 0x021F2574
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov14_021F66E8
	add r0, r4, #0
	bl ov14_021F2534
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F0254
	pop {r4, pc}
	thumb_func_end ov14_021F2574

	thumb_func_start ov14_021F259C
ov14_021F259C: ; 0x021F259C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0
	bl ov14_021F66E8
	add r0, r4, #0
	bl ov14_021F2534
	add r0, r4, #0
	mov r1, #4
	bl ov14_021F0254
	pop {r4, pc}
	thumb_func_end ov14_021F259C

	thumb_func_start ov14_021F25C4
ov14_021F25C4: ; 0x021F25C4
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E76B8
	add r0, r4, #0
	bl ov14_021F0AD8
	pop {r4, pc}
	thumb_func_end ov14_021F25C4

	thumb_func_start ov14_021F25D4
ov14_021F25D4: ; 0x021F25D4
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E76B8
	add r0, r4, #0
	bl ov14_021F0C88
	pop {r4, pc}
	thumb_func_end ov14_021F25D4

	thumb_func_start ov14_021F25E4
ov14_021F25E4: ; 0x021F25E4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F40E8
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x29
	strb r2, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	bl ov14_021F2A18
	add r0, r4, #0
	mov r1, #0x2f
	bl ov14_021F1100
	pop {r4, pc}
	thumb_func_end ov14_021F25E4

	thumb_func_start ov14_021F2610
ov14_021F2610: ; 0x021F2610
	ldr r3, _021F2618 ; =ov14_021F027C
	mov r1, #0
	bx r3
	nop
_021F2618: .word ov14_021F027C
	thumb_func_end ov14_021F2610

	thumb_func_start ov14_021F261C
ov14_021F261C: ; 0x021F261C
	ldr r3, _021F2620 ; =ov14_021F0910
	bx r3
	.balign 4, 0
_021F2620: .word ov14_021F0910
	thumb_func_end ov14_021F261C

	thumb_func_start ov14_021F2624
ov14_021F2624: ; 0x021F2624
	ldr r3, _021F2628 ; =ov14_021F0A80
	bx r3
	.balign 4, 0
_021F2628: .word ov14_021F0A80
	thumb_func_end ov14_021F2624

	thumb_func_start ov14_021F262C
ov14_021F262C: ; 0x021F262C
	ldr r3, _021F2630 ; =ov14_021F09BC
	bx r3
	.balign 4, 0
_021F2630: .word ov14_021F09BC
	thumb_func_end ov14_021F262C

	thumb_func_start ov14_021F2634
ov14_021F2634: ; 0x021F2634
	ldr r3, _021F2638 ; =ov14_021F0AAC
	bx r3
	.balign 4, 0
_021F2638: .word ov14_021F0AAC
	thumb_func_end ov14_021F2634

	thumb_func_start ov14_021F263C
ov14_021F263C: ; 0x021F263C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	ldr r1, _021F268C ; =ov14_021EA180
	add r0, r4, #0
	mov r2, #0x4a
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F268C: .word ov14_021EA180
	thumb_func_end ov14_021F263C

	thumb_func_start ov14_021F2690
ov14_021F2690: ; 0x021F2690
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x2b
	ldrb r1, [r1]
	cmp r1, #0
	bne _021F26A4
	bl ov14_021E76B8
	b _021F26AA
_021F26A4:
	mov r1, #0
	bl ov14_021F40E8
_021F26AA:
	add r0, r4, #0
	bl ov14_021F0C0C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2690

	thumb_func_start ov14_021F26B4
ov14_021F26B4: ; 0x021F26B4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	ldr r1, _021F26EC ; =ov14_021EA180
	add r0, r4, #0
	mov r2, #0x4c
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F26EC: .word ov14_021EA180
	thumb_func_end ov14_021F26B4

	thumb_func_start ov14_021F26F0
ov14_021F26F0: ; 0x021F26F0
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E76B8
	add r0, r4, #0
	bl ov14_021F0B34
	pop {r4, pc}
	thumb_func_end ov14_021F26F0

	thumb_func_start ov14_021F2700
ov14_021F2700: ; 0x021F2700
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F0F0C
	pop {r4, pc}
	thumb_func_end ov14_021F2700

	thumb_func_start ov14_021F2718
ov14_021F2718: ; 0x021F2718
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E76B8
	add r0, r4, #0
	bl ov14_021F0CD8
	pop {r4, pc}
	thumb_func_end ov14_021F2718

	thumb_func_start ov14_021F2728
ov14_021F2728: ; 0x021F2728
	ldr r3, _021F2730 ; =ov14_021F0F0C
	mov r1, #1
	bx r3
	nop
_021F2730: .word ov14_021F0F0C
	thumb_func_end ov14_021F2728

	thumb_func_start ov14_021F2734
ov14_021F2734: ; 0x021F2734
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x27
	bl ov14_021F6654
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #0x3f
	bl ov14_021F1090
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2734

	thumb_func_start ov14_021F2760
ov14_021F2760: ; 0x021F2760
	ldr r3, _021F2768 ; =ov14_021F027C
	mov r1, #2
	bx r3
	nop
_021F2768: .word ov14_021F027C
	thumb_func_end ov14_021F2760

	thumb_func_start ov14_021F276C
ov14_021F276C: ; 0x021F276C
	ldr r3, _021F2774 ; =ov14_021F0F0C
	mov r1, #2
	bx r3
	nop
_021F2774: .word ov14_021F0F0C
	thumb_func_end ov14_021F276C

	thumb_func_start ov14_021F2778
ov14_021F2778: ; 0x021F2778
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x27
	bl ov14_021F6654
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021F27A2
	add r0, r4, #0
	mov r1, #0x81
	mov r2, #0
	bl ov14_021F3488
	b _021F27AC
_021F27A2:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
_021F27AC:
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r2, [r4, #0x34]
	ldr r0, _021F27C8 ; =0x0000043C
	str r1, [r2, r0]
	mov r0, #9
	str r0, [r4, #0x2c]
	mov r0, #0x43
	pop {r4, pc}
	nop
_021F27C8: .word 0x0000043C
	thumb_func_end ov14_021F2778

	thumb_func_start ov14_021F27CC
ov14_021F27CC: ; 0x021F27CC
	ldr r3, _021F27D0 ; =ov14_021F13B0
	bx r3
	.balign 4, 0
_021F27D0: .word ov14_021F13B0
	thumb_func_end ov14_021F27CC

	thumb_func_start ov14_021F27D4
ov14_021F27D4: ; 0x021F27D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	ldr r1, _021F280C ; =ov14_021EA130
	add r0, r4, #0
	mov r2, #0x59
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F280C: .word ov14_021EA130
	thumb_func_end ov14_021F27D4

	thumb_func_start ov14_021F2810
ov14_021F2810: ; 0x021F2810
	ldr r3, _021F2814 ; =ov14_021F1414
	bx r3
	.balign 4, 0
_021F2814: .word ov14_021F1414
	thumb_func_end ov14_021F2810

	thumb_func_start ov14_021F2818
ov14_021F2818: ; 0x021F2818
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F5EB4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	ldr r1, _021F2854 ; =ov14_021EA130
	add r0, r4, #0
	mov r2, #0x70
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021F2854: .word ov14_021EA130
	thumb_func_end ov14_021F2818

	thumb_func_start ov14_021F2858
ov14_021F2858: ; 0x021F2858
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
	add r0, r4, #0
	bl ov14_021F0AD8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2858

	thumb_func_start ov14_021F2874
ov14_021F2874: ; 0x021F2874
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
	add r0, r4, #0
	bl ov14_021F0C88
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2874

	thumb_func_start ov14_021F2890
ov14_021F2890: ; 0x021F2890
	ldr r3, _021F2894 ; =ov14_021F1EB8
	bx r3
	.balign 4, 0
_021F2894: .word ov14_021F1EB8
	thumb_func_end ov14_021F2890

	thumb_func_start ov14_021F2898
ov14_021F2898: ; 0x021F2898
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r1, [r4, #0x34]
	ldr r0, _021F28F4 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021F28E6
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021F28E6:
	ldr r1, _021F28F8 ; =ov14_021EA674
	add r0, r4, #0
	mov r2, #0x76
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F28F4: .word 0x000088C8
_021F28F8: .word ov14_021EA674
	thumb_func_end ov14_021F2898

	thumb_func_start ov14_021F28FC
ov14_021F28FC: ; 0x021F28FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	mov r1, #4
	bl ov14_021F0F0C
	pop {r4, pc}
	thumb_func_end ov14_021F28FC

	thumb_func_start ov14_021F2914
ov14_021F2914: ; 0x021F2914
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E76B8
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	bl ov14_021F0C0C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2914

	thumb_func_start ov14_021F2930
ov14_021F2930: ; 0x021F2930
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r1, [r4, #0x34]
	ldr r0, _021F2974 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021F2966
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021F2966:
	ldr r1, _021F2978 ; =ov14_021EA674
	add r0, r4, #0
	mov r2, #0x8c
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F2974: .word 0x000088C8
_021F2978: .word ov14_021EA674
	thumb_func_end ov14_021F2930

	thumb_func_start ov14_021F297C
ov14_021F297C: ; 0x021F297C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #0x34]
	bl ov14_021F2AC8
	ldr r0, [r4, #0x34]
	bl ov14_021F2B88
	add r0, r4, #0
	bl ov14_021F2BB8
	ldr r0, [r4, #0x34]
	bl ov14_021F4D10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F297C

	thumb_func_start ov14_021F29AC
ov14_021F29AC: ; 0x021F29AC
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F4E68
	add r0, r4, #0
	bl ov14_021F2C04
	add r0, r4, #0
	bl ov14_021F2B68
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F29AC

	thumb_func_start ov14_021F29C4
ov14_021F29C4: ; 0x021F29C4
	push {r4, r5, r6, lr}
	mov r6, #0xbf
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021F29CE:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021F29D8
	bl ManagedSprite_TickFrame
_021F29D8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blo _021F29CE
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F29C4

	thumb_func_start ov14_021F29E4
ov14_021F29E4: ; 0x021F29E4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	mov r2, #0xbf
	lsl r2, r2, #2
	lsl r4, r1, #2
	add r5, r0, r2
	ldr r0, [r5, r4]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl ManagedSprite_SetAnim
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F29E4

	thumb_func_start ov14_021F2A04
ov14_021F2A04: ; 0x021F2A04
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r3, _021F2A14 ; =ManagedSprite_IsAnimated
	ldr r0, [r1, r0]
	bx r3
	nop
_021F2A14: .word ManagedSprite_IsAnimated
	thumb_func_end ov14_021F2A04

	thumb_func_start ov14_021F2A18
ov14_021F2A18: ; 0x021F2A18
	push {r3, lr}
	cmp r2, #1
	bne _021F2A30
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, pc}
_021F2A30:
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2A18

	thumb_func_start ov14_021F2A44
ov14_021F2A44: ; 0x021F2A44
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetDrawFlag
	cmp r0, #1
	bne _021F2A5C
	mov r0, #1
	pop {r3, pc}
_021F2A5C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov14_021F2A44

	thumb_func_start ov14_021F2A60
ov14_021F2A60: ; 0x021F2A60
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021F2A70 ; =ManagedSprite_SetPriority
	add r1, r2, #0
	bx r3
	.balign 4, 0
_021F2A70: .word ManagedSprite_SetPriority
	thumb_func_end ov14_021F2A60

	thumb_func_start ov14_021F2A74
ov14_021F2A74: ; 0x021F2A74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F2A98 ; =0x000088D2
	mov r3, #1
	strh r3, [r4, r0]
	lsl r0, r1, #2
	add r1, r4, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ManagedSprite_SetDrawPriority
	ldr r0, _021F2A98 ; =0x000088D2
	mov r1, #0
	strh r1, [r4, r0]
	pop {r4, pc}
	nop
_021F2A98: .word 0x000088D2
	thumb_func_end ov14_021F2A74

	thumb_func_start ov14_021F2A9C
ov14_021F2A9C: ; 0x021F2A9C
	push {r3, lr}
	cmp r2, #1
	bne _021F2AB4
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	pop {r3, pc}
_021F2AB4:
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetOamMode
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2A9C

	thumb_func_start ov14_021F2AC8
ov14_021F2AC8: ; 0x021F2AC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r3, _021F2B5C ; =ov14_021F80D4
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xa
	bl SpriteSystem_Alloc
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl SpriteManager_New
	mov r7, #0xbe
	lsl r7, r7, #2
	add r2, sp, #0x14
	ldr r3, _021F2B60 ; =ov14_021F80EC
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021F2B64 ; =ov14_021F80A8
	stmia r2!, {r0, r1}
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [r3]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x67
	bl SpriteSystem_InitSprites
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x34
	bl SpriteSystem_InitManagerWithCapacities
	sub r0, r7, #4
	ldr r0, [r4, r0]
	bl SpriteSystem_GetRenderer
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2B5C: .word ov14_021F80D4
_021F2B60: .word ov14_021F80EC
_021F2B64: .word ov14_021F80A8
	thumb_func_end ov14_021F2AC8

	thumb_func_start ov14_021F2B68
ov14_021F2B68: ; 0x021F2B68
	push {r4, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl SpriteSystem_FreeResourcesAndManager
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteSystem_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2B68

	thumb_func_start ov14_021F2B88
ov14_021F2B88: ; 0x021F2B88
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F41E4
	add r0, r4, #0
	bl ov14_021F42EC
	add r0, r4, #0
	bl ov14_021F2C84
	add r0, r4, #0
	bl ov14_021F3DE8
	add r0, r4, #0
	bl ov14_021F3714
	add r0, r4, #0
	bl ov14_021F34EC
	add r0, r4, #0
	bl ov14_021F3C08
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2B88

	thumb_func_start ov14_021F2BB8
ov14_021F2BB8: ; 0x021F2BB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov14_021F4278
	ldr r0, [r4, #0x34]
	bl ov14_021F4380
	ldr r0, [r4, #0x34]
	bl ov14_021F2D1C
	ldr r0, [r4, #0x34]
	bl ov14_021F3E70
	ldr r0, [r4, #0x34]
	bl ov14_021F37F4
	add r0, r4, #0
	bl ov14_021F35BC
	ldr r0, [r4, #0x34]
	bl ov14_021F3CB4
	pop {r4, pc}
	thumb_func_end ov14_021F2BB8

	thumb_func_start ov14_021F2BE8
ov14_021F2BE8: ; 0x021F2BE8
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	mov r1, #0xbf
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021F2C00
	bl Sprite_DeleteAndFreeResources
	mov r0, #0
	str r0, [r4, r5]
_021F2C00:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2BE8

	thumb_func_start ov14_021F2C04
ov14_021F2C04: ; 0x021F2C04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021F2C0A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F2BE8
	add r4, r4, #1
	cmp r4, #0x45
	blo _021F2C0A
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2C04

	thumb_func_start ov14_021F2C1C
ov14_021F2C1C: ; 0x021F2C1C
	push {r4, r5, r6, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r5, r2, #0
	ldr r0, [r0]
	add r4, r3, #0
	bl Sprite_GetImageProxy
	mov r1, #1
	bl NNS_G2dGetImageLocation
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl DC_FlushRange
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl GX_LoadOBJ
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2C1C

	thumb_func_start ov14_021F2C50
ov14_021F2C50: ; 0x021F2C50
	push {r4, r5, r6, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r5, r2, #0
	ldr r0, [r0]
	add r4, r3, #0
	bl Sprite_GetImageProxy
	mov r1, #2
	bl NNS_G2dGetImageLocation
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl DC_FlushRange
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl GXS_LoadOBJ
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2C50

	thumb_func_start ov14_021F2C84
ov14_021F2C84: ; 0x021F2C84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0xbe
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
	lsl r7, r7, #2
_021F2C92:
	ldr r0, _021F2D18 ; =0x0000C0F9
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r7]
	mov r2, #0x13
	mov r3, #0x4e
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #0x24
	blo _021F2C92
	bl sub_02074490
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021F2D18 ; =0x0000C0F9
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x14
	bl SpriteSystem_LoadPlttResObj
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F2D18 ; =0x0000C0F9
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F2D18 ; =0x0000C0F9
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2D18: .word 0x0000C0F9
	thumb_func_end ov14_021F2C84

	thumb_func_start ov14_021F2D1C
ov14_021F2D1C: ; 0x021F2D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r0, #0
	mov r4, #0
	ldr r3, _021F2DB8 ; =ov14_021F810C
	str r4, [sp]
	add r7, r5, #0
	add r2, sp, #4
	mov r6, #6
_021F2D2E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F2D2E
	ldr r0, [r3]
	str r0, [r2]
_021F2D3A:
	add r6, sp, #4
	add r3, sp, #0x38
	mov r2, #6
_021F2D40:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F2D40
	ldr r0, [r6]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	bl _u32_div_f
	mov r3, #0x18
	add r0, sp, #4
	mov r2, #0x34
	ldrsh r2, [r0, r2]
	mul r3, r1
	add r1, r2, r3
	strh r1, [r0, #0x34]
	add r0, r4, #0
	mov r1, #6
	bl _u32_div_f
	mov r3, #0x18
	add r1, sp, #4
	mov r2, #0x36
	ldrsh r2, [r1, r2]
	mul r3, r0
	add r0, r2, r3
	strh r0, [r1, #0x36]
	ldr r0, [sp]
	mov r1, #0x74
	sub r0, r1, r0
	str r0, [sp, #0x40]
	ldr r0, _021F2DBC ; =0x0000C0F9
	mov r1, #0xbd
	add r0, r4, r0
	lsl r1, r1, #2
	str r0, [sp, #0x4c]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, sp, #0x38
	bl SpriteSystem_NewSprite
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r2, r4, #0
	add r1, r5, r4
	ldr r0, _021F2DC0 ; =0x00004094
	add r2, #0x19
	strb r2, [r1, r0]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #2
	add r7, r7, #4
	str r0, [sp]
	cmp r4, #0x24
	blo _021F2D3A
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2DB8: .word ov14_021F810C
_021F2DBC: .word 0x0000C0F9
_021F2DC0: .word 0x00004094
	thumb_func_end ov14_021F2D1C

	thumb_func_start ov14_021F2DC4
ov14_021F2DC4: ; 0x021F2DC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl Boxmon_GetIconNaix
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021F2DE4 ; =0x00000454
	mov r2, #0
	ldr r0, [r5, r0]
	add r3, r4, #0
	bl GfGfxLoader_GetCharDataFromOpenNarc
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2DE4: .word 0x00000454
	thumb_func_end ov14_021F2DC4

	thumb_func_start ov14_021F2DE8
ov14_021F2DE8: ; 0x021F2DE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #4]
	add r6, r4, #0
_021F2DF4:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #4]
	add r2, r4, #0
	mov r3, #0xac
	bl PCStorage_GetMonDataByIndexPair
	cmp r0, #0
	bne _021F2E10
	ldr r0, [r5, #0x34]
	mov r1, #0
	add r2, r0, r4
	b _021F2E56
_021F2E10:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021E60C0
	add r7, r0, #0
	ldr r0, [r5, #0x34]
	add r1, r7, #0
	add r2, sp, #0xc
	bl ov14_021F2DC4
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [r5, #0x34]
	ldr r1, _021F2E6C ; =0x00000458
	ldr r0, [r0, #0x14]
	add r1, r2, r1
	mov r2, #2
	add r1, r1, r6
	lsl r2, r2, #8
	bl MIi_CpuCopy32
	ldr r0, [sp, #8]
	bl Heap_Free
	add r0, r7, #0
	bl Boxmon_GetIconPalette
	ldr r1, [r5, #0x34]
	add r2, r1, r4
	ldr r1, _021F2E70 ; =0x00004076
	strb r0, [r2, r1]
	ldr r0, [r5, #0x34]
	mov r1, #1
	add r2, r0, r4
_021F2E56:
	ldr r0, _021F2E74 ; =0x00004058
	add r4, r4, #1
	strb r1, [r2, r0]
	mov r0, #2
	lsl r0, r0, #8
	add r6, r6, r0
	cmp r4, #0x1e
	blo _021F2DF4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2E6C: .word 0x00000458
_021F2E70: .word 0x00004076
_021F2E74: .word 0x00004058
	thumb_func_end ov14_021F2DE8

	thumb_func_start ov14_021F2E78
ov14_021F2E78: ; 0x021F2E78
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	mov r3, #2
	add r7, r1, #0
	add r4, r2, #0
	add r1, r4, #0
	add r2, r7, #0
	lsl r3, r3, #8
	add r5, r0, #0
	bl ov14_021F2C1C
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #3
	bl ManagedSprite_SetPaletteOverride
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F2E78

	thumb_func_start ov14_021F2EA0
ov14_021F2EA0: ; 0x021F2EA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r2, #0
	add r4, r1, #0
	add r2, sp, #0
	bl ov14_021F2DC4
	add r7, r0, #0
	add r0, r4, #0
	bl Boxmon_GetIconPalette
	ldr r1, [sp]
	add r3, r0, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r1, #0x14]
	add r2, r6, #0
	bl ov14_021F2E78
	add r0, r7, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2EA0

	thumb_func_start ov14_021F2ED0
ov14_021F2ED0: ; 0x021F2ED0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xbf
	add r4, r3, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	add r6, r1, r0
	lsl r7, r4, #2
	ldr r0, [r6, r7]
	str r2, [sp, #4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021F2F1A
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl ov14_021E60C0
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F2EA0
	ldr r0, [r6, r7]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_021F2F1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2ED0

	thumb_func_start ov14_021F2F20
ov14_021F2F20: ; 0x021F2F20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021F2F26:
	ldrb r1, [r5, #0x1f]
	add r3, r4, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, #0x19
	bl ov14_021F2ED0
	add r4, r4, #1
	cmp r4, #0x1e
	blo _021F2F26
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F2F20

	thumb_func_start ov14_021F2F3C
ov14_021F2F3C: ; 0x021F2F3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r6, r0, #0
	ldr r4, _021F2F80 ; =0x00000000
	beq _021F2F7C
	ldr r7, _021F2F84 ; =0x000040B2
_021F2F4E:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	ldr r2, [r5, #0x34]
	add r1, r0, #0
	add r3, r2, r4
	ldr r2, _021F2F84 ; =0x000040B2
	add r0, r5, #0
	ldrb r2, [r3, r2]
	bl ov14_021F2EA0
	ldr r0, [r5, #0x34]
	mov r2, #0
	add r1, r0, r4
	ldrb r1, [r1, r7]
	bl ov14_021F2A18
	add r4, r4, #1
	cmp r4, r6
	blo _021F2F4E
_021F2F7C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2F80: .word 0x00000000
_021F2F84: .word 0x000040B2
	thumb_func_end ov14_021F2F3C

	thumb_func_start ov14_021F2F88
ov14_021F2F88: ; 0x021F2F88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0x1e
	bhs _021F2FB4
	mov r1, #6
	bl _u32_div_f
	add r1, r1, #1
	mov r0, #0x18
	mul r0, r1
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #6
	bl _u32_div_f
	mov r1, #0x18
	mul r1, r0
	add r1, #0x30
	strh r1, [r6]
	pop {r4, r5, r6, pc}
_021F2FB4:
	sub r5, #0x1e
	ldr r0, _021F2FD4 ; =ov14_021F80BC
	lsl r1, r5, #2
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	ldr r0, _021F2FD8 ; =ov14_021F80BE
	ldrsh r0, [r0, r1]
	sub r0, #0x90
	strh r0, [r6]
	cmp r3, #2
	bne _021F2FD2
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x98
	strh r0, [r4]
_021F2FD2:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2FD4: .word ov14_021F80BC
_021F2FD8: .word ov14_021F80BE
	thumb_func_end ov14_021F2F88

	thumb_func_start ov14_021F2FDC
ov14_021F2FDC: ; 0x021F2FDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F303C ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F2FEC:
	ldr r0, [r5, #0x34]
	ldr r1, _021F3040 ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r6, r1]
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3028
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F3030
_021F3028:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F3030:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F2FEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F303C: .word ov14_021F80BC
_021F3040: .word 0x000040B2
	thumb_func_end ov14_021F2FDC

	thumb_func_start ov14_021F3044
ov14_021F3044: ; 0x021F3044
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F30A8 ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F3054:
	ldr r0, [r5, #0x34]
	ldr r1, _021F30AC ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r6, r1]
	add r1, #0x98
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3096
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F309E
_021F3096:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F309E:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F3054
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F30A8: .word ov14_021F80BC
_021F30AC: .word 0x000040B2
	thumb_func_end ov14_021F3044

	thumb_func_start ov14_021F30B0
ov14_021F30B0: ; 0x021F30B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F3114 ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F30C0:
	ldr r0, [r5, #0x34]
	ldr r1, _021F3118 ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	sub r2, #0x90
	lsl r2, r2, #0x10
	ldrsh r1, [r6, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3102
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F310A
_021F3102:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F310A:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F30C0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3114: .word ov14_021F80BC
_021F3118: .word 0x000040B2
	thumb_func_end ov14_021F30B0

	thumb_func_start ov14_021F311C
ov14_021F311C: ; 0x021F311C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F3188 ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F312C:
	ldr r0, [r5, #0x34]
	ldr r1, _021F318C ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r6, r1]
	sub r2, #0x90
	lsl r2, r2, #0x10
	add r1, #0x98
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3174
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F317C
_021F3174:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F317C:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F312C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3188: .word ov14_021F80BC
_021F318C: .word 0x000040B2
	thumb_func_end ov14_021F311C

	thumb_func_start ov14_021F3190
ov14_021F3190: ; 0x021F3190
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r3, r5, r6
	ldr r1, _021F31DC ; =0x00004094
	cmp r2, #0
	ldrb r4, [r3, r1]
	bne _021F31B4
	add r1, r4, #0
	mov r2, #0
	bl ov14_021F2A60
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x14
	bl ov14_021F2A74
	pop {r4, r5, r6, pc}
_021F31B4:
	cmp r6, #0x1e
	bhs _021F31C2
	add r1, r4, #0
	mov r2, #3
	bl ov14_021F2A60
	b _021F31CA
_021F31C2:
	add r1, r4, #0
	mov r2, #1
	bl ov14_021F2A60
_021F31CA:
	lsl r3, r6, #1
	mov r2, #0x74
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r2, r3
	bl ov14_021F2A74
	pop {r4, r5, r6, pc}
	nop
_021F31DC: .word 0x00004094
	thumb_func_end ov14_021F3190

	thumb_func_start ov14_021F31E0
ov14_021F31E0: ; 0x021F31E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r4, r1
	ldr r1, _021F320C ; =0x00004094
	cmp r2, #0x1e
	ldrb r5, [r3, r1]
	bhs _021F31F8
	add r1, r5, #0
	mov r2, #3
	bl ov14_021F2A60
	b _021F3200
_021F31F8:
	add r1, r5, #0
	mov r2, #1
	bl ov14_021F2A60
_021F3200:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x14
	bl ov14_021F2A74
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F320C: .word 0x00004094
	thumb_func_end ov14_021F31E0

	thumb_func_start ov14_021F3210
ov14_021F3210: ; 0x021F3210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp]
	cmp r1, #0
	blt _021F3228
	mov r0, #0xb0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	sub r0, #0xb8
	str r0, [sp, #0xc]
	b _021F3232
_021F3228:
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #8]
	mov r0, #0xb0
	str r0, [sp, #0xc]
_021F3232:
	mov r4, #0
	add r7, sp, #0x14
_021F3236:
	ldr r0, [r5, #0x34]
	ldr r1, _021F32D0 ; =0x00004094
	add r2, r0, r4
	ldrb r1, [r2, r1]
	add r2, sp, #0x14
	str r1, [sp, #4]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x14
	add r1, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp]
	add r0, r1, r0
	strh r0, [r7, #2]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _021F32AA
	ldr r0, [sp, #0xc]
	ldr r1, _021F32D4 ; =0x00000458
	strh r0, [r7, #2]
	ldr r0, [r5, #0x34]
	ldr r3, _021F32D8 ; =0x00004076
	add r6, r0, r4
	add r2, r0, r1
	lsl r1, r4, #9
	add r1, r2, r1
	ldrb r3, [r6, r3]
	ldr r2, [sp, #4]
	bl ov14_021F2E78
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #0x10]
	add r2, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add r2, r1, r4
	ldr r1, _021F32DC ; =0x00004058
	ldrb r1, [r2, r1]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021F32AA
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F34DC
_021F32AA:
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #0x10]
	mov r2, #0
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _021F3236
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F32D0: .word 0x00004094
_021F32D4: .word 0x00000458
_021F32D8: .word 0x00004076
_021F32DC: .word 0x00004058
	thumb_func_end ov14_021F3210

	thumb_func_start ov14_021F32E0
ov14_021F32E0: ; 0x021F32E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	bl sub_02019B1C
	mov r4, #0
	add r1, sp, #4
	ldrsb r0, [r1, r4]
	lsl r0, r0, #0x13
	asr r7, r0, #0x10
	mov r0, #1
	ldrsb r0, [r1, r0]
	lsl r0, r0, #0x13
	asr r5, r0, #0x10
_021F330C:
	ldr r0, _021F334C ; =ov14_021F808C
	lsl r1, r4, #1
	add r2, r0, r1
	ldr r0, [sp]
	ldrb r2, [r2, #1]
	ldr r6, [r0, #0x34]
	ldr r0, _021F3350 ; =0x000040B2
	add r3, r6, r4
	ldrb r0, [r3, r0]
	add r2, r7, r2
	lsl r2, r2, #0x10
	lsl r0, r0, #2
	add r3, r6, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r3, _021F334C ; =ov14_021F808C
	asr r2, r2, #0x10
	ldrb r1, [r3, r1]
	add r1, r5, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021F330C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F334C: .word ov14_021F808C
_021F3350: .word 0x000040B2
	thumb_func_end ov14_021F32E0

	thumb_func_start ov14_021F3354
ov14_021F3354: ; 0x021F3354
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #7]
	ldr r0, [r4]
	mov r1, #1
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [r4]
	mov r1, #0
	mov r2, #8
	bl ManagedSprite_SetAffineTranslation
	pop {r4, pc}
	thumb_func_end ov14_021F3354

	thumb_func_start ov14_021F3380
ov14_021F3380: ; 0x021F3380
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #7]
	ldr r1, _021F33AC ; =0x3CCCCCCD
	add r0, r0, #1
	strb r0, [r4, #7]
	ldr r0, [r4, #8]
	bl _fsub
	str r0, [r4, #8]
	ldrb r0, [r4, #7]
	cmp r0, #0x28
	bne _021F339E
	mov r0, #0
	pop {r4, pc}
_021F339E:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F33AC: .word 0x3CCCCCCD
	thumb_func_end ov14_021F3380

	thumb_func_start ov14_021F33B0
ov14_021F33B0: ; 0x021F33B0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #7]
	ldr r1, _021F33E4 ; =0x3CCCCCCD
	sub r0, r0, #2
	strb r0, [r4, #7]
	ldr r0, [r4, #8]
	bl _fadd
	ldr r1, _021F33E4 ; =0x3CCCCCCD
	str r0, [r4, #8]
	bl _fadd
	str r0, [r4, #8]
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _021F33D6
	mov r0, #0
	pop {r4, pc}
_021F33D6:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021F33E4: .word 0x3CCCCCCD
	thumb_func_end ov14_021F33B0

	thumb_func_start ov14_021F33E8
ov14_021F33E8: ; 0x021F33E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	bl ov14_021F33FC
	pop {r4, pc}
	thumb_func_end ov14_021F33E8

	thumb_func_start ov14_021F33FC
ov14_021F33FC: ; 0x021F33FC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineTranslation
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [r4]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	pop {r4, pc}
	thumb_func_end ov14_021F33FC

	thumb_func_start ov14_021F3420
ov14_021F3420: ; 0x021F3420
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #1
	bne _021F3468
	cmp r4, r6
	bhs _021F3480
	ldr r7, _021F3484 ; =0x00004094
_021F3436:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	ldr r0, [r5, #0x34]
	bne _021F3454
	add r1, r0, r4
	ldrb r1, [r1, r7]
	mov r2, #1
	bl ov14_021F2A9C
	b _021F3460
_021F3454:
	ldr r1, _021F3484 ; =0x00004094
	add r2, r0, r4
	ldrb r1, [r2, r1]
	mov r2, #0
	bl ov14_021F2A9C
_021F3460:
	add r4, r4, #1
	cmp r4, r6
	blo _021F3436
	pop {r3, r4, r5, r6, r7, pc}
_021F3468:
	cmp r4, r6
	bhs _021F3480
_021F346C:
	ldr r0, [r5, #0x34]
	ldr r1, _021F3484 ; =0x00004094
	add r2, r0, r4
	ldrb r1, [r2, r1]
	add r2, r7, #0
	bl ov14_021F2A9C
	add r4, r4, #1
	cmp r4, r6
	blo _021F346C
_021F3480:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3484: .word 0x00004094
	thumb_func_end ov14_021F3420

	thumb_func_start ov14_021F3488
ov14_021F3488: ; 0x021F3488
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x80
	add r7, r2, #0
	tst r0, r5
	beq _021F349A
	mov r4, #1
	b _021F349C
_021F349A:
	mov r4, #0
_021F349C:
	mov r0, #1
	tst r0, r5
	beq _021F34B0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0x1e
	str r4, [sp]
	bl ov14_021F3420
_021F34B0:
	mov r0, #2
	tst r0, r5
	beq _021F34C4
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x1e
	mov r3, #0x24
	str r4, [sp]
	bl ov14_021F3420
_021F34C4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F3488

	thumb_func_start ov14_021F34C8
ov14_021F34C8: ; 0x021F34C8
	add r3, r0, r1
	ldr r1, _021F34D4 ; =0x00004094
	ldrb r1, [r3, r1]
	ldr r3, _021F34D8 ; =ov14_021F2A9C
	bx r3
	nop
_021F34D4: .word 0x00004094
_021F34D8: .word ov14_021F2A9C
	thumb_func_end ov14_021F34C8

	thumb_func_start ov14_021F34DC
ov14_021F34DC: ; 0x021F34DC
	push {r3, lr}
	add r2, r1, #0
	mov r1, #1
	add r3, r2, #1
	str r1, [sp]
	bl ov14_021F3420
	pop {r3, pc}
	thumb_func_end ov14_021F34DC

	thumb_func_start ov14_021F34EC
ov14_021F34EC: ; 0x021F34EC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F35AC ; =0x0000C11D
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4c
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F35B0 ; =0x0000C11E
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4c
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021F35B4 ; =0x0000C0FA
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4b
	bl SpriteSystem_LoadPlttResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021F35B8 ; =0x0000C0FB
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4b
	bl SpriteSystem_LoadPlttResObj
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F35B4 ; =0x0000C0FA
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4d
	bl SpriteSystem_LoadCellResObj
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F35B4 ; =0x0000C0FA
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4e
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r4, pc}
	nop
_021F35AC: .word 0x0000C11D
_021F35B0: .word 0x0000C11E
_021F35B4: .word 0x0000C0FA
_021F35B8: .word 0x0000C0FB
	thumb_func_end ov14_021F34EC

	thumb_func_start ov14_021F35BC
ov14_021F35BC: ; 0x021F35BC
	push {r4, lr}
	mov r1, #0xbd
	ldr r4, [r0, #0x34]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r4, r1]
	ldr r2, _021F360C ; =ov14_021F8210
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x10
	sub r1, #0xc
	mov r3, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3610 ; =ov14_021F8244
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xc2
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	.balign 4, 0
_021F360C: .word ov14_021F8210
_021F3610: .word ov14_021F8244
	thumb_func_end ov14_021F35BC

	thumb_func_start ov14_021F3614
ov14_021F3614: ; 0x021F3614
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r3, _021F36D4 ; =ov14_021F8098
	add r7, r2, #0
	add r2, sp, #0x14
	add r6, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x32
	mov r0, #0xa
	lsl r1, r1, #6
	bl Heap_AllocAtEnd
	add r5, r0, #0
	ldr r1, [r4]
	add r0, sp, #0x24
	mov r2, #2
	mov r3, #0
	bl GetBoxmonSpriteCharAndPlttNarcIds
	ldrb r0, [r4, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F3658
	ldrh r1, [r4, #4]
	ldr r0, _021F36D8 ; =0x00000147
	cmp r1, r0
	bne _021F3658
	add r0, #0xa7
	b _021F365A
_021F3658:
	ldrh r0, [r4, #4]
_021F365A:
	str r5, [sp]
	ldr r1, [r4, #8]
	mov r2, #0xa
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r1, sp, #0x14
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	add r3, sp, #0x14
	bl sub_02014510
	mov r0, #0xbf
	lsl r0, r0, #2
	add r4, r6, r0
	lsl r6, r7, #2
	ldr r0, [r4, r6]
	ldr r0, [r0]
	bl Sprite_GetImageProxy
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #0x32
	add r7, r0, #0
	add r0, r5, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	mov r2, #0x32
	add r0, r5, #0
	add r1, r7, #0
	lsl r2, r2, #6
	bl GXS_LoadOBJ
	ldr r0, [r4, r6]
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r1, sp, #0x14
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x14]
	mov r2, #5
	bl GfGfxLoader_GXLoadPal
	add r0, r5, #0
	bl Heap_Free
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F36D4: .word ov14_021F8098
_021F36D8: .word 0x00000147
	thumb_func_end ov14_021F3614

	thumb_func_start ov14_021F36DC
ov14_021F36DC: ; 0x021F36DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #0x34]
	ldr r2, _021F3710 ; =0x000088D0
	ldrh r2, [r0, r2]
	add r4, r4, r2
	add r2, r4, #0
	bl ov14_021F3614
	ldr r1, [r5, #0x34]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r3, [r5, #0x34]
	ldr r1, _021F3710 ; =0x000088D0
	mov r0, #1
	ldrh r2, [r3, r1]
	eor r0, r2
	strh r0, [r3, r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F3710: .word 0x000088D0
	thumb_func_end ov14_021F36DC

	thumb_func_start ov14_021F3714
ov14_021F3714: ; 0x021F3714
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F37E0 ; =0x0000C11F
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x4f
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _021F37E4 ; =0x0000C0FC
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x12
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F37E8 ; =0x0000C120
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x4f
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021F37EC ; =0x0000C0FD
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x12
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F37F0 ; =0x0000C0FB
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x50
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F37F0 ; =0x0000C0FB
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x51
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r4, pc}
	nop
_021F37E0: .word 0x0000C11F
_021F37E4: .word 0x0000C0FC
_021F37E8: .word 0x0000C120
_021F37EC: .word 0x0000C0FD
_021F37F0: .word 0x0000C0FB
	thumb_func_end ov14_021F3714

	thumb_func_start ov14_021F37F4
ov14_021F37F4: ; 0x021F37F4
	push {r4, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _021F383C ; =ov14_021F83E4
	bl SpriteSystem_NewSprite
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r1, #0xbd
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r4, r1]
	ldr r2, _021F3840 ; =ov14_021F8418
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	nop
_021F383C: .word ov14_021F83E4
_021F3840: .word ov14_021F8418
	thumb_func_end ov14_021F37F4

	thumb_func_start ov14_021F3844
ov14_021F3844: ; 0x021F3844
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl GetItemIndexMapping
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x12
	mov r2, #0
	add r3, sp, #8
	bl GfGfxLoader_GetCharData
	ldr r2, [sp, #8]
	mov r3, #2
	add r4, r0, #0
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	mov r1, #0xb
	lsl r3, r3, #8
	bl ov14_021F2C1C
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x12
	mov r2, #1
	add r3, r4, #0
	bl GfGfxLoader_GXLoadPal
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov14_021F3844

	thumb_func_start ov14_021F38B0
ov14_021F38B0: ; 0x021F38B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl GetItemIndexMapping
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x12
	mov r2, #0
	add r3, sp, #8
	bl GfGfxLoader_GetCharData
	ldr r2, [sp, #8]
	mov r3, #2
	add r4, r0, #0
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	mov r1, #0xc
	lsl r3, r3, #8
	bl ov14_021F2C50
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl GetItemIndexMapping
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x12
	mov r2, #5
	add r3, r4, #0
	bl GfGfxLoader_GXLoadPal
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov14_021F38B0

	thumb_func_start ov14_021F391C
ov14_021F391C: ; 0x021F391C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _021F3940
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ManagedSprite_SetAffineOverwriteMode
	mov r0, #0xca
	lsl r0, r0, #2
	mov r1, #0xc
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ManagedSprite_SetAffineTranslation
	pop {r4, pc}
_021F3940:
	mov r0, #0xca
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ManagedSprite_SetAffineTranslation
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	pop {r4, pc}
	thumb_func_end ov14_021F391C

	thumb_func_start ov14_021F395C
ov14_021F395C: ; 0x021F395C
	mov r3, #0xca
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _021F3968 ; =ManagedSprite_SetPositionXY
	bx r3
	nop
_021F3968: .word ManagedSprite_SetPositionXY
	thumb_func_end ov14_021F395C

	thumb_func_start ov14_021F396C
ov14_021F396C: ; 0x021F396C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	add r3, r2, #0
	add r1, #2
	add r2, sp, #0
	bl ov14_021F2F88
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, #8
	add r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021F396C

	thumb_func_start ov14_021F39A0
ov14_021F39A0: ; 0x021F39A0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	add r3, r2, #0
	add r1, #2
	add r2, sp, #0
	bl ov14_021F2F88
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, r2, #4
	lsl r2, r2, #0x10
	add r0, r4, #0
	asr r2, r2, #0x10
	bl ov14_021F395C
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F39A0

	thumb_func_start ov14_021F39D0
ov14_021F39D0: ; 0x021F39D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, _021F3B24 ; =0x000088C8
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021F39E0
	b _021F3B1E
_021F39E0:
	mov r0, #0xca
	lsl r0, r0, #2
	add r1, sp, #0x10
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0x10
	bl ManagedSprite_GetPositionXY
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021F3AA0
	ldr r4, _021F3B28 ; =ov14_021F83E4
	add r3, sp, #0x14
	mov r2, #6
_021F3A00:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F3A00
	ldr r0, [r4]
	str r0, [r3]
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetDrawPriority
	add r0, r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetPriority
	str r0, [sp, #0x40]
	ldr r0, _021F3B2C ; =0x0000C11F
	mov r1, #1
	str r0, [sp, #0x28]
	ldr r0, _021F3B30 ; =0x000088D2
	ldr r7, _021F3B34 ; =ov14_021F8070
	strh r1, [r5, r0]
	mov r0, #0
	ldr r6, _021F3B38 ; =ov14_021F8078
	str r0, [sp, #8]
	add r4, r5, #0
_021F3A3A:
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0
	ldrsb r0, [r7, r0]
	add r2, sp, #0x14
	add r1, r1, r0
	add r0, sp, #0x10
	strh r1, [r0, #4]
	add r1, r0, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldrsb r0, [r6, r0]
	add r1, r1, r0
	add r0, sp, #0x10
	strh r1, [r0, #6]
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl SpriteSystem_NewSprite
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #8
	bl ManagedSprite_SetPaletteOverride
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #1
	add r6, r6, #1
	add r4, r4, #4
	str r0, [sp, #8]
	cmp r0, #8
	blo _021F3A3A
	ldr r0, _021F3B30 ; =0x000088D2
	mov r1, #0
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F3AA0:
	sub r0, #0xc8
	ldr r0, [r5, r0]
	bl ManagedSprite_GetDrawPriority
	str r0, [sp, #0xc]
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetPriority
	str r0, [sp, #4]
	mov r0, #0
	ldr r7, _021F3B38 ; =ov14_021F8078
	ldr r6, _021F3B34 ; =ov14_021F8070
	str r0, [sp]
	add r4, r5, #0
_021F3AC0:
	add r2, sp, #0x10
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #0
	ldrsb r2, [r6, r2]
	add r3, sp, #0x10
	mov r0, #0x3f
	add r1, r1, r2
	mov r2, #0
	ldrsh r3, [r3, r2]
	ldrsb r2, [r7, r2]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r1, [sp]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, #0x3d
	add r2, r2, #1
	bl ov14_021F2A74
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	bl ManagedSprite_SetPriority
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #1
	add r6, r6, #1
	add r4, r4, #4
	str r0, [sp]
	cmp r0, #8
	blo _021F3AC0
_021F3B1E:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3B24: .word 0x000088C8
_021F3B28: .word ov14_021F83E4
_021F3B2C: .word 0x0000C11F
_021F3B30: .word 0x000088D2
_021F3B34: .word ov14_021F8070
_021F3B38: .word ov14_021F8078
	thumb_func_end ov14_021F39D0

	thumb_func_start ov14_021F3B3C
ov14_021F3B3C: ; 0x021F3B3C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x3f
	add r5, r0, #0
	mov r4, #0
	mov r7, #1
	lsl r6, r6, #4
_021F3B48:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blo _021F3B48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F3B3C

	thumb_func_start ov14_021F3B5C
ov14_021F3B5C: ; 0x021F3B5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xca
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F3BB6
	ldr r6, _021F3BB8 ; =ov14_021F8078
	ldr r4, _021F3BBC ; =ov14_021F8070
	mov r7, #0
_021F3B80:
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #0
	ldrsb r2, [r4, r2]
	add r3, sp, #0
	mov r0, #0x3f
	add r1, r1, r2
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r3, #0
	ldrsb r3, [r6, r3]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r7, r7, #1
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r7, #8
	blo _021F3B80
_021F3BB6:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3BB8: .word ov14_021F8078
_021F3BBC: .word ov14_021F8070
	thumb_func_end ov14_021F3B5C

	thumb_func_start ov14_021F3BC0
ov14_021F3BC0: ; 0x021F3BC0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x2f
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r4, r0]
	mov r1, #0x10
	add r2, #1
	add r3, sp, #0
	bl sub_02019B1C
	mov r0, #0xcb
	lsl r0, r0, #2
	add r3, sp, #0
	mov r2, #0
	ldrsb r2, [r3, r2]
	ldr r0, [r4, r0]
	mov r1, #0x12
	lsl r3, r2, #3
	mov r2, #0x5a
	lsl r2, r2, #2
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F3BC0

	thumb_func_start ov14_021F3C08
ov14_021F3C08: ; 0x021F3C08
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F3CA4 ; =0x0000C121
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x52
	bl SpriteSystem_LoadCharResObj
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F3CA8 ; =0x0000C122
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x52
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021F3CAC ; =0x0000C0FE
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4a
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F3CB0 ; =0x0000C0FC
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x53
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F3CB0 ; =0x0000C0FC
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x54
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021F3CA4: .word 0x0000C121
_021F3CA8: .word 0x0000C122
_021F3CAC: .word 0x0000C0FE
_021F3CB0: .word 0x0000C0FC
	thumb_func_end ov14_021F3C08

	thumb_func_start ov14_021F3CB4
ov14_021F3CB4: ; 0x021F3CB4
	push {r4, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r4, r1]
	ldr r2, _021F3D04 ; =ov14_021F844C
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x3c
	sub r1, #0x38
	mov r3, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3D08 ; =ov14_021F8480
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0xcd
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, pc}
	.balign 4, 0
_021F3D04: .word ov14_021F844C
_021F3D08: .word ov14_021F8480
	thumb_func_end ov14_021F3CB4

	thumb_func_start ov14_021F3D0C
ov14_021F3D0C: ; 0x021F3D0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020776B4
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02077678
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	add r0, r6, #0
	mov r2, #1
	add r3, sp, #4
	bl GfGfxLoader_GetCharData
	ldr r2, [sp, #4]
	mov r3, #1
	add r6, r0, #0
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r3, #8
	bl ov14_021F2C50
	add r0, r6, #0
	bl Heap_Free
	mov r0, #0xbf
	lsl r0, r0, #2
	add r5, r5, r0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ManagedSprite_GetPaletteOverrideOffset
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0207769C
	add r1, r0, #0
	ldr r0, [r5, r4]
	add r1, r6, r1
	bl ManagedSprite_SetPaletteOverride
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F3D0C

	thumb_func_start ov14_021F3D70
ov14_021F3D70: ; 0x021F3D70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021F3D98
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
_021F3D98:
	ldrb r1, [r4, #0xc]
	ldr r3, _021F3DE0 ; =0x0000C121
	mov r2, #0xd
	bl ov14_021F3D0C
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _021F3DD2
	ldrb r0, [r4, #0xc]
	cmp r0, r1
	beq _021F3DD2
	ldr r3, _021F3DE4 ; =0x0000C122
	add r0, r5, #0
	mov r2, #0xe
	bl ov14_021F3D0C
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
_021F3DD2:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F3DE0: .word 0x0000C121
_021F3DE4: .word 0x0000C122
	thumb_func_end ov14_021F3D70

	thumb_func_start ov14_021F3DE8
ov14_021F3DE8: ; 0x021F3DE8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F3E64 ; =0x0000C12D
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x42
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021F3E68 ; =0x0000C101
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x45
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F3E6C ; =0x0000C0FF
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x43
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F3E6C ; =0x0000C0FF
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x44
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021F3E64: .word 0x0000C12D
_021F3E68: .word 0x0000C101
_021F3E6C: .word 0x0000C0FF
	thumb_func_end ov14_021F3DE8

	thumb_func_start ov14_021F3E70
ov14_021F3E70: ; 0x021F3E70
	push {r4, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _021F3F48 ; =ov14_021F81A8
	bl SpriteSystem_NewSprite
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #8
	sub r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F4C ; =ov14_021F81DC
	bl SpriteSystem_NewSprite
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xc
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F50 ; =ov14_021F8278
	bl SpriteSystem_NewSprite
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x18
	sub r1, #0x14
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F54 ; =ov14_021F82AC
	bl SpriteSystem_NewSprite
	mov r1, #0x31
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x1c
	sub r1, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F58 ; =ov14_021F82E0
	bl SpriteSystem_NewSprite
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x20
	sub r1, #0x1c
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F5C ; =ov14_021F8314
	bl SpriteSystem_NewSprite
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x24
	sub r1, #0x20
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F60 ; =ov14_021F8348
	bl SpriteSystem_NewSprite
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x28
	sub r1, #0x24
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F64 ; =ov14_021F837C
	bl SpriteSystem_NewSprite
	mov r1, #0x32
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x2c
	sub r1, #0x28
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F68 ; =ov14_021F83B0
	bl SpriteSystem_NewSprite
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ov14_021F2A18
	pop {r4, pc}
	nop
_021F3F48: .word ov14_021F81A8
_021F3F4C: .word ov14_021F81DC
_021F3F50: .word ov14_021F8278
_021F3F54: .word ov14_021F82AC
_021F3F58: .word ov14_021F82E0
_021F3F5C: .word ov14_021F8314
_021F3F60: .word ov14_021F8348
_021F3F64: .word ov14_021F837C
_021F3F68: .word ov14_021F83B0
	thumb_func_end ov14_021F3E70

	thumb_func_start ov14_021F3F6C
ov14_021F3F6C: ; 0x021F3F6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r0, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _021F3F7C
	b _021F40C0
_021F3F7C:
	ldr r4, [r6, #0x34]
	add r2, sp, #0x14
	add r1, r4, r0
	ldr r0, _021F40C4 ; =0x00004094
	ldrb r0, [r1, r0]
	add r1, sp, #0x14
	add r1, #2
	str r0, [sp, #0xc]
	lsl r5, r0, #2
	mov r0, #0xbf
	lsl r0, r0, #2
	add r7, r4, r0
	ldr r0, [r7, r5]
	bl ManagedSprite_GetPositionXY
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021F402C
	ldr r3, _021F40C8 ; =ov14_021F810C
	add r2, sp, #0x18
	mov r6, #6
_021F3FAA:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F3FAA
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetDrawPriority
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetPriority
	str r0, [sp, #0x44]
	ldr r1, _021F40CC ; =0x0000C0E0
	ldr r0, [sp, #0xc]
	mov r5, #0
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, _021F40D0 ; =0x000088D2
	mov r1, #1
	strh r1, [r4, r0]
	add r7, sp, #0x14
_021F3FDA:
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _021F40D4 ; =ov14_021F8070
	add r2, sp, #0x18
	ldrsb r0, [r0, r5]
	add r0, r1, r0
	strh r0, [r7, #4]
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _021F40D8 ; =ov14_021F8078
	ldrsb r0, [r0, r5]
	add r0, r1, r0
	strh r0, [r7, #6]
	lsl r0, r5, #2
	add r6, r4, r0
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl SpriteSystem_NewSprite
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #8
	bl ManagedSprite_SetPaletteOverride
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F3FDA
	ldr r0, _021F40D0 ; =0x000088D2
	mov r1, #0
	add sp, #0x4c
	strh r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_021F402C:
	ldr r0, [r7, r5]
	ldr r0, [r0]
	bl Sprite_GetImageProxy
	str r0, [sp, #8]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetDrawPriority
	str r0, [sp, #0x10]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetPriority
	str r0, [sp, #4]
	mov r5, #0
_021F4048:
	lsl r7, r5, #2
	mov r0, #0x3f
	add r1, r4, r7
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [sp, #8]
	bl Sprite_SetImageProxy
	mov r0, #0x3f
	ldr r1, [sp]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, sp, #0x14
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r2, _021F40D4 ; =ov14_021F8070
	add r3, sp, #0x14
	ldrsb r2, [r2, r5]
	add r1, r1, r2
	mov r2, #0
	ldrsh r3, [r3, r2]
	ldr r2, _021F40D8 ; =ov14_021F8078
	lsl r1, r1, #0x10
	ldrsb r2, [r2, r5]
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r6, #0x34]
	add r1, #0x3d
	add r2, r2, #1
	bl ov14_021F2A74
	ldr r0, [r6, #0x34]
	add r1, r0, r7
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	bl ManagedSprite_SetPriority
	ldr r0, [r6, #0x34]
	add r1, r0, r7
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F4048
_021F40C0:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F40C4: .word 0x00004094
_021F40C8: .word ov14_021F810C
_021F40CC: .word 0x0000C0E0
_021F40D0: .word 0x000088D2
_021F40D4: .word ov14_021F8070
_021F40D8: .word ov14_021F8078
	thumb_func_end ov14_021F3F6C

	thumb_func_start ov14_021F40DC
ov14_021F40DC: ; 0x021F40DC
	ldr r3, _021F40E4 ; =ov14_021F40E8
	mov r1, #0
	bx r3
	nop
_021F40E4: .word ov14_021F40E8
	thumb_func_end ov14_021F40DC

	thumb_func_start ov14_021F40E8
ov14_021F40E8: ; 0x021F40E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	cmp r7, #1
	bne _021F40F6
	mov r7, #1
	b _021F40F8
_021F40F6:
	mov r7, #0
_021F40F8:
	mov r6, #0
	add r4, r6, #0
_021F40FC:
	ldr r0, [r5, #0x34]
	add r1, r0, r4
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F4164
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	cmp r7, #1
	bne _021F4164
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _021F4164
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r1, _021F4170 ; =0x00004094
	ldrb r1, [r2, r1]
	lsl r1, r1, #2
	str r1, [sp]
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetDrawPriority
	add r2, r0, #0
	add r1, r6, #0
	ldr r0, [r5, #0x34]
	add r1, #0x3d
	add r2, r2, #1
	bl ov14_021F2A74
	ldr r1, [r5, #0x34]
	ldr r0, [sp]
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetPriority
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	add r2, r0, r4
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl ManagedSprite_SetPriority
_021F4164:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blo _021F40FC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4170: .word 0x00004094
	thumb_func_end ov14_021F40E8

	thumb_func_start ov14_021F4174
ov14_021F4174: ; 0x021F4174
	push {r3, r4, r5, r6, r7, lr}
	add r1, r0, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #0xff
	beq _021F41D4
	ldr r4, [r0, #0x34]
	ldr r0, _021F41D8 ; =0x00004094
	add r1, r4, r1
	ldrb r0, [r1, r0]
	add r2, sp, #0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r7, _021F41DC ; =ov14_021F8070
	mov r5, #0
	add r6, sp, #0
_021F41A2:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r2, [r6, r1]
	ldrsb r1, [r7, r5]
	ldr r3, _021F41E0 ; =ov14_021F8078
	add r1, r2, r1
	mov r2, #0
	lsl r1, r1, #0x10
	ldrsh r2, [r6, r2]
	ldrsb r3, [r3, r5]
	asr r1, r1, #0x10
	add r2, r2, r3
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F41A2
_021F41D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F41D8: .word 0x00004094
_021F41DC: .word ov14_021F8070
_021F41E0: .word ov14_021F8078
	thumb_func_end ov14_021F4174

	thumb_func_start ov14_021F41E4
ov14_021F41E4: ; 0x021F41E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021F41F0:
	ldr r0, _021F426C ; =0x0000C123
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x46
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #6
	blo _021F41F0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _021F4270 ; =0x0000C0FF
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x47
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F4274 ; =0x0000C0FD
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x48
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F4274 ; =0x0000C0FD
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x49
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F426C: .word 0x0000C123
_021F4270: .word 0x0000C0FF
_021F4274: .word 0x0000C0FD
	thumb_func_end ov14_021F41E4

	thumb_func_start ov14_021F4278
ov14_021F4278: ; 0x021F4278
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	mov r7, #0
	ldr r3, _021F42E4 ; =ov14_021F8140
	str r0, [sp]
	add r4, r7, #0
	add r5, r0, #0
	add r2, sp, #4
	mov r6, #6
_021F428A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F428A
	ldr r0, [r3]
	str r0, [r2]
_021F4296:
	add r6, sp, #4
	add r3, sp, #0x38
	mov r2, #6
_021F429C:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F429C
	ldr r0, [r6]
	add r1, sp, #4
	str r0, [r3]
	mov r0, #0x34
	ldrsh r0, [r1, r0]
	add r1, r0, r4
	add r0, sp, #4
	strh r1, [r0, #0x34]
	ldr r0, _021F42E8 ; =0x0000C123
	ldr r1, [sp]
	add r0, r7, r0
	str r0, [sp, #0x4c]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r2, sp, #0x38
	bl SpriteSystem_NewSprite
	mov r1, #0xce
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x22
	add r5, r5, #4
	cmp r7, #6
	blo _021F4296
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F42E4: .word ov14_021F8140
_021F42E8: .word 0x0000C123
	thumb_func_end ov14_021F4278

	thumb_func_start ov14_021F42EC
ov14_021F42EC: ; 0x021F42EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021F42F8:
	ldr r0, _021F4378 ; =0x0000C129
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4a
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #4
	blo _021F42F8
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xc1
	mov r1, #0xbd
	lsl r0, r0, #8
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4b
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F437C ; =0x0000C0FE
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4c
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F437C ; =0x0000C0FE
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4d
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4378: .word 0x0000C129
_021F437C: .word 0x0000C0FE
	thumb_func_end ov14_021F42EC

	thumb_func_start ov14_021F4380
ov14_021F4380: ; 0x021F4380
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	mov r7, #0
	ldr r3, _021F43EC ; =ov14_021F8174
	str r0, [sp]
	add r4, r7, #0
	add r5, r0, #0
	add r2, sp, #4
	mov r6, #6
_021F4392:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F4392
	ldr r0, [r3]
	str r0, [r2]
_021F439E:
	add r6, sp, #4
	add r3, sp, #0x38
	mov r2, #6
_021F43A4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F43A4
	ldr r0, [r6]
	add r1, sp, #4
	str r0, [r3]
	mov r0, #0x34
	ldrsh r0, [r1, r0]
	add r1, r0, r4
	add r0, sp, #4
	strh r1, [r0, #0x34]
	ldr r0, _021F43F0 ; =0x0000C129
	ldr r1, [sp]
	add r0, r7, r0
	str r0, [sp, #0x4c]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r2, sp, #0x38
	bl SpriteSystem_NewSprite
	mov r1, #0x35
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x2e
	add r5, r5, #4
	cmp r7, #4
	blo _021F439E
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F43EC: .word ov14_021F8174
_021F43F0: .word 0x0000C129
	thumb_func_end ov14_021F4380

	thumb_func_start ov14_021F43F4
ov14_021F43F4: ; 0x021F43F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r2, r4, #0
	bl ov14_021F2A18
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov14_021F2A18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F43F4

	thumb_func_start ov14_021F4410
ov14_021F4410: ; 0x021F4410
	ldr r1, _021F4420 ; =0x00000414
	ldr r3, _021F4424 ; =sub_020136B4
	ldr r0, [r0, r1]
	mov r1, #0x2f
	mvn r1, r1
	add r2, r1, #0
	add r2, #0x28
	bx r3
	.balign 4, 0
_021F4420: .word 0x00000414
_021F4424: .word sub_020136B4
	thumb_func_end ov14_021F4410

	thumb_func_start ov14_021F4428
ov14_021F4428: ; 0x021F4428
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc3
	mov r1, #0xc
	add r2, r1, #0
	ldr r4, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	sub r2, #0x21
	bl ManagedSprite_SetPositionXY
	mov r0, #0x31
	lsl r0, r0, #4
	mov r2, #0x14
	ldr r0, [r4, r0]
	mov r1, #0xf4
	mvn r2, r2
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc5
	lsl r0, r0, #2
	mov r1, #0x2b
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x40
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc6
	lsl r0, r0, #2
	mov r1, #0x80
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0xa8
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc7
	lsl r0, r0, #2
	mov r1, #0x80
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x9c
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	bl ov14_021F462C
	mov r1, #7
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F29E4
	add r0, r4, #0
	bl ov14_021F4410
	ldr r0, _021F44AC ; =0x00000414
	mov r1, #1
	ldr r0, [r4, r0]
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, _021F44B0 ; =0x00000424
	mov r1, #0
	ldr r0, [r4, r0]
	bl TextOBJ_SetSpritesDrawFlag
	pop {r3, r4, r5, pc}
	nop
_021F44AC: .word 0x00000414
_021F44B0: .word 0x00000424
	thumb_func_end ov14_021F4428

	thumb_func_start ov14_021F44B4
ov14_021F44B4: ; 0x021F44B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r6, r1, #0
	mov r7, #4
	add r4, #0x10
_021F44C0:
	mov r0, #0xbf
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r2, sp, #0
	mov r1, #2
	mov r0, #0xbf
	lsl r0, r0, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	add r2, r2, r6
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #8
	bls _021F44C0
	add r0, r5, #0
	bl ov14_021F4410
	mov r4, #0
	add r7, sp, #0
_021F44FE:
	mov r0, #0x35
	lsl r0, r0, #4
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r2, #0
	ldrsh r2, [r7, r2]
	mov r0, #0x35
	mov r1, #2
	lsl r0, r0, #4
	add r2, r2, r6
	lsl r2, r2, #0x10
	ldrsh r1, [r7, r1]
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _021F44FE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F44B4

	thumb_func_start ov14_021F4530
ov14_021F4530: ; 0x021F4530
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	bl ov14_021E7930
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021F4598 ; =0x0000044D
	ldrb r1, [r0, r1]
	lsr r2, r1, #2
	lsr r1, r4, #2
	cmp r2, r1
	bne _021F4558
	mov r1, #6
	mov r2, #1
	bl ov14_021F2A18
	b _021F4560
_021F4558:
	mov r1, #6
	mov r2, #0
	bl ov14_021F2A18
_021F4560:
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #3
	add r2, r4, #0
	and r2, r1
	mov r1, #0x2e
	mul r1, r2
	add r1, #0x3b
	lsl r1, r1, #0x10
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
	nop
_021F4598: .word 0x0000044D
	thumb_func_end ov14_021F4530

	thumb_func_start ov14_021F459C
ov14_021F459C: ; 0x021F459C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, _021F4628 ; =0x0000044D
	ldrb r1, [r0, r1]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r1, #0x15
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #0
	add r1, sp, #0
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc6
	add r2, sp, #0
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc6
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc7
	add r2, sp, #0
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc7
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x34]
	bl ov14_021F4410
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021F4628: .word 0x0000044D
	thumb_func_end ov14_021F459C

	thumb_func_start ov14_021F462C
ov14_021F462C: ; 0x021F462C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _021F46AC ; =0x0000044D
	mov r6, #0x15
	ldrb r0, [r1, r0]
	mov r1, #9
	lsl r1, r1, #6
	lsr r0, r0, #2
	lsl r5, r0, #2
	mov r0, #0xa
	bl Heap_AllocAtEnd
	add r4, r0, #0
	mov r0, #0x13
	mov r1, #0x4a
	mov r2, #0xa
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	mov r0, #0
	str r0, [sp, #4]
_021F4660:
	ldr r0, [sp, #0xc]
	mov r2, #9
	ldr r0, [r0, #0x14]
	add r1, r4, #0
	lsl r2, r2, #6
	bl MI_CpuCopy8
	mov r0, #9
	lsl r0, r0, #6
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #0x1e
	bl ov14_021F46B0
	mov r3, #9
	ldr r0, [r7, #0x34]
	add r1, r6, #0
	add r2, r4, #0
	lsl r3, r3, #6
	bl ov14_021F2C1C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #1
	add r5, r5, #1
	str r0, [sp, #4]
	cmp r0, #4
	blo _021F4660
	ldr r0, [sp, #8]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F46AC: .word 0x0000044D
	thumb_func_end ov14_021F462C

	thumb_func_start ov14_021F46B0
ov14_021F46B0: ; 0x021F46B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	ldr r4, [sp, #0x18]
	cmp r7, #0x10
	blo _021F46D8
	add r1, r7, #0
	ldr r0, [r0, #4]
	sub r1, #0x10
	bl PCStorage_IsBonusWallpaperUnlocked
	cmp r0, #0
	bne _021F46D0
	mov r2, #0x28
	b _021F46DE
_021F46D0:
	add r7, #0x10
	lsl r0, r7, #0x18
	lsr r2, r0, #0x18
	b _021F46DE
_021F46D8:
	add r7, #0x10
	lsl r0, r7, #0x18
	lsr r2, r0, #0x18
_021F46DE:
	mov r1, #0
	cmp r4, #0
	bls _021F46F2
_021F46E4:
	ldrb r0, [r5, r1]
	cmp r6, r0
	bne _021F46EC
	strb r2, [r5, r1]
_021F46EC:
	add r1, r1, #1
	cmp r1, r4
	blo _021F46E4
_021F46F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F46B0

	thumb_func_start ov14_021F46F4
ov14_021F46F4: ; 0x021F46F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F4718 ; =0x00000414
	mov r1, #0x47
	mvn r1, r1
	add r2, r1, #0
	ldr r0, [r4, r0]
	add r2, #0x40
	bl sub_020136B4
	ldr r0, _021F471C ; =0x00000424
	mov r1, #0x20
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x28
	bl sub_020136B4
	pop {r4, pc}
	.balign 4, 0
_021F4718: .word 0x00000414
_021F471C: .word 0x00000424
	thumb_func_end ov14_021F46F4

	thumb_func_start ov14_021F4720
ov14_021F4720: ; 0x021F4720
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xc3
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0xc
	add r2, r1, #0
	sub r2, #0x21
	bl ManagedSprite_SetPositionXY
	mov r0, #0x31
	mov r2, #0x14
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0xf4
	mvn r2, r2
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc5
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x2b
	add r2, r1, #0
	sub r2, #0x40
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc6
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x80
	add r2, r1, #0
	sub r2, #0xa8
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc7
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x80
	add r2, r1, #0
	sub r2, #0x9c
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	bl ov14_021F49E0
	ldr r0, [r4, #0x34]
	mov r1, #7
	mov r2, #5
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	bl ov14_021F46F4
	ldr r1, [r4, #0x34]
	ldr r0, _021F47B0 ; =0x00000414
	ldr r0, [r1, r0]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r1, [r4, #0x34]
	ldr r0, _021F47B4 ; =0x00000424
	ldr r0, [r1, r0]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	pop {r4, pc}
	nop
_021F47B0: .word 0x00000414
_021F47B4: .word 0x00000424
	thumb_func_end ov14_021F4720

	thumb_func_start ov14_021F47B8
ov14_021F47B8: ; 0x021F47B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #4
	mov r4, #0x10
_021F47C2:
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r2, r2, r7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	bls _021F47C2
	ldr r0, [r5, #0x34]
	bl ov14_021F46F4
	mov r6, #0
	add r4, r6, #0
_021F4808:
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r2, r2, r7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blo _021F4808
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F47B8

	thumb_func_start ov14_021F4848
ov14_021F4848: ; 0x021F4848
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	add r4, r0, #0
	ldrb r0, [r5, #0x1f]
	mov r1, #6
	bl _s32_div_f
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _021F4870
	mov r1, #6
	mov r2, #1
	bl ov14_021F2A18
	b _021F4878
_021F4870:
	mov r1, #6
	mov r2, #0
	bl ov14_021F2A18
_021F4878:
	ldrb r0, [r5, #0x1f]
	mov r1, #6
	bl _s32_div_f
	add r4, r1, #0
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x22
	mul r1, r4
	add r1, #0x2b
	lsl r1, r1, #0x10
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F4848

	thumb_func_start ov14_021F48B4
ov14_021F48B4: ; 0x021F48B4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	mov r0, #0xc6
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc6
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _021F493C ; =ov14_021F8068
	add r3, sp, #0
	mov r2, #2
	ldrb r1, [r1, r4]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	add r4, #0xf
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc7
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc7
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	bl ov14_021F46F4
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021F493C: .word ov14_021F8068
	thumb_func_end ov14_021F48B4

	thumb_func_start ov14_021F4940
ov14_021F4940: ; 0x021F4940
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _021F4954 ; =ManagedSprite_GetPositionXY
	bx r3
	nop
_021F4954: .word ManagedSprite_GetPositionXY
	thumb_func_end ov14_021F4940

	thumb_func_start ov14_021F4958
ov14_021F4958: ; 0x021F4958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x13
	mov r1, #0x46
	mov r2, #0xa
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	add r1, sp, #4
	add r7, r0, #0
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #4]
	ldr r2, [r5, #0x34]
	ldr r1, _021F49C4 ; =0x000040C8
	lsl r4, r6, #0xa
	add r1, r2, r1
	mov r2, #1
	ldr r0, [r0, #0x14]
	add r1, r1, r4
	lsl r2, r2, #0xa
	bl MI_CpuCopy8
	add r0, r7, #0
	bl Heap_Free
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E7930
	add r2, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp]
	ldr r3, [r5, #0x34]
	ldr r1, _021F49C4 ; =0x000040C8
	add r0, r5, #0
	add r1, r3, r1
	add r1, r1, r4
	mov r3, #8
	bl ov14_021F46B0
	ldr r3, [r5, #0x34]
	ldr r2, _021F49C4 ; =0x000040C8
	add r0, r5, #0
	add r2, r3, r2
	add r1, r6, #0
	add r2, r2, r4
	bl ov14_021F4A64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F49C4: .word 0x000040C8
	thumb_func_end ov14_021F4958

	thumb_func_start ov14_021F49C8
ov14_021F49C8: ; 0x021F49C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021F49CE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F4958
	add r4, r4, #1
	cmp r4, #0x12
	blo _021F49CE
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F49C8

	thumb_func_start ov14_021F49E0
ov14_021F49E0: ; 0x021F49E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	mov r4, #0xf
	mov r6, #0
	lsl r5, r1, #0xa
_021F49F8:
	ldr r0, [r7, #0x34]
	ldr r2, _021F4A1C ; =0x000040C8
	mov r3, #1
	add r2, r0, r2
	add r1, r4, #0
	add r2, r2, r5
	lsl r3, r3, #0xa
	bl ov14_021F2C1C
	mov r0, #1
	lsl r0, r0, #0xa
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, r0
	cmp r6, #6
	blo _021F49F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4A1C: .word 0x000040C8
	thumb_func_end ov14_021F49E0

	thumb_func_start ov14_021F4A20
ov14_021F4A20: ; 0x021F4A20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r4, r1, #0
	mov r1, #6
	bl _s32_div_f
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl _u32_div_f
	cmp r6, r0
	bne _021F4A5C
	add r0, r4, #0
	mov r1, #6
	ldr r5, [r5, #0x34]
	bl _u32_div_f
	ldr r2, _021F4A60 ; =0x000040C8
	add r0, r5, #0
	add r3, r5, r2
	lsl r2, r4, #0xa
	add r2, r3, r2
	mov r3, #1
	add r1, #0xf
	lsl r3, r3, #0xa
	bl ov14_021F2C1C
_021F4A5C:
	pop {r4, r5, r6, pc}
	nop
_021F4A60: .word 0x000040C8
	thumb_func_end ov14_021F4A20

	thumb_func_start ov14_021F4A64
ov14_021F4A64: ; 0x021F4A64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #0x10]
	mov r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0x20]
_021F4A76:
	mov r0, #0xa
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r5, r0, #2
_021F4A8A:
	ldr r0, [sp]
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r0, [r0, #4]
	ldr r1, [sp, #4]
	add r2, r3, r2
	bl PCStorage_GetMonByIndexPair
	str r0, [sp, #0x28]
	bl AcquireBoxMonLock
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	mov r1, #0xac
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021F4B4A
	ldr r0, [sp, #0x28]
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	bne _021F4AF0
	ldr r0, [sp, #0x28]
	mov r1, #0x70
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp]
	mov r3, #0x1b
	ldr r1, [r0, #0x34]
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl GetMonBaseStatEx_HandleAlternateForm
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	b _021F4AFC
_021F4AF0:
	ldr r0, _021F4B88 ; =0x000001EA
	cmp r4, r0
	bne _021F4AFA
	mov r1, #1
	b _021F4AFC
_021F4AFA:
	mov r1, #8
_021F4AFC:
	ldr r0, _021F4B8C ; =ov14_021F8080
	ldr r4, [sp, #0x10]
	ldrb r0, [r0, r1]
	add r0, #0x20
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #8
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r4, #0
	cmp r0, r5
	bge _021F4B4A
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	asr r7, r0, #3
	mov r0, #7
	add r6, r1, #0
	and r6, r0
_021F4B24:
	asr r2, r4, #3
	lsl r2, r2, #2
	lsl r1, r4, #0x1d
	add r2, r2, r7
	lsr r1, r1, #0x1a
	lsl r2, r2, #6
	add r1, r1, r2
	add r2, r6, r1
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r1, r2
	mov r2, #2
	bl MIi_CpuClear16
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r5
	blt _021F4B24
_021F4B4A:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	bl ReleaseBoxMonLock
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	cmp r0, #6
	blo _021F4A8A
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	cmp r0, #5
	bhs _021F4B84
	b _021F4A76
_021F4B84:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4B88: .word 0x000001EA
_021F4B8C: .word ov14_021F8080
	thumb_func_end ov14_021F4A64


    .rodata

ov14_021F8068: ; 0x021F8068
	.byte 0x50, 0x60, 0x70, 0x90, 0xA0, 0xB0, 0x00, 0x00

ov14_021F8070: ; 0x021F8070
	.byte 0x01, 0xFF, 0x00, 0x00, 0x01, 0x01, 0xFF, 0xFF

ov14_021F8078: ; 0x021F8078
	.byte 0x00, 0x00, 0x01, 0xFF, 0x01, 0xFF, 0x01, 0xFF

ov14_021F8080: ; 0x021F8080
	.byte 0x0E, 0x0F, 0x05, 0x02, 0x0D, 0x0C, 0x06, 0x0B, 0x0A, 0x09, 0x00, 0x00

ov14_021F808C: ; 0x021F808C
	.byte 0x18, 0x10, 0x40, 0x18
	.byte 0x18, 0x30, 0x40, 0x38, 0x18, 0x50, 0x40, 0x58

ov14_021F8098: ; 0x021F8098
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00

ov14_021F80A8: ; 0x021F80A8
	.byte 0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00

ov14_021F80BC: ; 0x021F80BC
	.byte 0x28, 0x00

ov14_021F80BE: ; 0x021F80BE
	.byte 0xD0, 0x00
	.byte 0x50, 0x00, 0xD8, 0x00, 0x28, 0x00, 0xF0, 0x00, 0x50, 0x00, 0xF8, 0x00, 0x28, 0x00, 0x10, 0x01
	.byte 0x50, 0x00, 0x18, 0x01

ov14_021F80D4: ; 0x021F80D4
	.byte 0x35, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F80EC: ; 0x021F80EC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00

ov14_021F810C: ; 0x021F810C
	.byte 0x18, 0x00, 0x30, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xF9, 0xC0, 0x00, 0x00, 0xF9, 0xC0, 0x00, 0x00, 0xF9, 0xC0, 0x00, 0x00, 0xF9, 0xC0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F8140: ; 0x021F8140
	.byte 0x2B, 0x00, 0xEB, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x23, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFD, 0xC0, 0x00, 0x00
	.byte 0xFD, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov14_021F8174: ; 0x021F8174
	.byte 0x3B, 0x00, 0xEB, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x29, 0xC1, 0x00, 0x00, 0x00, 0xC1, 0x00, 0x00
	.byte 0xFE, 0xC0, 0x00, 0x00, 0xFE, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F81A8: ; 0x021F81A8
	.byte 0x0C, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0xC1, 0x00, 0x00
	.byte 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F81DC: ; 0x021F81DC
	.byte 0x9C, 0x00, 0x1C, 0x00
	.byte 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x2D, 0xC1, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F8210: ; 0x021F8210
	.byte 0x8C, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x1D, 0xC1, 0x00, 0x00, 0xFA, 0xC0, 0x00, 0x00, 0xFA, 0xC0, 0x00, 0x00
	.byte 0xFA, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov14_021F8244: ; 0x021F8244
	.byte 0x8C, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E, 0xC1, 0x00, 0x00, 0xFB, 0xC0, 0x00, 0x00
	.byte 0xFA, 0xC0, 0x00, 0x00, 0xFA, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F8278: ; 0x021F8278
	.byte 0x0C, 0x00, 0xEB, 0xFF, 0x00, 0x00, 0x01, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0xC1, 0x00, 0x00
	.byte 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F82AC: ; 0x021F82AC
	.byte 0xF4, 0x00, 0xEB, 0xFF
	.byte 0x00, 0x00, 0x03, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x2D, 0xC1, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F82E0: ; 0x021F82E0
	.byte 0x2B, 0x00, 0xEB, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x2D, 0xC1, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00
	.byte 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov14_021F8314: ; 0x021F8314
	.byte 0x80, 0x00, 0xD8, 0xFF, 0x00, 0x00, 0x05, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0xC1, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x00
	.byte 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F8348: ; 0x021F8348
	.byte 0x80, 0x00, 0xE4, 0xFF, 0x00, 0x00, 0x06, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0xC1, 0x00, 0x00
	.byte 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F837C: ; 0x021F837C
	.byte 0x80, 0x00, 0x80, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x2D, 0xC1, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F83B0: ; 0x021F83B0
	.byte 0x80, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x2D, 0xC1, 0x00, 0x00, 0x01, 0xC1, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00
	.byte 0xFF, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov14_021F83E4: ; 0x021F83E4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F, 0xC1, 0x00, 0x00, 0xFC, 0xC0, 0x00, 0x00
	.byte 0xFB, 0xC0, 0x00, 0x00, 0xFB, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F8418: ; 0x021F8418
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x20, 0xC1, 0x00, 0x00
	.byte 0xFD, 0xC0, 0x00, 0x00, 0xFB, 0xC0, 0x00, 0x00, 0xFB, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F844C: ; 0x021F844C
	.byte 0xA0, 0x00, 0x30, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x21, 0xC1, 0x00, 0x00, 0xFE, 0xC0, 0x00, 0x00, 0xFC, 0xC0, 0x00, 0x00, 0xFC, 0xC0, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov14_021F8480: ; 0x021F8480
	.byte 0xC2, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x22, 0xC1, 0x00, 0x00, 0xFE, 0xC0, 0x00, 0x00, 0xFC, 0xC0, 0x00, 0x00
	.byte 0xFC, 0xC0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

