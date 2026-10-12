#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EAFAC
	.public ov14_021EB0E4

    .text

	.text
	thumb_func_start ov14_021EAFAC
ov14_021EAFAC: ; 0x021EAFAC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #0
	bl GfGfx_EngineASetPlanes
	mov r0, #0
	bl GfGfx_EngineBSetPlanes
	ldr r0, _021EB0C8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021EB0CC ; =0x04001050
	strh r1, [r0]
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	ldr r2, _021EB0D0 ; =0x04000304
	ldr r0, _021EB0D4 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r2, #2
	mov r0, #3
	mov r1, #0xa
	lsl r2, r2, #0x12
	bl Heap_Create
	ldr r1, _021EB0D8 ; =0x000088E0
	mov r0, #0xa
	bl Heap_Alloc
	ldr r2, _021EB0D8 ; =0x000088E0
	mov r1, #0
	str r0, [r4, #0x34]
	bl MI_CpuFill8
	mov r0, #2
	mov r1, #0xa
	bl NARC_New
	mov r1, #0x45
	ldr r2, [r4, #0x34]
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0x14
	mov r1, #0xa
	bl NARC_New
	ldr r2, [r4, #0x34]
	ldr r1, _021EB0DC ; =0x00000454
	str r0, [r2, r1]
	bl ov14_021E5A60
	add r0, r4, #0
	bl ov14_021E5A70
	add r0, r4, #0
	bl ov14_021E5E74
	add r0, r4, #0
	bl ov14_021E5C54
	add r0, r4, #0
	bl ov14_021E5D78
	add r0, r4, #0
	bl ov14_021E5DE0
	add r0, r4, #0
	bl ov14_021F4ED0
	add r0, r4, #0
	bl ov14_021F297C
	add r0, r4, #0
	bl ov14_021F2F20
	add r0, r4, #0
	bl ov14_021F2F3C
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	bl ov14_021E783C
	add r0, r4, #0
	bl ov14_021E7BA4
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #1
	beq _021EB08C
	cmp r0, #0
	beq _021EB08C
	add r0, r4, #0
	bl ov14_021E81FC
	add r0, r4, #0
	bl ov14_021E825C
_021EB08C:
	add r0, r4, #0
	bl ov14_021E82BC
	add r0, r4, #0
	bl ov14_021E5ED0
	add r0, r4, #0
	bl ov14_021F5620
	add r0, r4, #0
	bl ov14_021F566C
	add r0, r4, #0
	bl ov14_021F49C8
	add r0, r4, #0
	bl ov14_021F6A44
	ldr r0, _021EB0E0 ; =ov14_021E59AC
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnVBlankQueue
	ldr r1, [r4, #0x34]
	str r0, [r1]
	mov r0, #1
	bl ov14_021E5EAC
	ldr r0, [r4, #0x30]
	pop {r4, pc}
	.balign 4, 0
_021EB0C8: .word 0x04000050
_021EB0CC: .word 0x04001050
_021EB0D0: .word 0x04000304
_021EB0D4: .word 0xFFFF7FFF
_021EB0D8: .word 0x000088E0
_021EB0DC: .word 0x00000454
_021EB0E0: .word ov14_021E59AC
	thumb_func_end ov14_021EAFAC

	thumb_func_start ov14_021EB0E4
ov14_021EB0E4: ; 0x021EB0E4
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E6048
	ldr r0, [r4, #0x34]
	ldr r0, [r0]
	bl SysTask_Destroy
	add r0, r4, #0
	bl ov14_021F6B10
	add r0, r4, #0
	bl ov14_021E5EE8
	ldr r0, [r4, #0x34]
	bl ov14_021E7D7C
	ldr r0, [r4, #0x34]
	bl ov14_021F29AC
	add r0, r4, #0
	bl ov14_021F4F00
	add r0, r4, #0
	bl ov14_021E5DB8
	add r0, r4, #0
	bl ov14_021E5E94
	add r0, r4, #0
	bl ov14_021E5C00
	ldr r1, [r4, #0x34]
	ldr r0, _021EB164 ; =0x00000454
	ldr r0, [r1, r0]
	bl NARC_Delete
	mov r0, #0x45
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl NARC_Delete
	bl sub_02021238
	ldr r1, _021EB168 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	ldr r1, _021EB16C ; =0x04001050
	strh r0, [r1]
	bl GfGfx_EngineASetPlanes
	mov r0, #0
	bl GfGfx_EngineBSetPlanes
	ldr r0, [r4, #0x34]
	bl Heap_Free
	mov r0, #0xa
	bl Heap_Destroy
	ldr r0, [r4, #0x30]
	pop {r4, pc}
	nop
_021EB164: .word 0x00000454
_021EB168: .word 0x04000050
_021EB16C: .word 0x04001050
	thumb_func_end ov14_021EB0E4

