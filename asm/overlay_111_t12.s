	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E65D4

	.text

	.text
	thumb_func_start ov111_021E65D4
ov111_021E65D4: ; 0x021E65D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bne _021E65E0
	bl GF_AssertFail
_021E65E0:
	add r4, r5, #0
	add r4, #0xc
	add r0, r4, #0
	bl GetWindowBgConfig
	str r0, [sp, #4]
	add r0, r4, #0
	bl GetWindowBgId
	str r0, [sp]
	mov r0, #0x74
	ldrsh r1, [r5, r0]
	mov r0, #0x70
	ldrsh r2, [r5, r0]
	sub r0, r1, r2
	bpl _021E6602
	neg r0, r0
_021E6602:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	asr r6, r0, #2
	cmp r0, #1
	ble _021E6610
	cmp r6, #0
	bne _021E6616
_021E6610:
	mov r0, #0
	str r0, [r5, #0x6c]
	b _021E6678
_021E6616:
	cmp r1, r2
	ble _021E6624
	mov r0, #0
	mvn r0, r0
	mul r0, r6
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_021E6624:
	mov r1, #0x74
	ldrsh r0, [r5, r1]
	add r2, r0, r6
	add r0, r5, #0
	add r0, #0x74
	strh r2, [r0]
	ldrsh r0, [r5, r1]
	cmp r0, #0xe8
	bge _021E6678
	ldr r0, [sp, #4]
	ldr r1, [sp]
	mov r2, #5
	add r3, r6, #0
	bl ScheduleSetBgPosText
	mov r7, #0
	add r4, sp, #8
_021E6646:
	add r1, sp, #8
	mov r3, #0x83
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #8
	lsl r3, r3, #0xe
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	mov r0, #0
	ldrsh r0, [r4, r0]
	mov r3, #0x83
	mov r1, #2
	add r0, r0, r6
	strh r0, [r4]
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #4]
	lsl r3, r3, #0xe
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _021E6646
_021E6678:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl BgCommitTilemapBufferToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov111_021E65D4

