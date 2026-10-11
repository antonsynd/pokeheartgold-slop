#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238D84
	.public ov70_02238E50
	.public ov70_02238F64
	.public ov70_022446D0
	.public ov70_02244708
	.public ov70_02244774
	.public ov70_02244FA4

	.text

	thumb_func_start ov70_022446D0
ov70_022446D0: ; 0x022446D0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022446FC ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02244700 ; =0x00000BAC
	mov r2, #0x11
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	bl ov70_02238D84
	ldr r0, _02244704 ; =0x000011FA
	mov r1, #1
	strh r1, [r4, r0]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_022446FC: .word 0x00000F0F
_02244700: .word 0x00000BAC
_02244704: .word 0x000011FA
	thumb_func_end ov70_022446D0

	thumb_func_start ov70_02244708
ov70_02244708: ; 0x02244708
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _02244742
	ldr r0, _02244768 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _0224476C ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, _02244770 ; =0x00000BA8
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r3, r2, #0
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #2
	bl ov70_02238D84
	add r0, r4, #0
	bl ov70_02238F64
	b _02244760
_02244742:
	cmp r0, #2
	bne _02244760
	ldr r0, _02244768 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	bl sub_0203946C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #0xb
	str r0, [r4, #0x2c]
_02244760:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02244768: .word 0x000011C8
_0224476C: .word 0x00000F0F
_02244770: .word 0x00000BA8
	thumb_func_end ov70_02244708

	thumb_func_start ov70_02244774
ov70_02244774: ; 0x02244774
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0224479C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #7
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0x10
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0224479C: .word 0x00000F0F
	thumb_func_end ov70_02244774

