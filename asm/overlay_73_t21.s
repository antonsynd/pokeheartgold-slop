#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E68AC
	.extern ov73_021E66F0
	.extern ov73_021E670C
	.extern ov73_021E6830
	.extern ov73_021E746C
	.extern ov73_021E756C
	.extern ov73_021E781C

	.text

	.text
	thumb_func_start ov73_021E68AC
ov73_021E68AC: ; 0x021E68AC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0203769C
	cmp r0, #0
	beq _021E68E0
	ldr r0, _021E69BC ; =0x00004A10
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6904
	ldr r0, _021E69C0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E68D4
	ldr r0, _021E69C4 ; =0x000005F2
	bl PlaySE
_021E68D4:
	add r0, r5, #0
	bl ov73_021E66F0
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021E68E0:
	ldr r0, _021E69C8 ; =0x00004A24
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6904
	ldr r0, _021E69C0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E68F8
	ldr r0, _021E69C4 ; =0x000005F2
	bl PlaySE
_021E68F8:
	add r0, r5, #0
	bl ov73_021E66F0
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021E6904:
	bl ov73_021E746C
	add r4, r0, #0
	bl sub_02037454
	cmp r4, r0
	beq _021E691E
	add r0, r5, #0
	bl ov73_021E66F0
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021E691E:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #0
	beq _021E69B0
	cmp r0, #2
	bne _021E6958
	bl sub_0203769C
	cmp r0, #0
	bne _021E694E
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x75
	add r1, sp, #4
	mov r2, #1
	bl sub_02037030
	add r0, r5, #0
	mov r1, #1
	bl ov73_021E781C
_021E694E:
	add r0, r5, #0
	mov r1, #0
	bl ov73_021E670C
	b _021E69AA
_021E6958:
	bl sub_0203769C
	cmp r0, #0
	bne _021E6974
	add r0, r5, #0
	mov r1, #0xb
	bl ov73_021E670C
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ov73_021E756C
	b _021E69AA
_021E6974:
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203769C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021E69CC ; =0x00004A28
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #0
	add r0, #0xa
	strh r1, [r5, r0]
	mov r0, #0xc6
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x70
	add r1, sp, #0
	mov r2, #4
	bl sub_02037030
_021E69AA:
	add r0, r5, #0
	bl ov73_021E6830
_021E69B0:
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E69BC: .word 0x00004A10
_021E69C0: .word gSystem
_021E69C4: .word 0x000005F2
_021E69C8: .word 0x00004A24
_021E69CC: .word 0x00004A28
	thumb_func_end ov73_021E68AC

