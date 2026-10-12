	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021F0504
	.public ov18_021F05E8
	.extern ov18_021E590C
	.extern ov18_021EE35C
	.extern ov18_021EE3AC
	.extern ov18_021EEA84
	.extern ov18_021EEB34
	.extern ov18_021F04C0
	.extern ov18_021F9DE4

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F0504
ov18_021F0504: ; 0x021F0504
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #0x14]
	add r6, sp, #0x18
	add r7, r4, #0
_021F0512:
	add r1, r4, #0
	add r2, sp, #0x18
	ldr r0, [r5, #8]
	add r1, #0x11
	add r2, #1
	add r3, sp, #0x18
	bl sub_02019B1C
	ldrsb r0, [r6, r7]
	cmp r0, #2
	beq _021F0532
	cmp r0, #0x14
	beq _021F0532
	add r4, r4, #1
	cmp r4, #6
	blo _021F0512
_021F0532:
	add r0, r4, #0
	add r6, r5, #0
	add r0, #8
	add r6, #0xc
	lsl r7, r0, #4
	add r0, r6, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldr r0, [r5, #8]
	bge _021F0592
	add r1, r4, #0
	add r1, #0x11
	mov r2, #0xa
	mov r3, #0x14
	bl sub_020196E8
	ldr r0, _021F05DC ; =0x000018CA
	ldrsb r1, [r5, r0]
	add r0, #0x36
	ldr r0, [r5, r0]
	add r1, r1, #2
	cmp r1, r0
	bge _021F05D0
	add r0, r5, #0
	bl ov18_021F04C0
	add r3, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021F05E0 ; =0x000F0C00
	add r4, #8
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, _021F05E4 ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl ov18_021EE3AC
	b _021F05D0
_021F0592:
	add r1, r4, #0
	add r1, #0x11
	mov r2, #0xa
	mov r3, #2
	bl sub_020196E8
	ldr r0, _021F05DC ; =0x000018CA
	ldrsb r0, [r5, r0]
	sub r1, r0, #2
	bmi _021F05D0
	add r0, r5, #0
	bl ov18_021F04C0
	add r3, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021F05E0 ; =0x000F0C00
	add r4, #8
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, _021F05E4 ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl ov18_021EE3AC
_021F05D0:
	add r0, r6, r7
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F05DC: .word 0x000018CA
_021F05E0: .word 0x000F0C00
_021F05E4: .word 0x0000065C
	thumb_func_end ov18_021F0504

	thumb_func_start ov18_021F05E8
ov18_021F05E8: ; 0x021F05E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _021F0820 ; =ov18_021F9DE4
	mov r2, #0xd
	add r5, r0, #0
	bl ov18_021EE35C
	mov r6, #0
	add r4, r5, #0
	add r4, #0xc
	add r7, r6, #0
_021F05FE:
	add r0, r4, #0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #0xd
	blo _021F05FE
	ldr r1, _021F0824 ; =0x000018A2
	ldr r0, [r5]
	ldrh r1, [r5, r1]
	ldr r0, [r0]
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	beq _021F0622
	mov r4, #2
	b _021F0624
_021F0622:
	mov r4, #1
_021F0624:
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021F0828 ; =0x00020100
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0xc
	mov r2, #0x8f
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0828 ; =0x00020100
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x3c
	mov r2, #0x88
	mov r3, #0x30
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0828 ; =0x00020100
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x4c
	mov r2, #0xa
	mov r3, #0x10
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0828 ; =0x00020100
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x6c
	mov r2, #0xa
	mov r3, #0x10
	bl ov18_021F9648
	ldr r0, _021F0824 ; =0x000018A2
	mov r1, #2
	ldrh r0, [r5, r0]
	mov r2, #0x25
	bl ov18_021E590C
	add r6, r0, #0
	mov r3, #0
	ldr r0, _021F0828 ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x1c
	add r1, r6, #0
	mov r2, #0x20
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	ldr r0, [r5]
	mov r1, #0x25
	ldr r0, [r0, #4]
	bl PlayerProfile_GetPlayerName_NewString
	add r6, r0, #0
	mov r3, #0
	ldr r0, _021F0828 ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x2c
	add r1, r6, #0
	mov r2, #0x20
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0828 ; =0x00020100
	ldr r1, _021F0824 ; =0x000018A2
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov18_021EEA84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0830 ; =0x00050900
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x8c
	mov r2, #0x89
	mov r3, #0x30
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0834 ; =0x000F0500
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x9c
	mov r2, #0xb
	mov r3, #0x10
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0834 ; =0x000F0500
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0xbc
	mov r2, #0xb
	mov r3, #0x10
	bl ov18_021F9648
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F0834 ; =0x000F0500
	ldr r1, _021F0824 ; =0x000018A2
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ov18_021EEB34
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	ldr r1, _021F082C ; =0x0000065C
	bne _021F07D0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0828 ; =0x00020100
	mov r2, #0x8a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x7c
	mov r3, #0x20
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0834 ; =0x000F0500
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0xcc
	mov r2, #0x8c
	mov r3, #0x20
	bl ov18_021F9648
	b _021F080A
_021F07D0:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0828 ; =0x00020100
	mov r2, #0x8b
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x7c
	mov r3, #0x20
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F0834 ; =0x000F0500
	ldr r1, _021F082C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0xcc
	mov r2, #0x8d
	mov r3, #0x20
	bl ov18_021F9648
_021F080A:
	mov r4, #0
	add r5, #0xc
_021F080E:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xd
	blo _021F080E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0820: .word ov18_021F9DE4
_021F0824: .word 0x000018A2
_021F0828: .word 0x00020100
_021F082C: .word 0x0000065C
_021F0830: .word 0x00050900
_021F0834: .word 0x000F0500
	thumb_func_end ov18_021F05E8

