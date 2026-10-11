	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_022488BC
	.extern ov75_02247878
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_022488BC
ov75_022488BC: ; 0x022488BC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov00_021ECDC8
	cmp r0, #5
	bhi _02248984
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022488D6: ; jump table
	.short _022488E8 - _022488D6 - 2 ; case 0
	.short _02248984 - _022488D6 - 2 ; case 1
	.short _02248984 - _022488D6 - 2 ; case 2
	.short _022488E2 - _022488D6 - 2 ; case 3
	.short _022488E8 - _022488D6 - 2 ; case 4
	.short _022488E8 - _022488D6 - 2 ; case 5
_022488E2:
	mov r0, #0x10
	str r0, [r4, #8]
	b _02248984
_022488E8:
	add r0, r4, #0
	bl ov75_02247878
	add r0, sp, #4
	add r1, sp, #0
	bl ov00_021EC11C
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0x18]
	bl ov00_021EC210
	bl ov00_021EC8D8
	bl sub_0203A914
	bl sub_0203957C
	mov r0, #4
	bl Sys_ClearSleepDisableFlag
	mov r0, #0x46
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0224892C
	bl ov70_02237F2C
	mov r0, #0x46
	ldr r1, [r4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_0224892C:
	mov r0, #0x1b
	str r0, [r4, #8]
	ldr r1, [sp]
	cmp r1, #7
	bhi _02248972
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02248942: ; jump table
	.short _02248972 - _02248942 - 2 ; case 0
	.short _02248952 - _02248942 - 2 ; case 1
	.short _02248952 - _02248942 - 2 ; case 2
	.short _02248964 - _02248942 - 2 ; case 3
	.short _02248956 - _02248942 - 2 ; case 4
	.short _0224896E - _02248942 - 2 ; case 5
	.short _02248960 - _02248942 - 2 ; case 6
	.short _0224896E - _02248942 - 2 ; case 7
_02248952:
	str r0, [r4, #8]
	b _02248972
_02248956:
	bl ov00_021FA0D8
	mov r0, #0x1b
	str r0, [r4, #8]
	b _02248972
_02248960:
	str r0, [r4, #8]
	b _02248972
_02248964:
	bl ov00_021ED9B4
	mov r0, #0x1b
	str r0, [r4, #8]
	b _02248972
_0224896E:
	bl sub_020399EC
_02248972:
	ldr r1, [sp, #4]
	ldr r0, _0224898C ; =0xFFFFB1E0
	cmp r1, r0
	bge _02248984
	ldr r0, _02248990 ; =0xFFFF8AD1
	cmp r1, r0
	blt _02248984
	mov r0, #0x1b
	str r0, [r4, #8]
_02248984:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0224898C: .word 0xFFFFB1E0
_02248990: .word 0xFFFF8AD1
	thumb_func_end ov75_022488BC

