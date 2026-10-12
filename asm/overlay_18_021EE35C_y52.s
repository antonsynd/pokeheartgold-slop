	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021F006C
	.public ov18_021F0118
	.public ov18_021F014C

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
	thumb_func_start ov18_021F006C
ov18_021F006C: ; 0x021F006C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r4, r1, #0
	ldr r0, [r0, #8]
	mov r1, #0xf
	bl sub_02019B08
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	lsl r0, r4, #4
	ldr r1, [sp]
	str r0, [sp, #0x10]
	add r0, r1, r0
	bl GetWindowBaseTile
	add r5, r0, #0
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl GetWindowX
	add r6, r0, #0
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl GetWindowY
	add r7, r0, #0
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl GetWindowWidth
	add r4, r0, #0
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl GetWindowHeight
	str r0, [sp, #4]
	mov r0, #0
	mov ip, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _021F010A
	ldr r0, [sp, #0xc]
	lsl r2, r6, #1
	add r0, r0, r2
	mov r6, #0xf
	mov r1, ip
	str r0, [sp, #8]
	lsl r6, r6, #0xc
_021F00DA:
	mov r0, #0
	cmp r4, #0
	bls _021F00FA
	ldr r2, [sp, #8]
	lsl r3, r7, #6
	add r2, r2, r3
_021F00E6:
	ldrh r3, [r2]
	and r3, r6
	add r3, r5, r3
	add r3, r1, r3
	add r3, r0, r3
	strh r3, [r2]
	add r0, r0, #1
	add r2, r2, #2
	cmp r0, r4
	blo _021F00E6
_021F00FA:
	mov r0, ip
	add r2, r0, #1
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r1, r1, r4
	mov ip, r2
	cmp r2, r0
	blo _021F00DA
_021F010A:
	ldr r1, [sp]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov18_021F006C

	thumb_func_start ov18_021F0118
ov18_021F0118: ; 0x021F0118
	push {r3, r4, r5, lr}
	cmp r1, #1
	bne _021F0134
	add r5, r0, #0
	mov r4, #0
	add r5, #0xc
_021F0124:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x10
	bls _021F0124
	pop {r3, r4, r5, pc}
_021F0134:
	add r4, r0, #0
	mov r5, #0
	add r4, #0xc
_021F013A:
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x10
	bls _021F013A
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021F0118

	thumb_func_start ov18_021F014C
ov18_021F014C: ; 0x021F014C
	push {r3, r4, r5, lr}
	ldr r1, _021F0164 ; =0x0000051C
	mov r4, #0x51
	add r5, r0, r1
_021F0154:
	add r0, r5, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x5d
	bls _021F0154
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F0164: .word 0x0000051C
	thumb_func_end ov18_021F014C

