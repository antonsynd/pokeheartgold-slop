	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"

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

	thumb_func_start ov18_021EE35C
ov18_021EE35C: ; 0x021EE35C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r6, #0
	str r2, [sp]
	add r0, r2, #0
	beq _021EE384
	add r4, r7, #0
	add r4, #0xc
_021EE36E:
	ldr r0, [r7, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl AddWindow
	ldr r0, [sp]
	add r6, r6, #1
	add r5, #8
	add r4, #0x10
	cmp r6, r0
	blo _021EE36E
_021EE384:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021EE35C

	thumb_func_start ov18_021EE388
ov18_021EE388: ; 0x021EE388
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r6, #0
	add r4, #0xc
_021EE392:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021EE39E
	add r0, r4, #0
	bl RemoveWindow
_021EE39E:
	add r6, r6, #1
	add r5, #0x10
	add r4, #0x10
	cmp r6, #0x65
	blo _021EE392
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov18_021EE388

	thumb_func_start ov18_021EE3AC
ov18_021EE3AC: ; 0x021EE3AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl NewString_ReadMsgData
	mov r1, #0x66
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x20]
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r1, r0
	ldr r1, _021EE3F8 ; =0x00000664
	ldr r3, [sp, #0x24]
	ldr r1, [r5, r1]
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EE3F8: .word 0x00000664
	thumb_func_end ov18_021EE3AC

	thumb_func_start ov18_021EE3FC
ov18_021EE3FC: ; 0x021EE3FC
	push {r4, r5, r6, lr}
	ldr r1, _021EE448 ; =ov18_021F9F3C
	mov r2, #0x14
	add r5, r0, #0
	bl ov18_021EE35C
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov18_021EE508
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov18_021EE508
	add r0, r5, #0
	bl ov18_021EE5FC
	add r0, r5, #0
	bl ov18_021F8824
	add r4, r0, #0
	add r0, r5, #0
	bl ov18_021F8838
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov18_021EE6BC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov18_021EE8B8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE448: .word ov18_021F9F3C
	thumb_func_end ov18_021EE3FC

	thumb_func_start ov18_021EE44C
ov18_021EE44C: ; 0x021EE44C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x1c]
	mov r0, #0x25
	add r4, r1, #0
	str r0, [sp]
	ldr r1, _021EE4FC ; =0x00000854
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r0, r1]
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x2c
	bl GfGfxLoader_GetCharDataFromOpenNarc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	lsl r6, r4, #4
	ldr r7, [r0, #0x14]
	ldr r4, [sp, #0x1c]
	mov r5, #0
	str r5, [sp, #0x24]
	add r4, #0xc
	add r7, #0x20
_021EE47C:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r4, r6
	add r1, r7, #0
	add r3, r2, #0
	bl BlitBitmapRect
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r4, r6
	add r1, r7, #0
	add r3, r2, #0
	bl BlitBitmapRect
	ldr r0, [sp, #0x24]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #0xc
	blo _021EE47C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EE500 ; =0x000F0800
	ldr r2, _021EE504 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r0, r4, r6
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x20]
	mov r3, #0x60
	bl ov18_021F9648
	ldr r0, [sp, #0x28]
	bl Heap_Free
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE4FC: .word 0x00000854
_021EE500: .word 0x000F0800
_021EE504: .word 0x0000065C
	thumb_func_end ov18_021EE44C

	thumb_func_start ov18_021EE508
ov18_021EE508: ; 0x021EE508
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov18_021EE44C
	add r4, #0xc
	lsl r0, r5, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021EE508

	thumb_func_start ov18_021EE520
ov18_021EE520: ; 0x021EE520
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	mov r0, #0x25
	str r0, [sp]
	ldr r0, _021EE5E0 ; =0x00000854
	str r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	mov r1, #1
	str r2, [sp, #0x20]
	add r2, r1, #0
	add r3, sp, #0x2c
	bl GfGfxLoader_GetCharDataFromOpenNarc
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	mov r6, #0
	ldr r7, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	add r5, #0xc
	lsl r0, r0, #4
	add r5, r5, r0
	add r0, r7, #0
	str r0, [sp, #0x28]
	add r0, #0x20
	add r4, r6, #0
	str r0, [sp, #0x28]
_021EE556:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	mov r1, #3
	str r0, [sp, #0x14]
	mov r0, #0xff
	lsl r1, r1, #8
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r2, #0
	bl BlitBitmapRect
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	mov r2, #0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	add r3, r2, #0
	bl BlitBitmapRect
	add r6, r6, #1
	add r4, #8
	cmp r6, #3
	blo _021EE556
	ldr r0, [sp, #0x24]
	bl Heap_Free
	mov r0, #0xf
	mov r1, #8
	mov r2, #7
	mov r3, #0x25
	bl MessagePrinter_New
	str r5, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	add r4, r0, #0
	mov r2, #3
	mov r3, #2
	bl PrintUIntOnWindow
	add r0, r4, #0
	bl MessagePrinter_Delete
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE5E0: .word 0x00000854
	thumb_func_end ov18_021EE520

	thumb_func_start ov18_021EE5E4
ov18_021EE5E4: ; 0x021EE5E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov18_021EE520
	add r4, #0xc
	lsl r0, r5, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021EE5E4

	thumb_func_start ov18_021EE5FC
ov18_021EE5FC: ; 0x021EE5FC
	push {r4, lr}
	ldr r1, _021EE62C ; =0x0000185D
	add r4, r0, #0
	ldr r2, _021EE630 ; =0x0000102C
	ldrb r1, [r4, r1]
	ldrh r2, [r4, r2]
	add r1, r1, #2
	bl ov18_021EE5E4
	ldr r1, _021EE62C ; =0x0000185D
	ldr r2, _021EE634 ; =0x0000102E
	ldrb r1, [r4, r1]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r1, #4
	bl ov18_021EE5E4
	ldr r1, _021EE62C ; =0x0000185D
	mov r0, #1
	ldrb r2, [r4, r1]
	eor r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_021EE62C: .word 0x0000185D
_021EE630: .word 0x0000102C
_021EE634: .word 0x0000102E
	thumb_func_end ov18_021EE5FC

	thumb_func_start ov18_021EE638
ov18_021EE638: ; 0x021EE638
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	beq _021EE6A6
	add r4, r5, #0
	add r4, #0xc
	lsl r6, r2, #4
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021EE6B4 ; =0x0000185C
	add r0, r7, #0
	ldrb r1, [r5, r1]
	mov r2, #0x25
	bl ov18_021E590C
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Pokedex_GetInternationalViewFlag
	cmp r0, #1
	ldr r0, _021EE6B8 ; =0x00020100
	bne _021EE682
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, r6
	add r1, r7, #0
	mov r2, #0x38
	bl ov18_021F95FC
	b _021EE696
_021EE682:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, r6
	add r1, r7, #0
	mov r2, #0x2c
	bl ov18_021F95FC
_021EE696:
	add r0, r7, #0
	bl String_Delete
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EE6A6:
	add r5, #0xc
	lsl r0, r2, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE6B4: .word 0x0000185C
_021EE6B8: .word 0x00020100
	thumb_func_end ov18_021EE638

	thumb_func_start ov18_021EE6BC
ov18_021EE6BC: ; 0x021EE6BC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #7
	add r6, r2, #0
	bl ov18_021EE71C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl ov18_021EE75C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #9
	bl ov18_021EE7DC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0xa
	bl ov18_021EE834
	pop {r4, r5, r6, pc}
	thumb_func_end ov18_021EE6BC

	thumb_func_start ov18_021EE6EC
ov18_021EE6EC: ; 0x021EE6EC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x51
	add r6, r2, #0
	bl ov18_021EE71C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x52
	bl ov18_021EE75C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x53
	bl ov18_021EE7DC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x54
	bl ov18_021EE834
	pop {r4, r5, r6, pc}
	thumb_func_end ov18_021EE6EC

	thumb_func_start ov18_021EE71C
ov18_021EE71C: ; 0x021EE71C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EE754 ; =0x00020100
	ldr r1, _021EE758 ; =0x0000065C
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #8
	bl ov18_021F9648
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE754: .word 0x00020100
_021EE758: .word 0x0000065C
	thumb_func_end ov18_021EE71C

	thumb_func_start ov18_021EE75C
ov18_021EE75C: ; 0x021EE75C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r7, r1, #0
	add r4, #0xc
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	cmp r7, #0
	beq _021EE7C6
	ldr r0, _021EE7D0 ; =0x00001858
	add r1, r7, #0
	ldrb r0, [r5, r0]
	bl Pokedex_ConvertToCurrentDexNo
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021EE7D4 ; =0x00020100
	ldr r2, [sp, #0x14]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _021EE7D8 ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r3, #9
	bl ov18_021EE3AC
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021EE7C6:
	add r0, r4, r6
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE7D0: .word 0x00001858
_021EE7D4: .word 0x00020100
_021EE7D8: .word 0x0000065C
	thumb_func_end ov18_021EE75C

	thumb_func_start ov18_021EE7DC
ov18_021EE7DC: ; 0x021EE7DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	lsl r5, r2, #4
	add r4, #0xc
	add r6, r1, #0
	add r0, r4, r5
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r6, #0
	beq _021EE826
	add r0, r6, #0
	mov r1, #2
	mov r2, #0x25
	bl ov18_021E590C
	add r6, r0, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, _021EE830 ; =0x00020100
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, r5
	add r1, r6, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add r0, r4, r5
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021EE826:
	add r0, r4, r5
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EE830: .word 0x00020100
	thumb_func_end ov18_021EE7DC

	thumb_func_start ov18_021EE834
ov18_021EE834: ; 0x021EE834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r6, #0
	lsl r5, r3, #4
	add r4, #0xc
	add r7, r1, #0
	add r0, r4, r5
	mov r1, #0
	str r2, [sp, #0xc]
	bl FillWindowPixelBuffer
	cmp r7, #0
	beq _021EE8A6
	ldr r0, [sp, #0xc]
	lsl r0, r0, #2
	add r1, r6, r0
	ldr r0, _021EE8B0 ; =0x00001032
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _021EE86A
	add r0, r7, #0
	mov r1, #2
	mov r2, #0x25
	bl ov18_021E595C
	b _021EE874
_021EE86A:
	mov r0, #0
	mov r1, #2
	mov r2, #0x25
	bl ov18_021E595C
_021EE874:
	add r6, r0, #0
	add r0, r4, r5
	bl GetWindowWidth
	lsl r0, r0, #3
	sub r2, r0, #4
	mov r0, #4
	str r0, [sp]
	ldr r0, _021EE8B4 ; =0x00020100
	add r1, r6, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, r5
	mov r3, #0
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add r0, r4, r5
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EE8A6:
	add r0, r4, r5
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE8B0: .word 0x00001032
_021EE8B4: .word 0x00020100
	thumb_func_end ov18_021EE834

	thumb_func_start ov18_021EE8B8
ov18_021EE8B8: ; 0x021EE8B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xcc
	add r4, r1, #0
	add r6, r2, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0xec
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0xbc
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0xdc
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0xfc
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	cmp r4, #0
	beq _021EE97C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0xb
	bl ov18_021EE984
	ldr r0, _021EE980 ; =0x0000185C
	ldrb r0, [r5, r0]
	cmp r0, #2
	bne _021EE950
	add r0, r5, #0
	mov r1, #0xc
	bl ov18_021EE9FC
	add r0, r5, #0
	mov r1, #0xe
	bl ov18_021EEA40
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0xd
	bl ov18_021EEAE4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0xf
	bl ov18_021EEB94
	pop {r4, r5, r6, pc}
_021EE950:
	add r0, r5, #0
	mov r1, #0x10
	bl ov18_021EEBE4
	ldr r3, _021EE980 ; =0x0000185C
	add r0, r5, #0
	ldrb r3, [r5, r3]
	add r1, r4, #0
	mov r2, #0x11
	bl ov18_021EEC34
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x12
	bl ov18_021EECB0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x13
	bl ov18_021EED00
_021EE97C:
	pop {r4, r5, r6, pc}
	nop
_021EE980: .word 0x0000185C
	thumb_func_end ov18_021EE8B8

	thumb_func_start ov18_021EE984
ov18_021EE984: ; 0x021EE984
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	lsl r0, r2, #2
	add r7, r1, #0
	add r1, r6, r0
	ldr r0, _021EE9F0 ; =0x00001032
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _021EE9EC
	add r5, r6, #0
	add r5, #0xc
	lsl r4, r3, #4
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021EE9F4 ; =0x0000185C
	add r0, r7, #0
	ldrb r1, [r6, r1]
	mov r2, #0
	mov r3, #0x25
	bl ov18_021E59A8
	add r6, r0, #0
	add r0, r5, r4
	bl GetWindowWidth
	add r7, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	lsl r1, r7, #3
	sub r0, r1, r0
	lsr r2, r0, #1
	mov r3, #0
	ldr r0, _021EE9F8 ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, r4
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
_021EE9EC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE9F0: .word 0x00001032
_021EE9F4: .word 0x0000185C
_021EE9F8: .word 0x00020100
	thumb_func_end ov18_021EE984

	thumb_func_start ov18_021EE9FC
ov18_021EE9FC: ; 0x021EE9FC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EEA38 ; =0x00020100
	ldr r1, _021EEA3C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0xa
	mov r3, #0x14
	bl ov18_021F9648
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021EEA38: .word 0x00020100
_021EEA3C: .word 0x0000065C
	thumb_func_end ov18_021EE9FC

	thumb_func_start ov18_021EEA40
ov18_021EEA40: ; 0x021EEA40
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EEA7C ; =0x00020100
	ldr r1, _021EEA80 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0xb
	mov r3, #0x14
	bl ov18_021F9648
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021EEA7C: .word 0x00020100
_021EEA80: .word 0x0000065C
	thumb_func_end ov18_021EEA40

	thumb_func_start ov18_021EEA84
ov18_021EEA84: ; 0x021EEA84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl GetDexHeightMsgBank
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x25
	bl NewMsgDataFromNarc
	str r0, [sp, #0xc]
	cmp r5, #2
	bne _021EEAAE
	add r1, r7, #0
	bl NewString_ReadMsgData
	b _021EEAB4
_021EEAAE:
	mov r1, #0
	bl NewString_ReadMsgData
_021EEAB4:
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r4, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x28]
	str r0, [sp, #8]
	lsl r0, r6, #4
	ldr r3, [sp, #0x2c]
	add r0, r4, r0
	add r1, r5, #0
	bl ov18_021F95FC
	add r0, r5, #0
	bl String_Delete
	ldr r0, [sp, #0xc]
	bl DestroyMsgData
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021EEA84

	thumb_func_start ov18_021EEAE4
ov18_021EEAE4: ; 0x021EEAE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r3, #0
	str r1, [sp, #0x10]
	add r4, #0xc
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	bl FillWindowPixelBuffer
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	lsl r2, r7, #2
	add r3, r5, r2
	ldr r0, _021EEB2C ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _021EEB30 ; =0x00001032
	ldr r1, [sp, #0x10]
	ldrh r2, [r3, r2]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov18_021EEA84
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEB2C: .word 0x00020100
_021EEB30: .word 0x00001032
	thumb_func_end ov18_021EEAE4

	thumb_func_start ov18_021EEB34
ov18_021EEB34: ; 0x021EEB34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl GetDexWeightMsgBank
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x25
	bl NewMsgDataFromNarc
	str r0, [sp, #0xc]
	cmp r5, #2
	bne _021EEB5E
	add r1, r7, #0
	bl NewString_ReadMsgData
	b _021EEB64
_021EEB5E:
	mov r1, #0
	bl NewString_ReadMsgData
_021EEB64:
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r4, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x28]
	str r0, [sp, #8]
	lsl r0, r6, #4
	ldr r3, [sp, #0x2c]
	add r0, r4, r0
	add r1, r5, #0
	bl ov18_021F95FC
	add r0, r5, #0
	bl String_Delete
	ldr r0, [sp, #0xc]
	bl DestroyMsgData
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021EEB34

	thumb_func_start ov18_021EEB94
ov18_021EEB94: ; 0x021EEB94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r3, #0
	str r1, [sp, #0x10]
	add r4, #0xc
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	bl FillWindowPixelBuffer
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	lsl r2, r7, #2
	add r3, r5, r2
	ldr r0, _021EEBDC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _021EEBE0 ; =0x00001032
	ldr r1, [sp, #0x10]
	ldrh r2, [r3, r2]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov18_021EEB34
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEBDC: .word 0x00020100
_021EEBE0: .word 0x00001032
	thumb_func_end ov18_021EEB94

	thumb_func_start ov18_021EEBE4
ov18_021EEBE4: ; 0x021EEBE4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _021EEC28 ; =0x0000185C
	ldrb r0, [r6, r0]
	bl LanguageToDexFlag
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EEC2C ; =0x00020100
	ldr r1, _021EEC30 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	add r2, #0x7a
	mov r3, #0x38
	bl ov18_021F9648
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EEC28: .word 0x0000185C
_021EEC2C: .word 0x00020100
_021EEC30: .word 0x0000065C
	thumb_func_end ov18_021EEBE4

	thumb_func_start ov18_021EEC34
ov18_021EEC34: ; 0x021EEC34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r2, #0
	add r7, r5, #0
	lsl r0, r6, #4
	str r1, [sp, #0x14]
	add r7, #0xc
	str r0, [sp, #0x18]
	add r0, r7, r0
	mov r1, #0
	add r4, r3, #0
	bl FillWindowPixelBuffer
	cmp r4, #1
	bne _021EEC58
	mov r4, #0
	b _021EEC5A
_021EEC58:
	mov r4, #1
_021EEC5A:
	ldr r0, _021EECA4 ; =0x00001858
	ldr r1, [sp, #0x14]
	ldrb r0, [r5, r0]
	bl Pokedex_ConvertToCurrentDexNo
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x66
	str r4, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021EECA8 ; =0x00020100
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _021EECAC ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #9
	bl ov18_021EE3AC
	ldr r0, [sp, #0x18]
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021EECA4: .word 0x00001858
_021EECA8: .word 0x00020100
_021EECAC: .word 0x0000065C
	thumb_func_end ov18_021EEC34

	thumb_func_start ov18_021EECB0
ov18_021EECB0: ; 0x021EECB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r6, #0
	add r5, #0xc
	lsl r4, r2, #4
	add r7, r1, #0
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021EECF8 ; =0x0000185C
	add r0, r7, #0
	ldrb r1, [r6, r1]
	mov r2, #0x25
	bl ov18_021E590C
	add r6, r0, #0
	mov r2, #0
	ldr r0, _021EECFC ; =0x00020100
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, r4
	add r1, r6, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EECF8: .word 0x0000185C
_021EECFC: .word 0x00020100
	thumb_func_end ov18_021EECB0

	thumb_func_start ov18_021EED00
ov18_021EED00: ; 0x021EED00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r5, #0
	lsl r4, r3, #4
	add r6, #0xc
	str r1, [sp, #0xc]
	add r7, r2, #0
	add r0, r6, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	lsl r0, r7, #2
	add r1, r5, r0
	ldr r0, _021EED64 ; =0x00001032
	ldrh r0, [r1, r0]
	ldr r1, _021EED68 ; =0x0000185C
	cmp r0, #2
	bne _021EED32
	ldrb r1, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r2, #0x25
	bl ov18_021E595C
	b _021EED3C
_021EED32:
	ldrb r1, [r5, r1]
	mov r0, #0
	mov r2, #0x25
	bl ov18_021E595C
_021EED3C:
	add r5, r0, #0
	mov r3, #0
	ldr r0, _021EED6C ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r6, r4
	add r1, r5, #0
	mov r2, #0x7c
	bl ov18_021F95FC
	add r0, r5, #0
	bl String_Delete
	add r0, r6, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EED64: .word 0x00001032
_021EED68: .word 0x0000185C
_021EED6C: .word 0x00020100
	thumb_func_end ov18_021EED00

	thumb_func_start ov18_021EED70
ov18_021EED70: ; 0x021EED70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021EEE30 ; =0x0000056C
	add r4, r1, #0
	add r0, r5, r0
	add r6, r2, #0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE34 ; =0x0000058C
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE38 ; =0x0000055C
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE3C ; =0x0000057C
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE40 ; =0x0000059C
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE44 ; =0x000005AC
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE48 ; =0x000005BC
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE4C ; =0x000005CC
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r0, _021EEE50 ; =0x000005DC
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	cmp r4, #0
	beq _021EEE2E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x55
	bl ov18_021EE984
	ldr r0, _021EEE54 ; =0x0000185C
	ldrb r0, [r5, r0]
	cmp r0, #2
	bne _021EEE02
	add r0, r5, #0
	mov r1, #0x56
	bl ov18_021EE9FC
	add r0, r5, #0
	mov r1, #0x58
	bl ov18_021EEA40
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x57
	bl ov18_021EEAE4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x59
	bl ov18_021EEB94
	pop {r4, r5, r6, pc}
_021EEE02:
	add r0, r5, #0
	mov r1, #0x5a
	bl ov18_021EEBE4
	ldr r3, _021EEE54 ; =0x0000185C
	add r0, r5, #0
	ldrb r3, [r5, r3]
	add r1, r4, #0
	mov r2, #0x5b
	bl ov18_021EEC34
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5c
	bl ov18_021EECB0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0x5d
	bl ov18_021EED00
_021EEE2E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EEE30: .word 0x0000056C
_021EEE34: .word 0x0000058C
_021EEE38: .word 0x0000055C
_021EEE3C: .word 0x0000057C
_021EEE40: .word 0x0000059C
_021EEE44: .word 0x000005AC
_021EEE48: .word 0x000005BC
_021EEE4C: .word 0x000005CC
_021EEE50: .word 0x000005DC
_021EEE54: .word 0x0000185C
	thumb_func_end ov18_021EED70

	thumb_func_start ov18_021EEE58
ov18_021EEE58: ; 0x021EEE58
	push {r4, lr}
	ldr r1, _021EEE80 ; =ov18_021F9FDC
	add r4, r0, #0
	mov r2, #0x65
	bl ov18_021EE35C
	add r0, r4, #0
	mov r1, #0
	bl ov18_021EEED0
	add r0, r4, #0
	bl ov18_021EF45C
	add r0, r4, #0
	bl ov18_021EF528
	add r0, r4, #0
	bl ov18_021EEE84
	pop {r4, pc}
	.balign 4, 0
_021EEE80: .word ov18_021F9FDC
	thumb_func_end ov18_021EEE58

	thumb_func_start ov18_021EEE84
ov18_021EEE84: ; 0x021EEE84
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x47
	lsl r2, r2, #2
	ldr r0, [r4, #8]
	mov r1, #6
	add r2, r4, r2
	bl sub_02019A60
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r0, [r4, #8]
	mov r1, #6
	add r2, r4, r2
	bl sub_02019A60
	mov r2, #0x4f
	lsl r2, r2, #2
	ldr r0, [r4, #8]
	mov r1, #6
	add r2, r4, r2
	bl sub_02019A60
	mov r2, #0x47
	lsl r2, r2, #2
	ldr r0, [r4, #8]
	mov r1, #7
	add r2, r4, r2
	bl sub_02019A60
	mov r2, #0x4f
	lsl r2, r2, #2
	ldr r0, [r4, #8]
	mov r1, #7
	add r2, r4, r2
	bl sub_02019A60
	pop {r4, pc}
	thumb_func_end ov18_021EEE84

	thumb_func_start ov18_021EEED0
ov18_021EEED0: ; 0x021EEED0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r4, #0
	add r5, #0xc
	add r6, r1, #0
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r6, #0xa
	bls _021EEEEA
	b _021EF1CE
_021EEEEA:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEEF6: ; jump table
	.short _021EEF0C - _021EEEF6 - 2 ; case 0
	.short _021EEF4A - _021EEEF6 - 2 ; case 1
	.short _021EEFA4 - _021EEEF6 - 2 ; case 2
	.short _021EEFE2 - _021EEEF6 - 2 ; case 3
	.short _021EF020 - _021EEEF6 - 2 ; case 4
	.short _021EF05E - _021EEEF6 - 2 ; case 5
	.short _021EF09C - _021EEEF6 - 2 ; case 6
	.short _021EF0DA - _021EEEF6 - 2 ; case 7
	.short _021EF116 - _021EEEF6 - 2 ; case 8
	.short _021EF154 - _021EEEF6 - 2 ; case 9
	.short _021EF192 - _021EEEF6 - 2 ; case 10
_021EEF0C:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xd
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EEF4A:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xe
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _021EF1E0 ; =0x0000102C
	mov r0, #0x66
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, _021EF1D8 ; =0x00020100
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, _021EF1DC ; =0x0000065C
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r3, #0xf
	bl ov18_021EE3AC
	b _021EF1CE
_021EEFA4:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x10
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EEFE2:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x11
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF020:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x12
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF05E:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF09C:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x13
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF0DA:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r2, #0x16
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF116:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x15
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF154:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x19
	mov r3, #0x70
	bl ov18_021F9648
	b _021EF1CE
_021EF192:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x17
	mov r3, #0x70
	bl ov18_021F9648
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021EF1D8 ; =0x00020100
	ldr r1, _021EF1DC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x18
	mov r3, #0x70
	bl ov18_021F9648
_021EF1CE:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EF1D8: .word 0x00020100
_021EF1DC: .word 0x0000065C
_021EF1E0: .word 0x0000102C
	thumb_func_end ov18_021EEED0

	thumb_func_start ov18_021EF1E4
ov18_021EF1E4: ; 0x021EF1E4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF218 ; =0x00020100
	ldr r1, _021EF21C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0x1a
	mov r3, #0x24
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF218: .word 0x00020100
_021EF21C: .word 0x0000065C
	thumb_func_end ov18_021EF1E4

	thumb_func_start ov18_021EF220
ov18_021EF220: ; 0x021EF220
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF254 ; =0x00020100
	ldr r1, _021EF258 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0x1b
	mov r3, #0x14
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF254: .word 0x00020100
_021EF258: .word 0x0000065C
	thumb_func_end ov18_021EF220

	thumb_func_start ov18_021EF25C
ov18_021EF25C: ; 0x021EF25C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF290 ; =0x00020100
	ldr r1, _021EF294 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0x1c
	mov r3, #0x14
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF290: .word 0x00020100
_021EF294: .word 0x0000065C
	thumb_func_end ov18_021EF25C

	thumb_func_start ov18_021EF298
ov18_021EF298: ; 0x021EF298
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF2CC ; =0x00020100
	ldr r1, _021EF2D0 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0x1d
	mov r3, #0x14
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF2CC: .word 0x00020100
_021EF2D0: .word 0x0000065C
	thumb_func_end ov18_021EF298

	thumb_func_start ov18_021EF2D4
ov18_021EF2D4: ; 0x021EF2D4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF308 ; =0x00020100
	ldr r1, _021EF30C ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0x1e
	mov r3, #0x14
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF308: .word 0x00020100
_021EF30C: .word 0x0000065C
	thumb_func_end ov18_021EF2D4

	thumb_func_start ov18_021EF310
ov18_021EF310: ; 0x021EF310
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF344 ; =0x00020100
	ldr r1, _021EF348 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0x1f
	mov r3, #0x14
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF344: .word 0x00020100
_021EF348: .word 0x0000065C
	thumb_func_end ov18_021EF310

	thumb_func_start ov18_021EF34C
ov18_021EF34C: ; 0x021EF34C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF380 ; =0x00020100
	ldr r1, _021EF384 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, [r6, r1]
	add r0, r5, r4
	mov r2, #0x20
	mov r3, #0x18
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF380: .word 0x00020100
_021EF384: .word 0x0000065C
	thumb_func_end ov18_021EF34C

	thumb_func_start ov18_021EF388
ov18_021EF388: ; 0x021EF388
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x25
	lsl r6, r1, #4
	str r0, [sp]
	str r2, [sp, #0x20]
	ldr r1, _021EF450 ; =0x00000854
	ldr r0, [sp, #0x1c]
	mov r2, #1
	ldr r0, [r0, r1]
	mov r1, #4
	add r3, sp, #0x2c
	add r4, #0xc
	bl GfGfxLoader_GetCharDataFromOpenNarc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r5, #0
	ldr r7, [r0, #0x14]
	str r5, [sp, #0x24]
_021EF3B4:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	mov r1, #0x31
	str r0, [sp, #0x14]
	mov r0, #0xff
	lsl r1, r1, #6
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r4, r6
	add r1, r7, r1
	add r3, r2, #0
	bl BlitBitmapRect
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r1, #0xca
	str r0, [sp, #0x14]
	mov r0, #0xff
	lsl r1, r1, #4
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r4, r6
	add r1, r7, r1
	add r3, r2, #0
	bl BlitBitmapRect
	ldr r0, [sp, #0x24]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #8
	blo _021EF3B4
	ldr r0, [sp, #0x28]
	bl Heap_Free
	add r0, r4, r6
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF454 ; =0x00020100
	lsl r5, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	lsr r3, r5, #0x1f
	add r3, r5, r3
	ldr r2, _021EF458 ; =0x0000065C
	ldr r1, [sp, #0x1c]
	add r0, r4, r6
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x20]
	asr r3, r3, #1
	bl ov18_021F9648
	add r0, r4, r6
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF450: .word 0x00000854
_021EF454: .word 0x00020100
_021EF458: .word 0x0000065C
	thumb_func_end ov18_021EF388

	thumb_func_start ov18_021EF45C
ov18_021EF45C: ; 0x021EF45C
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x57
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	mov r1, #0x14
	bl ov18_021EF1E4
	add r0, r5, #0
	mov r1, #0x15
	bl ov18_021EF220
	add r0, r5, #0
	mov r1, #0x16
	bl ov18_021EF25C
	add r0, r5, #0
	mov r1, #0x17
	bl ov18_021EF298
	add r0, r5, #0
	mov r1, #0x18
	bl ov18_021EF2D4
	add r0, r5, #0
	mov r1, #0x19
	bl ov18_021EF310
	add r0, r5, #0
	mov r1, #0x1a
	bl ov18_021EF34C
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x23
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0x24
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x25
	bl ov18_021EF388
	mov r0, #0x53
	lsl r0, r0, #2
	mov r4, #0x14
	add r5, r5, r0
_021EF518:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x1a
	bls _021EF518
	pop {r3, r4, r5, pc}
	thumb_func_end ov18_021EF45C

	thumb_func_start ov18_021EF528
ov18_021EF528: ; 0x021EF528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x1b
	bl ov18_021EFBE8
	add r0, r5, #0
	mov r1, #0x1c
	bl ov18_021EFC3C
	ldr r1, _021EF5CC ; =0x00001870
	mov r2, #0x1d
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r3, r2, #0
	bl ov18_021EFC9C
	ldr r1, _021EF5D0 ; =0x00001874
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #0x1e
	mov r3, #0x1d
	bl ov18_021EFC9C
	ldr r1, _021EF5D4 ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x28
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r2, #0x1f
	bl ov18_021EFD00
	ldr r1, _021EF5D4 ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x2c
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r2, #0x20
	bl ov18_021EFD00
	ldr r1, _021EF5D4 ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x30
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	mov r2, #0x21
	bl ov18_021EFDB4
	ldr r1, _021EF5D4 ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x34
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	mov r2, #0x22
	bl ov18_021EFDB4
	add r0, r5, #0
	mov r1, #0x23
	bl ov18_021EFE70
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r4, #0x1b
	add r5, r5, r0
_021EF5BA:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x23
	bls _021EF5BA
	pop {r3, r4, r5, pc}
	nop
_021EF5CC: .word 0x00001870
_021EF5D0: .word 0x00001874
_021EF5D4: .word 0x00001850
	thumb_func_end ov18_021EF528

	thumb_func_start ov18_021EF5D8
ov18_021EF5D8: ; 0x021EF5D8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	mov r0, #0x93
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x9b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x9f
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xab
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xaf
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x29
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2a
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2b
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xa7
	lsl r0, r0, #2
	mov r2, #0x2c
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r3, r2, #0
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2d
	mov r3, #0x2c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF75C ; =0x00020100
	ldr r1, _021EF760 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x2e
	mov r3, #0x2c
	bl ov18_021F9648
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x25
	bl ov18_021EFBE8
	mov r0, #0x93
	lsl r0, r0, #2
	mov r4, #0x24
	add r5, r5, r0
_021EF748:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x2b
	bls _021EF748
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EF75C: .word 0x00020100
_021EF760: .word 0x0000065C
	thumb_func_end ov18_021EF5D8

	thumb_func_start ov18_021EF764
ov18_021EF764: ; 0x021EF764
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	ldr r0, _021EF834 ; =0x0000041C
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EF838 ; =0x0000043C
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF83C ; =0x00020100
	ldr r1, _021EF840 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EF834 ; =0x0000041C
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x1b
	mov r3, #0x18
	bl ov18_021F9648
	mov r4, #0
_021EF7A4:
	add r0, r4, #0
	bl ov18_021E7698
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r4, #0x1a
	bne _021EF7B6
	mov r6, #0x71
	b _021EF7BA
_021EF7B6:
	add r6, r4, #0
	add r6, #0x45
_021EF7BA:
	add r0, r7, #0
	mov r1, #7
	bl _s32_div_f
	str r1, [sp, #0x10]
	add r0, r7, #0
	mov r1, #7
	bl _s32_div_f
	lsl r0, r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF83C ; =0x00020100
	ldr r3, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EF840 ; =0x0000065C
	ldr r0, _021EF838 ; =0x0000043C
	lsl r3, r3, #5
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r6, #0
	add r3, #0x18
	bl ov18_021F9648
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1b
	blo _021EF7A4
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x42
	bl ov18_021EFC3C
	ldr r0, _021EF834 ; =0x0000041C
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, _021EF838 ; =0x0000043C
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	ldr r0, _021EF844 ; =0x0000042C
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EF834: .word 0x0000041C
_021EF838: .word 0x0000043C
_021EF83C: .word 0x00020100
_021EF840: .word 0x0000065C
_021EF844: .word 0x0000042C
	thumb_func_end ov18_021EF764

	thumb_func_start ov18_021EF848
ov18_021EF848: ; 0x021EF848
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0
	add r6, r0, #0
	bl ov18_021E613C
	mov r0, #0xb3
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF908 ; =0x00020100
	mov r2, #0x1c
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EF90C ; =0x0000065C
	mov r0, #0xb3
	lsl r0, r0, #2
	ldr r1, [r6, r1]
	add r0, r6, r0
	add r3, r2, #0
	bl ov18_021F9648
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r5, _021EF910 ; =ov18_021F9DE4 + 7 * 8 + 2
	mov r7, #0x2f
	add r4, r6, r0
_021EF88A:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EF908 ; =0x00020100
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EF90C ; =0x0000065C
	sub r2, #0x5e
	ldrh r2, [r2]
	ldr r1, [r6, r1]
	add r0, r4, #0
	mov r3, #0x20
	bl ov18_021F9648
	add r7, r7, #1
	add r4, #0x10
	add r5, r5, #2
	cmp r7, #0x40
	bls _021EF88A
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	ldr r1, _021EF914 ; =0x00001870
	add r0, r6, #0
	ldr r1, [r6, r1]
	mov r2, #0x2d
	mov r3, #0x1d
	bl ov18_021EFC9C
	ldr r1, _021EF918 ; =0x00001874
	add r0, r6, #0
	ldr r1, [r6, r1]
	mov r2, #0x2e
	mov r3, #0x23
	bl ov18_021EFC9C
	mov r0, #0xb3
	lsl r0, r0, #2
	mov r4, #0x2c
	add r5, r6, r0
_021EF8F6:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x40
	bls _021EF8F6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF908: .word 0x00020100
_021EF90C: .word 0x0000065C
_021EF910: .word ov18_021F9DE4 + 7 * 8 + 2
_021EF914: .word 0x00001870
_021EF918: .word 0x00001874
	thumb_func_end ov18_021EF848

	thumb_func_start ov18_021EF91C
ov18_021EF91C: ; 0x021EF91C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	ldr r0, _021EF9A4 ; =0x0000044C
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EF9A8 ; =0x00020100
	ldr r1, _021EF9AC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EF9A4 ; =0x0000044C
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x1d
	mov r3, #0x14
	bl ov18_021F9648
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	ldr r1, _021EF9B0 ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x28
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r2, #0x45
	bl ov18_021EFD00
	ldr r1, _021EF9B0 ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x2c
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r2, #0x46
	bl ov18_021EFD00
	ldr r0, _021EF9A4 ; =0x0000044C
	mov r4, #0x44
	add r5, r5, r0
_021EF992:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x46
	bls _021EF992
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF9A4: .word 0x0000044C
_021EF9A8: .word 0x00020100
_021EF9AC: .word 0x0000065C
_021EF9B0: .word 0x00001850
	thumb_func_end ov18_021EF91C

	thumb_func_start ov18_021EF9B4
ov18_021EF9B4: ; 0x021EF9B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	ldr r0, _021EFA40 ; =0x0000047C
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EFA44 ; =0x00020100
	ldr r1, _021EFA48 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EFA40 ; =0x0000047C
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x1e
	mov r3, #0x18
	bl ov18_021F9648
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	ldr r1, _021EFA4C ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x30
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	mov r2, #0x48
	bl ov18_021EFDB4
	ldr r1, _021EFA4C ; =0x00001850
	add r0, r5, #0
	ldr r2, [r5, r1]
	add r1, #0x34
	ldr r1, [r5, r1]
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	mov r2, #0x49
	bl ov18_021EFDB4
	ldr r0, _021EFA40 ; =0x0000047C
	mov r4, #0x47
	add r5, r5, r0
_021EFA2E:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x49
	bls _021EFA2E
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFA40: .word 0x0000047C
_021EFA44: .word 0x00020100
_021EFA48: .word 0x0000065C
_021EFA4C: .word 0x00001850
	thumb_func_end ov18_021EF9B4

	thumb_func_start ov18_021EFA50
ov18_021EFA50: ; 0x021EFA50
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0
	add r5, r0, #0
	bl ov18_021E613C
	ldr r0, _021EFB68 ; =0x000004AC
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EFB6C ; =0x000004CC
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EFB70 ; =0x000004DC
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EFB74 ; =0x000004EC
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EFB78 ; =0x000004FC
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EFB7C ; =0x00020100
	ldr r1, _021EFB80 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EFB68 ; =0x000004AC
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x1f
	mov r3, #0x18
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFB7C ; =0x00020100
	ldr r1, _021EFB80 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EFB6C ; =0x000004CC
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x41
	mov r3, #0x1c
	bl ov18_021F9648
	ldr r0, _021EFB84 ; =0x00001860
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EFAF4
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFB7C ; =0x00020100
	ldr r1, _021EFB80 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EFB70 ; =0x000004DC
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x42
	mov r3, #0x1c
	bl ov18_021F9648
_021EFAF4:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFB7C ; =0x00020100
	ldr r1, _021EFB80 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EFB74 ; =0x000004EC
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x43
	mov r3, #0x1c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFB7C ; =0x00020100
	ldr r1, _021EFB80 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EFB78 ; =0x000004FC
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x44
	mov r3, #0x1c
	bl ov18_021F9648
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	add r0, r5, #0
	mov r1, #0x4b
	bl ov18_021EFE70
	ldr r0, _021EFB68 ; =0x000004AC
	mov r4, #0x4a
	add r5, r5, r0
_021EFB56:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x4f
	bls _021EFB56
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFB68: .word 0x000004AC
_021EFB6C: .word 0x000004CC
_021EFB70: .word 0x000004DC
_021EFB74: .word 0x000004EC
_021EFB78: .word 0x000004FC
_021EFB7C: .word 0x00020100
_021EFB80: .word 0x0000065C
_021EFB84: .word 0x00001860
	thumb_func_end ov18_021EFA50

	thumb_func_start ov18_021EFB88
ov18_021EFB88: ; 0x021EFB88
	push {r4, lr}
	sub sp, #0x10
	mov r1, #0
	add r4, r0, #0
	bl ov18_021E613C
	ldr r0, _021EFBDC ; =0x0000050C
	mov r1, #0
	add r0, r4, r0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EFBE0 ; =0x00020100
	ldr r1, _021EFBE4 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _021EFBDC ; =0x0000050C
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0x20
	mov r3, #0x18
	bl ov18_021F9648
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0x27
	bl ov18_021EF388
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #0x28
	bl ov18_021EF388
	ldr r0, _021EFBDC ; =0x0000050C
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EFBDC: .word 0x0000050C
_021EFBE0: .word 0x00020100
_021EFBE4: .word 0x0000065C
	thumb_func_end ov18_021EFB88

	thumb_func_start ov18_021EFBE8
ov18_021EFBE8: ; 0x021EFBE8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, r4
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFC30 ; =0x00020100
	ldr r2, _021EFC34 ; =0x00001868
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, r4
	ldr r1, _021EFC38 ; =0x0000065C
	lsl r4, r3, #3
	ldr r2, [r6, r2]
	lsr r3, r4, #0x1f
	add r3, r4, r3
	ldr r1, [r6, r1]
	add r2, #0x29
	asr r3, r3, #1
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EFC30: .word 0x00020100
_021EFC34: .word 0x00001868
_021EFC38: .word 0x0000065C
	thumb_func_end ov18_021EFBE8

	thumb_func_start ov18_021EFC3C
ov18_021EFC3C: ; 0x021EFC3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r5, #0
	lsl r6, r1, #4
	add r7, #0xc
	add r0, r7, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _021EFC90 ; =0x0000186C
	ldr r4, [r5, r0]
	cmp r4, #0x1a
	bne _021EFC5C
	mov r4, #0x71
	b _021EFC5E
_021EFC5C:
	add r4, #0x45
_021EFC5E:
	add r0, r7, r6
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFC94 ; =0x00020100
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #2
	lsl r4, r3, #3
	str r0, [sp, #0xc]
	ldr r1, _021EFC98 ; =0x0000065C
	lsr r3, r4, #0x1f
	add r3, r4, r3
	ldr r1, [r5, r1]
	add r0, r7, r6
	asr r3, r3, #1
	bl ov18_021F9648
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFC90: .word 0x0000186C
_021EFC94: .word 0x00020100
_021EFC98: .word 0x0000065C
	thumb_func_end ov18_021EFC3C

	thumb_func_start ov18_021EFC9C
ov18_021EFC9C: ; 0x021EFC9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r7, #0
	add r5, #0xc
	lsl r4, r2, #4
	str r1, [sp, #0x10]
	add r0, r5, r4
	mov r1, #0
	add r6, r3, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021EFCCA
	add r0, r5, r4
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r6, r0, #1
_021EFCCA:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, _021EFCF4 ; =0x00020100
	lsl r3, r2, #1
	ldr r2, _021EFCF8 ; =ov18_021F9DC0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021EFCFC ; =0x0000065C
	ldrh r2, [r2, r3]
	ldr r1, [r7, r1]
	add r0, r5, r4
	add r3, r6, #0
	bl ov18_021F9648
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EFCF4: .word 0x00020100
_021EFCF8: .word ov18_021F9DC0
_021EFCFC: .word 0x0000065C
	thumb_func_end ov18_021EFC9C

	thumb_func_start ov18_021EFD00
ov18_021EFD00: ; 0x021EFD00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _021EFDA4 ; =0x000003E7
	add r5, r0, #0
	add r6, r2, #0
	cmp r1, r4
	bne _021EFD12
	add r4, #0xbd
	b _021EFD26
_021EFD12:
	ldr r0, _021EFDA8 ; =0x00002710
	mul r0, r1
	mov r1, #0xfe
	bl _u32_div_f
	add r0, r0, #5
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
_021EFD26:
	add r7, r5, #0
	lsl r0, r6, #4
	add r7, #0xc
	str r0, [sp, #0x14]
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	mov r1, #0xc
	bl _u32_div_f
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r3, #3
	bl BufferIntegerAsString
	add r0, r4, #0
	mov r1, #0xc
	bl _u32_div_f
	mov r3, #2
	add r2, r1, #0
	mov r0, #0x66
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl BufferIntegerAsString
	ldr r0, [sp, #0x14]
	add r0, r7, r0
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021EFDAC ; =0x00020100
	ldr r1, _021EFDB0 ; =0x0000065C
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xaf
	bl ov18_021EE3AC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EFDA4: .word 0x000003E7
_021EFDA8: .word 0x00002710
_021EFDAC: .word 0x00020100
_021EFDB0: .word 0x0000065C
	thumb_func_end ov18_021EFD00

	thumb_func_start ov18_021EFDB4
ov18_021EFDB4: ; 0x021EFDB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021EFE58 ; =0x0000270F
	add r4, r2, #0
	cmp r1, r0
	bne _021EFDC6
	ldr r6, _021EFE5C ; =0x00018696
	b _021EFDD6
_021EFDC6:
	ldr r0, _021EFE60 ; =0x00035D2E
	mul r0, r1
	ldr r1, _021EFE64 ; =0x0000C350
	add r0, r0, r1
	lsl r1, r1, #1
	bl _u32_div_f
	add r6, r0, #0
_021EFDD6:
	add r7, r5, #0
	lsl r0, r4, #4
	add r7, #0xc
	str r0, [sp, #0x14]
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	mov r1, #0xa
	bl _u32_div_f
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r3, #4
	bl BufferIntegerAsString
	add r0, r6, #0
	mov r1, #0xa
	bl _u32_div_f
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r1, #1
	mov r0, #0x66
	str r1, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r3, r1, #0
	bl BufferIntegerAsString
	ldr r0, [sp, #0x14]
	add r0, r7, r0
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021EFE68 ; =0x00020100
	ldr r1, _021EFE6C ; =0x0000065C
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x26
	bl ov18_021EE3AC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFE58: .word 0x0000270F
_021EFE5C: .word 0x00018696
_021EFE60: .word 0x00035D2E
_021EFE64: .word 0x0000C350
_021EFE68: .word 0x00020100
_021EFE6C: .word 0x0000065C
	thumb_func_end ov18_021EFDB4

	thumb_func_start ov18_021EFE70
ov18_021EFE70: ; 0x021EFE70
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r6, #0
	lsl r4, r1, #4
	add r5, #0xc
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, r4
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021EFEB8 ; =0x00020100
	ldr r2, _021EFEBC ; =0x00001888
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, r4
	ldr r1, _021EFEC0 ; =0x0000065C
	lsl r4, r3, #3
	ldr r2, [r6, r2]
	lsr r3, r4, #0x1f
	add r3, r4, r3
	ldr r1, [r6, r1]
	add r2, #0x41
	asr r3, r3, #1
	bl ov18_021F9648
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EFEB8: .word 0x00020100
_021EFEBC: .word 0x00001888
_021EFEC0: .word 0x0000065C
	thumb_func_end ov18_021EFE70

	thumb_func_start ov18_021EFEC4
ov18_021EFEC4: ; 0x021EFEC4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x1c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x2c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x6c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x7c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	mov r1, #1
	bl ov18_021EF1E4
	add r0, r4, #0
	mov r1, #2
	bl ov18_021EF220
	add r0, r4, #0
	mov r1, #3
	bl ov18_021EF25C
	add r0, r4, #0
	mov r1, #4
	bl ov18_021EF298
	add r0, r4, #0
	mov r1, #5
	bl ov18_021EF2D4
	add r0, r4, #0
	mov r1, #6
	bl ov18_021EF310
	add r0, r4, #0
	mov r1, #7
	bl ov18_021EF34C
	add r0, r4, #0
	mov r1, #8
	bl ov18_021EFBE8
	add r0, r4, #0
	mov r1, #9
	bl ov18_021EFC3C
	ldr r1, _021EFFE0 ; =0x00001870
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r2, #0xa
	mov r3, #0x1d
	bl ov18_021EFC9C
	ldr r1, _021EFFE4 ; =0x00001874
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r2, #0xb
	mov r3, #0x1d
	bl ov18_021EFC9C
	ldr r1, _021EFFE8 ; =0x00001850
	add r0, r4, #0
	ldr r2, [r4, r1]
	add r1, #0x28
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r2, #0xc
	bl ov18_021EFD00
	ldr r1, _021EFFE8 ; =0x00001850
	add r0, r4, #0
	ldr r2, [r4, r1]
	add r1, #0x2c
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	ldrh r1, [r2, r1]
	mov r2, #0xd
	bl ov18_021EFD00
	ldr r1, _021EFFE8 ; =0x00001850
	add r0, r4, #0
	ldr r2, [r4, r1]
	add r1, #0x30
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	mov r2, #0xe
	bl ov18_021EFDB4
	ldr r1, _021EFFE8 ; =0x00001850
	add r0, r4, #0
	ldr r2, [r4, r1]
	add r1, #0x34
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r1, [r1, #2]
	mov r2, #0xf
	bl ov18_021EFDB4
	add r0, r4, #0
	mov r1, #0x10
	bl ov18_021EFE70
	mov r5, #1
	add r4, #0x1c
_021EFFD0:
	add r0, r4, #0
	bl CopyWindowPixelsToVram_TextMode
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x10
	bls _021EFFD0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFFE0: .word 0x00001870
_021EFFE4: .word 0x00001874
_021EFFE8: .word 0x00001850
	thumb_func_end ov18_021EFEC4

	thumb_func_start ov18_021EFFEC
ov18_021EFFEC: ; 0x021EFFEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0xf
	bl sub_02019B08
	add r0, r4, #0
	mov r1, #0x5f
	mov r2, #0
	bl ov18_021EE44C
	add r0, r4, #0
	mov r1, #0x60
	mov r2, #1
	bl ov18_021EE44C
	ldr r1, _021F0060 ; =0x0000185D
	ldr r2, _021F0064 ; =0x0000102C
	ldrb r1, [r4, r1]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, #0x61
	bl ov18_021EE520
	ldr r1, _021F0060 ; =0x0000185D
	ldr r2, _021F0068 ; =0x0000102E
	ldrb r1, [r4, r1]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, #0x63
	bl ov18_021EE520
	add r0, r4, #0
	mov r1, #0x5f
	bl ov18_021F006C
	add r0, r4, #0
	mov r1, #0x60
	bl ov18_021F006C
	ldr r1, _021F0060 ; =0x0000185D
	add r0, r4, #0
	ldrb r1, [r4, r1]
	add r1, #0x61
	bl ov18_021F006C
	ldr r1, _021F0060 ; =0x0000185D
	add r0, r4, #0
	ldrb r1, [r4, r1]
	add r1, #0x63
	bl ov18_021F006C
	ldr r1, _021F0060 ; =0x0000185D
	mov r0, #1
	ldrb r2, [r4, r1]
	eor r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	.balign 4, 0
_021F0060: .word 0x0000185D
_021F0064: .word 0x0000102C
_021F0068: .word 0x0000102E
	thumb_func_end ov18_021EFFEC

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

	thumb_func_start ov18_021F0168
ov18_021F0168: ; 0x021F0168
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #2
	mov r7, #0x12
_021F0172:
	str r6, [sp]
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x11
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020195F4
	add r4, r4, #1
	cmp r4, #6
	blo _021F0172
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F0168

	thumb_func_start ov18_021F018C
ov18_021F018C: ; 0x021F018C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	add r7, r0, #0
	mov r4, #0
	lsl r5, r5, #0xc
_021F0196:
	add r1, r4, #0
	ldr r0, [r7, #8]
	add r1, #0x11
	bl sub_02019B08
	add r2, r0, #0
	ldr r0, _021F01D0 ; =ov18_021F9E4C
	lsl r1, r4, #3
	add r0, r0, r1
	add r0, #0x46
	ldrh r6, [r0]
	mov r3, #0
_021F01AE:
	add r0, r6, r3
	add r1, r0, #0
	orr r1, r5
	lsl r0, r3, #1
	strh r1, [r2, r0]
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #0x24
	blo _021F01AE
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021F0196
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F01D0: .word ov18_021F9E4C
	thumb_func_end ov18_021F018C

	thumb_func_start ov18_021F01D4
ov18_021F01D4: ; 0x021F01D4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	add r7, r0, #0
	mov r4, #0
	lsl r5, r5, #0xc
_021F01DE:
	add r1, r4, #0
	ldr r0, [r7, #8]
	add r1, #0x11
	bl sub_02019B08
	add r2, r0, #0
	ldr r0, _021F0218 ; =ov18_021F9EBC
	lsl r1, r4, #3
	add r0, r0, r1
	add r0, #0x56
	ldrh r6, [r0]
	mov r3, #0
_021F01F6:
	add r0, r6, r3
	add r1, r0, #0
	orr r1, r5
	lsl r0, r3, #1
	strh r1, [r2, r0]
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #0x24
	blo _021F01F6
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021F01DE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0218: .word ov18_021F9EBC
	thumb_func_end ov18_021F01D4

	thumb_func_start ov18_021F021C
ov18_021F021C: ; 0x021F021C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r1, _021F03A4 ; =ov18_021F9E4C
	add r5, r0, #0
	mov r2, #0xe
	bl ov18_021EE35C
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x2c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x4c
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021F03A8 ; =0x00020100
	ldr r1, _021F03AC ; =0x0000065C
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0xc
	mov r2, #0x8e
	bl ov18_021F9648
	ldr r0, _021F03B0 ; =0x000018A2
	mov r1, #2
	ldrh r0, [r5, r0]
	mov r2, #0x25
	bl ov18_021E590C
	add r4, r0, #0
	mov r3, #0
	ldr r0, _021F03A8 ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x2c
	add r1, r4, #0
	mov r2, #0x24
	bl ov18_021F95FC
	add r0, r4, #0
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F03B4 ; =0x00050900
	ldr r1, _021F03AC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x4c
	mov r2, #0x84
	mov r3, #0x18
	bl ov18_021F9648
	add r0, r5, #0
	add r0, #0xc
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x2c
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x4c
	bl ScheduleWindowCopyToVram
	ldr r0, _021F03B8 ; =0x00001860
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021F0334
	add r0, r5, #0
	add r0, #0x5c
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x7c
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021F03BC ; =0x000F0C00
	ldr r1, _021F03AC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x5c
	mov r2, #0x41
	mov r3, #0x1c
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021F03BC ; =0x000F0C00
	ldr r1, _021F03AC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x7c
	mov r2, #0x42
	mov r3, #0x1c
	bl ov18_021F9648
	add r0, r5, #0
	add r0, #0x5c
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x7c
	bl ScheduleWindowCopyToVram
	b _021F0364
_021F0334:
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F03B4 ; =0x00050900
	ldr r1, _021F03AC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x6c
	mov r2, #0x41
	mov r3, #0x1c
	bl ov18_021F9648
	add r0, r5, #0
	add r0, #0x6c
	bl ScheduleWindowCopyToVram
_021F0364:
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F03A8 ; =0x00020100
	ldr r1, _021F03AC ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x3c
	mov r2, #0x80
	mov r3, #0x38
	bl ov18_021F9648
	add r0, r5, #0
	add r0, #0x3c
	bl CopyWindowPixelsToVram_TextMode
	add r0, r5, #0
	bl ov18_021F03E0
	add r0, r5, #0
	bl ov18_021F0428
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F03A4: .word ov18_021F9E4C
_021F03A8: .word 0x00020100
_021F03AC: .word 0x0000065C
_021F03B0: .word 0x000018A2
_021F03B4: .word 0x00050900
_021F03B8: .word 0x00001860
_021F03BC: .word 0x000F0C00
	thumb_func_end ov18_021F021C

	thumb_func_start ov18_021F03C0
ov18_021F03C0: ; 0x021F03C0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_021F03CA:
	add r0, r5, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xe
	blo _021F03CA
	add r0, r6, #0
	bl ov18_021EE388
	pop {r4, r5, r6, pc}
	thumb_func_end ov18_021F03C0

	thumb_func_start ov18_021F03E0
ov18_021F03E0: ; 0x021F03E0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x1c
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021F041C ; =0x00020100
	ldr r2, _021F0420 ; =0x000018C9
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r1, _021F0424 ; =0x0000065C
	ldrsb r2, [r4, r2]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x1c
	add r2, #0x81
	mov r3, #0x1c
	bl ov18_021F9648
	add r4, #0x1c
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021F041C: .word 0x00020100
_021F0420: .word 0x000018C9
_021F0424: .word 0x0000065C
	thumb_func_end ov18_021F03E0

	thumb_func_start ov18_021F0428
ov18_021F0428: ; 0x021F0428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0xc
_021F0434:
	add r0, r4, #0
	add r0, #8
	lsl r7, r0, #4
	add r0, r6, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _021F04B4 ; =0x000018CA
	ldrsb r0, [r5, r0]
	add r0, r0, r4
	sub r1, r0, #2
	bmi _021F0480
	mov r0, #0x19
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	cmp r1, r0
	bge _021F0480
	add r0, r5, #0
	bl ov18_021F04C0
	add r3, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021F04B8 ; =0x000F0C00
	add r2, r4, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r1, _021F04BC ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, #8
	bl ov18_021EE3AC
_021F0480:
	add r0, r6, r7
	bl CopyWindowPixelsToVram_TextMode
	add r0, r6, r7
	bl GetWindowX
	str r0, [sp, #0x14]
	add r0, r6, r7
	bl GetWindowY
	add r3, r0, #0
	ldr r2, [sp, #0x14]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #8]
	add r1, #0x11
	asr r2, r2, #0x18
	asr r3, r3, #0x18
	bl sub_020196E8
	add r4, r4, #1
	cmp r4, #6
	blo _021F0434
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F04B4: .word 0x000018CA
_021F04B8: .word 0x000F0C00
_021F04BC: .word 0x0000065C
	thumb_func_end ov18_021F0428

	thumb_func_start ov18_021F04C0
ov18_021F04C0: ; 0x021F04C0
	push {r3, r4, r5, lr}
	ldr r2, _021F0500 ; =0x000018FC
	add r4, r0, #0
	ldr r5, [r4, r2]
	lsl r3, r1, #2
	ldr r5, [r5, r3]
	mov r3, #1
	mvn r3, r3
	cmp r5, r3
	bne _021F04E4
	sub r2, #0x34
	ldrsb r0, [r4, r2]
	cmp r0, #0
	bne _021F04E0
	mov r0, #0x86
	pop {r3, r4, r5, pc}
_021F04E0:
	mov r0, #0x87
	pop {r3, r4, r5, pc}
_021F04E4:
	bl ov18_021E8AE0
	bl MapHeader_GetMapSec
	add r2, r0, #0
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl BufferLandmarkName
	mov r0, #0x85
	pop {r3, r4, r5, pc}
	nop
_021F0500: .word 0x000018FC
	thumb_func_end ov18_021F04C0

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

	thumb_func_start ov18_021F0838
ov18_021F0838: ; 0x021F0838
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_021F0842:
	add r0, r5, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xd
	blo _021F0842
	add r0, r6, #0
	bl ov18_021EE388
	pop {r4, r5, r6, pc}
	thumb_func_end ov18_021F0838

	thumb_func_start ov18_021F0858
ov18_021F0858: ; 0x021F0858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _021F08D0 ; =ov18_021F9DB0
	mov r2, #2
	add r5, r0, #0
	bl ov18_021EE35C
	mov r6, #0
	add r4, r5, #0
	add r4, #0xc
	add r7, r6, #0
_021F086E:
	add r0, r4, #0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #2
	blo _021F086E
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021F08D4 ; =0x00020100
	ldr r1, _021F08D8 ; =0x0000065C
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0xc
	mov r2, #0xad
	bl ov18_021F9648
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021F08DC ; =0x000F0C00
	ldr r1, _021F08D8 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x1c
	mov r2, #0xae
	mov r3, #0x3c
	bl ov18_021F9648
	mov r4, #0
	add r5, #0xc
_021F08BE:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blo _021F08BE
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F08D0: .word ov18_021F9DB0
_021F08D4: .word 0x00020100
_021F08D8: .word 0x0000065C
_021F08DC: .word 0x000F0C00
	thumb_func_end ov18_021F0858

	thumb_func_start ov18_021F08E0
ov18_021F08E0: ; 0x021F08E0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_021F08EA:
	add r0, r5, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blo _021F08EA
	add r0, r6, #0
	bl ov18_021EE388
	pop {r4, r5, r6, pc}
	thumb_func_end ov18_021F08E0

	thumb_func_start ov18_021F0900
ov18_021F0900: ; 0x021F0900
	push {r4, lr}
	ldr r1, _021F0914 ; =ov18_021F9EBC
	add r4, r0, #0
	mov r2, #0x10
	bl ov18_021EE35C
	add r0, r4, #0
	bl ov18_021F0928
	pop {r4, pc}
	.balign 4, 0
_021F0914: .word ov18_021F9EBC
	thumb_func_end ov18_021F0900


    .rodata

ov18_021F9DB0:
	.byte 0x05, 0x02, 0x00, 0x09, 0x02, 0x02
	.short 0x03EE
	.byte 0x01, 0x0A, 0x0A, 0x0F, 0x02, 0x01
	.short 0x01E2
	.size ov18_021F9DB0,.-ov18_021F9DB0

	.global ov18_021F9DC0
	.balign 2, 0
ov18_021F9DC0:
	.short 0x003A, 0x0032, 0x003C, 0x0038, 0x0036, 0x0030, 0x003F, 0x0035
	.short 0x003B, 0x003D, 0x003E, 0x0033, 0x0037, 0x0031, 0x0034, 0x0039
	.short 0x002F, 0x0040
	.size ov18_021F9DC0,.-ov18_021F9DC0

	.global ov18_021F9DE4
	.balign 2, 0
ov18_021F9DE4:
	.byte 0x05, 0x02, 0x00, 0x09, 0x02, 0x02
	.short 0x03EE
	.byte 0x05, 0x04, 0x03, 0x08, 0x02, 0x01
	.short 0x03DE
	.byte 0x05, 0x14, 0x03, 0x08, 0x02, 0x01
	.short 0x03CE
	.byte 0x05, 0x0A, 0x06, 0x0C, 0x02, 0x01
	.short 0x03B6
	.byte 0x05, 0x02, 0x15, 0x04, 0x02, 0x02
	.short 0x03AE
	.byte 0x05, 0x07, 0x15, 0x08, 0x02, 0x02
	.short 0x039E
	.byte 0x05, 0x11, 0x15, 0x04, 0x02, 0x02
	.short 0x0396
	.byte 0x05, 0x16, 0x15, 0x08, 0x02, 0x02
	.short 0x0386
	.byte 0x01, 0x0A, 0x01, 0x0C, 0x02, 0x01
	.short 0x01E8
	.byte 0x01, 0x02, 0x11, 0x04, 0x02, 0x01
	.short 0x01E0
	.byte 0x01, 0x07, 0x11, 0x08, 0x02, 0x01
	.short 0x01D0
	.byte 0x01, 0x11, 0x11, 0x04, 0x02, 0x01
	.short 0x01C8
	.byte 0x01, 0x16, 0x11, 0x08, 0x02, 0x01
	.short 0x01B0
	.size ov18_021F9DE4,.-ov18_021F9DE4

	.global ov18_021F9E4C
	.balign 2, 0
ov18_021F9E4C:
	.byte 0x05, 0x02, 0x00, 0x09, 0x02, 0x02, 0xEE, 0x01
	.byte 0x05, 0x01, 0x03, 0x07, 0x02, 0x01, 0xE0, 0x01
	.byte 0x05, 0x00, 0x10, 0x09, 0x02, 0x01, 0xCE, 0x01
	.byte 0x05, 0x0D, 0x0C, 0x0E, 0x02, 0x01, 0xB2, 0x01
	.byte 0x01, 0x01, 0x05, 0x06, 0x02, 0x01, 0xF4, 0x01
	.byte 0x01, 0x09, 0x01, 0x07, 0x02, 0x01, 0xE6, 0x01
	.byte 0x01, 0x12, 0x01, 0x07, 0x02, 0x01, 0xE6, 0x01
	.byte 0x01, 0x18, 0x01, 0x07, 0x02, 0x01, 0xD8, 0x01
	.byte 0x02, 0x0A, 0x05, 0x12, 0x02, 0x01, 0xDC, 0x01
	.byte 0x02, 0x0A, 0x08, 0x12, 0x02, 0x01, 0xB8, 0x01
	.byte 0x02, 0x0A, 0x0B, 0x12, 0x02, 0x01, 0x94, 0x01
	.byte 0x02, 0x0A, 0x0E, 0x12, 0x02, 0x01, 0x70, 0x01
	.byte 0x02, 0x0A, 0x11, 0x12, 0x02, 0x01, 0x4C, 0x01
	.byte 0x02, 0x0A, 0x14, 0x12, 0x02, 0x01, 0x28, 0x01
	.size ov18_021F9E4C,.-ov18_021F9E4C

	.global ov18_021F9EBC
	.balign 2, 0
ov18_021F9EBC:
	.byte 0x05, 0x02, 0x00, 0x09, 0x02, 0x02, 0xEE, 0x03
	.byte 0x05, 0x04, 0x05, 0x09, 0x02, 0x01, 0xDC, 0x03
	.byte 0x05, 0x0D, 0x05, 0x0F, 0x02, 0x01, 0xBE, 0x03
	.byte 0x05, 0x07, 0x05, 0x12, 0x02, 0x01, 0x9A, 0x03
	.byte 0x01, 0x15, 0x11, 0x0A, 0x02, 0x01, 0xEC, 0x01
	.byte 0x01, 0x0D, 0x02, 0x06, 0x02, 0x01, 0xE0, 0x01
	.byte 0x01, 0x00, 0x0C, 0x10, 0x02, 0x01, 0xC0, 0x01
	.byte 0x01, 0x10, 0x0C, 0x10, 0x02, 0x01, 0xA0, 0x01
	.byte 0x01, 0x03, 0x14, 0x0C, 0x03, 0x01, 0x7C, 0x01
	.byte 0x01, 0x12, 0x14, 0x0C, 0x03, 0x01, 0x58, 0x01
	.byte 0x02, 0x08, 0x01, 0x12, 0x02, 0x01, 0xDC, 0x01
	.byte 0x02, 0x08, 0x04, 0x12, 0x02, 0x01, 0xB8, 0x01
	.byte 0x02, 0x08, 0x07, 0x12, 0x02, 0x01, 0x94, 0x01
	.byte 0x02, 0x08, 0x0A, 0x12, 0x02, 0x01, 0x70, 0x01
	.byte 0x02, 0x08, 0x0D, 0x12, 0x02, 0x01, 0x4C, 0x01
	.byte 0x02, 0x08, 0x10, 0x12, 0x02, 0x01, 0x28, 0x01
	.size ov18_021F9EBC,.-ov18_021F9EBC

	.global ov18_021F9F3C
	.balign 2, 0
ov18_021F9F3C:
	.byte 0x00, 0x02, 0x09, 0x0C, 0x02, 0x09
	.short 0x03E8
	.byte 0x00, 0x12, 0x09, 0x0C, 0x02, 0x09
	.short 0x03D0
	.byte 0x00, 0x0B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03CA
	.byte 0x00, 0x0B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03C4
	.byte 0x00, 0x1B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03BE
	.byte 0x00, 0x1B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03B8
	.byte 0x01, 0x0A, 0x10, 0x0B, 0x02, 0x00
	.short 0x01EA
	.byte 0x05, 0x02, 0x00, 0x08, 0x02, 0x02
	.short 0x03F0
	.byte 0x05, 0x0F, 0x03, 0x04, 0x02, 0x00
	.short 0x03E8
	.byte 0x05, 0x13, 0x03, 0x09, 0x02, 0x00
	.short 0x03D6
	.byte 0x05, 0x0D, 0x05, 0x12, 0x02, 0x00
	.short 0x03B2
	.byte 0x05, 0x02, 0x11, 0x1C, 0x06, 0x01
	.short 0x030A
	.byte 0x05, 0x12, 0x0B, 0x05, 0x02, 0x01
	.short 0x0300
	.byte 0x05, 0x17, 0x0B, 0x08, 0x02, 0x01
	.short 0x02F0
	.byte 0x05, 0x12, 0x0D, 0x05, 0x02, 0x01
	.short 0x02E6
	.byte 0x05, 0x17, 0x0D, 0x08, 0x02, 0x01
	.short 0x02D6
	.byte 0x05, 0x10, 0x08, 0x0E, 0x02, 0x01
	.short 0x02B6
	.byte 0x05, 0x10, 0x0B, 0x03, 0x02, 0x01
	.short 0x02B0
	.byte 0x05, 0x14, 0x0B, 0x08, 0x02, 0x01
	.short 0x02A0
	.byte 0x05, 0x0F, 0x0D, 0x10, 0x02, 0x01
	.short 0x0280
	.size ov18_021F9F3C,.-ov18_021F9F3C

	.global ov18_021F9FDC
	.balign 2, 0
ov18_021F9FDC:
	.byte 0x05, 0x02, 0x13, 0x1C, 0x05, 0x02
	.short 0x0174
	.byte 0x05, 0x04, 0x01, 0x09, 0x02, 0x02
	.short 0x0162
	.byte 0x05, 0x01, 0x04, 0x05, 0x02, 0x02
	.short 0x0158
	.byte 0x05, 0x01, 0x07, 0x05, 0x02, 0x02
	.short 0x014E
	.byte 0x05, 0x01, 0x0A, 0x05, 0x02, 0x02
	.short 0x0144
	.byte 0x05, 0x01, 0x0D, 0x05, 0x02, 0x02
	.short 0x013A
	.byte 0x05, 0x01, 0x10, 0x05, 0x02, 0x02
	.short 0x0130
	.byte 0x05, 0x19, 0x04, 0x06, 0x02, 0x02
	.short 0x0124
	.byte 0x05, 0x10, 0x01, 0x0B, 0x02, 0x02
	.short 0x010E
	.byte 0x05, 0x07, 0x04, 0x09, 0x02, 0x02
	.short 0x00FC
	.byte 0x05, 0x07, 0x07, 0x08, 0x02, 0x02
	.short 0x00EC
	.byte 0x05, 0x0F, 0x07, 0x08, 0x02, 0x02
	.short 0x00DC
	.byte 0x05, 0x07, 0x0A, 0x06, 0x02, 0x02
	.short 0x00D0
	.byte 0x05, 0x0F, 0x0A, 0x06, 0x02, 0x02
	.short 0x00C4
	.byte 0x05, 0x07, 0x0D, 0x09, 0x02, 0x02
	.short 0x00B2
	.byte 0x05, 0x12, 0x0D, 0x09, 0x02, 0x02
	.short 0x00A0
	.byte 0x05, 0x07, 0x10, 0x07, 0x02, 0x02
	.short 0x0092
	.byte 0x01, 0x01, 0x01, 0x08, 0x02, 0x04
	.short 0x01F0
	.byte 0x01, 0x0C, 0x01, 0x08, 0x02, 0x04
	.short 0x01E0
	.byte 0x01, 0x17, 0x01, 0x08, 0x02, 0x04
	.short 0x01D0
	.byte 0x00, 0x04, 0x01, 0x09, 0x02, 0x02
	.short 0x0162
	.byte 0x00, 0x01, 0x04, 0x05, 0x02, 0x02
	.short 0x0158
	.byte 0x00, 0x01, 0x07, 0x05, 0x02, 0x02
	.short 0x014E
	.byte 0x00, 0x01, 0x0A, 0x05, 0x02, 0x02
	.short 0x0144
	.byte 0x00, 0x01, 0x0D, 0x05, 0x02, 0x02
	.short 0x013A
	.byte 0x00, 0x01, 0x10, 0x05, 0x02, 0x02
	.short 0x0130
	.byte 0x00, 0x19, 0x04, 0x06, 0x02, 0x02
	.short 0x0124
	.byte 0x00, 0x10, 0x01, 0x0B, 0x02, 0x02
	.short 0x010E
	.byte 0x00, 0x07, 0x04, 0x09, 0x02, 0x02
	.short 0x00FC
	.byte 0x00, 0x07, 0x07, 0x08, 0x02, 0x02
	.short 0x00EC
	.byte 0x00, 0x0F, 0x07, 0x08, 0x02, 0x02
	.short 0x00DC
	.byte 0x00, 0x07, 0x0A, 0x06, 0x02, 0x02
	.short 0x00D0
	.byte 0x00, 0x0F, 0x0A, 0x06, 0x02, 0x02
	.short 0x00C4
	.byte 0x00, 0x07, 0x0D, 0x09, 0x02, 0x02
	.short 0x00B2
	.byte 0x00, 0x12, 0x0D, 0x09, 0x02, 0x02
	.short 0x00A0
	.byte 0x00, 0x07, 0x10, 0x07, 0x02, 0x02
	.short 0x0092
	.byte 0x00, 0x03, 0x01, 0x0B, 0x02, 0x02
	.short 0x01EA
	.byte 0x00, 0x12, 0x01, 0x0B, 0x02, 0x02
	.short 0x01D4
	.byte 0x00, 0x03, 0x06, 0x0B, 0x02, 0x02
	.short 0x01BE
	.byte 0x00, 0x12, 0x06, 0x0B, 0x02, 0x02
	.short 0x01A8
	.byte 0x00, 0x03, 0x0A, 0x0B, 0x02, 0x02
	.short 0x0192
	.byte 0x00, 0x12, 0x0A, 0x0B, 0x02, 0x02
	.short 0x017C
	.byte 0x00, 0x03, 0x0E, 0x0B, 0x02, 0x02
	.short 0x0166
	.byte 0x00, 0x12, 0x0E, 0x0B, 0x02, 0x02
	.short 0x0150
	.byte 0x00, 0x03, 0x01, 0x07, 0x02, 0x02
	.short 0x01F2
	.byte 0x00, 0x0D, 0x01, 0x08, 0x02, 0x02
	.short 0x01E2
	.byte 0x00, 0x15, 0x01, 0x08, 0x02, 0x02
	.short 0x01D2
	.byte 0x00, 0x00, 0x05, 0x08, 0x02, 0x02
	.short 0x01C2
	.byte 0x00, 0x08, 0x05, 0x08, 0x02, 0x02
	.short 0x01B2
	.byte 0x00, 0x10, 0x05, 0x08, 0x02, 0x02
	.short 0x01A2
	.byte 0x00, 0x18, 0x05, 0x08, 0x02, 0x02
	.short 0x0192
	.byte 0x00, 0x00, 0x08, 0x08, 0x02, 0x02
	.short 0x0182
	.byte 0x00, 0x08, 0x08, 0x08, 0x02, 0x02
	.short 0x0172
	.byte 0x00, 0x10, 0x08, 0x08, 0x02, 0x02
	.short 0x0162
	.byte 0x00, 0x18, 0x08, 0x08, 0x02, 0x02
	.short 0x0152
	.byte 0x00, 0x00, 0x0B, 0x08, 0x02, 0x02
	.short 0x0142
	.byte 0x00, 0x08, 0x0B, 0x08, 0x02, 0x02
	.short 0x0132
	.byte 0x00, 0x10, 0x0B, 0x08, 0x02, 0x02
	.short 0x0122
	.byte 0x00, 0x18, 0x0B, 0x08, 0x02, 0x02
	.short 0x0112
	.byte 0x00, 0x00, 0x0E, 0x08, 0x02, 0x02
	.short 0x0102
	.byte 0x00, 0x08, 0x0E, 0x08, 0x02, 0x02
	.short 0x00F2
	.byte 0x00, 0x10, 0x0E, 0x08, 0x02, 0x02
	.short 0x00E2
	.byte 0x00, 0x18, 0x0E, 0x08, 0x02, 0x02
	.short 0x00D2
	.byte 0x00, 0x00, 0x11, 0x08, 0x02, 0x02
	.short 0x00C2
	.byte 0x00, 0x08, 0x11, 0x08, 0x02, 0x02
	.short 0x00B2
	.byte 0x00, 0x07, 0x01, 0x06, 0x02, 0x02
	.short 0x01F4
	.byte 0x00, 0x0F, 0x01, 0x09, 0x02, 0x02
	.short 0x01E2
	.byte 0x00, 0x01, 0x05, 0x1D, 0x0E, 0x02
	.short 0x004C
	.byte 0x00, 0x03, 0x01, 0x05, 0x02, 0x02
	.short 0x01F6
	.byte 0x00, 0x0A, 0x01, 0x07, 0x02, 0x02
	.short 0x01E8
	.byte 0x00, 0x13, 0x01, 0x07, 0x02, 0x02
	.short 0x01DA
	.byte 0x00, 0x01, 0x01, 0x06, 0x02, 0x02
	.short 0x01F4
	.byte 0x00, 0x08, 0x01, 0x09, 0x02, 0x02
	.short 0x01E2
	.byte 0x00, 0x13, 0x01, 0x09, 0x02, 0x02
	.short 0x01D0
	.byte 0x00, 0x07, 0x01, 0x06, 0x02, 0x02
	.short 0x01F4
	.byte 0x00, 0x10, 0x01, 0x07, 0x02, 0x02
	.short 0x01E6
	.byte 0x00, 0x06, 0x08, 0x07, 0x02, 0x02
	.short 0x01D8
	.byte 0x00, 0x13, 0x08, 0x07, 0x02, 0x02
	.short 0x01CA
	.byte 0x00, 0x06, 0x0F, 0x07, 0x02, 0x02
	.short 0x01BC
	.byte 0x00, 0x13, 0x0F, 0x07, 0x02, 0x02
	.short 0x01AE
	.byte 0x00, 0x08, 0x01, 0x06, 0x03, 0x02
	.short 0x01EE
	.byte 0x05, 0x02, 0x00, 0x08, 0x02, 0x02
	.short 0x03F0
	.byte 0x05, 0x0F, 0x03, 0x04, 0x02, 0x00
	.short 0x03E8
	.byte 0x05, 0x13, 0x03, 0x09, 0x02, 0x00
	.short 0x03D6
	.byte 0x05, 0x0D, 0x05, 0x12, 0x02, 0x00
	.short 0x03B2
	.byte 0x05, 0x02, 0x11, 0x1C, 0x06, 0x01
	.short 0x030A
	.byte 0x05, 0x12, 0x0B, 0x05, 0x02, 0x01
	.short 0x0300
	.byte 0x05, 0x17, 0x0B, 0x08, 0x02, 0x01
	.short 0x02F0
	.byte 0x05, 0x12, 0x0D, 0x05, 0x02, 0x01
	.short 0x02E6
	.byte 0x05, 0x17, 0x0D, 0x08, 0x02, 0x01
	.short 0x02D6
	.byte 0x05, 0x10, 0x08, 0x0E, 0x02, 0x01
	.short 0x02B6
	.byte 0x05, 0x10, 0x0B, 0x03, 0x02, 0x01
	.short 0x02B0
	.byte 0x05, 0x14, 0x0B, 0x08, 0x02, 0x01
	.short 0x02A0
	.byte 0x05, 0x0F, 0x0D, 0x10, 0x02, 0x01
	.short 0x0280
	.byte 0x01, 0x0A, 0x10, 0x0B, 0x02, 0x00
	.short 0x01BA
	.byte 0x00, 0x02, 0x09, 0x0C, 0x02, 0x09
	.short 0x03E8
	.byte 0x00, 0x12, 0x09, 0x0C, 0x02, 0x09
	.short 0x03D0
	.byte 0x00, 0x0B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03CA
	.byte 0x00, 0x0B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03C4
	.byte 0x00, 0x1B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03BE
	.byte 0x00, 0x1B, 0x0B, 0x03, 0x02, 0x09
	.short 0x03B8
	.size ov18_021F9FDC,.-ov18_021F9FDC

	; file boundary
	.balign 4, 0

	.global ov18_021FA304
