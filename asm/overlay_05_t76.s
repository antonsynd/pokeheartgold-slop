	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221E944
	.extern ov05_0221E8A8

	.text

	.text
	thumb_func_start ov05_0221E944
ov05_0221E944: ; 0x0221E944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r3, [r6]
	mov r2, #0x4b
	ldr r3, [r3, #0x24]
	mov r0, #0
	mov r1, #0x1b
	lsl r2, r2, #2
	bl NewMsgDataFromNarc
	ldr r3, [r6]
	str r0, [sp, #0x10]
	ldr r3, [r3, #0x24]
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #0
	bl MessagePrinter_New
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldr r0, [r0, #0x24]
	bl MessageFormat_New
	ldr r1, [r6]
	str r0, [sp, #8]
	ldr r1, [r1, #0x24]
	mov r0, #0x20
	bl String_New
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_0221E986:
	mov r0, #0x86
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0221E9A0
	ldr r1, [sp, #0x10]
	str r7, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r6, #0
	str r4, [sp, #4]
	bl ov05_0221E8A8
_0221E9A0:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #6
	blo _0221E986
	add r0, r7, #0
	bl String_Delete
	ldr r0, [sp, #0x10]
	bl DestroyMsgData
	ldr r0, [sp, #0xc]
	bl MessagePrinter_Delete
	ldr r0, [sp, #8]
	bl MessageFormat_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov05_0221E944

