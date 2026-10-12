	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_020153D8
	.extern NNS_G3dGlb

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_020153D8
sub_020153D8: ; 0x020153D8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _020153F4
	add r0, #0xdb
	ldrb r0, [r0]
	bl Camera_ApplyPerspectiveType
	ldr r0, [r4, #0x20]
	bl Camera_SetStaticPtr
	bl Camera_PushLookAtToNNSGlb
_020153F4:
	bl NNS_G3dGlbFlushP
	ldr r0, [r4]
	ldr r1, _02015410 ; =NNS_G3dGlb + 0x4C
	bl SPL_Draw
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0201540A
	bl Camera_UnsetStaticPtr
_0201540A:
	bl NNS_G3dGlbFlushP
	pop {r4, pc}
	.balign 4, 0
_02015410: .word NNS_G3dGlb + 0x4C
	thumb_func_end sub_020153D8

