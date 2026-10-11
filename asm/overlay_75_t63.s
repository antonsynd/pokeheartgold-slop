	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02248FE8
	.public ov75_022490D8
	.extern ov75_0224785C
	.extern ov75_02247878
	.extern ov75_022494CC
	.extern ov75_02249534
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02248FE8
ov75_02248FE8: ; 0x02248FE8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	cmp r1, #3
	bhi _022490CA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249004: ; jump table
	.short _0224900C - _02249004 - 2 ; case 0
	.short _0224902E - _02249004 - 2 ; case 1
	.short _02249090 - _02249004 - 2 ; case 2
	.short _022490A8 - _02249004 - 2 ; case 3
_0224900C:
	ldr r1, _022490D0 ; =0x00000F0F
	mov r2, #0x20
	str r1, [sp]
	ldr r1, [r4, #0x34]
	mov r3, #0
	bl ov75_022494CC
	add r0, r4, #0
	bl ov75_0224785C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _022490CA
_0224902E:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl SaveGameNormal
	cmp r0, #2
	bne _0224906C
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl BufferPlayersName
	ldr r0, _022490D0 ; =0x00000F0F
	mov r2, #0x21
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #0
	bl ov75_022494CC
	ldr r0, _022490D4 ; =0x0000061A
	bl PlaySE
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl Save_ClearStatusFlags
	b _0224907C
_0224906C:
	ldr r0, _022490D0 ; =0x00000F0F
	mov r2, #0x22
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #0
	bl ov75_022494CC
_0224907C:
	add r0, r4, #0
	bl ov75_02247878
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _022490CA
_02249090:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022490CA
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _022490CA
_022490A8:
	add r0, #0x98
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0x3c
	ble _022490CA
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022490CA:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_022490D0: .word 0x00000F0F
_022490D4: .word 0x0000061A
	thumb_func_end ov75_02248FE8

	thumb_func_start ov75_022490D8
ov75_022490D8: ; 0x022490D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _022490EE
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022490EE:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _022491C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249104: ; jump table
	.short _0224910E - _02249104 - 2 ; case 0
	.short _0224912C - _02249104 - 2 ; case 1
	.short _02249166 - _02249104 - 2 ; case 2
	.short _0224918E - _02249104 - 2 ; case 3
	.short _022491A6 - _02249104 - 2 ; case 4
_0224910E:
	ldr r0, _022491C8 ; =0x00000F0F
	mov r2, #0xf
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov75_022494CC
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _022491C2
_0224912C:
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
	bne _02249158
	bl ov70_02237F2C
	mov r0, #0x46
	ldr r1, [r4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_02249158:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _022491C2
_02249166:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022491C2
	ldr r0, _022491C8 ; =0x00000F0F
	mov r2, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov75_022494CC
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _022491C2
_0224918E:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022491C2
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _022491C2
_022491A6:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x90
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _022491C2
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022491C2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_022491C8: .word 0x00000F0F
	thumb_func_end ov75_022490D8

