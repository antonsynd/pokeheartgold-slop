	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7AA4
	.public ov00_021E7ACC
	.public ov00_021E7AE0
	.extern _0221A684

	.text

	.text
	thumb_func_start ov00_021E7AA4
ov00_021E7AA4: ; 0x021E7AA4
	push {r3, lr}
	sub sp, #0x10
	ldr r0, _021E7AC8 ; =_0221A684
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E7AC2
	add r0, sp, #0
	bl VCT_GetVADInfo
	ldr r0, [sp, #4]
	cmp r0, #2
	ble _021E7AC2
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, pc}
_021E7AC2:
	mov r0, #0
	add sp, #0x10
	pop {r3, pc}
	.balign 4, 0
_021E7AC8: .word _0221A684
	thumb_func_end ov00_021E7AA4

	thumb_func_start ov00_021E7ACC
ov00_021E7ACC: ; 0x021E7ACC
	ldr r0, _021E7AD8 ; =_0221A684
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r0, _021E7ADC ; =0x000019F0
	str r2, [r1, r0]
	bx lr
	.balign 4, 0
_021E7AD8: .word _0221A684
_021E7ADC: .word 0x000019F0
	thumb_func_end ov00_021E7ACC

	thumb_func_start ov00_021E7AE0
ov00_021E7AE0: ; 0x021E7AE0
	ldr r0, _021E7AEC ; =_0221A684
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _021E7AF0 ; =0x000019F0
	str r2, [r1, r0]
	bx lr
	.balign 4, 0
_021E7AEC: .word _0221A684
_021E7AF0: .word 0x000019F0
	thumb_func_end ov00_021E7AE0

