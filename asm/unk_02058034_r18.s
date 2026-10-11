	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058388
	.public sub_0205838C
	.public sub_020583EC
	.public sub_02058444
	.public sub_02058478
	.public sub_020584BC
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_02058518
	.extern sub_02058608

	.text
	thumb_func_start sub_02058388
sub_02058388: ; 0x02058388
	bx lr
	.balign 4, 0
	thumb_func_end sub_02058388

	thumb_func_start sub_0205838C
sub_0205838C: ; 0x0205838C
	push {r3, lr}
	mov r0, #0x62
	bl sub_02037B38
	cmp r0, #0
	beq _020583C8
	bl sub_02057180
	add r1, r0, #0
	mov r0, #0xf
	bl Heap_Alloc
	ldr r1, _020583E4 ; =_021D41C8
	mov r2, #0
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	bl sub_02056D7C
	bl sub_02057F80
	bl sub_02037504
	mov r0, #0x5c
	bl sub_02037AC0
	ldr r0, _020583E8 ; =sub_020583EC
	mov r1, #0
	bl sub_020582F4
	pop {r3, pc}
_020583C8:
	ldr r0, _020583E4 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _020583D8
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_020583D8:
	mov r0, #0x1e
	strh r0, [r1, #0x38]
	mov r0, #0x62
	bl sub_02037AC0
	pop {r3, pc}
	.balign 4, 0
_020583E4: .word _021D41C8
_020583E8: .word sub_020583EC
	thumb_func_end sub_0205838C

	thumb_func_start sub_020583EC
sub_020583EC: ; 0x020583EC
	push {lr}
	sub sp, #0xc
	bl sub_0203769C
	cmp r0, #0
	bne _020583FC
	bl sub_02034638
_020583FC:
	mov r0, #0x5c
	bl sub_02037B38
	cmp r0, #0
	beq _0205843A
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	bl sub_02056E60
	mov r0, #0
	bl sub_0205701C
	ldr r0, _02058440 ; =sub_02058478
	mov r1, #1
	bl sub_020582F4
_0205843A:
	add sp, #0xc
	pop {pc}
	nop
_02058440: .word sub_02058478
	thumb_func_end sub_020583EC

	thumb_func_start sub_02058444
sub_02058444: ; 0x02058444
	push {r3, lr}
	ldr r0, _02058470 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058456
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_02058456:
	mov r0, #0x1e
	bl sub_02037B38
	cmp r0, #0
	beq _0205846C
	bl sub_020374E4
	ldr r0, _02058474 ; =sub_02058608
	mov r1, #0
	bl sub_020582F4
_0205846C:
	pop {r3, pc}
	nop
_02058470: .word _021D41C8
_02058474: .word sub_02058608
	thumb_func_end sub_02058444

	thumb_func_start sub_02058478
sub_02058478: ; 0x02058478
	push {r3, lr}
	ldr r0, _020584B4 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _0205848A
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_0205848A:
	bl sub_0203769C
	cmp r0, #0
	bne _020584A2
	bl sub_02057E50
	cmp r0, #0
	beq _020584B0
	mov r0, #0x1e
	bl sub_02037AC0
	b _020584A8
_020584A2:
	mov r0, #0x1e
	bl sub_02037AC0
_020584A8:
	ldr r0, _020584B8 ; =sub_02058444
	mov r1, #0x14
	bl sub_020582F4
_020584B0:
	pop {r3, pc}
	nop
_020584B4: .word _021D41C8
_020584B8: .word sub_02058444
	thumb_func_end sub_02058478

	thumb_func_start sub_020584BC
sub_020584BC: ; 0x020584BC
	push {r3, lr}
	mov r0, #0x62
	bl sub_02037B38
	cmp r0, #0
	beq _020584F4
	bl sub_02057180
	add r1, r0, #0
	mov r0, #0xf
	bl Heap_Alloc
	ldr r1, _02058510 ; =_021D41C8
	mov r2, #0
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	bl sub_02056D7C
	bl sub_02057F80
	mov r0, #0x5c
	bl sub_02037AC0
	ldr r0, _02058514 ; =sub_02058518
	mov r1, #0
	bl sub_020582F4
	pop {r3, pc}
_020584F4:
	ldr r0, _02058510 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058504
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	pop {r3, pc}
_02058504:
	mov r0, #0x1e
	strh r0, [r1, #0x38]
	mov r0, #0x62
	bl sub_02037AC0
	pop {r3, pc}
	.balign 4, 0
_02058510: .word _021D41C8
_02058514: .word sub_02058518
	thumb_func_end sub_020584BC

