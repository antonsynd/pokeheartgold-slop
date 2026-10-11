#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8824
	.public ov14_021E884C
	.public ov14_021E8874

    .text

	.text
	thumb_func_start ov14_021E8824
ov14_021E8824: ; 0x021E8824
	push {r3, lr}
	ldr r1, _021E8848 ; =0x0000044E
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1d
	beq _021E8846
	mov r1, #0xc
	str r1, [sp]
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	sub r2, #0x11
	mov r3, #0
	bl sub_020198FC
_021E8846:
	pop {r3, pc}
	.balign 4, 0
_021E8848: .word 0x0000044E
	thumb_func_end ov14_021E8824

	thumb_func_start ov14_021E884C
ov14_021E884C: ; 0x021E884C
	push {r3, lr}
	ldr r1, _021E8870 ; =0x0000044E
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1d
	beq _021E886C
	mov r1, #0xc
	str r1, [sp]
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x10
	mov r2, #1
	mov r3, #0
	bl sub_020198FC
_021E886C:
	pop {r3, pc}
	nop
_021E8870: .word 0x0000044E
	thumb_func_end ov14_021E884C

	thumb_func_start ov14_021E8874
ov14_021E8874: ; 0x021E8874
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E88A0 ; =0x0000044E
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1d
	beq _021E889E
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	bl sub_0201980C
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x10
	mov r2, #0x14
	mov r3, #0xc
	bl sub_020196E8
_021E889E:
	pop {r4, pc}
	.balign 4, 0
_021E88A0: .word 0x0000044E
	thumb_func_end ov14_021E8874

