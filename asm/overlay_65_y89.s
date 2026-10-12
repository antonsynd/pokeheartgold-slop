#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221FC08
	.public ov65_0221FC54
	.public ov65_0221FCA0
	.extern ov65_0221F890
	.extern ov65_0221F8B4
	.extern ov65_0221FD20
	.extern ov65_022200EC

	.text

	.text
	thumb_func_start ov65_0221FC08
ov65_0221FC08: ; 0x0221FC08
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r4, [sp]
	mov r0, #0x1a
	add r2, sp, #0
	strb r0, [r2, #0x10]
	mov r1, #0xa
	strb r1, [r2, #0x11]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0x12]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf0
	bic r3, r1
	strb r3, [r2, #0x12]
	bl YesNoPrompt_Create
	add r1, sp, #0
	add r4, r0, #0
	bl YesNoPrompt_InitFromTemplate
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov65_0221FC08

	thumb_func_start ov65_0221FC54
ov65_0221FC54: ; 0x0221FC54
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r1, [r5]
	mov r6, #0
	add r4, r3, #0
	mvn r6, r6
	cmp r1, #0
	beq _0221FC6A
	cmp r1, #1
	beq _0221FC82
	b _0221FC9A
_0221FC6A:
	bl ov65_0221FC08
	str r0, [r4]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0221FC7A
	bl ov65_0221F890
_0221FC7A:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0221FC9A
_0221FC82:
	ldr r0, [r4]
	bl YesNoPrompt_HandleInput
	add r6, r0, #0
	beq _0221FC9A
	ldr r0, [r4]
	bl YesNoPrompt_Destroy
	bl ov65_0221F8B4
	mov r0, #0
	str r0, [r5]
_0221FC9A:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov65_0221FC54

	thumb_func_start ov65_0221FCA0
ov65_0221FCA0: ; 0x0221FCA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0221FD10 ; =0x0000034D
	add r4, r2, #0
	add r6, r1, #0
	str r0, [sp, #0x10]
	add r0, r3, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x13
	bl AddWindowParameterized
	ldr r2, _0221FD14 ; =0x000003F7
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xb
	bl DrawFrameAndWindow1
	ldr r3, _0221FD18 ; =ov65_022200EC
	add r2, sp, #0x14
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, r6, #1
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	mov r1, #5
	strh r1, [r0, #0x12]
	ldr r0, _0221FD1C ; =ov65_0221FD20
	mov r1, #0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r2, r1, #0
	mov r3, #0x1a
	str r5, [sp, #0x14]
	str r4, [sp, #0x20]
	bl ListMenuInit
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0221FD10: .word 0x0000034D
_0221FD14: .word 0x000003F7
_0221FD18: .word ov65_022200EC
_0221FD1C: .word ov65_0221FD20
	thumb_func_end ov65_0221FCA0

