	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5CEC
	.extern _0221602C
	.extern _02216034
	.extern _02216414
	.extern _0221A680
	.extern ov00_021E6240
	.extern ov00_021E63CC
	.extern ov00_021E6424
	.extern ov00_021E6428
	.extern ov00_021E6484
	.extern ov00_021E6554
	.extern ov00_021E7300

	.text

	.text
	thumb_func_start ov00_021E5CEC
ov00_021E5CEC: ; 0x021E5CEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021E5DFC ; =_0221A680
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _021E5D04
	bl GF_AssertFail
_021E5D04:
	ldr r0, _021E5DFC ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E5E00 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #4
	beq _021E5D16
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E5D16:
	bl ov00_021E7300
	ldr r2, _021E5E04 ; =_0221602C
	add r1, sp, #8
	ldmia r2!, {r0, r2}
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r2, [sp, #0xc]
	mul r0, r7
	str r0, [sp, #0xc]
	mov r0, #0
	mov r2, #8
	bl ov00_021F14D4
	cmp r0, #0
	beq _021E5D3C
	bl GF_AssertFail
_021E5D3C:
	ldr r1, _021E5E08 ; =_02216414
	mov r0, #0
	add r2, r5, #0
	bl ov00_021F13A4
	cmp r0, #0
	bne _021E5D4E
	bl GF_AssertFail
_021E5D4E:
	ldr r0, _021E5DFC ; =_0221A680
	mov r2, #0x80
	ldr r1, [r0]
	ldr r0, _021E5E0C ; =0x00000FC4
	add r0, r1, r0
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _021E5DFC ; =_0221A680
	ldr r2, _021E5E08 ; =_02216414
	ldr r1, [r0]
	ldr r0, _021E5E0C ; =0x00000FC4
	add r3, r5, #0
	add r0, r1, r0
	ldr r1, _021E5E10 ; =_02216034
	bl sprintf
	ldr r0, _021E5DFC ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E5E0C ; =0x00000FC4
	add r0, r1, r0
	bl strlen
	cmp r0, #0x80
	blo _021E5D84
	bl GF_AssertFail
_021E5D84:
	cmp r6, #0
	beq _021E5D98
	ldr r0, _021E5DFC ; =_0221A680
	ldr r2, _021E5E0C ; =0x00000FC4
	ldr r3, [r0]
	mov r0, #1
	add r1, r3, r2
	add r2, r3, r2
	bl ov00_021F13A4
_021E5D98:
	ldr r2, _021E5DFC ; =_0221A680
	ldr r1, _021E5E00 ; =0x00001070
	ldr r0, [r2]
	mov r3, #5
	str r3, [r0, r1]
	add r0, r1, #0
	ldr r3, [r2]
	add r0, #0xc
	str r4, [r3, r0]
	ldr r0, _021E5E14 ; =ov00_021E6424
	mov r3, #0
	str r0, [sp]
	str r3, [sp, #4]
	lsl r0, r4, #0x18
	ldr r2, [r2]
	sub r1, #0xac
	add r1, r2, r1
	ldr r2, _021E5E18 ; =ov00_021E63CC
	lsr r0, r0, #0x18
	bl ov00_021EDF1C
	ldr r0, _021E5DFC ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021E5E1C ; =0x00001074
	str r2, [r1, r0]
	ldr r0, _021E5E20 ; =ov00_021E6428
	bl ov00_021F989C
	ldr r0, _021E5E24 ; =ov00_021E6484
	bl ov00_021F98BC
	ldr r0, _021E5E28 ; =ov00_021E6554
	mov r1, #0
	bl ov00_021EE24C
	ldr r0, _021E5E2C ; =ov00_021E6240
	bl ov00_021F98DC
	ldr r2, _021E5DFC ; =_0221A680
	ldr r1, _021E5E30 ; =0x00001078
	ldr r0, [r2]
	mov r3, #0
	str r3, [r0, r1]
	ldr r2, [r2]
	mov r0, #1
	add r1, #0x6d
	strb r0, [r2, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E5DFC: .word _0221A680
_021E5E00: .word 0x00001070
_021E5E04: .word _0221602C
_021E5E08: .word _02216414
_021E5E0C: .word 0x00000FC4
_021E5E10: .word _02216034
_021E5E14: .word ov00_021E6424
_021E5E18: .word ov00_021E63CC
_021E5E1C: .word 0x00001074
_021E5E20: .word ov00_021E6428
_021E5E24: .word ov00_021E6484
_021E5E28: .word ov00_021E6554
_021E5E2C: .word ov00_021E6240
_021E5E30: .word 0x00001078
	thumb_func_end ov00_021E5CEC

