	.include "macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E81E0
	.extern ov85_021E7044
	.extern ov85_021E815C

	.text

	.text
	thumb_func_start ov85_021E81E0
ov85_021E81E0: ; 0x021E81E0
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x66
	mov r1, #0x18
	bl Heap_AllocAtEnd
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021E81F6:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021E81F6
	mov r1, #0x80
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x64
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #4
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x18]
	mov r0, #6
	str r0, [sp, #0x1c]
	mov r0, #7
	str r0, [sp, #0x20]
	sub r0, #8
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, sp, #0
	bl ov85_021E7044
	str r0, [r4, #0x14]
	bl ManagedSprite_TickFrame
	ldr r0, _021E8258 ; =ov85_021E815C
	add r1, r4, #0
	mov r2, #0
	str r5, [r4, #0x10]
	bl SysTask_CreateOnMainQueue
	add r4, r0, #0
	bne _021E8252
	bl GF_AssertFail
_021E8252:
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, pc}
	.balign 4, 0
_021E8258: .word ov85_021E815C
	thumb_func_end ov85_021E81E0

