	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D508
	.public ov43_0222D584
	.extern ov43_0222AD20
	.extern ov43_0222DAE8
	.extern ov43_0222DB94
	.extern ov43_0222DD40
	.extern ov43_0222DDA0
	.extern ov43_0222DDF0
	.extern ov43_0222DE14
	.extern ov43_0222EDAC
	.extern ov43_0222EE08
	.extern ov43_0222F0D0
	.extern ov43_0222F10C

	.text

	.text
	thumb_func_start ov43_0222D508
ov43_0222D508: ; 0x0222D508
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #4
	ble _0222D55C
	mov r2, #0
	ldr r0, [r4]
	mov r1, #2
	add r3, r2, #0
	bl ScheduleSetBgPosText
	mov r2, #0
	ldr r0, [r4]
	mov r1, #3
	add r3, r2, #0
	bl ScheduleSetBgPosText
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r1, r7, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	str r6, [sp, #4]
	bl ov43_0222DAE8
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AD20
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xff
	bl ov43_0222DB94
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222D55C:
	lsl r1, r0, #8
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r3, r0, #2
	ldr r0, [r5, #8]
	cmp r0, #2
	bne _0222D56E
	neg r3, r3
_0222D56E:
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D508

	thumb_func_start ov43_0222D584
ov43_0222D584: ; 0x0222D584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r2, [sp, #8]
	add r1, r2, #0
	add r0, #0xf8
	add r2, r3, #0
	str r3, [sp, #0xc]
	bl ov43_0222DD40
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl ov43_0222DDA0
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0222D600 ; =ov43_0222EDAC
	add r7, #0x14
	str r0, [sp, #0x14]
	ldr r0, _0222D604 ; =ov43_0222EE08
	str r0, [sp, #0x10]
_0222D5AE:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r3, [r3]
	add r0, r7, #0
	bl ov43_0222DDF0
	ldr r4, _0222D608 ; =ov43_0222F10C
	ldr r5, _0222D60C ; =ov43_0222F0D0
	mov r6, #0
_0222D5C6:
	ldr r0, [r4]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	str r0, [sp, #4]
	ldrb r3, [r5]
	add r0, r7, #0
	bl ov43_0222DE14
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #1
	cmp r6, #8
	blt _0222D5C6
	ldr r0, [sp, #0x14]
	add r7, #0x4c
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #6
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0222D5AE
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222D600: .word ov43_0222EDAC
_0222D604: .word ov43_0222EE08
_0222D608: .word ov43_0222F10C
_0222D60C: .word ov43_0222F0D0
	thumb_func_end ov43_0222D584

