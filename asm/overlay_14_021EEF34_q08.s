#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021EEF34.inc"
	.include "global.inc"
	.public ov14_021EF6FC

    .text

	.text
	thumb_func_start ov14_021EF6FC
ov14_021EF6FC: ; 0x021EF6FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r4, [r1, #0xc]
	mov r1, #0x10
	bl sub_020199E4
	cmp r0, #0
	beq _021EF718
	mov r0, #0x85
	pop {r3, r4, r5, r6, r7, pc}
_021EF718:
	add r0, r5, #0
	add r0, #0x21
	ldrh r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _021EF784
	add r0, r5, #0
	ldrh r4, [r4, #2]
	bl ov14_021F1F38
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r1, [r5, #0x34]
	ldr r0, _021EF898 ; =0x000088C8
	ldrh r0, [r1, r0]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EF776
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r4, r0
	beq _021EF776
	ldr r0, _021EF89C ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x25
	bl ov14_021F6730
	mov r0, #0x87
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021EF776:
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x82
	pop {r3, r4, r5, r6, r7, pc}
_021EF784:
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	ldrh r1, [r4]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrh r1, [r4]
	ldr r6, [r5, #0x34]
	ldr r3, _021EF898 ; =0x000088C8
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	ldrb r1, [r5, #0x1f]
	ldrh r2, [r4]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EF7DE
	ldrh r2, [r4]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021EF8A0 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EF7DE:
	ldrh r1, [r4]
	add r0, r5, #0
	bl ov14_021E7588
	ldrh r1, [r4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	ldr r3, _021EF898 ; =0x000088C8
	add r1, #0x21
	strh r7, [r0, r3]
	ldr r6, [r5, #0x34]
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EF838
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021EF8A0 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EF838:
	ldr r0, [r5, #0x34]
	ldr r1, _021EF898 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021EF85E
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F1F38
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x82
	pop {r3, r4, r5, r6, r7, pc}
_021EF85E:
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	ldr r0, _021EF8A4 ; =0x000005EB
	bl PlaySE
	ldr r1, _021EF8A8 ; =ov14_021EA928
	add r0, r5, #0
	mov r2, #0x86
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF898: .word 0x000088C8
_021EF89C: .word 0x000005F3
_021EF8A0: .word 0x00004094
_021EF8A4: .word 0x000005EB
_021EF8A8: .word ov14_021EA928
	thumb_func_end ov14_021EF6FC

