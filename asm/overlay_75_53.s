	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02248800
	.extern ov75_02247878
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02248800
ov75_02248800: ; 0x02248800
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl ov00_021EC60C
	bl ov00_021EC5B4
	cmp r0, #0
	beq _022488A6
	bl ov00_021EC724
	cmp r0, #8
	bhi _02248886
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248826: ; jump table
	.short _02248886 - _02248826 - 2 ; case 0
	.short _02248886 - _02248826 - 2 ; case 1
	.short _02248886 - _02248826 - 2 ; case 2
	.short _02248886 - _02248826 - 2 ; case 3
	.short _0224889C - _02248826 - 2 ; case 4
	.short _02248886 - _02248826 - 2 ; case 5
	.short _02248886 - _02248826 - 2 ; case 6
	.short _02248838 - _02248826 - 2 ; case 7
	.short _02248886 - _02248826 - 2 ; case 8
_02248838:
	add r0, sp, #8
	add r1, sp, #4
	bl ov00_021EC11C
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	str r0, [r4, #0x1c]
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
	bne _0224887A
	bl ov70_02237F2C
	mov r0, #0x46
	ldr r1, [r4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_0224887A:
	add r0, r4, #0
	bl ov75_02247878
	mov r0, #0x1b
	str r0, [r4, #8]
	b _022488A6
_02248886:
	add r0, sp, #0
	bl ov00_021EC0FC
	add r0, r4, #0
	bl ov75_02247878
	mov r0, #0x20
	str r0, [r4, #8]
	sub r0, #0x22
	str r0, [r4, #0x10]
	b _022488A6
_0224889C:
	add r0, sp, #0xc
	bl ov00_021EC9E0
	mov r0, #0xe
	str r0, [r4, #8]
_022488A6:
	mov r0, #0
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov75_02248800

