#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E8CB8
	.extern ov112_021E8B74
	.extern ov112_021E8C5C
	.extern ov112_021E9148
	.extern ov112_021E93BC
	.extern ov112_021E9464
	.extern ov112_021E9470
	.extern ov112_021E9480
	.extern ov112_021E9A30
	.extern ov112_021F4138
	.extern ov112_021F413C
	.extern ov112_021F5578
	.extern ov112_021FE498
	.extern ov112_021FF528
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E8CB8
ov112_021E8CB8: ; 0x021E8CB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x130
	add r7, r0, #0
	ldr r0, _021E901C ; =0x0001D798
	add r5, r1, #0
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0x9a
	add r1, r0, #0
	add r1, #0xe6
	bl Heap_Alloc
	str r0, [sp, #0x24]
	mov r0, #0
	ldr r6, _021E9020 ; =ov112_021F5578
	str r0, [sp, #0x2c]
	add r4, sp, #0x40
_021E8CDE:
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r6]
	add r1, r4, #0
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	mov r3, #0
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	add r0, r0, #1
	add r4, #0x10
	str r0, [sp, #0x2c]
	cmp r0, #0xf
	blo _021E8CDE
	ldr r0, _021E9024 ; =0x0001D77C
	ldrh r0, [r5, r0]
	strh r0, [r7]
	ldr r0, _021E9028 ; =0x0001E430
	ldr r0, [r5, r0]
	bl AcquireBoxMonLock
	mov r4, #0
	add r6, r7, #0
_021E8D24:
	ldr r0, _021E9028 ; =0x0001E430
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r6, #4]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #4
	blt _021E8D24
	ldr r0, _021E9028 ; =0x0001E430
	mov r1, #0xa1
	ldr r0, [r5, r0]
	mov r2, #0
	bl GetBoxMonData
	strb r0, [r7, #0xc]
	ldr r0, _021E9028 ; =0x0001E430
	mov r1, #0x70
	ldr r0, [r5, r0]
	mov r2, #0
	bl GetBoxMonData
	ldrb r1, [r7, #0xd]
	mov r2, #0x1f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x1f
	and r0, r2
	orr r0, r1
	strb r0, [r7, #0xd]
	ldrb r1, [r7, #0xd]
	mov r0, #0x80
	bic r1, r0
	ldr r0, _021E9028 ; =0x0001E430
	strb r1, [r7, #0xd]
	ldr r0, [r5, r0]
	bl BoxMonIsShiny
	lsl r0, r0, #0x1f
	ldrb r2, [r7, #0xe]
	mov r1, #2
	lsr r0, r0, #0x1e
	bic r2, r1
	orr r0, r2
	strb r0, [r7, #0xe]
	ldr r0, _021E9028 ; =0x0001E430
	mov r1, #9
	ldr r0, [r5, r0]
	mov r2, #0
	bl GetBoxMonData
	add r1, r7, #0
	add r1, #0x26
	strb r0, [r1]
	ldr r0, _021E9028 ; =0x0001E430
	add r2, r7, #0
	ldr r0, [r5, r0]
	mov r1, #0x75
	add r2, #0x10
	bl GetBoxMonData
	ldr r0, _021E9028 ; =0x0001E430
	mov r1, #1
	ldr r0, [r5, r0]
	bl ReleaseBoxMonLock
	ldrh r0, [r7]
	mov r1, #0x9a
	bl AllocAndLoadMonPersonal
	mov r1, #0x1c
	add r4, r0, #0
	bl GetPersonalAttr
	ldrb r1, [r7, #0xe]
	mov r2, #1
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #1
	and r0, r2
	orr r0, r1
	strb r0, [r7, #0xe]
	add r0, r4, #0
	bl FreeMonPersonal
	ldr r0, _021E9028 ; =0x0001E430
	ldr r0, [r5, r0]
	bl GetBoxMonGender
	ldrb r2, [r7, #0xd]
	mov r1, #0x60
	lsl r0, r0, #0x1e
	bic r2, r1
	lsr r0, r0, #0x19
	orr r0, r2
	strb r0, [r7, #0xd]
	ldr r0, [sp, #0x28]
	mov r1, #0xc0
	mul r1, r0
	str r1, [sp, #0x20]
	ldr r1, _021E902C ; =ov112_021F413C
	ldr r0, [sp, #0x20]
	ldr r0, [r1, r0]
	str r0, [sp, #0x1c]
	sub r1, r0, #1
	add r0, r7, #0
	add r0, #0x27
	strb r1, [r0]
	ldr r1, _021E901C ; =0x0001D798
	ldr r0, _021E9030 ; =0x0001E44C
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	add r1, #0x5b
	bl NewString_ReadMsgData
	add r1, r7, #0
	add r4, r0, #0
	add r1, #0x28
	mov r2, #0x15
	bl CopyStringToU16Array
	add r0, r4, #0
	bl String_Delete
	add r0, sp, #0x3c
	str r0, [sp]
	add r0, r7, #0
	add r1, r7, #0
	add r2, r7, #0
	ldr r3, [sp, #0x28]
	add r0, #0x52
	add r1, #0x82
	add r2, #0x88
	bl ov112_021E8B74
	ldr r1, _021E9028 ; =0x0001E430
	add r2, r7, #0
	ldr r4, _021E9034 ; =ov112_021F4138
	ldr r0, [sp, #0x20]
	ldr r1, [r5, r1]
	add r0, r4, r0
	add r0, #0xbc
	add r2, #0x82
	bl ov112_021E8C5C
	ldr r2, [sp, #0x20]
	add r0, sp, #0x40
	add r1, r5, #0
	add r2, r4, r2
	add r3, sp, #0x3c
	bl ov112_021E9148
	mov r0, #0
	str r0, [sp, #0x14]
	add r4, r0, #0
	ldr r0, _021E9038 ; =0x00000B7E
	add r6, r7, #0
	add r0, r7, r0
	str r0, [sp, #0x34]
_021E8E6C:
	add r0, r6, #0
	add r0, #0x52
	ldrh r0, [r0]
	bl ov112_021E9470
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xfa
	mov r2, #1
	mov r3, #0x9a
	bl GfGfxLoader_LoadFromNarc
	ldr r1, [sp, #0x34]
	mov r2, #6
	str r0, [sp, #0x30]
	add r1, r1, r4
	lsl r2, r2, #6
	bl MI_CpuCopy8
	ldr r0, [sp, #0x30]
	bl Heap_Free
	mov r0, #6
	lsl r0, r0, #6
	add r4, r4, r0
	ldr r0, [sp, #0x14]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _021E8E6C
	add r1, r7, #0
	add r1, #0x7f
	add r0, r7, #0
	ldrb r1, [r1]
	add r0, #0x72
	ldrh r0, [r0]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1e
	mov r2, #0
	bl ov112_021E9480
	add r1, r0, #0
	mov r2, #1
	ldr r0, _021E903C ; =0x00000102
	mov r3, #0x9a
	str r2, [sp]
	bl GfGfxLoader_LoadFromNarc
	ldr r1, _021E9040 ; =0x00000FFE
	mov r2, #6
	add r4, r0, #0
	add r1, r7, r1
	lsl r2, r2, #8
	bl MI_CpuCopy8
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0
	str r0, [sp, #0x18]
	add r4, r0, #0
	ldr r0, _021E9044 ; =0x000015FE
	add r6, sp, #0x40
	add r0, r7, r0
	str r0, [sp, #0x38]
_021E8EF2:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xac
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	mov r1, #0xa
	mov r2, #2
	bl ov112_021E93BC
	ldr r1, [sp, #0x38]
	mov r2, #5
	ldr r0, [sp, #0x24]
	add r1, r1, r4
	lsl r2, r2, #6
	bl MI_CpuCopy8
	mov r0, #5
	lsl r0, r0, #6
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _021E8EF2
	ldr r1, _021E9034 ; =ov112_021F4138
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r0, r1, r0
	add r1, r7, #0
_021E8F3A:
	add r3, r0, #0
	add r3, #0x80
	ldrh r4, [r3]
	add r3, r1, #0
	add r3, #0x8c
	strh r4, [r3]
	add r3, r0, #0
	add r3, #0x82
	ldrh r4, [r3]
	add r3, r1, #0
	add r3, #0xa0
	strh r4, [r3]
	add r3, r0, #0
	add r3, #0x84
	ldrh r4, [r3]
	add r3, r7, r2
	add r3, #0xb4
	add r2, r2, #1
	strb r4, [r3]
	add r0, r0, #6
	add r1, r1, #2
	cmp r2, #0xa
	blt _021E8F3A
	ldr r0, [sp, #0x1c]
	mov r2, #0xc0
	lsl r1, r0, #2
	ldr r0, _021E9048 ; =ov112_021FF528
	ldr r0, [r0, r1]
	add r1, r7, #0
	add r1, #0xbe
	bl MI_CpuCopy8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x11c]
	ldr r3, [sp, #0x24]
	mov r1, #0xa
	mov r2, #2
	bl ov112_021E93BC
	ldr r2, _021E904C ; =0x0000017E
	ldr r0, [sp, #0x24]
	add r1, r7, r2
	sub r2, #0x3e
	bl MI_CpuCopy8
	ldr r0, _021E9028 ; =0x0001E430
	ldr r0, [r5, r0]
	bl ov112_021E9464
	add r1, r0, #0
	mov r2, #1
	mov r0, #0xfa
	mov r3, #0x9a
	str r2, [sp]
	bl GfGfxLoader_LoadFromNarc
	ldr r1, _021E9050 ; =0x000002BE
	mov r2, #6
	add r4, r0, #0
	add r1, r7, r1
	lsl r2, r2, #6
	bl MI_CpuCopy8
	add r0, r4, #0
	bl Heap_Free
	ldr r0, _021E9024 ; =0x0001D77C
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021E8FD6
	bl GF_AssertFail
_021E8FD6:
	ldr r2, _021E9024 ; =0x0001D77C
	add r1, r2, #0
	ldrh r0, [r5, r2]
	add r1, #0x1a
	add r2, #0x18
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	bl ov112_021E9480
	add r1, r0, #0
	mov r2, #1
	ldr r0, _021E903C ; =0x00000102
	mov r3, #0x9a
	str r2, [sp]
	bl GfGfxLoader_LoadFromNarc
	add r4, r0, #0
	ldr r0, _021E9024 ; =0x0001D77C
	ldrh r1, [r5, r0]
	ldr r0, _021E9054 ; =0x00000147
	cmp r1, r0
	bne _021E9018
	ldr r0, _021E9028 ; =0x0001E430
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl GetBoxMonData
	add r2, r0, #0
	ldr r1, _021E9058 ; =ov112_021FE498
	add r0, r4, #0
	bl ov112_021E9A30
_021E9018:
	ldr r1, _021E905C ; =0x0000043E
	b _021E9060
	.balign 4, 0
_021E901C: .word 0x0001D798
_021E9020: .word ov112_021F5578
_021E9024: .word 0x0001D77C
_021E9028: .word 0x0001E430
_021E902C: .word ov112_021F413C
_021E9030: .word 0x0001E44C
_021E9034: .word ov112_021F4138
_021E9038: .word 0x00000B7E
_021E903C: .word 0x00000102
_021E9040: .word 0x00000FFE
_021E9044: .word 0x000015FE
_021E9048: .word ov112_021FF528
_021E904C: .word 0x0000017E
_021E9050: .word 0x000002BE
_021E9054: .word 0x00000147
_021E9058: .word ov112_021FE498
_021E905C: .word 0x0000043E
_021E9060:
	mov r2, #6
	add r0, r4, #0
	add r1, r7, r1
	lsl r2, r2, #8
	bl MI_CpuCopy8
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x12c]
	ldr r3, [sp, #0x24]
	mov r1, #0xa
	mov r2, #2
	bl ov112_021E93BC
	ldr r1, _021E90F4 ; =0x00000A3E
	mov r2, #5
	ldr r0, [sp, #0x24]
	add r1, r7, r1
	lsl r2, r2, #6
	bl MI_CpuCopy8
	ldr r0, _021E90F8 ; =0x000019BE
	mov r6, #0
	add r4, sp, #0x40
	add r5, r6, #0
	add r7, r7, r0
_021E90A4:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	ldr r3, [sp, #0x24]
	mov r1, #0xc
	mov r2, #2
	bl ov112_021E93BC
	mov r2, #6
	ldr r0, [sp, #0x24]
	add r1, r7, r5
	lsl r2, r2, #6
	bl MI_CpuCopy8
	mov r0, #6
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, r0
	cmp r6, #0xa
	blt _021E90A4
	mov r5, #0
	add r4, sp, #0x40
_021E90DC:
	add r0, r4, #0
	bl RemoveWindow
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0xf
	blo _021E90DC
	ldr r0, [sp, #0x24]
	bl Heap_Free
	add sp, #0x130
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E90F4: .word 0x00000A3E
_021E90F8: .word 0x000019BE
	thumb_func_end ov112_021E8CB8

