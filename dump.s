
src/pEpitOS.elf:     format de fichier elf64-x86-64


Déassemblage de la section .text :

ffffffff80200020 <_start>:
ffffffff80200020:	e9 3b 89 00 00       	jmp    ffffffff80208960 <kernel_main>
ffffffff80200025:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020002c:	00 00 00 
ffffffff8020002f:	90                   	nop

ffffffff80200030 <load_gdt>:
ffffffff80200030:	0f 01 17             	lgdt   [rdi]
ffffffff80200033:	66 b8 10 00          	mov    ax,0x10
ffffffff80200037:	8e d0                	mov    ss,eax
ffffffff80200039:	8e d8                	mov    ds,eax
ffffffff8020003b:	8e c0                	mov    es,eax
ffffffff8020003d:	48 b8 4c 00 20 80 ff 	movabs rax,0xffffffff8020004c
ffffffff80200044:	ff ff ff 
ffffffff80200047:	6a 08                	push   0x8
ffffffff80200049:	50                   	push   rax
ffffffff8020004a:	48 cb                	rex.W retf 

ffffffff8020004c <load_gdt.trampoline>:
ffffffff8020004c:	c3                   	ret    

ffffffff8020004d <load_idt>:
ffffffff8020004d:	0f 01 1f             	lidt   [rdi]
ffffffff80200050:	c3                   	ret    

ffffffff80200051 <isr0>:
ffffffff80200051:	68 80 00 00 00       	push   0x80
ffffffff80200056:	6a 00                	push   0x0
ffffffff80200058:	e9 63 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020005d <isr1>:
ffffffff8020005d:	68 80 00 00 00       	push   0x80
ffffffff80200062:	6a 01                	push   0x1
ffffffff80200064:	e9 57 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200069 <isr2>:
ffffffff80200069:	68 80 00 00 00       	push   0x80
ffffffff8020006e:	6a 02                	push   0x2
ffffffff80200070:	e9 4b 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200075 <isr3>:
ffffffff80200075:	68 80 00 00 00       	push   0x80
ffffffff8020007a:	6a 03                	push   0x3
ffffffff8020007c:	e9 3f 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200081 <isr4>:
ffffffff80200081:	68 80 00 00 00       	push   0x80
ffffffff80200086:	6a 04                	push   0x4
ffffffff80200088:	e9 33 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020008d <isr5>:
ffffffff8020008d:	68 80 00 00 00       	push   0x80
ffffffff80200092:	6a 05                	push   0x5
ffffffff80200094:	e9 27 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200099 <isr6>:
ffffffff80200099:	68 80 00 00 00       	push   0x80
ffffffff8020009e:	6a 06                	push   0x6
ffffffff802000a0:	e9 1b 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000a5 <isr7>:
ffffffff802000a5:	68 80 00 00 00       	push   0x80
ffffffff802000aa:	6a 07                	push   0x7
ffffffff802000ac:	e9 0f 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000b1 <isr8>:
ffffffff802000b1:	6a 08                	push   0x8
ffffffff802000b3:	e9 08 01 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000b8 <isr9>:
ffffffff802000b8:	68 80 00 00 00       	push   0x80
ffffffff802000bd:	6a 09                	push   0x9
ffffffff802000bf:	e9 fc 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000c4 <isr10>:
ffffffff802000c4:	6a 0a                	push   0xa
ffffffff802000c6:	e9 f5 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000cb <isr11>:
ffffffff802000cb:	6a 0b                	push   0xb
ffffffff802000cd:	e9 ee 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000d2 <isr12>:
ffffffff802000d2:	6a 0c                	push   0xc
ffffffff802000d4:	e9 e7 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000d9 <isr13>:
ffffffff802000d9:	6a 0d                	push   0xd
ffffffff802000db:	e9 e0 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000e0 <isr14>:
ffffffff802000e0:	6a 0e                	push   0xe
ffffffff802000e2:	e9 d9 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000e7 <isr15>:
ffffffff802000e7:	68 80 00 00 00       	push   0x80
ffffffff802000ec:	6a 0f                	push   0xf
ffffffff802000ee:	e9 cd 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000f3 <isr16>:
ffffffff802000f3:	68 80 00 00 00       	push   0x80
ffffffff802000f8:	6a 10                	push   0x10
ffffffff802000fa:	e9 c1 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802000ff <isr17>:
ffffffff802000ff:	68 80 00 00 00       	push   0x80
ffffffff80200104:	6a 11                	push   0x11
ffffffff80200106:	e9 b5 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020010b <isr18>:
ffffffff8020010b:	68 80 00 00 00       	push   0x80
ffffffff80200110:	6a 12                	push   0x12
ffffffff80200112:	e9 a9 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200117 <isr19>:
ffffffff80200117:	68 80 00 00 00       	push   0x80
ffffffff8020011c:	6a 13                	push   0x13
ffffffff8020011e:	e9 9d 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200123 <isr20>:
ffffffff80200123:	68 80 00 00 00       	push   0x80
ffffffff80200128:	6a 14                	push   0x14
ffffffff8020012a:	e9 91 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020012f <isr21>:
ffffffff8020012f:	68 80 00 00 00       	push   0x80
ffffffff80200134:	6a 15                	push   0x15
ffffffff80200136:	e9 85 00 00 00       	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020013b <isr22>:
ffffffff8020013b:	68 80 00 00 00       	push   0x80
ffffffff80200140:	6a 16                	push   0x16
ffffffff80200142:	eb 7c                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200144 <isr23>:
ffffffff80200144:	68 80 00 00 00       	push   0x80
ffffffff80200149:	6a 17                	push   0x17
ffffffff8020014b:	eb 73                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020014d <isr24>:
ffffffff8020014d:	68 80 00 00 00       	push   0x80
ffffffff80200152:	6a 18                	push   0x18
ffffffff80200154:	eb 6a                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200156 <isr25>:
ffffffff80200156:	68 80 00 00 00       	push   0x80
ffffffff8020015b:	6a 19                	push   0x19
ffffffff8020015d:	eb 61                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020015f <isr26>:
ffffffff8020015f:	68 80 00 00 00       	push   0x80
ffffffff80200164:	6a 1a                	push   0x1a
ffffffff80200166:	eb 58                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200168 <isr27>:
ffffffff80200168:	68 80 00 00 00       	push   0x80
ffffffff8020016d:	6a 1b                	push   0x1b
ffffffff8020016f:	eb 4f                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200171 <isr28>:
ffffffff80200171:	68 80 00 00 00       	push   0x80
ffffffff80200176:	6a 1c                	push   0x1c
ffffffff80200178:	eb 46                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020017a <isr29>:
ffffffff8020017a:	68 80 00 00 00       	push   0x80
ffffffff8020017f:	6a 1d                	push   0x1d
ffffffff80200181:	eb 3d                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200183 <isr30>:
ffffffff80200183:	68 80 00 00 00       	push   0x80
ffffffff80200188:	6a 1e                	push   0x1e
ffffffff8020018a:	eb 34                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020018c <isr31>:
ffffffff8020018c:	68 80 00 00 00       	push   0x80
ffffffff80200191:	6a 1f                	push   0x1f
ffffffff80200193:	eb 2b                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff80200195 <isr127>:
ffffffff80200195:	68 80 00 00 00       	push   0x80
ffffffff8020019a:	6a 7f                	push   0x7f
ffffffff8020019c:	eb 22                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff8020019e <isr128>:
ffffffff8020019e:	68 80 00 00 00       	push   0x80
ffffffff802001a3:	68 80 00 00 00       	push   0x80
ffffffff802001a8:	eb 16                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802001aa <isr129>:
ffffffff802001aa:	68 80 00 00 00       	push   0x80
ffffffff802001af:	68 81 00 00 00       	push   0x81
ffffffff802001b4:	eb 0a                	jmp    ffffffff802001c0 <isr_common_stub>

ffffffff802001b6 <save_simd_context>:
ffffffff802001b6:	48 0f ae 07          	fxsave64 [rdi]
ffffffff802001ba:	c3                   	ret    

ffffffff802001bb <load_simd_context>:
ffffffff802001bb:	48 0f ae 0f          	fxrstor64 [rdi]
ffffffff802001bf:	c3                   	ret    

ffffffff802001c0 <isr_common_stub>:
ffffffff802001c0:	50                   	push   rax
ffffffff802001c1:	53                   	push   rbx
ffffffff802001c2:	51                   	push   rcx
ffffffff802001c3:	52                   	push   rdx
ffffffff802001c4:	56                   	push   rsi
ffffffff802001c5:	57                   	push   rdi
ffffffff802001c6:	55                   	push   rbp
ffffffff802001c7:	41 50                	push   r8
ffffffff802001c9:	41 51                	push   r9
ffffffff802001cb:	41 52                	push   r10
ffffffff802001cd:	41 53                	push   r11
ffffffff802001cf:	41 54                	push   r12
ffffffff802001d1:	41 55                	push   r13
ffffffff802001d3:	41 56                	push   r14
ffffffff802001d5:	41 57                	push   r15
ffffffff802001d7:	e8 84 20 00 00       	call   ffffffff80202260 <isr_handler>
ffffffff802001dc:	41 5f                	pop    r15
ffffffff802001de:	41 5e                	pop    r14
ffffffff802001e0:	41 5d                	pop    r13
ffffffff802001e2:	41 5c                	pop    r12
ffffffff802001e4:	41 5b                	pop    r11
ffffffff802001e6:	41 5a                	pop    r10
ffffffff802001e8:	41 59                	pop    r9
ffffffff802001ea:	41 58                	pop    r8
ffffffff802001ec:	5d                   	pop    rbp
ffffffff802001ed:	5f                   	pop    rdi
ffffffff802001ee:	5e                   	pop    rsi
ffffffff802001ef:	5a                   	pop    rdx
ffffffff802001f0:	59                   	pop    rcx
ffffffff802001f1:	5b                   	pop    rbx
ffffffff802001f2:	58                   	pop    rax
ffffffff802001f3:	48 83 c4 10          	add    rsp,0x10
ffffffff802001f7:	48 cf                	iretq  

ffffffff802001f9 <irq0>:
ffffffff802001f9:	6a 00                	push   0x0
ffffffff802001fb:	6a 20                	push   0x20
ffffffff802001fd:	eb 5a                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff802001ff <irq1>:
ffffffff802001ff:	6a 00                	push   0x0
ffffffff80200201:	6a 21                	push   0x21
ffffffff80200203:	eb 54                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200205 <irq2>:
ffffffff80200205:	6a 00                	push   0x0
ffffffff80200207:	6a 22                	push   0x22
ffffffff80200209:	eb 4e                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff8020020b <irq3>:
ffffffff8020020b:	6a 00                	push   0x0
ffffffff8020020d:	6a 23                	push   0x23
ffffffff8020020f:	eb 48                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200211 <irq4>:
ffffffff80200211:	6a 00                	push   0x0
ffffffff80200213:	6a 24                	push   0x24
ffffffff80200215:	eb 42                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200217 <irq5>:
ffffffff80200217:	6a 00                	push   0x0
ffffffff80200219:	6a 25                	push   0x25
ffffffff8020021b:	eb 3c                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff8020021d <irq6>:
ffffffff8020021d:	6a 00                	push   0x0
ffffffff8020021f:	6a 26                	push   0x26
ffffffff80200221:	eb 36                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200223 <irq7>:
ffffffff80200223:	6a 00                	push   0x0
ffffffff80200225:	6a 27                	push   0x27
ffffffff80200227:	eb 30                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200229 <irq8>:
ffffffff80200229:	6a 00                	push   0x0
ffffffff8020022b:	6a 28                	push   0x28
ffffffff8020022d:	eb 2a                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff8020022f <irq9>:
ffffffff8020022f:	6a 00                	push   0x0
ffffffff80200231:	6a 29                	push   0x29
ffffffff80200233:	eb 24                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200235 <irq10>:
ffffffff80200235:	6a 00                	push   0x0
ffffffff80200237:	6a 2a                	push   0x2a
ffffffff80200239:	eb 1e                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff8020023b <irq11>:
ffffffff8020023b:	6a 00                	push   0x0
ffffffff8020023d:	6a 2b                	push   0x2b
ffffffff8020023f:	eb 18                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200241 <irq12>:
ffffffff80200241:	6a 00                	push   0x0
ffffffff80200243:	6a 2c                	push   0x2c
ffffffff80200245:	eb 12                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200247 <irq13>:
ffffffff80200247:	6a 00                	push   0x0
ffffffff80200249:	6a 2d                	push   0x2d
ffffffff8020024b:	eb 0c                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff8020024d <irq14>:
ffffffff8020024d:	6a 00                	push   0x0
ffffffff8020024f:	6a 2e                	push   0x2e
ffffffff80200251:	eb 06                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200253 <irq15>:
ffffffff80200253:	6a 00                	push   0x0
ffffffff80200255:	6a 2f                	push   0x2f
ffffffff80200257:	eb 00                	jmp    ffffffff80200259 <irq_common_stub>

ffffffff80200259 <irq_common_stub>:
ffffffff80200259:	50                   	push   rax
ffffffff8020025a:	53                   	push   rbx
ffffffff8020025b:	51                   	push   rcx
ffffffff8020025c:	52                   	push   rdx
ffffffff8020025d:	56                   	push   rsi
ffffffff8020025e:	57                   	push   rdi
ffffffff8020025f:	55                   	push   rbp
ffffffff80200260:	41 50                	push   r8
ffffffff80200262:	41 51                	push   r9
ffffffff80200264:	41 52                	push   r10
ffffffff80200266:	41 53                	push   r11
ffffffff80200268:	41 54                	push   r12
ffffffff8020026a:	41 55                	push   r13
ffffffff8020026c:	41 56                	push   r14
ffffffff8020026e:	41 57                	push   r15
ffffffff80200270:	e8 ab 20 00 00       	call   ffffffff80202320 <irq_handler>
ffffffff80200275:	41 5f                	pop    r15
ffffffff80200277:	41 5e                	pop    r14
ffffffff80200279:	41 5d                	pop    r13
ffffffff8020027b:	41 5c                	pop    r12
ffffffff8020027d:	41 5b                	pop    r11
ffffffff8020027f:	41 5a                	pop    r10
ffffffff80200281:	41 59                	pop    r9
ffffffff80200283:	41 58                	pop    r8
ffffffff80200285:	5d                   	pop    rbp
ffffffff80200286:	5f                   	pop    rdi
ffffffff80200287:	5e                   	pop    rsi
ffffffff80200288:	5a                   	pop    rdx
ffffffff80200289:	59                   	pop    rcx
ffffffff8020028a:	5b                   	pop    rbx
ffffffff8020028b:	58                   	pop    rax
ffffffff8020028c:	48 83 c4 10          	add    rsp,0x10
ffffffff80200290:	fb                   	sti    
ffffffff80200291:	48 cf                	iretq  

ffffffff80200293 <enable_sse>:
ffffffff80200293:	55                   	push   rbp
ffffffff80200294:	48 89 e5             	mov    rbp,rsp
ffffffff80200297:	0f 20 c0             	mov    rax,cr0
ffffffff8020029a:	48 83 c8 02          	or     rax,0x2
ffffffff8020029e:	0f 22 c0             	mov    cr0,rax
ffffffff802002a1:	b8 00 00 00 00       	mov    eax,0x0
ffffffff802002a6:	5d                   	pop    rbp
ffffffff802002a7:	c3                   	ret    
ffffffff802002a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802002af:	00 

ffffffff802002b0 <create_gdt_entry>:
ffffffff802002b0:	44 0f b7 c7          	movzx  r8d,di
ffffffff802002b4:	89 f8                	mov    eax,edi
ffffffff802002b6:	c1 e2 04             	shl    edx,0x4
ffffffff802002b9:	0f b6 c9             	movzx  ecx,cl
ffffffff802002bc:	c1 e8 10             	shr    eax,0x10
ffffffff802002bf:	4d 89 c1             	mov    r9,r8
ffffffff802002c2:	44 0f b7 c6          	movzx  r8d,si
ffffffff802002c6:	c1 ee 10             	shr    esi,0x10
ffffffff802002c9:	49 c1 e1 10          	shl    r9,0x10
ffffffff802002cd:	0f b6 c0             	movzx  eax,al
ffffffff802002d0:	48 c1 e1 28          	shl    rcx,0x28
ffffffff802002d4:	48 c1 e0 20          	shl    rax,0x20
ffffffff802002d8:	4d 09 c8             	or     r8,r9
ffffffff802002db:	c1 ef 18             	shr    edi,0x18
ffffffff802002de:	49 09 c0             	or     r8,rax
ffffffff802002e1:	89 f0                	mov    eax,esi
ffffffff802002e3:	48 c1 e7 38          	shl    rdi,0x38
ffffffff802002e7:	83 e0 0f             	and    eax,0xf
ffffffff802002ea:	49 09 c8             	or     r8,rcx
ffffffff802002ed:	09 c2                	or     edx,eax
ffffffff802002ef:	0f b6 c2             	movzx  eax,dl
ffffffff802002f2:	48 c1 e0 30          	shl    rax,0x30
ffffffff802002f6:	4c 09 c0             	or     rax,r8
ffffffff802002f9:	48 09 f8             	or     rax,rdi
ffffffff802002fc:	c3                   	ret    
ffffffff802002fd:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80200300 <setup_gdt>:
ffffffff80200300:	48 b8 00 00 00 00 00 	movabs rax,0x209a0000000000
ffffffff80200307:	9a 20 00 
ffffffff8020030a:	48 83 ec 08          	sub    rsp,0x8
ffffffff8020030e:	48 c7 c7 c0 d7 20 80 	mov    rdi,0xffffffff8020d7c0
ffffffff80200315:	48 c7 05 b0 d4 00 00 	mov    QWORD PTR [rip+0xd4b0],0x0        # ffffffff8020d7d0 <gdt>
ffffffff8020031c:	00 00 00 00 
ffffffff80200320:	48 89 05 b1 d4 00 00 	mov    QWORD PTR [rip+0xd4b1],rax        # ffffffff8020d7d8 <gdt+0x8>
ffffffff80200327:	48 b8 00 00 00 00 00 	movabs rax,0x920000000000
ffffffff8020032e:	92 00 00 
ffffffff80200331:	48 89 05 a8 d4 00 00 	mov    QWORD PTR [rip+0xd4a8],rax        # ffffffff8020d7e0 <gdt+0x10>
ffffffff80200338:	b8 17 00 00 00       	mov    eax,0x17
ffffffff8020033d:	66 89 05 7c d4 00 00 	mov    WORD PTR [rip+0xd47c],ax        # ffffffff8020d7c0 <gdt_d>
ffffffff80200344:	48 c7 05 73 d4 00 00 	mov    QWORD PTR [rip+0xd473],0xffffffff8020d7d0        # ffffffff8020d7c2 <gdt_d+0x2>
ffffffff8020034b:	d0 d7 20 80 
ffffffff8020034f:	e8 dc fc ff ff       	call   ffffffff80200030 <load_gdt>
ffffffff80200354:	31 c0                	xor    eax,eax
ffffffff80200356:	e8 e5 5c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020035b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200362:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200367:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff8020036e:	e8 7d 08 00 00       	call   ffffffff80200bf0 <com_write>
ffffffff80200373:	31 c0                	xor    eax,eax
ffffffff80200375:	e8 66 55 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020037a:	84 c0                	test   al,al
ffffffff8020037c:	75 52                	jne    ffffffff802003d0 <setup_gdt+0xd0>
ffffffff8020037e:	48 c7 c1 f8 92 20 80 	mov    rcx,0xffffffff802092f8
ffffffff80200385:	ba 4d 00 00 00       	mov    edx,0x4d
ffffffff8020038a:	48 c7 c6 a5 92 20 80 	mov    rsi,0xffffffff802092a5
ffffffff80200391:	31 c0                	xor    eax,eax
ffffffff80200393:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020039a:	e8 c1 7a 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020039f:	48 c7 c7 d8 92 20 80 	mov    rdi,0xffffffff802092d8
ffffffff802003a6:	31 c0                	xor    eax,eax
ffffffff802003a8:	e8 b3 7a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802003ad:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802003b4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802003b9:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802003c0:	e8 2b 08 00 00       	call   ffffffff80200bf0 <com_write>
ffffffff802003c5:	31 c0                	xor    eax,eax
ffffffff802003c7:	48 83 c4 08          	add    rsp,0x8
ffffffff802003cb:	e9 90 5c 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff802003d0:	31 c0                	xor    eax,eax
ffffffff802003d2:	e8 99 53 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802003d7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802003de:	89 c6                	mov    esi,eax
ffffffff802003e0:	31 c0                	xor    eax,eax
ffffffff802003e2:	e8 79 7a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802003e7:	eb 95                	jmp    ffffffff8020037e <setup_gdt+0x7e>
ffffffff802003e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff802003f0 <stivale2_get_tag>:
ffffffff802003f0:	48 8b 87 80 00 00 00 	mov    rax,QWORD PTR [rdi+0x80]
ffffffff802003f7:	48 85 c0             	test   rax,rax
ffffffff802003fa:	75 0d                	jne    ffffffff80200409 <stivale2_get_tag+0x19>
ffffffff802003fc:	eb 10                	jmp    ffffffff8020040e <stivale2_get_tag+0x1e>
ffffffff802003fe:	66 90                	xchg   ax,ax
ffffffff80200400:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
ffffffff80200404:	48 85 c0             	test   rax,rax
ffffffff80200407:	74 05                	je     ffffffff8020040e <stivale2_get_tag+0x1e>
ffffffff80200409:	48 39 30             	cmp    QWORD PTR [rax],rsi
ffffffff8020040c:	75 f2                	jne    ffffffff80200400 <stivale2_get_tag+0x10>
ffffffff8020040e:	c3                   	ret    
ffffffff8020040f:	90                   	nop

ffffffff80200410 <map_pics>:
ffffffff80200410:	48 83 ec 08          	sub    rsp,0x8
ffffffff80200414:	48 83 3d 6c b1 00 00 	cmp    QWORD PTR [rip+0xb16c],0x0        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff8020041b:	00 
ffffffff8020041c:	74 10                	je     ffffffff8020042e <map_pics+0x1e>
ffffffff8020041e:	48 8b 3d 5b b1 00 00 	mov    rdi,QWORD PTR [rip+0xb15b]        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff80200425:	48 85 ff             	test   rdi,rdi
ffffffff80200428:	0f 85 85 00 00 00    	jne    ffffffff802004b3 <map_pics+0xa3>
ffffffff8020042e:	31 c0                	xor    eax,eax
ffffffff80200430:	e8 0b 5c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200435:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020043c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200441:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80200448:	e8 a3 07 00 00       	call   ffffffff80200bf0 <com_write>
ffffffff8020044d:	31 c0                	xor    eax,eax
ffffffff8020044f:	e8 8c 54 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80200454:	84 c0                	test   al,al
ffffffff80200456:	0f 85 8d 00 00 00    	jne    ffffffff802004e9 <map_pics+0xd9>
ffffffff8020045c:	48 c7 c1 a8 93 20 80 	mov    rcx,0xffffffff802093a8
ffffffff80200463:	ba 17 00 00 00       	mov    edx,0x17
ffffffff80200468:	48 c7 c6 16 93 20 80 	mov    rsi,0xffffffff80209316
ffffffff8020046f:	31 c0                	xor    eax,eax
ffffffff80200471:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80200478:	e8 e3 79 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020047d:	48 c7 c7 60 93 20 80 	mov    rdi,0xffffffff80209360
ffffffff80200484:	31 c0                	xor    eax,eax
ffffffff80200486:	e8 d5 79 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020048b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200492:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200497:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020049e:	e8 4d 07 00 00       	call   ffffffff80200bf0 <com_write>
ffffffff802004a3:	31 c0                	xor    eax,eax
ffffffff802004a5:	e8 b6 5b 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802004aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff802004b0:	f4                   	hlt    
ffffffff802004b1:	eb fd                	jmp    ffffffff802004b0 <map_pics+0xa0>
ffffffff802004b3:	8b 35 bb c1 00 00    	mov    esi,DWORD PTR [rip+0xc1bb]        # ffffffff8020c674 <apic_info+0x74>
ffffffff802004b9:	b9 02 00 00 00       	mov    ecx,0x2
ffffffff802004be:	ba 00 20 00 00       	mov    edx,0x2000
ffffffff802004c3:	e8 78 40 00 00       	call   ffffffff80204540 <kmmap_physical>
ffffffff802004c8:	b9 02 00 00 00       	mov    ecx,0x2
ffffffff802004cd:	ba 00 20 00 00       	mov    edx,0x2000
ffffffff802004d2:	48 8b 35 8f c1 00 00 	mov    rsi,QWORD PTR [rip+0xc18f]        # ffffffff8020c668 <apic_info+0x68>
ffffffff802004d9:	48 8b 3d a8 b0 00 00 	mov    rdi,QWORD PTR [rip+0xb0a8]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff802004e0:	48 83 c4 08          	add    rsp,0x8
ffffffff802004e4:	e9 57 40 00 00       	jmp    ffffffff80204540 <kmmap_physical>
ffffffff802004e9:	31 c0                	xor    eax,eax
ffffffff802004eb:	e8 80 52 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802004f0:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802004f7:	89 c6                	mov    esi,eax
ffffffff802004f9:	31 c0                	xor    eax,eax
ffffffff802004fb:	e8 60 79 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200500:	e9 57 ff ff ff       	jmp    ffffffff8020045c <map_pics+0x4c>
ffffffff80200505:	90                   	nop
ffffffff80200506:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020050d:	00 00 00 

ffffffff80200510 <cpuWriteIoAPIC>:
ffffffff80200510:	48 8b 05 69 b0 00 00 	mov    rax,QWORD PTR [rip+0xb069]        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff80200517:	40 0f b6 ff          	movzx  edi,dil
ffffffff8020051b:	89 38                	mov    DWORD PTR [rax],edi
ffffffff8020051d:	89 70 10             	mov    DWORD PTR [rax+0x10],esi
ffffffff80200520:	c3                   	ret    
ffffffff80200521:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80200526:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020052d:	00 00 00 

ffffffff80200530 <cpuReadIoAPIC>:
ffffffff80200530:	48 8b 05 49 b0 00 00 	mov    rax,QWORD PTR [rip+0xb049]        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff80200537:	40 0f b6 ff          	movzx  edi,dil
ffffffff8020053b:	89 38                	mov    DWORD PTR [rax],edi
ffffffff8020053d:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
ffffffff80200540:	c3                   	ret    
ffffffff80200541:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80200546:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020054d:	00 00 00 

ffffffff80200550 <cpuReadLAPIC>:
ffffffff80200550:	48 8b 05 31 b0 00 00 	mov    rax,QWORD PTR [rip+0xb031]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff80200557:	89 ff                	mov    edi,edi
ffffffff80200559:	8b 04 38             	mov    eax,DWORD PTR [rax+rdi*1]
ffffffff8020055c:	c3                   	ret    
ffffffff8020055d:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80200560 <cpuWriteLAPIC>:
ffffffff80200560:	48 8b 05 21 b0 00 00 	mov    rax,QWORD PTR [rip+0xb021]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff80200567:	89 ff                	mov    edi,edi
ffffffff80200569:	89 34 38             	mov    DWORD PTR [rax+rdi*1],esi
ffffffff8020056c:	c3                   	ret    
ffffffff8020056d:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80200570 <cpu_send_EOI>:
ffffffff80200570:	48 8b 05 11 b0 00 00 	mov    rax,QWORD PTR [rip+0xb011]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff80200577:	c7 80 b0 00 00 00 00 	mov    DWORD PTR [rax+0xb0],0x0
ffffffff8020057e:	00 00 00 
ffffffff80200581:	c3                   	ret    
ffffffff80200582:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80200586:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020058d:	00 00 00 

ffffffff80200590 <disable_pic>:
ffffffff80200590:	b8 ff ff ff ff       	mov    eax,0xffffffff
ffffffff80200595:	e6 a1                	out    0xa1,al
ffffffff80200597:	e6 21                	out    0x21,al
ffffffff80200599:	c3                   	ret    
ffffffff8020059a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff802005a0 <redirect_interrupts>:
ffffffff802005a0:	48 83 3d 60 c1 00 00 	cmp    QWORD PTR [rip+0xc160],0x0        # ffffffff8020c708 <apic_info+0x108>
ffffffff802005a7:	00 
ffffffff802005a8:	41 56                	push   r14
ffffffff802005aa:	41 55                	push   r13
ffffffff802005ac:	4c 8b 2d cd c0 00 00 	mov    r13,QWORD PTR [rip+0xc0cd]        # ffffffff8020c680 <apic_info+0x80>
ffffffff802005b3:	41 54                	push   r12
ffffffff802005b5:	44 8b 25 bc c0 00 00 	mov    r12d,DWORD PTR [rip+0xc0bc]        # ffffffff8020c678 <apic_info+0x78>
ffffffff802005bc:	55                   	push   rbp
ffffffff802005bd:	53                   	push   rbx
ffffffff802005be:	0f 84 f3 00 00 00    	je     ffffffff802006b7 <redirect_interrupts+0x117>
ffffffff802005c4:	31 db                	xor    ebx,ebx
ffffffff802005c6:	41 be 08 00 00 00    	mov    r14d,0x8
ffffffff802005cc:	eb 46                	jmp    ffffffff80200614 <redirect_interrupts+0x74>
ffffffff802005ce:	66 90                	xchg   ax,ax
ffffffff802005d0:	44 89 f0             	mov    eax,r14d
ffffffff802005d3:	8d 55 20             	lea    edx,[rbp+0x20]
ffffffff802005d6:	48 83 c3 01          	add    rbx,0x1
ffffffff802005da:	44 29 e0             	sub    eax,r12d
ffffffff802005dd:	80 ce 20             	or     dh,0x20
ffffffff802005e0:	01 c5                	add    ebp,eax
ffffffff802005e2:	48 8b 05 97 af 00 00 	mov    rax,QWORD PTR [rip+0xaf97]        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff802005e9:	01 ed                	add    ebp,ebp
ffffffff802005eb:	40 0f b6 cd          	movzx  ecx,bpl
ffffffff802005ef:	83 c5 01             	add    ebp,0x1
ffffffff802005f2:	48 39 1d 0f c1 00 00 	cmp    QWORD PTR [rip+0xc10f],rbx        # ffffffff8020c708 <apic_info+0x108>
ffffffff802005f9:	89 08                	mov    DWORD PTR [rax],ecx
ffffffff802005fb:	40 0f b6 ed          	movzx  ebp,bpl
ffffffff802005ff:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
ffffffff80200602:	0f be 15 00 c0 00 00 	movsx  edx,BYTE PTR [rip+0xc000]        # ffffffff8020c609 <apic_info+0x9>
ffffffff80200609:	89 28                	mov    DWORD PTR [rax],ebp
ffffffff8020060b:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
ffffffff8020060e:	0f 86 a3 00 00 00    	jbe    ffffffff802006b7 <redirect_interrupts+0x117>
ffffffff80200614:	48 0f be 2c dd 89 c6 	movsx  rbp,BYTE PTR [rbx*8-0x7fdf3977]
ffffffff8020061b:	20 80 
ffffffff8020061d:	44 3b 24 dd 8a c6 20 	cmp    r12d,DWORD PTR [rbx*8-0x7fdf3976]
ffffffff80200624:	80 
ffffffff80200625:	73 05                	jae    ffffffff8020062c <redirect_interrupts+0x8c>
ffffffff80200627:	4c 39 ed             	cmp    rbp,r13
ffffffff8020062a:	76 a4                	jbe    ffffffff802005d0 <redirect_interrupts+0x30>
ffffffff8020062c:	31 c0                	xor    eax,eax
ffffffff8020062e:	e8 0d 5a 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200633:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020063a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020063f:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80200646:	e8 a5 05 00 00       	call   ffffffff80200bf0 <com_write>
ffffffff8020064b:	31 c0                	xor    eax,eax
ffffffff8020064d:	e8 8e 52 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80200652:	84 c0                	test   al,al
ffffffff80200654:	75 6a                	jne    ffffffff802006c0 <redirect_interrupts+0x120>
ffffffff80200656:	48 c7 c1 90 93 20 80 	mov    rcx,0xffffffff80209390
ffffffff8020065d:	ba 57 00 00 00       	mov    edx,0x57
ffffffff80200662:	31 c0                	xor    eax,eax
ffffffff80200664:	48 c7 c6 16 93 20 80 	mov    rsi,0xffffffff80209316
ffffffff8020066b:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80200672:	48 83 c3 01          	add    rbx,0x1
ffffffff80200676:	e8 e5 77 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020067b:	31 c0                	xor    eax,eax
ffffffff8020067d:	89 ee                	mov    esi,ebp
ffffffff8020067f:	48 c7 c7 41 93 20 80 	mov    rdi,0xffffffff80209341
ffffffff80200686:	e8 d5 77 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020068b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200692:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200697:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020069e:	e8 4d 05 00 00       	call   ffffffff80200bf0 <com_write>
ffffffff802006a3:	31 c0                	xor    eax,eax
ffffffff802006a5:	e8 b6 59 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802006aa:	48 39 1d 57 c0 00 00 	cmp    QWORD PTR [rip+0xc057],rbx        # ffffffff8020c708 <apic_info+0x108>
ffffffff802006b1:	0f 87 5d ff ff ff    	ja     ffffffff80200614 <redirect_interrupts+0x74>
ffffffff802006b7:	5b                   	pop    rbx
ffffffff802006b8:	5d                   	pop    rbp
ffffffff802006b9:	41 5c                	pop    r12
ffffffff802006bb:	41 5d                	pop    r13
ffffffff802006bd:	41 5e                	pop    r14
ffffffff802006bf:	c3                   	ret    
ffffffff802006c0:	31 c0                	xor    eax,eax
ffffffff802006c2:	e8 a9 50 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802006c7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802006ce:	89 c6                	mov    esi,eax
ffffffff802006d0:	31 c0                	xor    eax,eax
ffffffff802006d2:	e8 89 77 00 00       	call   ffffffff80207e60 <printf>
ffffffff802006d7:	e9 7a ff ff ff       	jmp    ffffffff80200656 <redirect_interrupts+0xb6>
ffffffff802006dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff802006e0 <map_APIC>:
ffffffff802006e0:	80 3d 92 ae 00 00 00 	cmp    BYTE PTR [rip+0xae92],0x0        # ffffffff8020b579 <once.1781>
ffffffff802006e7:	74 07                	je     ffffffff802006f0 <map_APIC+0x10>
ffffffff802006e9:	c3                   	ret    
ffffffff802006ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff802006f0:	48 83 ec 08          	sub    rsp,0x8
ffffffff802006f4:	8b 3d 7a bf 00 00    	mov    edi,DWORD PTR [rip+0xbf7a]        # ffffffff8020c674 <apic_info+0x74>
ffffffff802006fa:	be 00 20 00 00       	mov    esi,0x2000
ffffffff802006ff:	c6 05 73 ae 00 00 01 	mov    BYTE PTR [rip+0xae73],0x1        # ffffffff8020b579 <once.1781>
ffffffff80200706:	e8 c5 40 00 00       	call   ffffffff802047d0 <map_physical>
ffffffff8020070b:	48 8b 3d 56 bf 00 00 	mov    rdi,QWORD PTR [rip+0xbf56]        # ffffffff8020c668 <apic_info+0x68>
ffffffff80200712:	be 00 20 00 00       	mov    esi,0x2000
ffffffff80200717:	48 89 05 62 ae 00 00 	mov    QWORD PTR [rip+0xae62],rax        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff8020071e:	e8 ad 40 00 00       	call   ffffffff802047d0 <map_physical>
ffffffff80200723:	48 89 05 5e ae 00 00 	mov    QWORD PTR [rip+0xae5e],rax        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff8020072a:	48 8b 05 4f ae 00 00 	mov    rax,QWORD PTR [rip+0xae4f]        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff80200731:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
ffffffff80200737:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
ffffffff8020073a:	c1 e8 10             	shr    eax,0x10
ffffffff8020073d:	0f b6 c0             	movzx  eax,al
ffffffff80200740:	48 89 05 39 bf 00 00 	mov    QWORD PTR [rip+0xbf39],rax        # ffffffff8020c680 <apic_info+0x80>
ffffffff80200747:	48 83 c4 08          	add    rsp,0x8
ffffffff8020074b:	c3                   	ret    
ffffffff8020074c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80200750 <enable_APIC>:
ffffffff80200750:	48 83 ec 08          	sub    rsp,0x8
ffffffff80200754:	80 3d 1e ae 00 00 00 	cmp    BYTE PTR [rip+0xae1e],0x0        # ffffffff8020b579 <once.1781>
ffffffff8020075b:	48 8b 05 26 ae 00 00 	mov    rax,QWORD PTR [rip+0xae26]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff80200762:	75 53                	jne    ffffffff802007b7 <enable_APIC+0x67>
ffffffff80200764:	8b 3d 0a bf 00 00    	mov    edi,DWORD PTR [rip+0xbf0a]        # ffffffff8020c674 <apic_info+0x74>
ffffffff8020076a:	be 00 20 00 00       	mov    esi,0x2000
ffffffff8020076f:	c6 05 03 ae 00 00 01 	mov    BYTE PTR [rip+0xae03],0x1        # ffffffff8020b579 <once.1781>
ffffffff80200776:	e8 55 40 00 00       	call   ffffffff802047d0 <map_physical>
ffffffff8020077b:	48 8b 3d e6 be 00 00 	mov    rdi,QWORD PTR [rip+0xbee6]        # ffffffff8020c668 <apic_info+0x68>
ffffffff80200782:	be 00 20 00 00       	mov    esi,0x2000
ffffffff80200787:	48 89 05 f2 ad 00 00 	mov    QWORD PTR [rip+0xadf2],rax        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff8020078e:	e8 3d 40 00 00       	call   ffffffff802047d0 <map_physical>
ffffffff80200793:	48 8b 15 e6 ad 00 00 	mov    rdx,QWORD PTR [rip+0xade6]        # ffffffff8020b580 <IOAPIC_VIRTUAL_ADDRESS>
ffffffff8020079a:	48 89 05 e7 ad 00 00 	mov    QWORD PTR [rip+0xade7],rax        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff802007a1:	c7 02 01 00 00 00    	mov    DWORD PTR [rdx],0x1
ffffffff802007a7:	8b 52 10             	mov    edx,DWORD PTR [rdx+0x10]
ffffffff802007aa:	c1 ea 10             	shr    edx,0x10
ffffffff802007ad:	0f b6 ca             	movzx  ecx,dl
ffffffff802007b0:	48 89 0d c9 be 00 00 	mov    QWORD PTR [rip+0xbec9],rcx        # ffffffff8020c680 <apic_info+0x80>
ffffffff802007b7:	81 88 f0 00 00 00 ff 	or     DWORD PTR [rax+0xf0],0xff
ffffffff802007be:	00 00 00 
ffffffff802007c1:	31 c0                	xor    eax,eax
ffffffff802007c3:	48 83 c4 08          	add    rsp,0x8
ffffffff802007c7:	e9 d4 fd ff ff       	jmp    ffffffff802005a0 <redirect_interrupts>
ffffffff802007cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff802007d0 <init_APIC_timer>:
ffffffff802007d0:	80 3d a1 ad 00 00 00 	cmp    BYTE PTR [rip+0xada1],0x0        # ffffffff8020b578 <once.1787>
ffffffff802007d7:	74 07                	je     ffffffff802007e0 <init_APIC_timer+0x10>
ffffffff802007d9:	c3                   	ret    
ffffffff802007da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff802007e0:	48 83 ec 08          	sub    rsp,0x8
ffffffff802007e4:	31 c0                	xor    eax,eax
ffffffff802007e6:	c6 05 8b ad 00 00 01 	mov    BYTE PTR [rip+0xad8b],0x1        # ffffffff8020b578 <once.1787>
ffffffff802007ed:	e8 be 0f 00 00       	call   ffffffff802017b0 <hpet_reset>
ffffffff802007f2:	bf 0a 00 00 00       	mov    edi,0xa
ffffffff802007f7:	e8 54 10 00 00       	call   ffffffff80201850 <hpet_ms_to_tick>
ffffffff802007fc:	48 89 c7             	mov    rdi,rax
ffffffff802007ff:	48 8b 05 82 ad 00 00 	mov    rax,QWORD PTR [rip+0xad82]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff80200806:	c7 80 e0 03 00 00 03 	mov    DWORD PTR [rax+0x3e0],0x3
ffffffff8020080d:	00 00 00 
ffffffff80200810:	c7 80 80 03 00 00 ff 	mov    DWORD PTR [rax+0x380],0xffffffff
ffffffff80200817:	ff ff ff 
ffffffff8020081a:	e8 51 10 00 00       	call   ffffffff80201870 <hpet_wait_tick>
ffffffff8020081f:	48 8b 15 62 ad 00 00 	mov    rdx,QWORD PTR [rip+0xad62]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff80200826:	c7 82 20 03 00 00 20 	mov    DWORD PTR [rdx+0x320],0x20020
ffffffff8020082d:	00 02 00 
ffffffff80200830:	8b 82 90 03 00 00    	mov    eax,DWORD PTR [rdx+0x390]
ffffffff80200836:	c7 82 e0 03 00 00 03 	mov    DWORD PTR [rdx+0x3e0],0x3
ffffffff8020083d:	00 00 00 
ffffffff80200840:	f7 d0                	not    eax
ffffffff80200842:	69 c0 2c 01 00 00    	imul   eax,eax,0x12c
ffffffff80200848:	89 82 80 03 00 00    	mov    DWORD PTR [rdx+0x380],eax
ffffffff8020084e:	48 83 c4 08          	add    rsp,0x8
ffffffff80200852:	c3                   	ret    
ffffffff80200853:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80200856:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020085d:	00 00 00 

ffffffff80200860 <init_APIC_interrupt>:
ffffffff80200860:	48 8b 05 a9 be 00 00 	mov    rax,QWORD PTR [rip+0xbea9]        # ffffffff8020c710 <apic_info+0x110>
ffffffff80200867:	48 8b 15 1a ad 00 00 	mov    rdx,QWORD PTR [rip+0xad1a]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff8020086e:	48 85 c0             	test   rax,rax
ffffffff80200871:	0f 84 dc 01 00 00    	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200877:	80 3d 9a be 00 00 ff 	cmp    BYTE PTR [rip+0xbe9a],0xff        # ffffffff8020c718 <apic_info+0x118>
ffffffff8020087e:	75 30                	jne    ffffffff802008b0 <init_APIC_interrupt+0x50>
ffffffff80200880:	0f b7 35 92 be 00 00 	movzx  esi,WORD PTR [rip+0xbe92]        # ffffffff8020c719 <apic_info+0x119>
ffffffff80200887:	0f b6 0d 8d be 00 00 	movzx  ecx,BYTE PTR [rip+0xbe8d]        # ffffffff8020c71b <apic_info+0x11b>
ffffffff8020088e:	89 f7                	mov    edi,esi
ffffffff80200890:	83 c1 35             	add    ecx,0x35
ffffffff80200893:	c1 e6 0d             	shl    esi,0xd
ffffffff80200896:	c1 e7 0f             	shl    edi,0xf
ffffffff80200899:	c1 e1 04             	shl    ecx,0x4
ffffffff8020089c:	81 e6 00 40 00 00    	and    esi,0x4000
ffffffff802008a2:	81 e7 00 00 04 00    	and    edi,0x40000
ffffffff802008a8:	48 63 c9             	movsxd rcx,ecx
ffffffff802008ab:	09 fe                	or     esi,edi
ffffffff802008ad:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff802008b0:	48 83 f8 01          	cmp    rax,0x1
ffffffff802008b4:	0f 86 99 01 00 00    	jbe    ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff802008ba:	80 3d 5b be 00 00 ff 	cmp    BYTE PTR [rip+0xbe5b],0xff        # ffffffff8020c71c <apic_info+0x11c>
ffffffff802008c1:	75 30                	jne    ffffffff802008f3 <init_APIC_interrupt+0x93>
ffffffff802008c3:	0f b7 35 53 be 00 00 	movzx  esi,WORD PTR [rip+0xbe53]        # ffffffff8020c71d <apic_info+0x11d>
ffffffff802008ca:	0f b6 0d 4e be 00 00 	movzx  ecx,BYTE PTR [rip+0xbe4e]        # ffffffff8020c71f <apic_info+0x11f>
ffffffff802008d1:	89 f7                	mov    edi,esi
ffffffff802008d3:	83 c1 35             	add    ecx,0x35
ffffffff802008d6:	c1 e6 0f             	shl    esi,0xf
ffffffff802008d9:	c1 e7 0d             	shl    edi,0xd
ffffffff802008dc:	c1 e1 04             	shl    ecx,0x4
ffffffff802008df:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff802008e5:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff802008eb:	48 63 c9             	movsxd rcx,ecx
ffffffff802008ee:	09 fe                	or     esi,edi
ffffffff802008f0:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff802008f3:	48 83 f8 02          	cmp    rax,0x2
ffffffff802008f7:	0f 84 56 01 00 00    	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff802008fd:	80 3d 1c be 00 00 ff 	cmp    BYTE PTR [rip+0xbe1c],0xff        # ffffffff8020c720 <apic_info+0x120>
ffffffff80200904:	0f 84 66 01 00 00    	je     ffffffff80200a70 <init_APIC_interrupt+0x210>
ffffffff8020090a:	48 83 f8 03          	cmp    rax,0x3
ffffffff8020090e:	0f 84 3f 01 00 00    	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200914:	80 3d 09 be 00 00 ff 	cmp    BYTE PTR [rip+0xbe09],0xff        # ffffffff8020c724 <apic_info+0x124>
ffffffff8020091b:	0f 84 87 01 00 00    	je     ffffffff80200aa8 <init_APIC_interrupt+0x248>
ffffffff80200921:	48 83 f8 04          	cmp    rax,0x4
ffffffff80200925:	0f 84 28 01 00 00    	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff8020092b:	80 3d f6 bd 00 00 ff 	cmp    BYTE PTR [rip+0xbdf6],0xff        # ffffffff8020c728 <apic_info+0x128>
ffffffff80200932:	0f 84 a8 01 00 00    	je     ffffffff80200ae0 <init_APIC_interrupt+0x280>
ffffffff80200938:	48 83 f8 05          	cmp    rax,0x5
ffffffff8020093c:	0f 84 11 01 00 00    	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200942:	80 3d e3 bd 00 00 ff 	cmp    BYTE PTR [rip+0xbde3],0xff        # ffffffff8020c72c <apic_info+0x12c>
ffffffff80200949:	75 30                	jne    ffffffff8020097b <init_APIC_interrupt+0x11b>
ffffffff8020094b:	0f b7 35 db bd 00 00 	movzx  esi,WORD PTR [rip+0xbddb]        # ffffffff8020c72d <apic_info+0x12d>
ffffffff80200952:	0f b6 0d d6 bd 00 00 	movzx  ecx,BYTE PTR [rip+0xbdd6]        # ffffffff8020c72f <apic_info+0x12f>
ffffffff80200959:	89 f7                	mov    edi,esi
ffffffff8020095b:	83 c1 35             	add    ecx,0x35
ffffffff8020095e:	c1 e6 0f             	shl    esi,0xf
ffffffff80200961:	c1 e7 0d             	shl    edi,0xd
ffffffff80200964:	c1 e1 04             	shl    ecx,0x4
ffffffff80200967:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff8020096d:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff80200973:	48 63 c9             	movsxd rcx,ecx
ffffffff80200976:	09 fe                	or     esi,edi
ffffffff80200978:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff8020097b:	48 83 f8 06          	cmp    rax,0x6
ffffffff8020097f:	0f 84 ce 00 00 00    	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200985:	80 3d a4 bd 00 00 ff 	cmp    BYTE PTR [rip+0xbda4],0xff        # ffffffff8020c730 <apic_info+0x130>
ffffffff8020098c:	75 30                	jne    ffffffff802009be <init_APIC_interrupt+0x15e>
ffffffff8020098e:	0f b7 35 9c bd 00 00 	movzx  esi,WORD PTR [rip+0xbd9c]        # ffffffff8020c731 <apic_info+0x131>
ffffffff80200995:	0f b6 0d 97 bd 00 00 	movzx  ecx,BYTE PTR [rip+0xbd97]        # ffffffff8020c733 <apic_info+0x133>
ffffffff8020099c:	89 f7                	mov    edi,esi
ffffffff8020099e:	83 c1 35             	add    ecx,0x35
ffffffff802009a1:	c1 e6 0f             	shl    esi,0xf
ffffffff802009a4:	c1 e7 0d             	shl    edi,0xd
ffffffff802009a7:	c1 e1 04             	shl    ecx,0x4
ffffffff802009aa:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff802009b0:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff802009b6:	48 63 c9             	movsxd rcx,ecx
ffffffff802009b9:	09 fe                	or     esi,edi
ffffffff802009bb:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff802009be:	48 83 f8 07          	cmp    rax,0x7
ffffffff802009c2:	0f 84 8b 00 00 00    	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff802009c8:	80 3d 65 bd 00 00 ff 	cmp    BYTE PTR [rip+0xbd65],0xff        # ffffffff8020c734 <apic_info+0x134>
ffffffff802009cf:	75 30                	jne    ffffffff80200a01 <init_APIC_interrupt+0x1a1>
ffffffff802009d1:	0f b7 35 5d bd 00 00 	movzx  esi,WORD PTR [rip+0xbd5d]        # ffffffff8020c735 <apic_info+0x135>
ffffffff802009d8:	0f b6 0d 58 bd 00 00 	movzx  ecx,BYTE PTR [rip+0xbd58]        # ffffffff8020c737 <apic_info+0x137>
ffffffff802009df:	89 f7                	mov    edi,esi
ffffffff802009e1:	83 c1 35             	add    ecx,0x35
ffffffff802009e4:	c1 e6 0f             	shl    esi,0xf
ffffffff802009e7:	c1 e7 0d             	shl    edi,0xd
ffffffff802009ea:	c1 e1 04             	shl    ecx,0x4
ffffffff802009ed:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff802009f3:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff802009f9:	48 63 c9             	movsxd rcx,ecx
ffffffff802009fc:	09 fe                	or     esi,edi
ffffffff802009fe:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff80200a01:	48 83 f8 08          	cmp    rax,0x8
ffffffff80200a05:	74 4c                	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200a07:	80 3d 2a bd 00 00 ff 	cmp    BYTE PTR [rip+0xbd2a],0xff        # ffffffff8020c738 <apic_info+0x138>
ffffffff80200a0e:	75 30                	jne    ffffffff80200a40 <init_APIC_interrupt+0x1e0>
ffffffff80200a10:	0f b7 35 22 bd 00 00 	movzx  esi,WORD PTR [rip+0xbd22]        # ffffffff8020c739 <apic_info+0x139>
ffffffff80200a17:	0f b6 0d 1d bd 00 00 	movzx  ecx,BYTE PTR [rip+0xbd1d]        # ffffffff8020c73b <apic_info+0x13b>
ffffffff80200a1e:	89 f7                	mov    edi,esi
ffffffff80200a20:	83 c1 35             	add    ecx,0x35
ffffffff80200a23:	c1 e6 0f             	shl    esi,0xf
ffffffff80200a26:	c1 e7 0d             	shl    edi,0xd
ffffffff80200a29:	c1 e1 04             	shl    ecx,0x4
ffffffff80200a2c:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff80200a32:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff80200a38:	48 63 c9             	movsxd rcx,ecx
ffffffff80200a3b:	09 fe                	or     esi,edi
ffffffff80200a3d:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff80200a40:	48 83 f8 09          	cmp    rax,0x9
ffffffff80200a44:	74 0d                	je     ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200a46:	80 3d ef bc 00 00 ff 	cmp    BYTE PTR [rip+0xbcef],0xff        # ffffffff8020c73c <apic_info+0x13c>
ffffffff80200a4d:	0f 84 cd 00 00 00    	je     ffffffff80200b20 <init_APIC_interrupt+0x2c0>
ffffffff80200a53:	b8 ff ff ff ff       	mov    eax,0xffffffff
ffffffff80200a58:	e6 a1                	out    0xa1,al
ffffffff80200a5a:	e6 21                	out    0x21,al
ffffffff80200a5c:	81 8a f0 00 00 00 00 	or     DWORD PTR [rdx+0xf0],0x100
ffffffff80200a63:	01 00 00 
ffffffff80200a66:	c3                   	ret    
ffffffff80200a67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80200a6e:	00 00 
ffffffff80200a70:	0f b7 35 aa bc 00 00 	movzx  esi,WORD PTR [rip+0xbcaa]        # ffffffff8020c721 <apic_info+0x121>
ffffffff80200a77:	0f b6 0d a5 bc 00 00 	movzx  ecx,BYTE PTR [rip+0xbca5]        # ffffffff8020c723 <apic_info+0x123>
ffffffff80200a7e:	89 f7                	mov    edi,esi
ffffffff80200a80:	83 c1 35             	add    ecx,0x35
ffffffff80200a83:	c1 e6 0f             	shl    esi,0xf
ffffffff80200a86:	c1 e7 0d             	shl    edi,0xd
ffffffff80200a89:	c1 e1 04             	shl    ecx,0x4
ffffffff80200a8c:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff80200a92:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff80200a98:	48 63 c9             	movsxd rcx,ecx
ffffffff80200a9b:	09 fe                	or     esi,edi
ffffffff80200a9d:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff80200aa0:	e9 65 fe ff ff       	jmp    ffffffff8020090a <init_APIC_interrupt+0xaa>
ffffffff80200aa5:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80200aa8:	0f b7 35 76 bc 00 00 	movzx  esi,WORD PTR [rip+0xbc76]        # ffffffff8020c725 <apic_info+0x125>
ffffffff80200aaf:	0f b6 0d 71 bc 00 00 	movzx  ecx,BYTE PTR [rip+0xbc71]        # ffffffff8020c727 <apic_info+0x127>
ffffffff80200ab6:	89 f7                	mov    edi,esi
ffffffff80200ab8:	83 c1 35             	add    ecx,0x35
ffffffff80200abb:	c1 e6 0f             	shl    esi,0xf
ffffffff80200abe:	c1 e7 0d             	shl    edi,0xd
ffffffff80200ac1:	c1 e1 04             	shl    ecx,0x4
ffffffff80200ac4:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff80200aca:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff80200ad0:	48 63 c9             	movsxd rcx,ecx
ffffffff80200ad3:	09 fe                	or     esi,edi
ffffffff80200ad5:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff80200ad8:	e9 44 fe ff ff       	jmp    ffffffff80200921 <init_APIC_interrupt+0xc1>
ffffffff80200add:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80200ae0:	0f b7 35 42 bc 00 00 	movzx  esi,WORD PTR [rip+0xbc42]        # ffffffff8020c729 <apic_info+0x129>
ffffffff80200ae7:	0f b6 0d 3d bc 00 00 	movzx  ecx,BYTE PTR [rip+0xbc3d]        # ffffffff8020c72b <apic_info+0x12b>
ffffffff80200aee:	89 f7                	mov    edi,esi
ffffffff80200af0:	83 c1 35             	add    ecx,0x35
ffffffff80200af3:	c1 e6 0f             	shl    esi,0xf
ffffffff80200af6:	c1 e7 0d             	shl    edi,0xd
ffffffff80200af9:	c1 e1 04             	shl    ecx,0x4
ffffffff80200afc:	81 e6 00 00 04 00    	and    esi,0x40000
ffffffff80200b02:	81 e7 00 40 00 00    	and    edi,0x4000
ffffffff80200b08:	48 63 c9             	movsxd rcx,ecx
ffffffff80200b0b:	09 fe                	or     esi,edi
ffffffff80200b0d:	89 34 0a             	mov    DWORD PTR [rdx+rcx*1],esi
ffffffff80200b10:	48 83 f8 05          	cmp    rax,0x5
ffffffff80200b14:	0f 85 28 fe ff ff    	jne    ffffffff80200942 <init_APIC_interrupt+0xe2>
ffffffff80200b1a:	e9 34 ff ff ff       	jmp    ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200b1f:	90                   	nop
ffffffff80200b20:	0f b7 0d 16 bc 00 00 	movzx  ecx,WORD PTR [rip+0xbc16]        # ffffffff8020c73d <apic_info+0x13d>
ffffffff80200b27:	0f b6 05 11 bc 00 00 	movzx  eax,BYTE PTR [rip+0xbc11]        # ffffffff8020c73f <apic_info+0x13f>
ffffffff80200b2e:	89 ce                	mov    esi,ecx
ffffffff80200b30:	83 c0 35             	add    eax,0x35
ffffffff80200b33:	c1 e1 0f             	shl    ecx,0xf
ffffffff80200b36:	c1 e6 0d             	shl    esi,0xd
ffffffff80200b39:	c1 e0 04             	shl    eax,0x4
ffffffff80200b3c:	81 e1 00 00 04 00    	and    ecx,0x40000
ffffffff80200b42:	81 e6 00 40 00 00    	and    esi,0x4000
ffffffff80200b48:	48 98                	cdqe   
ffffffff80200b4a:	09 f1                	or     ecx,esi
ffffffff80200b4c:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
ffffffff80200b4f:	e9 ff fe ff ff       	jmp    ffffffff80200a53 <init_APIC_interrupt+0x1f3>
ffffffff80200b54:	66 90                	xchg   ax,ax
ffffffff80200b56:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80200b5d:	00 00 00 

ffffffff80200b60 <send_interrupt_to_core>:
ffffffff80200b60:	48 8b 15 21 aa 00 00 	mov    rdx,QWORD PTR [rip+0xaa21]        # ffffffff8020b588 <LAPIC_VIRTUAL_ADDRESS>
ffffffff80200b67:	31 c0                	xor    eax,eax
ffffffff80200b69:	c1 e7 18             	shl    edi,0x18
ffffffff80200b6c:	40 88 f0             	mov    al,sil
ffffffff80200b6f:	89 ba 10 03 00 00    	mov    DWORD PTR [rdx+0x310],edi
ffffffff80200b75:	48 81 c2 00 03 00 00 	add    rdx,0x300
ffffffff80200b7c:	89 02                	mov    DWORD PTR [rdx],eax
ffffffff80200b7e:	66 90                	xchg   ax,ax
ffffffff80200b80:	0f b6 42 01          	movzx  eax,BYTE PTR [rdx+0x1]
ffffffff80200b84:	a8 10                	test   al,0x10
ffffffff80200b86:	75 f8                	jne    ffffffff80200b80 <send_interrupt_to_core+0x20>
ffffffff80200b88:	c3                   	ret    
ffffffff80200b89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80200b90 <com_write_reg>:
ffffffff80200b90:	89 d0                	mov    eax,edx
ffffffff80200b92:	8d 14 37             	lea    edx,[rdi+rsi*1]
ffffffff80200b95:	ee                   	out    dx,al
ffffffff80200b96:	c3                   	ret    
ffffffff80200b97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80200b9e:	00 00 

ffffffff80200ba0 <com_read_reg>:
ffffffff80200ba0:	8d 14 37             	lea    edx,[rdi+rsi*1]
ffffffff80200ba3:	ec                   	in     al,dx
ffffffff80200ba4:	c3                   	ret    
ffffffff80200ba5:	90                   	nop
ffffffff80200ba6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80200bad:	00 00 00 

ffffffff80200bb0 <com_can_write>:
ffffffff80200bb0:	8d 57 05             	lea    edx,[rdi+0x5]
ffffffff80200bb3:	ec                   	in     al,dx
ffffffff80200bb4:	c0 e8 05             	shr    al,0x5
ffffffff80200bb7:	83 e0 01             	and    eax,0x1
ffffffff80200bba:	c3                   	ret    
ffffffff80200bbb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff80200bc0 <com_wait_write>:
ffffffff80200bc0:	8d 57 05             	lea    edx,[rdi+0x5]
ffffffff80200bc3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80200bc8:	ec                   	in     al,dx
ffffffff80200bc9:	a8 20                	test   al,0x20
ffffffff80200bcb:	74 fb                	je     ffffffff80200bc8 <com_wait_write+0x8>
ffffffff80200bcd:	c3                   	ret    
ffffffff80200bce:	66 90                	xchg   ax,ax

ffffffff80200bd0 <com_putc>:
ffffffff80200bd0:	8d 57 05             	lea    edx,[rdi+0x5]
ffffffff80200bd3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80200bd8:	ec                   	in     al,dx
ffffffff80200bd9:	a8 20                	test   al,0x20
ffffffff80200bdb:	74 fb                	je     ffffffff80200bd8 <com_putc+0x8>
ffffffff80200bdd:	89 f0                	mov    eax,esi
ffffffff80200bdf:	89 fa                	mov    edx,edi
ffffffff80200be1:	ee                   	out    dx,al
ffffffff80200be2:	c3                   	ret    
ffffffff80200be3:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80200be6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80200bed:	00 00 00 

ffffffff80200bf0 <com_write>:
ffffffff80200bf0:	49 89 d2             	mov    r10,rdx
ffffffff80200bf3:	48 85 d2             	test   rdx,rdx
ffffffff80200bf6:	74 2e                	je     ffffffff80200c26 <com_write+0x36>
ffffffff80200bf8:	4c 8d 0c 16          	lea    r9,[rsi+rdx*1]
ffffffff80200bfc:	8d 4f 05             	lea    ecx,[rdi+0x5]
ffffffff80200bff:	90                   	nop
ffffffff80200c00:	44 0f b6 06          	movzx  r8d,BYTE PTR [rsi]
ffffffff80200c04:	45 84 c0             	test   r8b,r8b
ffffffff80200c07:	74 1d                	je     ffffffff80200c26 <com_write+0x36>
ffffffff80200c09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80200c10:	89 ca                	mov    edx,ecx
ffffffff80200c12:	ec                   	in     al,dx
ffffffff80200c13:	a8 20                	test   al,0x20
ffffffff80200c15:	74 f9                	je     ffffffff80200c10 <com_write+0x20>
ffffffff80200c17:	44 89 c0             	mov    eax,r8d
ffffffff80200c1a:	89 fa                	mov    edx,edi
ffffffff80200c1c:	ee                   	out    dx,al
ffffffff80200c1d:	48 83 c6 01          	add    rsi,0x1
ffffffff80200c21:	4c 39 ce             	cmp    rsi,r9
ffffffff80200c24:	75 da                	jne    ffffffff80200c00 <com_write+0x10>
ffffffff80200c26:	4c 89 d0             	mov    rax,r10
ffffffff80200c29:	c3                   	ret    
ffffffff80200c2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff80200c30 <com_initialize>:
ffffffff80200c30:	45 31 c0             	xor    r8d,r8d
ffffffff80200c33:	8d 57 02             	lea    edx,[rdi+0x2]
ffffffff80200c36:	44 89 c0             	mov    eax,r8d
ffffffff80200c39:	ee                   	out    dx,al
ffffffff80200c3a:	8d 77 03             	lea    esi,[rdi+0x3]
ffffffff80200c3d:	b8 80 ff ff ff       	mov    eax,0xffffff80
ffffffff80200c42:	89 f2                	mov    edx,esi
ffffffff80200c44:	ee                   	out    dx,al
ffffffff80200c45:	b8 0c 00 00 00       	mov    eax,0xc
ffffffff80200c4a:	89 fa                	mov    edx,edi
ffffffff80200c4c:	ee                   	out    dx,al
ffffffff80200c4d:	8d 4f 01             	lea    ecx,[rdi+0x1]
ffffffff80200c50:	44 89 c0             	mov    eax,r8d
ffffffff80200c53:	89 ca                	mov    edx,ecx
ffffffff80200c55:	ee                   	out    dx,al
ffffffff80200c56:	b8 03 00 00 00       	mov    eax,0x3
ffffffff80200c5b:	89 f2                	mov    edx,esi
ffffffff80200c5d:	ee                   	out    dx,al
ffffffff80200c5e:	b8 0b 00 00 00       	mov    eax,0xb
ffffffff80200c63:	8d 57 04             	lea    edx,[rdi+0x4]
ffffffff80200c66:	ee                   	out    dx,al
ffffffff80200c67:	b8 01 00 00 00       	mov    eax,0x1
ffffffff80200c6c:	89 ca                	mov    edx,ecx
ffffffff80200c6e:	ee                   	out    dx,al
ffffffff80200c6f:	c3                   	ret    

ffffffff80200c70 <change_debug_mode>:
ffffffff80200c70:	53                   	push   rbx
ffffffff80200c71:	31 c0                	xor    eax,eax
ffffffff80200c73:	48 89 fb             	mov    rbx,rdi
ffffffff80200c76:	e8 c5 53 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200c7b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200c82:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200c87:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80200c8e:	e8 5d ff ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200c93:	31 c0                	xor    eax,eax
ffffffff80200c95:	e8 46 4c 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80200c9a:	84 c0                	test   al,al
ffffffff80200c9c:	0f 85 7e 00 00 00    	jne    ffffffff80200d20 <change_debug_mode+0xb0>
ffffffff80200ca2:	48 c7 c1 60 96 20 80 	mov    rcx,0xffffffff80209660
ffffffff80200ca9:	ba 30 00 00 00       	mov    edx,0x30
ffffffff80200cae:	31 c0                	xor    eax,eax
ffffffff80200cb0:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80200cb7:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80200cbe:	e8 9d 71 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200cc3:	48 8b 83 98 00 00 00 	mov    rax,QWORD PTR [rbx+0x98]
ffffffff80200cca:	48 c7 c6 b1 93 20 80 	mov    rsi,0xffffffff802093b1
ffffffff80200cd1:	48 c7 c7 18 95 20 80 	mov    rdi,0xffffffff80209518
ffffffff80200cd8:	f6 c4 01             	test   ah,0x1
ffffffff80200cdb:	48 c7 c0 b9 93 20 80 	mov    rax,0xffffffff802093b9
ffffffff80200ce2:	48 0f 44 f0          	cmove  rsi,rax
ffffffff80200ce6:	31 c0                	xor    eax,eax
ffffffff80200ce8:	e8 73 71 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200ced:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200cf4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200cf9:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80200d00:	e8 eb fe ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200d05:	31 c0                	xor    eax,eax
ffffffff80200d07:	e8 54 53 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80200d0c:	48 8b 83 98 00 00 00 	mov    rax,QWORD PTR [rbx+0x98]
ffffffff80200d13:	80 f4 01             	xor    ah,0x1
ffffffff80200d16:	48 89 83 98 00 00 00 	mov    QWORD PTR [rbx+0x98],rax
ffffffff80200d1d:	5b                   	pop    rbx
ffffffff80200d1e:	c3                   	ret    
ffffffff80200d1f:	90                   	nop
ffffffff80200d20:	31 c0                	xor    eax,eax
ffffffff80200d22:	e8 49 4a 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80200d27:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80200d2e:	89 c6                	mov    esi,eax
ffffffff80200d30:	31 c0                	xor    eax,eax
ffffffff80200d32:	e8 29 71 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200d37:	e9 66 ff ff ff       	jmp    ffffffff80200ca2 <change_debug_mode+0x32>
ffffffff80200d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80200d40 <k_debug>:
ffffffff80200d40:	55                   	push   rbp
ffffffff80200d41:	31 c0                	xor    eax,eax
ffffffff80200d43:	48 89 fd             	mov    rbp,rdi
ffffffff80200d46:	e8 f5 52 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200d4b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200d52:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200d57:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80200d5e:	e8 8d fe ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200d63:	31 c0                	xor    eax,eax
ffffffff80200d65:	e8 76 4b 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80200d6a:	84 c0                	test   al,al
ffffffff80200d6c:	0f 85 de 00 00 00    	jne    ffffffff80200e50 <k_debug+0x110>
ffffffff80200d72:	48 c7 c1 88 96 20 80 	mov    rcx,0xffffffff80209688
ffffffff80200d79:	ba 24 00 00 00       	mov    edx,0x24
ffffffff80200d7e:	31 c0                	xor    eax,eax
ffffffff80200d80:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80200d87:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80200d8e:	e8 cd 70 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200d93:	48 8b b5 88 00 00 00 	mov    rsi,QWORD PTR [rbp+0x88]
ffffffff80200d9a:	31 c0                	xor    eax,eax
ffffffff80200d9c:	48 c7 c7 d6 93 20 80 	mov    rdi,0xffffffff802093d6
ffffffff80200da3:	e8 b8 70 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200da8:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200daf:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200db4:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80200dbb:	e8 30 fe ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200dc0:	31 c0                	xor    eax,eax
ffffffff80200dc2:	e8 99 52 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80200dc7:	48 89 ef             	mov    rdi,rbp
ffffffff80200dca:	e8 81 14 00 00       	call   ffffffff80202250 <log_stackframe>
ffffffff80200dcf:	31 c0                	xor    eax,eax
ffffffff80200dd1:	e8 6a 52 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200dd6:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200ddd:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200de2:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80200de9:	e8 02 fe ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200dee:	31 c0                	xor    eax,eax
ffffffff80200df0:	e8 eb 4a 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80200df5:	84 c0                	test   al,al
ffffffff80200df7:	75 77                	jne    ffffffff80200e70 <k_debug+0x130>
ffffffff80200df9:	48 c7 c1 88 96 20 80 	mov    rcx,0xffffffff80209688
ffffffff80200e00:	ba 26 00 00 00       	mov    edx,0x26
ffffffff80200e05:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80200e0c:	31 c0                	xor    eax,eax
ffffffff80200e0e:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80200e15:	e8 46 70 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200e1a:	48 c7 c7 f0 93 20 80 	mov    rdi,0xffffffff802093f0
ffffffff80200e21:	31 c0                	xor    eax,eax
ffffffff80200e23:	e8 38 70 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200e28:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200e2f:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200e34:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80200e3b:	e8 b0 fd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200e40:	31 c0                	xor    eax,eax
ffffffff80200e42:	5d                   	pop    rbp
ffffffff80200e43:	e9 18 52 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80200e48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80200e4f:	00 
ffffffff80200e50:	31 c0                	xor    eax,eax
ffffffff80200e52:	e8 19 49 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80200e57:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80200e5e:	89 c6                	mov    esi,eax
ffffffff80200e60:	31 c0                	xor    eax,eax
ffffffff80200e62:	e8 f9 6f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200e67:	e9 06 ff ff ff       	jmp    ffffffff80200d72 <k_debug+0x32>
ffffffff80200e6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80200e70:	31 c0                	xor    eax,eax
ffffffff80200e72:	e8 f9 48 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80200e77:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80200e7e:	89 c6                	mov    esi,eax
ffffffff80200e80:	31 c0                	xor    eax,eax
ffffffff80200e82:	e8 d9 6f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200e87:	e9 6d ff ff ff       	jmp    ffffffff80200df9 <k_debug+0xb9>
ffffffff80200e8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80200e90 <k_breakpoint>:
ffffffff80200e90:	55                   	push   rbp
ffffffff80200e91:	31 c0                	xor    eax,eax
ffffffff80200e93:	48 89 fd             	mov    rbp,rdi
ffffffff80200e96:	e8 a5 51 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200e9b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200ea2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200ea7:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80200eae:	e8 3d fd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200eb3:	31 c0                	xor    eax,eax
ffffffff80200eb5:	e8 26 4a 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80200eba:	84 c0                	test   al,al
ffffffff80200ebc:	0f 85 de 00 00 00    	jne    ffffffff80200fa0 <k_breakpoint+0x110>
ffffffff80200ec2:	48 c7 c1 78 96 20 80 	mov    rcx,0xffffffff80209678
ffffffff80200ec9:	ba 2a 00 00 00       	mov    edx,0x2a
ffffffff80200ece:	31 c0                	xor    eax,eax
ffffffff80200ed0:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80200ed7:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80200ede:	e8 7d 6f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200ee3:	48 8b b5 88 00 00 00 	mov    rsi,QWORD PTR [rbp+0x88]
ffffffff80200eea:	31 c0                	xor    eax,eax
ffffffff80200eec:	48 c7 c7 fd 93 20 80 	mov    rdi,0xffffffff802093fd
ffffffff80200ef3:	e8 68 6f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200ef8:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200eff:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200f04:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80200f0b:	e8 e0 fc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200f10:	31 c0                	xor    eax,eax
ffffffff80200f12:	e8 49 51 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80200f17:	48 89 ef             	mov    rdi,rbp
ffffffff80200f1a:	e8 31 13 00 00       	call   ffffffff80202250 <log_stackframe>
ffffffff80200f1f:	31 c0                	xor    eax,eax
ffffffff80200f21:	e8 1a 51 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200f26:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200f2d:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200f32:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80200f39:	e8 b2 fc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200f3e:	31 c0                	xor    eax,eax
ffffffff80200f40:	e8 9b 49 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80200f45:	84 c0                	test   al,al
ffffffff80200f47:	75 77                	jne    ffffffff80200fc0 <k_breakpoint+0x130>
ffffffff80200f49:	48 c7 c1 78 96 20 80 	mov    rcx,0xffffffff80209678
ffffffff80200f50:	ba 2c 00 00 00       	mov    edx,0x2c
ffffffff80200f55:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80200f5c:	31 c0                	xor    eax,eax
ffffffff80200f5e:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80200f65:	e8 f6 6e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200f6a:	48 c7 c7 0f 94 20 80 	mov    rdi,0xffffffff8020940f
ffffffff80200f71:	31 c0                	xor    eax,eax
ffffffff80200f73:	e8 e8 6e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200f78:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80200f7f:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80200f84:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80200f8b:	e8 60 fc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80200f90:	31 c0                	xor    eax,eax
ffffffff80200f92:	5d                   	pop    rbp
ffffffff80200f93:	e9 c8 50 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80200f98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80200f9f:	00 
ffffffff80200fa0:	31 c0                	xor    eax,eax
ffffffff80200fa2:	e8 c9 47 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80200fa7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80200fae:	89 c6                	mov    esi,eax
ffffffff80200fb0:	31 c0                	xor    eax,eax
ffffffff80200fb2:	e8 a9 6e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200fb7:	e9 06 ff ff ff       	jmp    ffffffff80200ec2 <k_breakpoint+0x32>
ffffffff80200fbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80200fc0:	31 c0                	xor    eax,eax
ffffffff80200fc2:	e8 a9 47 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80200fc7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80200fce:	89 c6                	mov    esi,eax
ffffffff80200fd0:	31 c0                	xor    eax,eax
ffffffff80200fd2:	e8 89 6e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80200fd7:	e9 6d ff ff ff       	jmp    ffffffff80200f49 <k_breakpoint+0xb9>
ffffffff80200fdc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80200fe0 <timer>:
ffffffff80200fe0:	48 bf 00 f0 ff ff ff 	movabs rdi,0x7ffffffff000
ffffffff80200fe7:	7f 00 00 
ffffffff80200fea:	48 83 ec 08          	sub    rsp,0x8
ffffffff80200fee:	e8 c3 f1 ff ff       	call   ffffffff802001b6 <save_simd_context>
ffffffff80200ff3:	31 c0                	xor    eax,eax
ffffffff80200ff5:	e8 46 50 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80200ffa:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201001:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201006:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff8020100d:	e8 de fb ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201012:	31 c0                	xor    eax,eax
ffffffff80201014:	e8 c7 48 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80201019:	84 c0                	test   al,al
ffffffff8020101b:	75 53                	jne    ffffffff80201070 <timer+0x90>
ffffffff8020101d:	48 c7 c1 39 96 20 80 	mov    rcx,0xffffffff80209639
ffffffff80201024:	ba 3d 00 00 00       	mov    edx,0x3d
ffffffff80201029:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80201030:	31 c0                	xor    eax,eax
ffffffff80201032:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80201039:	e8 22 6e 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020103e:	48 c7 c7 21 94 20 80 	mov    rdi,0xffffffff80209421
ffffffff80201045:	31 c0                	xor    eax,eax
ffffffff80201047:	e8 14 6e 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020104c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201053:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201058:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020105f:	e8 8c fb ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201064:	31 c0                	xor    eax,eax
ffffffff80201066:	48 83 c4 08          	add    rsp,0x8
ffffffff8020106a:	e9 f1 4f 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff8020106f:	90                   	nop
ffffffff80201070:	31 c0                	xor    eax,eax
ffffffff80201072:	e8 f9 46 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80201077:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020107e:	89 c6                	mov    esi,eax
ffffffff80201080:	31 c0                	xor    eax,eax
ffffffff80201082:	e8 d9 6d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201087:	eb 94                	jmp    ffffffff8020101d <timer+0x3d>
ffffffff80201089:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80201090 <panic_common_stub>:
ffffffff80201090:	55                   	push   rbp
ffffffff80201091:	31 c0                	xor    eax,eax
ffffffff80201093:	48 89 fd             	mov    rbp,rdi
ffffffff80201096:	e8 a5 4f 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020109b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802010a2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802010a7:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff802010ae:	e8 3d fb ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802010b3:	31 c0                	xor    eax,eax
ffffffff802010b5:	e8 26 48 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802010ba:	84 c0                	test   al,al
ffffffff802010bc:	75 5d                	jne    ffffffff8020111b <panic_common_stub+0x8b>
ffffffff802010be:	48 c7 c1 c0 96 20 80 	mov    rcx,0xffffffff802096c0
ffffffff802010c5:	ba 08 00 00 00       	mov    edx,0x8
ffffffff802010ca:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff802010d1:	31 c0                	xor    eax,eax
ffffffff802010d3:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802010da:	e8 81 6d 00 00       	call   ffffffff80207e60 <printf>
ffffffff802010df:	48 c7 c7 40 95 20 80 	mov    rdi,0xffffffff80209540
ffffffff802010e6:	31 c0                	xor    eax,eax
ffffffff802010e8:	e8 73 6d 00 00       	call   ffffffff80207e60 <printf>
ffffffff802010ed:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802010f2:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802010f9:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80201100:	e8 eb fa ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201105:	31 c0                	xor    eax,eax
ffffffff80201107:	e8 54 4f 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020110c:	48 89 ef             	mov    rdi,rbp
ffffffff8020110f:	e8 3c 11 00 00       	call   ffffffff80202250 <log_stackframe>
ffffffff80201114:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80201118:	f4                   	hlt    
ffffffff80201119:	eb fd                	jmp    ffffffff80201118 <panic_common_stub+0x88>
ffffffff8020111b:	31 c0                	xor    eax,eax
ffffffff8020111d:	e8 4e 46 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80201122:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80201129:	89 c6                	mov    esi,eax
ffffffff8020112b:	31 c0                	xor    eax,eax
ffffffff8020112d:	e8 2e 6d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201132:	eb 8a                	jmp    ffffffff802010be <panic_common_stub+0x2e>
ffffffff80201134:	66 90                	xchg   ax,ax
ffffffff80201136:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020113d:	00 00 00 

ffffffff80201140 <k_div_by_zero>:
ffffffff80201140:	55                   	push   rbp
ffffffff80201141:	31 c0                	xor    eax,eax
ffffffff80201143:	48 89 fd             	mov    rbp,rdi
ffffffff80201146:	e8 f5 4e 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020114b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201152:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201157:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff8020115e:	e8 8d fa ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201163:	31 c0                	xor    eax,eax
ffffffff80201165:	e8 76 47 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020116a:	84 c0                	test   al,al
ffffffff8020116c:	75 5a                	jne    ffffffff802011c8 <k_div_by_zero+0x88>
ffffffff8020116e:	48 c7 c1 a8 96 20 80 	mov    rcx,0xffffffff802096a8
ffffffff80201175:	ba 0e 00 00 00       	mov    edx,0xe
ffffffff8020117a:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80201181:	31 c0                	xor    eax,eax
ffffffff80201183:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020118a:	e8 d1 6c 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020118f:	48 8b 75 78          	mov    rsi,QWORD PTR [rbp+0x78]
ffffffff80201193:	48 c7 c7 80 95 20 80 	mov    rdi,0xffffffff80209580
ffffffff8020119a:	31 c0                	xor    eax,eax
ffffffff8020119c:	e8 bf 6c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802011a1:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802011a6:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802011ad:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802011b4:	e8 37 fa ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802011b9:	31 c0                	xor    eax,eax
ffffffff802011bb:	e8 a0 4e 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802011c0:	48 89 ef             	mov    rdi,rbp
ffffffff802011c3:	e8 c8 fe ff ff       	call   ffffffff80201090 <panic_common_stub>
ffffffff802011c8:	31 c0                	xor    eax,eax
ffffffff802011ca:	e8 a1 45 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802011cf:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802011d6:	89 c6                	mov    esi,eax
ffffffff802011d8:	31 c0                	xor    eax,eax
ffffffff802011da:	e8 81 6c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802011df:	eb 8d                	jmp    ffffffff8020116e <k_div_by_zero+0x2e>
ffffffff802011e1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802011e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802011ed:	00 00 00 

ffffffff802011f0 <k_gpf>:
ffffffff802011f0:	55                   	push   rbp
ffffffff802011f1:	31 c0                	xor    eax,eax
ffffffff802011f3:	48 89 fd             	mov    rbp,rdi
ffffffff802011f6:	e8 45 4e 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802011fb:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201202:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201207:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff8020120e:	e8 dd f9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201213:	31 c0                	xor    eax,eax
ffffffff80201215:	e8 c6 46 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020121a:	84 c0                	test   al,al
ffffffff8020121c:	75 5a                	jne    ffffffff80201278 <k_gpf+0x88>
ffffffff8020121e:	48 c7 c1 9d 96 20 80 	mov    rcx,0xffffffff8020969d
ffffffff80201225:	ba 13 00 00 00       	mov    edx,0x13
ffffffff8020122a:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80201231:	31 c0                	xor    eax,eax
ffffffff80201233:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020123a:	e8 21 6c 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020123f:	48 8b 75 78          	mov    rsi,QWORD PTR [rbp+0x78]
ffffffff80201243:	48 c7 c7 2d 94 20 80 	mov    rdi,0xffffffff8020942d
ffffffff8020124a:	31 c0                	xor    eax,eax
ffffffff8020124c:	e8 0f 6c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201251:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201256:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020125d:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80201264:	e8 87 f9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201269:	31 c0                	xor    eax,eax
ffffffff8020126b:	e8 f0 4d 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80201270:	48 89 ef             	mov    rdi,rbp
ffffffff80201273:	e8 18 fe ff ff       	call   ffffffff80201090 <panic_common_stub>
ffffffff80201278:	31 c0                	xor    eax,eax
ffffffff8020127a:	e8 f1 44 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020127f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80201286:	89 c6                	mov    esi,eax
ffffffff80201288:	31 c0                	xor    eax,eax
ffffffff8020128a:	e8 d1 6b 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020128f:	eb 8d                	jmp    ffffffff8020121e <k_gpf+0x2e>
ffffffff80201291:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80201296:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020129d:	00 00 00 

ffffffff802012a0 <k_page_fault>:
ffffffff802012a0:	41 54                	push   r12
ffffffff802012a2:	31 c0                	xor    eax,eax
ffffffff802012a4:	55                   	push   rbp
ffffffff802012a5:	48 89 fd             	mov    rbp,rdi
ffffffff802012a8:	48 83 ec 08          	sub    rsp,0x8
ffffffff802012ac:	e8 8f 4d 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802012b1:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802012b8:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802012bd:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff802012c4:	e8 27 f9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802012c9:	31 c0                	xor    eax,eax
ffffffff802012cb:	e8 10 46 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802012d0:	84 c0                	test   al,al
ffffffff802012d2:	0f 85 a8 01 00 00    	jne    ffffffff80201480 <k_page_fault+0x1e0>
ffffffff802012d8:	48 c7 c1 90 96 20 80 	mov    rcx,0xffffffff80209690
ffffffff802012df:	ba 18 00 00 00       	mov    edx,0x18
ffffffff802012e4:	31 c0                	xor    eax,eax
ffffffff802012e6:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff802012ed:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802012f4:	e8 67 6b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802012f9:	48 8b 75 78          	mov    rsi,QWORD PTR [rbp+0x78]
ffffffff802012fd:	31 c0                	xor    eax,eax
ffffffff802012ff:	48 c7 c7 a8 95 20 80 	mov    rdi,0xffffffff802095a8
ffffffff80201306:	e8 55 6b 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020130b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201312:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201317:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020131e:	e8 cd f8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201323:	31 c0                	xor    eax,eax
ffffffff80201325:	e8 36 4d 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020132a:	31 c0                	xor    eax,eax
ffffffff8020132c:	e8 0f 4d 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80201331:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201338:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020133d:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80201344:	e8 a7 f8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201349:	31 c0                	xor    eax,eax
ffffffff8020134b:	e8 90 45 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80201350:	84 c0                	test   al,al
ffffffff80201352:	0f 85 60 01 00 00    	jne    ffffffff802014b8 <k_page_fault+0x218>
ffffffff80201358:	31 c0                	xor    eax,eax
ffffffff8020135a:	48 c7 c1 90 96 20 80 	mov    rcx,0xffffffff80209690
ffffffff80201361:	ba 19 00 00 00       	mov    edx,0x19
ffffffff80201366:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff8020136d:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80201374:	e8 e7 6a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201379:	48 8b 85 80 00 00 00 	mov    rax,QWORD PTR [rbp+0x80]
ffffffff80201380:	48 c7 c1 4a 94 20 80 	mov    rcx,0xffffffff8020944a
ffffffff80201387:	48 c7 c2 79 94 20 80 	mov    rdx,0xffffffff80209479
ffffffff8020138e:	48 c7 c6 92 94 20 80 	mov    rsi,0xffffffff80209492
ffffffff80201395:	48 c7 c7 d0 95 20 80 	mov    rdi,0xffffffff802095d0
ffffffff8020139c:	a8 04                	test   al,0x4
ffffffff8020139e:	48 c7 c0 5d 94 20 80 	mov    rax,0xffffffff8020945d
ffffffff802013a5:	48 0f 44 c8          	cmove  rcx,rax
ffffffff802013a9:	48 8b 85 80 00 00 00 	mov    rax,QWORD PTR [rbp+0x80]
ffffffff802013b0:	a8 02                	test   al,0x2
ffffffff802013b2:	48 c7 c0 86 94 20 80 	mov    rax,0xffffffff80209486
ffffffff802013b9:	48 0f 44 d0          	cmove  rdx,rax
ffffffff802013bd:	48 8b 85 80 00 00 00 	mov    rax,QWORD PTR [rbp+0x80]
ffffffff802013c4:	a8 01                	test   al,0x1
ffffffff802013c6:	48 c7 c0 ac 94 20 80 	mov    rax,0xffffffff802094ac
ffffffff802013cd:	48 0f 44 f0          	cmove  rsi,rax
ffffffff802013d1:	31 c0                	xor    eax,eax
ffffffff802013d3:	e8 88 6a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802013d8:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802013df:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802013e4:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802013eb:	e8 00 f8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802013f0:	31 c0                	xor    eax,eax
ffffffff802013f2:	e8 69 4c 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802013f7:	0f 20 d0             	mov    rax,cr2
ffffffff802013fa:	49 89 c4             	mov    r12,rax
ffffffff802013fd:	31 c0                	xor    eax,eax
ffffffff802013ff:	e8 3c 4c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80201404:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020140b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201410:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80201417:	e8 d4 f7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020141c:	31 c0                	xor    eax,eax
ffffffff8020141e:	e8 bd 44 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80201423:	84 c0                	test   al,al
ffffffff80201425:	75 75                	jne    ffffffff8020149c <k_page_fault+0x1fc>
ffffffff80201427:	48 c7 c1 90 96 20 80 	mov    rcx,0xffffffff80209690
ffffffff8020142e:	ba 1f 00 00 00       	mov    edx,0x1f
ffffffff80201433:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff8020143a:	31 c0                	xor    eax,eax
ffffffff8020143c:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80201443:	e8 18 6a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201448:	4c 89 e6             	mov    rsi,r12
ffffffff8020144b:	48 c7 c7 bd 94 20 80 	mov    rdi,0xffffffff802094bd
ffffffff80201452:	31 c0                	xor    eax,eax
ffffffff80201454:	e8 07 6a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201459:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020145e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201465:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020146c:	e8 7f f7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201471:	31 c0                	xor    eax,eax
ffffffff80201473:	e8 e8 4b 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80201478:	48 89 ef             	mov    rdi,rbp
ffffffff8020147b:	e8 10 fc ff ff       	call   ffffffff80201090 <panic_common_stub>
ffffffff80201480:	31 c0                	xor    eax,eax
ffffffff80201482:	e8 e9 42 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80201487:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020148e:	89 c6                	mov    esi,eax
ffffffff80201490:	31 c0                	xor    eax,eax
ffffffff80201492:	e8 c9 69 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201497:	e9 3c fe ff ff       	jmp    ffffffff802012d8 <k_page_fault+0x38>
ffffffff8020149c:	31 c0                	xor    eax,eax
ffffffff8020149e:	e8 cd 42 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802014a3:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802014aa:	89 c6                	mov    esi,eax
ffffffff802014ac:	31 c0                	xor    eax,eax
ffffffff802014ae:	e8 ad 69 00 00       	call   ffffffff80207e60 <printf>
ffffffff802014b3:	e9 6f ff ff ff       	jmp    ffffffff80201427 <k_page_fault+0x187>
ffffffff802014b8:	31 c0                	xor    eax,eax
ffffffff802014ba:	e8 b1 42 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802014bf:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802014c6:	89 c6                	mov    esi,eax
ffffffff802014c8:	31 c0                	xor    eax,eax
ffffffff802014ca:	e8 91 69 00 00       	call   ffffffff80207e60 <printf>
ffffffff802014cf:	e9 84 fe ff ff       	jmp    ffffffff80201358 <k_page_fault+0xb8>
ffffffff802014d4:	66 90                	xchg   ax,ax
ffffffff802014d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802014dd:	00 00 00 

ffffffff802014e0 <k_invalid_opcode>:
ffffffff802014e0:	55                   	push   rbp
ffffffff802014e1:	31 c0                	xor    eax,eax
ffffffff802014e3:	48 89 fd             	mov    rbp,rdi
ffffffff802014e6:	e8 55 4b 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802014eb:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802014f2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802014f7:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff802014fe:	e8 ed f6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201503:	31 c0                	xor    eax,eax
ffffffff80201505:	e8 d6 43 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020150a:	84 c0                	test   al,al
ffffffff8020150c:	75 5d                	jne    ffffffff8020156b <k_invalid_opcode+0x8b>
ffffffff8020150e:	48 c7 c1 40 96 20 80 	mov    rcx,0xffffffff80209640
ffffffff80201515:	ba 35 00 00 00       	mov    edx,0x35
ffffffff8020151a:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80201521:	31 c0                	xor    eax,eax
ffffffff80201523:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020152a:	e8 31 69 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020152f:	48 8b b5 88 00 00 00 	mov    rsi,QWORD PTR [rbp+0x88]
ffffffff80201536:	48 c7 c7 d3 94 20 80 	mov    rdi,0xffffffff802094d3
ffffffff8020153d:	31 c0                	xor    eax,eax
ffffffff8020153f:	e8 1c 69 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201544:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201549:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201550:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80201557:	e8 94 f6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020155c:	31 c0                	xor    eax,eax
ffffffff8020155e:	e8 fd 4a 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80201563:	48 89 ef             	mov    rdi,rbp
ffffffff80201566:	e8 25 fb ff ff       	call   ffffffff80201090 <panic_common_stub>
ffffffff8020156b:	31 c0                	xor    eax,eax
ffffffff8020156d:	e8 fe 41 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80201572:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80201579:	89 c6                	mov    esi,eax
ffffffff8020157b:	31 c0                	xor    eax,eax
ffffffff8020157d:	e8 de 68 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201582:	eb 8a                	jmp    ffffffff8020150e <k_invalid_opcode+0x2e>
ffffffff80201584:	66 90                	xchg   ax,ax
ffffffff80201586:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020158d:	00 00 00 

ffffffff80201590 <attach_kernel_exceptions>:
ffffffff80201590:	48 83 ec 08          	sub    rsp,0x8
ffffffff80201594:	31 ff                	xor    edi,edi
ffffffff80201596:	48 c7 c6 40 11 20 80 	mov    rsi,0xffffffff80201140
ffffffff8020159d:	e8 4e 0e 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff802015a2:	48 c7 c6 40 0d 20 80 	mov    rsi,0xffffffff80200d40
ffffffff802015a9:	bf 01 00 00 00       	mov    edi,0x1
ffffffff802015ae:	e8 3d 0e 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff802015b3:	48 c7 c6 90 0e 20 80 	mov    rsi,0xffffffff80200e90
ffffffff802015ba:	bf 03 00 00 00       	mov    edi,0x3
ffffffff802015bf:	e8 2c 0e 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff802015c4:	48 c7 c6 e0 14 20 80 	mov    rsi,0xffffffff802014e0
ffffffff802015cb:	bf 06 00 00 00       	mov    edi,0x6
ffffffff802015d0:	e8 1b 0e 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff802015d5:	48 c7 c6 f0 11 20 80 	mov    rsi,0xffffffff802011f0
ffffffff802015dc:	bf 0d 00 00 00       	mov    edi,0xd
ffffffff802015e1:	e8 0a 0e 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff802015e6:	48 c7 c6 a0 12 20 80 	mov    rsi,0xffffffff802012a0
ffffffff802015ed:	bf 0e 00 00 00       	mov    edi,0xe
ffffffff802015f2:	e8 f9 0d 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff802015f7:	48 c7 c6 e0 0f 20 80 	mov    rsi,0xffffffff80200fe0
ffffffff802015fe:	bf 20 00 00 00       	mov    edi,0x20
ffffffff80201603:	e8 e8 0d 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff80201608:	48 c7 c6 70 0c 20 80 	mov    rsi,0xffffffff80200c70
ffffffff8020160f:	bf 7f 00 00 00       	mov    edi,0x7f
ffffffff80201614:	e8 d7 0d 00 00       	call   ffffffff802023f0 <attach_isr>
ffffffff80201619:	31 c0                	xor    eax,eax
ffffffff8020161b:	e8 20 4a 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80201620:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201627:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020162c:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80201633:	e8 b8 f5 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201638:	31 c0                	xor    eax,eax
ffffffff8020163a:	e8 a1 42 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020163f:	84 c0                	test   al,al
ffffffff80201641:	75 55                	jne    ffffffff80201698 <attach_kernel_exceptions+0x108>
ffffffff80201643:	48 c7 c1 20 96 20 80 	mov    rcx,0xffffffff80209620
ffffffff8020164a:	ba 4b 00 00 00       	mov    edx,0x4b
ffffffff8020164f:	48 c7 c6 f0 94 20 80 	mov    rsi,0xffffffff802094f0
ffffffff80201656:	31 c0                	xor    eax,eax
ffffffff80201658:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020165f:	e8 fc 67 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201664:	48 c7 c7 f8 95 20 80 	mov    rdi,0xffffffff802095f8
ffffffff8020166b:	31 c0                	xor    eax,eax
ffffffff8020166d:	e8 ee 67 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201672:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201679:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020167e:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80201685:	e8 66 f5 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020168a:	31 c0                	xor    eax,eax
ffffffff8020168c:	48 83 c4 08          	add    rsp,0x8
ffffffff80201690:	e9 cb 49 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80201695:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80201698:	31 c0                	xor    eax,eax
ffffffff8020169a:	e8 d1 40 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020169f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802016a6:	89 c6                	mov    esi,eax
ffffffff802016a8:	31 c0                	xor    eax,eax
ffffffff802016aa:	e8 b1 67 00 00       	call   ffffffff80207e60 <printf>
ffffffff802016af:	eb 92                	jmp    ffffffff80201643 <attach_kernel_exceptions+0xb3>
ffffffff802016b1:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802016b8:	00 00 00 
ffffffff802016bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff802016c0 <hpet_init>:
ffffffff802016c0:	80 3d c9 9e 00 00 00 	cmp    BYTE PTR [rip+0x9ec9],0x0        # ffffffff8020b590 <once.1745>
ffffffff802016c7:	0f 85 be 00 00 00    	jne    ffffffff8020178b <hpet_init+0xcb>
ffffffff802016cd:	48 83 ec 08          	sub    rsp,0x8
ffffffff802016d1:	80 7f 28 00          	cmp    BYTE PTR [rdi+0x28],0x0
ffffffff802016d5:	c6 05 b4 9e 00 00 01 	mov    BYTE PTR [rip+0x9eb4],0x1        # ffffffff8020b590 <once.1745>
ffffffff802016dc:	0f 84 81 00 00 00    	je     ffffffff80201763 <hpet_init+0xa3>
ffffffff802016e2:	31 c0                	xor    eax,eax
ffffffff802016e4:	e8 57 49 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802016e9:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802016f0:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802016f5:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff802016fc:	e8 ef f4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201701:	31 c0                	xor    eax,eax
ffffffff80201703:	e8 d8 41 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80201708:	84 c0                	test   al,al
ffffffff8020170a:	0f 85 7c 00 00 00    	jne    ffffffff8020178c <hpet_init+0xcc>
ffffffff80201710:	48 c7 c1 00 97 20 80 	mov    rcx,0xffffffff80209700
ffffffff80201717:	ba 14 00 00 00       	mov    edx,0x14
ffffffff8020171c:	48 c7 c6 d2 96 20 80 	mov    rsi,0xffffffff802096d2
ffffffff80201723:	31 c0                	xor    eax,eax
ffffffff80201725:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020172c:	e8 2f 67 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201731:	48 c7 c7 e9 96 20 80 	mov    rdi,0xffffffff802096e9
ffffffff80201738:	31 c0                	xor    eax,eax
ffffffff8020173a:	e8 21 67 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020173f:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201746:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020174b:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80201752:	e8 99 f4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201757:	31 c0                	xor    eax,eax
ffffffff80201759:	e8 02 49 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020175e:	66 90                	xchg   ax,ax
ffffffff80201760:	f4                   	hlt    
ffffffff80201761:	eb fd                	jmp    ffffffff80201760 <hpet_init+0xa0>
ffffffff80201763:	48 8b 7f 2c          	mov    rdi,QWORD PTR [rdi+0x2c]
ffffffff80201767:	be 00 10 00 00       	mov    esi,0x1000
ffffffff8020176c:	e8 5f 30 00 00       	call   ffffffff802047d0 <map_physical>
ffffffff80201771:	48 89 05 28 9e 00 00 	mov    QWORD PTR [rip+0x9e28],rax        # ffffffff8020b5a0 <hpet_register_address>
ffffffff80201778:	48 8b 00             	mov    rax,QWORD PTR [rax]
ffffffff8020177b:	48 c1 e8 20          	shr    rax,0x20
ffffffff8020177f:	48 89 05 12 9e 00 00 	mov    QWORD PTR [rip+0x9e12],rax        # ffffffff8020b598 <period>
ffffffff80201786:	48 83 c4 08          	add    rsp,0x8
ffffffff8020178a:	c3                   	ret    
ffffffff8020178b:	c3                   	ret    
ffffffff8020178c:	31 c0                	xor    eax,eax
ffffffff8020178e:	e8 dd 3f 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80201793:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020179a:	89 c6                	mov    esi,eax
ffffffff8020179c:	31 c0                	xor    eax,eax
ffffffff8020179e:	e8 bd 66 00 00       	call   ffffffff80207e60 <printf>
ffffffff802017a3:	e9 68 ff ff ff       	jmp    ffffffff80201710 <hpet_init+0x50>
ffffffff802017a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802017af:	00 

ffffffff802017b0 <hpet_reset>:
ffffffff802017b0:	48 8b 05 e9 9d 00 00 	mov    rax,QWORD PTR [rip+0x9de9]        # ffffffff8020b5a0 <hpet_register_address>
ffffffff802017b7:	48 c7 80 f0 00 00 00 	mov    QWORD PTR [rax+0xf0],0x0
ffffffff802017be:	00 00 00 00 
ffffffff802017c2:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
ffffffff802017c6:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
ffffffff802017ca:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
ffffffff802017ce:	c3                   	ret    
ffffffff802017cf:	90                   	nop

ffffffff802017d0 <hpet_start>:
ffffffff802017d0:	48 8b 15 c9 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9dc9]        # ffffffff8020b5a0 <hpet_register_address>
ffffffff802017d7:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
ffffffff802017db:	48 83 c8 01          	or     rax,0x1
ffffffff802017df:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
ffffffff802017e3:	c3                   	ret    
ffffffff802017e4:	66 90                	xchg   ax,ax
ffffffff802017e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802017ed:	00 00 00 

ffffffff802017f0 <hpet_wait>:
ffffffff802017f0:	48 b8 00 10 a5 d4 e8 	movabs rax,0xe8d4a51000
ffffffff802017f7:	00 00 00 
ffffffff802017fa:	48 8b 35 9f 9d 00 00 	mov    rsi,QWORD PTR [rip+0x9d9f]        # ffffffff8020b5a0 <hpet_register_address>
ffffffff80201801:	31 d2                	xor    edx,edx
ffffffff80201803:	48 0f af c7          	imul   rax,rdi
ffffffff80201807:	48 c7 86 f0 00 00 00 	mov    QWORD PTR [rsi+0xf0],0x0
ffffffff8020180e:	00 00 00 00 
ffffffff80201812:	48 f7 35 7f 9d 00 00 	div    QWORD PTR [rip+0x9d7f]        # ffffffff8020b598 <period>
ffffffff80201819:	48 8b 56 10          	mov    rdx,QWORD PTR [rsi+0x10]
ffffffff8020181d:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
ffffffff80201821:	48 89 56 10          	mov    QWORD PTR [rsi+0x10],rdx
ffffffff80201825:	48 8b 56 10          	mov    rdx,QWORD PTR [rsi+0x10]
ffffffff80201829:	48 83 ca 01          	or     rdx,0x1
ffffffff8020182d:	48 89 56 10          	mov    QWORD PTR [rsi+0x10],rdx
ffffffff80201831:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80201838:	48 8b 8e f0 00 00 00 	mov    rcx,QWORD PTR [rsi+0xf0]
ffffffff8020183f:	48 39 c1             	cmp    rcx,rax
ffffffff80201842:	72 f4                	jb     ffffffff80201838 <hpet_wait+0x48>
ffffffff80201844:	c3                   	ret    
ffffffff80201845:	90                   	nop
ffffffff80201846:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020184d:	00 00 00 

ffffffff80201850 <hpet_ms_to_tick>:
ffffffff80201850:	48 b8 00 10 a5 d4 e8 	movabs rax,0xe8d4a51000
ffffffff80201857:	00 00 00 
ffffffff8020185a:	31 d2                	xor    edx,edx
ffffffff8020185c:	48 0f af c7          	imul   rax,rdi
ffffffff80201860:	48 f7 35 31 9d 00 00 	div    QWORD PTR [rip+0x9d31]        # ffffffff8020b598 <period>
ffffffff80201867:	c3                   	ret    
ffffffff80201868:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020186f:	00 

ffffffff80201870 <hpet_wait_tick>:
ffffffff80201870:	48 8b 15 29 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9d29]        # ffffffff8020b5a0 <hpet_register_address>
ffffffff80201877:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
ffffffff8020187b:	48 83 c8 01          	or     rax,0x1
ffffffff8020187f:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
ffffffff80201883:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80201888:	48 8b 82 f0 00 00 00 	mov    rax,QWORD PTR [rdx+0xf0]
ffffffff8020188f:	48 39 f8             	cmp    rax,rdi
ffffffff80201892:	72 f4                	jb     ffffffff80201888 <hpet_wait_tick+0x18>
ffffffff80201894:	c3                   	ret    
ffffffff80201895:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020189c:	00 00 00 
ffffffff8020189f:	90                   	nop

ffffffff802018a0 <create_idt_entry>:
ffffffff802018a0:	0f b7 cf             	movzx  ecx,di
ffffffff802018a3:	40 0f b6 f6          	movzx  esi,sil
ffffffff802018a7:	0f b6 c2             	movzx  eax,dl
ffffffff802018aa:	48 89 fa             	mov    rdx,rdi
ffffffff802018ad:	48 c1 e6 20          	shl    rsi,0x20
ffffffff802018b1:	48 81 c9 00 00 08 00 	or     rcx,0x80000
ffffffff802018b8:	48 c1 e0 28          	shl    rax,0x28
ffffffff802018bc:	48 c1 ea 10          	shr    rdx,0x10
ffffffff802018c0:	48 09 f1             	or     rcx,rsi
ffffffff802018c3:	48 c1 ef 20          	shr    rdi,0x20
ffffffff802018c7:	48 c1 e2 30          	shl    rdx,0x30
ffffffff802018cb:	48 09 c8             	or     rax,rcx
ffffffff802018ce:	48 09 d0             	or     rax,rdx
ffffffff802018d1:	48 89 fa             	mov    rdx,rdi
ffffffff802018d4:	c3                   	ret    
ffffffff802018d5:	90                   	nop
ffffffff802018d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802018dd:	00 00 00 

ffffffff802018e0 <setup_idt>:
ffffffff802018e0:	48 c7 c0 51 00 20 80 	mov    rax,0xffffffff80200051
ffffffff802018e7:	48 83 ec 08          	sub    rsp,0x8
ffffffff802018eb:	b9 00 8e ff ff       	mov    ecx,0xffff8e00
ffffffff802018f0:	c7 05 e8 9c 00 00 08 	mov    DWORD PTR [rip+0x9ce8],0x8e000008        # ffffffff8020b5e2 <idt+0x2>
ffffffff802018f7:	00 00 8e 
ffffffff802018fa:	66 89 05 df 9c 00 00 	mov    WORD PTR [rip+0x9cdf],ax        # ffffffff8020b5e0 <idt>
ffffffff80201901:	48 89 c2             	mov    rdx,rax
ffffffff80201904:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201908:	48 c1 ea 10          	shr    rdx,0x10
ffffffff8020190c:	89 05 d6 9c 00 00    	mov    DWORD PTR [rip+0x9cd6],eax        # ffffffff8020b5e8 <idt+0x8>
ffffffff80201912:	48 c7 c0 5d 00 20 80 	mov    rax,0xffffffff8020005d
ffffffff80201919:	66 89 15 c6 9c 00 00 	mov    WORD PTR [rip+0x9cc6],dx        # ffffffff8020b5e6 <idt+0x6>
ffffffff80201920:	48 89 c2             	mov    rdx,rax
ffffffff80201923:	66 89 05 c6 9c 00 00 	mov    WORD PTR [rip+0x9cc6],ax        # ffffffff8020b5f0 <idt+0x10>
ffffffff8020192a:	48 c1 e8 20          	shr    rax,0x20
ffffffff8020192e:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201932:	89 05 c0 9c 00 00    	mov    DWORD PTR [rip+0x9cc0],eax        # ffffffff8020b5f8 <idt+0x18>
ffffffff80201938:	48 c7 c0 69 00 20 80 	mov    rax,0xffffffff80200069
ffffffff8020193f:	66 89 15 b0 9c 00 00 	mov    WORD PTR [rip+0x9cb0],dx        # ffffffff8020b5f6 <idt+0x16>
ffffffff80201946:	48 89 c2             	mov    rdx,rax
ffffffff80201949:	66 89 05 b0 9c 00 00 	mov    WORD PTR [rip+0x9cb0],ax        # ffffffff8020b600 <idt+0x20>
ffffffff80201950:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201954:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201958:	89 05 aa 9c 00 00    	mov    DWORD PTR [rip+0x9caa],eax        # ffffffff8020b608 <idt+0x28>
ffffffff8020195e:	48 c7 c0 75 00 20 80 	mov    rax,0xffffffff80200075
ffffffff80201965:	66 89 15 9a 9c 00 00 	mov    WORD PTR [rip+0x9c9a],dx        # ffffffff8020b606 <idt+0x26>
ffffffff8020196c:	48 89 c2             	mov    rdx,rax
ffffffff8020196f:	66 89 05 9a 9c 00 00 	mov    WORD PTR [rip+0x9c9a],ax        # ffffffff8020b610 <idt+0x30>
ffffffff80201976:	48 c1 e8 20          	shr    rax,0x20
ffffffff8020197a:	48 c1 ea 10          	shr    rdx,0x10
ffffffff8020197e:	89 05 94 9c 00 00    	mov    DWORD PTR [rip+0x9c94],eax        # ffffffff8020b618 <idt+0x38>
ffffffff80201984:	48 c7 c0 81 00 20 80 	mov    rax,0xffffffff80200081
ffffffff8020198b:	66 89 15 84 9c 00 00 	mov    WORD PTR [rip+0x9c84],dx        # ffffffff8020b616 <idt+0x36>
ffffffff80201992:	48 89 c2             	mov    rdx,rax
ffffffff80201995:	66 89 05 84 9c 00 00 	mov    WORD PTR [rip+0x9c84],ax        # ffffffff8020b620 <idt+0x40>
ffffffff8020199c:	48 c1 e8 20          	shr    rax,0x20
ffffffff802019a0:	48 c1 ea 10          	shr    rdx,0x10
ffffffff802019a4:	89 05 7e 9c 00 00    	mov    DWORD PTR [rip+0x9c7e],eax        # ffffffff8020b628 <idt+0x48>
ffffffff802019aa:	48 c7 c0 8d 00 20 80 	mov    rax,0xffffffff8020008d
ffffffff802019b1:	66 89 15 6e 9c 00 00 	mov    WORD PTR [rip+0x9c6e],dx        # ffffffff8020b626 <idt+0x46>
ffffffff802019b8:	48 89 c2             	mov    rdx,rax
ffffffff802019bb:	66 89 05 6e 9c 00 00 	mov    WORD PTR [rip+0x9c6e],ax        # ffffffff8020b630 <idt+0x50>
ffffffff802019c2:	48 c1 e8 20          	shr    rax,0x20
ffffffff802019c6:	48 c1 ea 10          	shr    rdx,0x10
ffffffff802019ca:	89 05 68 9c 00 00    	mov    DWORD PTR [rip+0x9c68],eax        # ffffffff8020b638 <idt+0x58>
ffffffff802019d0:	48 c7 c0 99 00 20 80 	mov    rax,0xffffffff80200099
ffffffff802019d7:	66 89 15 58 9c 00 00 	mov    WORD PTR [rip+0x9c58],dx        # ffffffff8020b636 <idt+0x56>
ffffffff802019de:	48 89 c2             	mov    rdx,rax
ffffffff802019e1:	66 89 05 58 9c 00 00 	mov    WORD PTR [rip+0x9c58],ax        # ffffffff8020b640 <idt+0x60>
ffffffff802019e8:	48 c1 e8 20          	shr    rax,0x20
ffffffff802019ec:	48 c1 ea 10          	shr    rdx,0x10
ffffffff802019f0:	c7 05 f2 9b 00 00 00 	mov    DWORD PTR [rip+0x9bf2],0x0        # ffffffff8020b5ec <idt+0xc>
ffffffff802019f7:	00 00 00 
ffffffff802019fa:	c7 05 ee 9b 00 00 08 	mov    DWORD PTR [rip+0x9bee],0x8e000008        # ffffffff8020b5f2 <idt+0x12>
ffffffff80201a01:	00 00 8e 
ffffffff80201a04:	c7 05 ee 9b 00 00 00 	mov    DWORD PTR [rip+0x9bee],0x0        # ffffffff8020b5fc <idt+0x1c>
ffffffff80201a0b:	00 00 00 
ffffffff80201a0e:	c7 05 ea 9b 00 00 08 	mov    DWORD PTR [rip+0x9bea],0x8e000008        # ffffffff8020b602 <idt+0x22>
ffffffff80201a15:	00 00 8e 
ffffffff80201a18:	c7 05 ea 9b 00 00 00 	mov    DWORD PTR [rip+0x9bea],0x0        # ffffffff8020b60c <idt+0x2c>
ffffffff80201a1f:	00 00 00 
ffffffff80201a22:	c7 05 e6 9b 00 00 08 	mov    DWORD PTR [rip+0x9be6],0x8e000008        # ffffffff8020b612 <idt+0x32>
ffffffff80201a29:	00 00 8e 
ffffffff80201a2c:	c7 05 e6 9b 00 00 00 	mov    DWORD PTR [rip+0x9be6],0x0        # ffffffff8020b61c <idt+0x3c>
ffffffff80201a33:	00 00 00 
ffffffff80201a36:	c7 05 e2 9b 00 00 08 	mov    DWORD PTR [rip+0x9be2],0x8e000008        # ffffffff8020b622 <idt+0x42>
ffffffff80201a3d:	00 00 8e 
ffffffff80201a40:	c7 05 e2 9b 00 00 00 	mov    DWORD PTR [rip+0x9be2],0x0        # ffffffff8020b62c <idt+0x4c>
ffffffff80201a47:	00 00 00 
ffffffff80201a4a:	c7 05 de 9b 00 00 08 	mov    DWORD PTR [rip+0x9bde],0x8e000008        # ffffffff8020b632 <idt+0x52>
ffffffff80201a51:	00 00 8e 
ffffffff80201a54:	c7 05 de 9b 00 00 00 	mov    DWORD PTR [rip+0x9bde],0x0        # ffffffff8020b63c <idt+0x5c>
ffffffff80201a5b:	00 00 00 
ffffffff80201a5e:	c7 05 da 9b 00 00 08 	mov    DWORD PTR [rip+0x9bda],0x8e000008        # ffffffff8020b642 <idt+0x62>
ffffffff80201a65:	00 00 8e 
ffffffff80201a68:	89 05 da 9b 00 00    	mov    DWORD PTR [rip+0x9bda],eax        # ffffffff8020b648 <idt+0x68>
ffffffff80201a6e:	48 c7 c0 a5 00 20 80 	mov    rax,0xffffffff802000a5
ffffffff80201a75:	66 89 15 ca 9b 00 00 	mov    WORD PTR [rip+0x9bca],dx        # ffffffff8020b646 <idt+0x66>
ffffffff80201a7c:	48 89 c2             	mov    rdx,rax
ffffffff80201a7f:	66 89 05 ca 9b 00 00 	mov    WORD PTR [rip+0x9bca],ax        # ffffffff8020b650 <idt+0x70>
ffffffff80201a86:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201a8a:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201a8e:	89 05 c4 9b 00 00    	mov    DWORD PTR [rip+0x9bc4],eax        # ffffffff8020b658 <idt+0x78>
ffffffff80201a94:	48 c7 c0 b1 00 20 80 	mov    rax,0xffffffff802000b1
ffffffff80201a9b:	66 89 15 b4 9b 00 00 	mov    WORD PTR [rip+0x9bb4],dx        # ffffffff8020b656 <idt+0x76>
ffffffff80201aa2:	48 89 c2             	mov    rdx,rax
ffffffff80201aa5:	66 89 05 b4 9b 00 00 	mov    WORD PTR [rip+0x9bb4],ax        # ffffffff8020b660 <idt+0x80>
ffffffff80201aac:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201ab0:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201ab4:	89 05 ae 9b 00 00    	mov    DWORD PTR [rip+0x9bae],eax        # ffffffff8020b668 <idt+0x88>
ffffffff80201aba:	48 c7 c0 b8 00 20 80 	mov    rax,0xffffffff802000b8
ffffffff80201ac1:	66 89 15 9e 9b 00 00 	mov    WORD PTR [rip+0x9b9e],dx        # ffffffff8020b666 <idt+0x86>
ffffffff80201ac8:	48 89 c2             	mov    rdx,rax
ffffffff80201acb:	66 89 05 9e 9b 00 00 	mov    WORD PTR [rip+0x9b9e],ax        # ffffffff8020b670 <idt+0x90>
ffffffff80201ad2:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201ad6:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201ada:	89 05 98 9b 00 00    	mov    DWORD PTR [rip+0x9b98],eax        # ffffffff8020b678 <idt+0x98>
ffffffff80201ae0:	48 c7 c0 c4 00 20 80 	mov    rax,0xffffffff802000c4
ffffffff80201ae7:	66 89 15 88 9b 00 00 	mov    WORD PTR [rip+0x9b88],dx        # ffffffff8020b676 <idt+0x96>
ffffffff80201aee:	48 89 c2             	mov    rdx,rax
ffffffff80201af1:	66 89 05 88 9b 00 00 	mov    WORD PTR [rip+0x9b88],ax        # ffffffff8020b680 <idt+0xa0>
ffffffff80201af8:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201afc:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201b00:	89 05 82 9b 00 00    	mov    DWORD PTR [rip+0x9b82],eax        # ffffffff8020b688 <idt+0xa8>
ffffffff80201b06:	48 c7 c0 cb 00 20 80 	mov    rax,0xffffffff802000cb
ffffffff80201b0d:	66 89 15 72 9b 00 00 	mov    WORD PTR [rip+0x9b72],dx        # ffffffff8020b686 <idt+0xa6>
ffffffff80201b14:	48 89 c2             	mov    rdx,rax
ffffffff80201b17:	66 89 05 72 9b 00 00 	mov    WORD PTR [rip+0x9b72],ax        # ffffffff8020b690 <idt+0xb0>
ffffffff80201b1e:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201b22:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201b26:	89 05 6c 9b 00 00    	mov    DWORD PTR [rip+0x9b6c],eax        # ffffffff8020b698 <idt+0xb8>
ffffffff80201b2c:	48 c7 c0 d2 00 20 80 	mov    rax,0xffffffff802000d2
ffffffff80201b33:	66 89 15 5c 9b 00 00 	mov    WORD PTR [rip+0x9b5c],dx        # ffffffff8020b696 <idt+0xb6>
ffffffff80201b3a:	48 89 c2             	mov    rdx,rax
ffffffff80201b3d:	66 89 05 5c 9b 00 00 	mov    WORD PTR [rip+0x9b5c],ax        # ffffffff8020b6a0 <idt+0xc0>
ffffffff80201b44:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201b48:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201b4c:	89 05 56 9b 00 00    	mov    DWORD PTR [rip+0x9b56],eax        # ffffffff8020b6a8 <idt+0xc8>
ffffffff80201b52:	48 c7 c0 d9 00 20 80 	mov    rax,0xffffffff802000d9
ffffffff80201b59:	66 89 15 46 9b 00 00 	mov    WORD PTR [rip+0x9b46],dx        # ffffffff8020b6a6 <idt+0xc6>
ffffffff80201b60:	48 89 c2             	mov    rdx,rax
ffffffff80201b63:	c7 05 df 9a 00 00 00 	mov    DWORD PTR [rip+0x9adf],0x0        # ffffffff8020b64c <idt+0x6c>
ffffffff80201b6a:	00 00 00 
ffffffff80201b6d:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201b71:	c7 05 d7 9a 00 00 08 	mov    DWORD PTR [rip+0x9ad7],0x8e000008        # ffffffff8020b652 <idt+0x72>
ffffffff80201b78:	00 00 8e 
ffffffff80201b7b:	c7 05 d7 9a 00 00 00 	mov    DWORD PTR [rip+0x9ad7],0x0        # ffffffff8020b65c <idt+0x7c>
ffffffff80201b82:	00 00 00 
ffffffff80201b85:	c7 05 d3 9a 00 00 08 	mov    DWORD PTR [rip+0x9ad3],0x8e000008        # ffffffff8020b662 <idt+0x82>
ffffffff80201b8c:	00 00 8e 
ffffffff80201b8f:	c7 05 d3 9a 00 00 00 	mov    DWORD PTR [rip+0x9ad3],0x0        # ffffffff8020b66c <idt+0x8c>
ffffffff80201b96:	00 00 00 
ffffffff80201b99:	c7 05 cf 9a 00 00 08 	mov    DWORD PTR [rip+0x9acf],0x8e000008        # ffffffff8020b672 <idt+0x92>
ffffffff80201ba0:	00 00 8e 
ffffffff80201ba3:	c7 05 cf 9a 00 00 00 	mov    DWORD PTR [rip+0x9acf],0x0        # ffffffff8020b67c <idt+0x9c>
ffffffff80201baa:	00 00 00 
ffffffff80201bad:	c7 05 cb 9a 00 00 08 	mov    DWORD PTR [rip+0x9acb],0x8e000008        # ffffffff8020b682 <idt+0xa2>
ffffffff80201bb4:	00 00 8e 
ffffffff80201bb7:	c7 05 cb 9a 00 00 00 	mov    DWORD PTR [rip+0x9acb],0x0        # ffffffff8020b68c <idt+0xac>
ffffffff80201bbe:	00 00 00 
ffffffff80201bc1:	c7 05 c7 9a 00 00 08 	mov    DWORD PTR [rip+0x9ac7],0x8e000008        # ffffffff8020b692 <idt+0xb2>
ffffffff80201bc8:	00 00 8e 
ffffffff80201bcb:	c7 05 c7 9a 00 00 00 	mov    DWORD PTR [rip+0x9ac7],0x0        # ffffffff8020b69c <idt+0xbc>
ffffffff80201bd2:	00 00 00 
ffffffff80201bd5:	c7 05 c3 9a 00 00 08 	mov    DWORD PTR [rip+0x9ac3],0x8e000008        # ffffffff8020b6a2 <idt+0xc2>
ffffffff80201bdc:	00 00 8e 
ffffffff80201bdf:	c7 05 c3 9a 00 00 00 	mov    DWORD PTR [rip+0x9ac3],0x0        # ffffffff8020b6ac <idt+0xcc>
ffffffff80201be6:	00 00 00 
ffffffff80201be9:	66 89 05 c0 9a 00 00 	mov    WORD PTR [rip+0x9ac0],ax        # ffffffff8020b6b0 <idt+0xd0>
ffffffff80201bf0:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201bf4:	89 05 be 9a 00 00    	mov    DWORD PTR [rip+0x9abe],eax        # ffffffff8020b6b8 <idt+0xd8>
ffffffff80201bfa:	48 c7 c0 e0 00 20 80 	mov    rax,0xffffffff802000e0
ffffffff80201c01:	66 89 15 ae 9a 00 00 	mov    WORD PTR [rip+0x9aae],dx        # ffffffff8020b6b6 <idt+0xd6>
ffffffff80201c08:	48 89 c2             	mov    rdx,rax
ffffffff80201c0b:	66 89 05 ae 9a 00 00 	mov    WORD PTR [rip+0x9aae],ax        # ffffffff8020b6c0 <idt+0xe0>
ffffffff80201c12:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201c16:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201c1a:	89 05 a8 9a 00 00    	mov    DWORD PTR [rip+0x9aa8],eax        # ffffffff8020b6c8 <idt+0xe8>
ffffffff80201c20:	48 c7 c0 e7 00 20 80 	mov    rax,0xffffffff802000e7
ffffffff80201c27:	66 89 15 98 9a 00 00 	mov    WORD PTR [rip+0x9a98],dx        # ffffffff8020b6c6 <idt+0xe6>
ffffffff80201c2e:	48 89 c2             	mov    rdx,rax
ffffffff80201c31:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201c35:	66 89 05 94 9a 00 00 	mov    WORD PTR [rip+0x9a94],ax        # ffffffff8020b6d0 <idt+0xf0>
ffffffff80201c3c:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201c40:	89 05 92 9a 00 00    	mov    DWORD PTR [rip+0x9a92],eax        # ffffffff8020b6d8 <idt+0xf8>
ffffffff80201c46:	48 c7 c0 f3 00 20 80 	mov    rax,0xffffffff802000f3
ffffffff80201c4d:	66 89 15 82 9a 00 00 	mov    WORD PTR [rip+0x9a82],dx        # ffffffff8020b6d6 <idt+0xf6>
ffffffff80201c54:	48 89 c2             	mov    rdx,rax
ffffffff80201c57:	66 89 05 82 9a 00 00 	mov    WORD PTR [rip+0x9a82],ax        # ffffffff8020b6e0 <idt+0x100>
ffffffff80201c5e:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201c62:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201c66:	89 05 7c 9a 00 00    	mov    DWORD PTR [rip+0x9a7c],eax        # ffffffff8020b6e8 <idt+0x108>
ffffffff80201c6c:	48 c7 c0 ff 00 20 80 	mov    rax,0xffffffff802000ff
ffffffff80201c73:	66 89 15 6c 9a 00 00 	mov    WORD PTR [rip+0x9a6c],dx        # ffffffff8020b6e6 <idt+0x106>
ffffffff80201c7a:	48 89 c2             	mov    rdx,rax
ffffffff80201c7d:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201c81:	66 89 05 68 9a 00 00 	mov    WORD PTR [rip+0x9a68],ax        # ffffffff8020b6f0 <idt+0x110>
ffffffff80201c88:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201c8c:	66 89 15 63 9a 00 00 	mov    WORD PTR [rip+0x9a63],dx        # ffffffff8020b6f6 <idt+0x116>
ffffffff80201c93:	ba 08 00 00 00       	mov    edx,0x8
ffffffff80201c98:	89 05 5a 9a 00 00    	mov    DWORD PTR [rip+0x9a5a],eax        # ffffffff8020b6f8 <idt+0x118>
ffffffff80201c9e:	48 c7 c0 0b 01 20 80 	mov    rax,0xffffffff8020010b
ffffffff80201ca5:	66 89 05 54 9a 00 00 	mov    WORD PTR [rip+0x9a54],ax        # ffffffff8020b700 <idt+0x120>
ffffffff80201cac:	66 89 15 4f 9a 00 00 	mov    WORD PTR [rip+0x9a4f],dx        # ffffffff8020b702 <idt+0x122>
ffffffff80201cb3:	48 89 c2             	mov    rdx,rax
ffffffff80201cb6:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201cba:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201cbe:	89 05 44 9a 00 00    	mov    DWORD PTR [rip+0x9a44],eax        # ffffffff8020b708 <idt+0x128>
ffffffff80201cc4:	48 c7 c0 17 01 20 80 	mov    rax,0xffffffff80200117
ffffffff80201ccb:	66 89 15 34 9a 00 00 	mov    WORD PTR [rip+0x9a34],dx        # ffffffff8020b706 <idt+0x126>
ffffffff80201cd2:	48 89 c2             	mov    rdx,rax
ffffffff80201cd5:	66 89 05 34 9a 00 00 	mov    WORD PTR [rip+0x9a34],ax        # ffffffff8020b710 <idt+0x130>
ffffffff80201cdc:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201ce0:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201ce4:	66 89 0d 19 9a 00 00 	mov    WORD PTR [rip+0x9a19],cx        # ffffffff8020b704 <idt+0x124>
ffffffff80201ceb:	c7 05 bd 99 00 00 08 	mov    DWORD PTR [rip+0x99bd],0x8e000008        # ffffffff8020b6b2 <idt+0xd2>
ffffffff80201cf2:	00 00 8e 
ffffffff80201cf5:	c7 05 bd 99 00 00 00 	mov    DWORD PTR [rip+0x99bd],0x0        # ffffffff8020b6bc <idt+0xdc>
ffffffff80201cfc:	00 00 00 
ffffffff80201cff:	c7 05 b9 99 00 00 08 	mov    DWORD PTR [rip+0x99b9],0x8e000008        # ffffffff8020b6c2 <idt+0xe2>
ffffffff80201d06:	00 00 8e 
ffffffff80201d09:	c7 05 b9 99 00 00 00 	mov    DWORD PTR [rip+0x99b9],0x0        # ffffffff8020b6cc <idt+0xec>
ffffffff80201d10:	00 00 00 
ffffffff80201d13:	c7 05 b5 99 00 00 08 	mov    DWORD PTR [rip+0x99b5],0x8e000008        # ffffffff8020b6d2 <idt+0xf2>
ffffffff80201d1a:	00 00 8e 
ffffffff80201d1d:	c7 05 b5 99 00 00 00 	mov    DWORD PTR [rip+0x99b5],0x0        # ffffffff8020b6dc <idt+0xfc>
ffffffff80201d24:	00 00 00 
ffffffff80201d27:	c7 05 b1 99 00 00 08 	mov    DWORD PTR [rip+0x99b1],0x8e000008        # ffffffff8020b6e2 <idt+0x102>
ffffffff80201d2e:	00 00 8e 
ffffffff80201d31:	c7 05 b1 99 00 00 00 	mov    DWORD PTR [rip+0x99b1],0x0        # ffffffff8020b6ec <idt+0x10c>
ffffffff80201d38:	00 00 00 
ffffffff80201d3b:	c7 05 ad 99 00 00 08 	mov    DWORD PTR [rip+0x99ad],0x8e000008        # ffffffff8020b6f2 <idt+0x112>
ffffffff80201d42:	00 00 8e 
ffffffff80201d45:	c7 05 ad 99 00 00 00 	mov    DWORD PTR [rip+0x99ad],0x0        # ffffffff8020b6fc <idt+0x11c>
ffffffff80201d4c:	00 00 00 
ffffffff80201d4f:	c7 05 b3 99 00 00 00 	mov    DWORD PTR [rip+0x99b3],0x0        # ffffffff8020b70c <idt+0x12c>
ffffffff80201d56:	00 00 00 
ffffffff80201d59:	c7 05 af 99 00 00 08 	mov    DWORD PTR [rip+0x99af],0x8e000008        # ffffffff8020b712 <idt+0x132>
ffffffff80201d60:	00 00 8e 
ffffffff80201d63:	66 89 15 ac 99 00 00 	mov    WORD PTR [rip+0x99ac],dx        # ffffffff8020b716 <idt+0x136>
ffffffff80201d6a:	89 05 a8 99 00 00    	mov    DWORD PTR [rip+0x99a8],eax        # ffffffff8020b718 <idt+0x138>
ffffffff80201d70:	c7 05 a2 99 00 00 00 	mov    DWORD PTR [rip+0x99a2],0x0        # ffffffff8020b71c <idt+0x13c>
ffffffff80201d77:	00 00 00 
ffffffff80201d7a:	50                   	push   rax
ffffffff80201d7b:	0f 20 e0             	mov    rax,cr4
ffffffff80201d7e:	48 0d 00 04 00 00    	or     rax,0x400
ffffffff80201d84:	0f 22 e0             	mov    cr4,rax
ffffffff80201d87:	58                   	pop    rax
ffffffff80201d88:	31 c0                	xor    eax,eax
ffffffff80201d8a:	e8 b1 42 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80201d8f:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201d96:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201d9b:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80201da2:	e8 49 ee ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201da7:	31 c0                	xor    eax,eax
ffffffff80201da9:	e8 32 3b 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80201dae:	84 c0                	test   al,al
ffffffff80201db0:	0f 85 5a 04 00 00    	jne    ffffffff80202210 <setup_idt+0x930>
ffffffff80201db6:	48 c7 c1 b8 97 20 80 	mov    rcx,0xffffffff802097b8
ffffffff80201dbd:	ba 8d 00 00 00       	mov    edx,0x8d
ffffffff80201dc2:	48 c7 c6 0a 97 20 80 	mov    rsi,0xffffffff8020970a
ffffffff80201dc9:	31 c0                	xor    eax,eax
ffffffff80201dcb:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80201dd2:	e8 89 60 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201dd7:	31 c0                	xor    eax,eax
ffffffff80201dd9:	48 c7 c7 38 97 20 80 	mov    rdi,0xffffffff80209738
ffffffff80201de0:	e8 7b 60 00 00       	call   ffffffff80207e60 <printf>
ffffffff80201de5:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80201dec:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80201df1:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80201df8:	e8 f3 ed ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80201dfd:	31 c0                	xor    eax,eax
ffffffff80201dff:	e8 5c 42 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80201e04:	48 c7 c0 23 01 20 80 	mov    rax,0xffffffff80200123
ffffffff80201e0b:	c7 05 0d 99 00 00 08 	mov    DWORD PTR [rip+0x990d],0x8e000008        # ffffffff8020b722 <idt+0x142>
ffffffff80201e12:	00 00 8e 
ffffffff80201e15:	48 c7 c7 c0 b5 20 80 	mov    rdi,0xffffffff8020b5c0
ffffffff80201e1c:	66 89 05 fd 98 00 00 	mov    WORD PTR [rip+0x98fd],ax        # ffffffff8020b720 <idt+0x140>
ffffffff80201e23:	48 89 c2             	mov    rdx,rax
ffffffff80201e26:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201e2a:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201e2e:	89 05 f4 98 00 00    	mov    DWORD PTR [rip+0x98f4],eax        # ffffffff8020b728 <idt+0x148>
ffffffff80201e34:	48 c7 c0 2f 01 20 80 	mov    rax,0xffffffff8020012f
ffffffff80201e3b:	66 89 15 e4 98 00 00 	mov    WORD PTR [rip+0x98e4],dx        # ffffffff8020b726 <idt+0x146>
ffffffff80201e42:	48 89 c2             	mov    rdx,rax
ffffffff80201e45:	66 89 05 e4 98 00 00 	mov    WORD PTR [rip+0x98e4],ax        # ffffffff8020b730 <idt+0x150>
ffffffff80201e4c:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201e50:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201e54:	89 05 de 98 00 00    	mov    DWORD PTR [rip+0x98de],eax        # ffffffff8020b738 <idt+0x158>
ffffffff80201e5a:	48 c7 c0 3b 01 20 80 	mov    rax,0xffffffff8020013b
ffffffff80201e61:	66 89 15 ce 98 00 00 	mov    WORD PTR [rip+0x98ce],dx        # ffffffff8020b736 <idt+0x156>
ffffffff80201e68:	48 89 c2             	mov    rdx,rax
ffffffff80201e6b:	66 89 05 ce 98 00 00 	mov    WORD PTR [rip+0x98ce],ax        # ffffffff8020b740 <idt+0x160>
ffffffff80201e72:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201e76:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201e7a:	89 05 c8 98 00 00    	mov    DWORD PTR [rip+0x98c8],eax        # ffffffff8020b748 <idt+0x168>
ffffffff80201e80:	48 c7 c0 44 01 20 80 	mov    rax,0xffffffff80200144
ffffffff80201e87:	66 89 15 b8 98 00 00 	mov    WORD PTR [rip+0x98b8],dx        # ffffffff8020b746 <idt+0x166>
ffffffff80201e8e:	48 89 c2             	mov    rdx,rax
ffffffff80201e91:	66 89 05 b8 98 00 00 	mov    WORD PTR [rip+0x98b8],ax        # ffffffff8020b750 <idt+0x170>
ffffffff80201e98:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201e9c:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201ea0:	89 05 b2 98 00 00    	mov    DWORD PTR [rip+0x98b2],eax        # ffffffff8020b758 <idt+0x178>
ffffffff80201ea6:	48 c7 c0 4d 01 20 80 	mov    rax,0xffffffff8020014d
ffffffff80201ead:	66 89 15 a2 98 00 00 	mov    WORD PTR [rip+0x98a2],dx        # ffffffff8020b756 <idt+0x176>
ffffffff80201eb4:	48 89 c2             	mov    rdx,rax
ffffffff80201eb7:	66 89 05 a2 98 00 00 	mov    WORD PTR [rip+0x98a2],ax        # ffffffff8020b760 <idt+0x180>
ffffffff80201ebe:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201ec2:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201ec6:	89 05 9c 98 00 00    	mov    DWORD PTR [rip+0x989c],eax        # ffffffff8020b768 <idt+0x188>
ffffffff80201ecc:	48 c7 c0 56 01 20 80 	mov    rax,0xffffffff80200156
ffffffff80201ed3:	66 89 15 8c 98 00 00 	mov    WORD PTR [rip+0x988c],dx        # ffffffff8020b766 <idt+0x186>
ffffffff80201eda:	48 89 c2             	mov    rdx,rax
ffffffff80201edd:	66 89 05 8c 98 00 00 	mov    WORD PTR [rip+0x988c],ax        # ffffffff8020b770 <idt+0x190>
ffffffff80201ee4:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201ee8:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201eec:	89 05 86 98 00 00    	mov    DWORD PTR [rip+0x9886],eax        # ffffffff8020b778 <idt+0x198>
ffffffff80201ef2:	48 c7 c0 5f 01 20 80 	mov    rax,0xffffffff8020015f
ffffffff80201ef9:	66 89 15 76 98 00 00 	mov    WORD PTR [rip+0x9876],dx        # ffffffff8020b776 <idt+0x196>
ffffffff80201f00:	48 89 c2             	mov    rdx,rax
ffffffff80201f03:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201f07:	66 89 05 72 98 00 00 	mov    WORD PTR [rip+0x9872],ax        # ffffffff8020b780 <idt+0x1a0>
ffffffff80201f0e:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201f12:	c7 05 10 98 00 00 00 	mov    DWORD PTR [rip+0x9810],0x0        # ffffffff8020b72c <idt+0x14c>
ffffffff80201f19:	00 00 00 
ffffffff80201f1c:	c7 05 0c 98 00 00 08 	mov    DWORD PTR [rip+0x980c],0x8e000008        # ffffffff8020b732 <idt+0x152>
ffffffff80201f23:	00 00 8e 
ffffffff80201f26:	c7 05 0c 98 00 00 00 	mov    DWORD PTR [rip+0x980c],0x0        # ffffffff8020b73c <idt+0x15c>
ffffffff80201f2d:	00 00 00 
ffffffff80201f30:	c7 05 08 98 00 00 08 	mov    DWORD PTR [rip+0x9808],0x8e000008        # ffffffff8020b742 <idt+0x162>
ffffffff80201f37:	00 00 8e 
ffffffff80201f3a:	c7 05 08 98 00 00 00 	mov    DWORD PTR [rip+0x9808],0x0        # ffffffff8020b74c <idt+0x16c>
ffffffff80201f41:	00 00 00 
ffffffff80201f44:	c7 05 04 98 00 00 08 	mov    DWORD PTR [rip+0x9804],0x8e000008        # ffffffff8020b752 <idt+0x172>
ffffffff80201f4b:	00 00 8e 
ffffffff80201f4e:	c7 05 04 98 00 00 00 	mov    DWORD PTR [rip+0x9804],0x0        # ffffffff8020b75c <idt+0x17c>
ffffffff80201f55:	00 00 00 
ffffffff80201f58:	c7 05 00 98 00 00 08 	mov    DWORD PTR [rip+0x9800],0x8e000008        # ffffffff8020b762 <idt+0x182>
ffffffff80201f5f:	00 00 8e 
ffffffff80201f62:	c7 05 00 98 00 00 00 	mov    DWORD PTR [rip+0x9800],0x0        # ffffffff8020b76c <idt+0x18c>
ffffffff80201f69:	00 00 00 
ffffffff80201f6c:	c7 05 fc 97 00 00 08 	mov    DWORD PTR [rip+0x97fc],0x8e000008        # ffffffff8020b772 <idt+0x192>
ffffffff80201f73:	00 00 8e 
ffffffff80201f76:	c7 05 fc 97 00 00 00 	mov    DWORD PTR [rip+0x97fc],0x0        # ffffffff8020b77c <idt+0x19c>
ffffffff80201f7d:	00 00 00 
ffffffff80201f80:	c7 05 f8 97 00 00 08 	mov    DWORD PTR [rip+0x97f8],0x8e000008        # ffffffff8020b782 <idt+0x1a2>
ffffffff80201f87:	00 00 8e 
ffffffff80201f8a:	66 89 15 f5 97 00 00 	mov    WORD PTR [rip+0x97f5],dx        # ffffffff8020b786 <idt+0x1a6>
ffffffff80201f91:	89 05 f1 97 00 00    	mov    DWORD PTR [rip+0x97f1],eax        # ffffffff8020b788 <idt+0x1a8>
ffffffff80201f97:	48 c7 c0 68 01 20 80 	mov    rax,0xffffffff80200168
ffffffff80201f9e:	66 89 05 eb 97 00 00 	mov    WORD PTR [rip+0x97eb],ax        # ffffffff8020b790 <idt+0x1b0>
ffffffff80201fa5:	48 89 c2             	mov    rdx,rax
ffffffff80201fa8:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201fac:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201fb0:	89 05 e2 97 00 00    	mov    DWORD PTR [rip+0x97e2],eax        # ffffffff8020b798 <idt+0x1b8>
ffffffff80201fb6:	48 c7 c0 71 01 20 80 	mov    rax,0xffffffff80200171
ffffffff80201fbd:	66 89 15 d2 97 00 00 	mov    WORD PTR [rip+0x97d2],dx        # ffffffff8020b796 <idt+0x1b6>
ffffffff80201fc4:	48 89 c2             	mov    rdx,rax
ffffffff80201fc7:	66 89 05 d2 97 00 00 	mov    WORD PTR [rip+0x97d2],ax        # ffffffff8020b7a0 <idt+0x1c0>
ffffffff80201fce:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201fd2:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201fd6:	89 05 cc 97 00 00    	mov    DWORD PTR [rip+0x97cc],eax        # ffffffff8020b7a8 <idt+0x1c8>
ffffffff80201fdc:	48 c7 c0 7a 01 20 80 	mov    rax,0xffffffff8020017a
ffffffff80201fe3:	66 89 15 bc 97 00 00 	mov    WORD PTR [rip+0x97bc],dx        # ffffffff8020b7a6 <idt+0x1c6>
ffffffff80201fea:	48 89 c2             	mov    rdx,rax
ffffffff80201fed:	66 89 05 bc 97 00 00 	mov    WORD PTR [rip+0x97bc],ax        # ffffffff8020b7b0 <idt+0x1d0>
ffffffff80201ff4:	48 c1 e8 20          	shr    rax,0x20
ffffffff80201ff8:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80201ffc:	89 05 b6 97 00 00    	mov    DWORD PTR [rip+0x97b6],eax        # ffffffff8020b7b8 <idt+0x1d8>
ffffffff80202002:	48 c7 c0 83 01 20 80 	mov    rax,0xffffffff80200183
ffffffff80202009:	66 89 15 a6 97 00 00 	mov    WORD PTR [rip+0x97a6],dx        # ffffffff8020b7b6 <idt+0x1d6>
ffffffff80202010:	48 89 c2             	mov    rdx,rax
ffffffff80202013:	66 89 05 a6 97 00 00 	mov    WORD PTR [rip+0x97a6],ax        # ffffffff8020b7c0 <idt+0x1e0>
ffffffff8020201a:	48 c1 e8 20          	shr    rax,0x20
ffffffff8020201e:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80202022:	89 05 a0 97 00 00    	mov    DWORD PTR [rip+0x97a0],eax        # ffffffff8020b7c8 <idt+0x1e8>
ffffffff80202028:	48 c7 c0 8c 01 20 80 	mov    rax,0xffffffff8020018c
ffffffff8020202f:	66 89 15 90 97 00 00 	mov    WORD PTR [rip+0x9790],dx        # ffffffff8020b7c6 <idt+0x1e6>
ffffffff80202036:	48 89 c2             	mov    rdx,rax
ffffffff80202039:	66 89 05 90 97 00 00 	mov    WORD PTR [rip+0x9790],ax        # ffffffff8020b7d0 <idt+0x1f0>
ffffffff80202040:	48 c1 e8 20          	shr    rax,0x20
ffffffff80202044:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80202048:	89 05 8a 97 00 00    	mov    DWORD PTR [rip+0x978a],eax        # ffffffff8020b7d8 <idt+0x1f8>
ffffffff8020204e:	48 c7 c0 f9 01 20 80 	mov    rax,0xffffffff802001f9
ffffffff80202055:	66 89 15 7a 97 00 00 	mov    WORD PTR [rip+0x977a],dx        # ffffffff8020b7d6 <idt+0x1f6>
ffffffff8020205c:	48 89 c2             	mov    rdx,rax
ffffffff8020205f:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80202063:	66 89 05 76 97 00 00 	mov    WORD PTR [rip+0x9776],ax        # ffffffff8020b7e0 <idt+0x200>
ffffffff8020206a:	48 c1 e8 20          	shr    rax,0x20
ffffffff8020206e:	89 05 74 97 00 00    	mov    DWORD PTR [rip+0x9774],eax        # ffffffff8020b7e8 <idt+0x208>
ffffffff80202074:	48 c7 c0 95 01 20 80 	mov    rax,0xffffffff80200195
ffffffff8020207b:	66 89 15 64 97 00 00 	mov    WORD PTR [rip+0x9764],dx        # ffffffff8020b7e6 <idt+0x206>
ffffffff80202082:	48 89 c2             	mov    rdx,rax
ffffffff80202085:	c7 05 fd 96 00 00 00 	mov    DWORD PTR [rip+0x96fd],0x0        # ffffffff8020b78c <idt+0x1ac>
ffffffff8020208c:	00 00 00 
ffffffff8020208f:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80202093:	c7 05 f5 96 00 00 08 	mov    DWORD PTR [rip+0x96f5],0x8e000008        # ffffffff8020b792 <idt+0x1b2>
ffffffff8020209a:	00 00 8e 
ffffffff8020209d:	c7 05 f5 96 00 00 00 	mov    DWORD PTR [rip+0x96f5],0x0        # ffffffff8020b79c <idt+0x1bc>
ffffffff802020a4:	00 00 00 
ffffffff802020a7:	c7 05 f1 96 00 00 08 	mov    DWORD PTR [rip+0x96f1],0x8e000008        # ffffffff8020b7a2 <idt+0x1c2>
ffffffff802020ae:	00 00 8e 
ffffffff802020b1:	c7 05 f1 96 00 00 00 	mov    DWORD PTR [rip+0x96f1],0x0        # ffffffff8020b7ac <idt+0x1cc>
ffffffff802020b8:	00 00 00 
ffffffff802020bb:	c7 05 ed 96 00 00 08 	mov    DWORD PTR [rip+0x96ed],0x8e000008        # ffffffff8020b7b2 <idt+0x1d2>
ffffffff802020c2:	00 00 8e 
ffffffff802020c5:	c7 05 ed 96 00 00 00 	mov    DWORD PTR [rip+0x96ed],0x0        # ffffffff8020b7bc <idt+0x1dc>
ffffffff802020cc:	00 00 00 
ffffffff802020cf:	c7 05 e9 96 00 00 08 	mov    DWORD PTR [rip+0x96e9],0x8e000008        # ffffffff8020b7c2 <idt+0x1e2>
ffffffff802020d6:	00 00 8e 
ffffffff802020d9:	c7 05 e9 96 00 00 00 	mov    DWORD PTR [rip+0x96e9],0x0        # ffffffff8020b7cc <idt+0x1ec>
ffffffff802020e0:	00 00 00 
ffffffff802020e3:	c7 05 e5 96 00 00 08 	mov    DWORD PTR [rip+0x96e5],0x8e000008        # ffffffff8020b7d2 <idt+0x1f2>
ffffffff802020ea:	00 00 8e 
ffffffff802020ed:	c7 05 e5 96 00 00 00 	mov    DWORD PTR [rip+0x96e5],0x0        # ffffffff8020b7dc <idt+0x1fc>
ffffffff802020f4:	00 00 00 
ffffffff802020f7:	c7 05 e1 96 00 00 08 	mov    DWORD PTR [rip+0x96e1],0x8e000008        # ffffffff8020b7e2 <idt+0x202>
ffffffff802020fe:	00 00 8e 
ffffffff80202101:	c7 05 e1 96 00 00 00 	mov    DWORD PTR [rip+0x96e1],0x0        # ffffffff8020b7ec <idt+0x20c>
ffffffff80202108:	00 00 00 
ffffffff8020210b:	66 89 05 be 9c 00 00 	mov    WORD PTR [rip+0x9cbe],ax        # ffffffff8020bdd0 <idt+0x7f0>
ffffffff80202112:	48 c1 e8 20          	shr    rax,0x20
ffffffff80202116:	89 05 bc 9c 00 00    	mov    DWORD PTR [rip+0x9cbc],eax        # ffffffff8020bdd8 <idt+0x7f8>
ffffffff8020211c:	48 c7 c0 aa 01 20 80 	mov    rax,0xffffffff802001aa
ffffffff80202123:	66 89 15 ac 9c 00 00 	mov    WORD PTR [rip+0x9cac],dx        # ffffffff8020bdd6 <idt+0x7f6>
ffffffff8020212a:	48 89 c2             	mov    rdx,rax
ffffffff8020212d:	48 c1 ea 10          	shr    rdx,0x10
ffffffff80202131:	66 89 05 b8 9c 00 00 	mov    WORD PTR [rip+0x9cb8],ax        # ffffffff8020bdf0 <idt+0x810>
ffffffff80202138:	48 c1 e8 20          	shr    rax,0x20
ffffffff8020213c:	66 89 15 b3 9c 00 00 	mov    WORD PTR [rip+0x9cb3],dx        # ffffffff8020bdf6 <idt+0x816>
ffffffff80202143:	89 05 af 9c 00 00    	mov    DWORD PTR [rip+0x9caf],eax        # ffffffff8020bdf8 <idt+0x818>
ffffffff80202149:	c7 05 7f 9c 00 00 08 	mov    DWORD PTR [rip+0x9c7f],0x8e000008        # ffffffff8020bdd2 <idt+0x7f2>
ffffffff80202150:	00 00 8e 
ffffffff80202153:	c7 05 7f 9c 00 00 00 	mov    DWORD PTR [rip+0x9c7f],0x0        # ffffffff8020bddc <idt+0x7fc>
ffffffff8020215a:	00 00 00 
ffffffff8020215d:	c7 05 8b 9c 00 00 08 	mov    DWORD PTR [rip+0x9c8b],0x8e000008        # ffffffff8020bdf2 <idt+0x812>
ffffffff80202164:	00 00 8e 
ffffffff80202167:	c7 05 8b 9c 00 00 00 	mov    DWORD PTR [rip+0x9c8b],0x0        # ffffffff8020bdfc <idt+0x81c>
ffffffff8020216e:	00 00 00 
ffffffff80202171:	e8 d7 de ff ff       	call   ffffffff8020004d <load_idt>
ffffffff80202176:	31 c0                	xor    eax,eax
ffffffff80202178:	e8 c3 3e 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020217d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202184:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202189:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80202190:	e8 5b ea ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202195:	31 c0                	xor    eax,eax
ffffffff80202197:	e8 44 37 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020219c:	84 c0                	test   al,al
ffffffff8020219e:	0f 85 8c 00 00 00    	jne    ffffffff80202230 <setup_idt+0x950>
ffffffff802021a4:	48 c7 c1 b8 97 20 80 	mov    rcx,0xffffffff802097b8
ffffffff802021ab:	ba a4 00 00 00       	mov    edx,0xa4
ffffffff802021b0:	48 c7 c6 0a 97 20 80 	mov    rsi,0xffffffff8020970a
ffffffff802021b7:	31 c0                	xor    eax,eax
ffffffff802021b9:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802021c0:	e8 9b 5c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802021c5:	0f b7 0d f4 93 00 00 	movzx  ecx,WORD PTR [rip+0x93f4]        # ffffffff8020b5c0 <idt_descriptor>
ffffffff802021cc:	31 c0                	xor    eax,eax
ffffffff802021ce:	48 8b 15 ed 93 00 00 	mov    rdx,QWORD PTR [rip+0x93ed]        # ffffffff8020b5c2 <idt_descriptor+0x2>
ffffffff802021d5:	48 c7 c6 c0 b5 20 80 	mov    rsi,0xffffffff8020b5c0
ffffffff802021dc:	48 c7 c7 58 97 20 80 	mov    rdi,0xffffffff80209758
ffffffff802021e3:	e8 78 5c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802021e8:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802021ef:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802021f4:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802021fb:	e8 f0 e9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202200:	31 c0                	xor    eax,eax
ffffffff80202202:	48 83 c4 08          	add    rsp,0x8
ffffffff80202206:	e9 55 3e 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff8020220b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80202210:	31 c0                	xor    eax,eax
ffffffff80202212:	e8 59 35 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80202217:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020221e:	89 c6                	mov    esi,eax
ffffffff80202220:	31 c0                	xor    eax,eax
ffffffff80202222:	e8 39 5c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202227:	e9 8a fb ff ff       	jmp    ffffffff80201db6 <setup_idt+0x4d6>
ffffffff8020222c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80202230:	31 c0                	xor    eax,eax
ffffffff80202232:	e8 39 35 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80202237:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020223e:	89 c6                	mov    esi,eax
ffffffff80202240:	31 c0                	xor    eax,eax
ffffffff80202242:	e8 19 5c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202247:	e9 58 ff ff ff       	jmp    ffffffff802021a4 <setup_idt+0x8c4>
ffffffff8020224c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80202250 <log_stackframe>:
ffffffff80202250:	c3                   	ret    
ffffffff80202251:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80202256:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020225d:	00 00 00 

ffffffff80202260 <isr_handler>:
ffffffff80202260:	48 83 ec 08          	sub    rsp,0x8
ffffffff80202264:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
ffffffff8020226b:	00 
ffffffff8020226c:	48 8b 04 c5 20 ce 20 	mov    rax,QWORD PTR [rax*8-0x7fdf31e0]
ffffffff80202273:	80 
ffffffff80202274:	48 85 c0             	test   rax,rax
ffffffff80202277:	74 0c                	je     ffffffff80202285 <isr_handler+0x25>
ffffffff80202279:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
ffffffff8020227e:	ff d0                	call   rax
ffffffff80202280:	48 83 c4 08          	add    rsp,0x8
ffffffff80202284:	c3                   	ret    
ffffffff80202285:	31 c0                	xor    eax,eax
ffffffff80202287:	e8 b4 3d 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020228c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202293:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202298:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff8020229f:	e8 4c e9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802022a4:	31 c0                	xor    eax,eax
ffffffff802022a6:	e8 35 36 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802022ab:	84 c0                	test   al,al
ffffffff802022ad:	75 54                	jne    ffffffff80202303 <isr_handler+0xa3>
ffffffff802022af:	48 c7 c1 a8 97 20 80 	mov    rcx,0xffffffff802097a8
ffffffff802022b6:	ba d0 00 00 00       	mov    edx,0xd0
ffffffff802022bb:	48 c7 c6 0a 97 20 80 	mov    rsi,0xffffffff8020970a
ffffffff802022c2:	31 c0                	xor    eax,eax
ffffffff802022c4:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802022cb:	e8 90 5b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802022d0:	48 c7 c7 20 97 20 80 	mov    rdi,0xffffffff80209720
ffffffff802022d7:	31 c0                	xor    eax,eax
ffffffff802022d9:	e8 82 5b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802022de:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802022e5:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802022ea:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802022f1:	e8 fa e8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802022f6:	31 c0                	xor    eax,eax
ffffffff802022f8:	e8 63 3d 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802022fd:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80202300:	f4                   	hlt    
ffffffff80202301:	eb fd                	jmp    ffffffff80202300 <isr_handler+0xa0>
ffffffff80202303:	31 c0                	xor    eax,eax
ffffffff80202305:	e8 66 34 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020230a:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80202311:	89 c6                	mov    esi,eax
ffffffff80202313:	31 c0                	xor    eax,eax
ffffffff80202315:	e8 46 5b 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020231a:	eb 93                	jmp    ffffffff802022af <isr_handler+0x4f>
ffffffff8020231c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80202320 <irq_handler>:
ffffffff80202320:	48 83 ec 08          	sub    rsp,0x8
ffffffff80202324:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
ffffffff8020232b:	00 
ffffffff8020232c:	48 8b 04 c5 20 ce 20 	mov    rax,QWORD PTR [rax*8-0x7fdf31e0]
ffffffff80202333:	80 
ffffffff80202334:	48 85 c0             	test   rax,rax
ffffffff80202337:	74 13                	je     ffffffff8020234c <irq_handler+0x2c>
ffffffff80202339:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
ffffffff8020233e:	ff d0                	call   rax
ffffffff80202340:	31 c0                	xor    eax,eax
ffffffff80202342:	e8 29 e2 ff ff       	call   ffffffff80200570 <cpu_send_EOI>
ffffffff80202347:	48 83 c4 08          	add    rsp,0x8
ffffffff8020234b:	c3                   	ret    
ffffffff8020234c:	31 c0                	xor    eax,eax
ffffffff8020234e:	e8 ed 3c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202353:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020235a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020235f:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80202366:	e8 85 e8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020236b:	31 c0                	xor    eax,eax
ffffffff8020236d:	e8 6e 35 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202372:	84 c0                	test   al,al
ffffffff80202374:	75 55                	jne    ffffffff802023cb <irq_handler+0xab>
ffffffff80202376:	48 c7 c1 98 97 20 80 	mov    rcx,0xffffffff80209798
ffffffff8020237d:	ba e2 00 00 00       	mov    edx,0xe2
ffffffff80202382:	48 c7 c6 0a 97 20 80 	mov    rsi,0xffffffff8020970a
ffffffff80202389:	31 c0                	xor    eax,eax
ffffffff8020238b:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202392:	e8 c9 5a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202397:	48 c7 c7 20 97 20 80 	mov    rdi,0xffffffff80209720
ffffffff8020239e:	31 c0                	xor    eax,eax
ffffffff802023a0:	e8 bb 5a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802023a5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802023ac:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802023b1:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802023b8:	e8 33 e8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802023bd:	31 c0                	xor    eax,eax
ffffffff802023bf:	e8 9c 3c 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802023c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802023c8:	f4                   	hlt    
ffffffff802023c9:	eb fd                	jmp    ffffffff802023c8 <irq_handler+0xa8>
ffffffff802023cb:	31 c0                	xor    eax,eax
ffffffff802023cd:	e8 9e 33 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802023d2:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802023d9:	89 c6                	mov    esi,eax
ffffffff802023db:	31 c0                	xor    eax,eax
ffffffff802023dd:	e8 7e 5a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802023e2:	eb 92                	jmp    ffffffff80202376 <irq_handler+0x56>
ffffffff802023e4:	66 90                	xchg   ax,ax
ffffffff802023e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802023ed:	00 00 00 

ffffffff802023f0 <attach_isr>:
ffffffff802023f0:	40 0f b6 ff          	movzx  edi,dil
ffffffff802023f4:	48 89 34 fd 20 ce 20 	mov    QWORD PTR [rdi*8-0x7fdf31e0],rsi
ffffffff802023fb:	80 
ffffffff802023fc:	c3                   	ret    
ffffffff802023fd:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80202400 <parse_RSDP>:
ffffffff80202400:	80 3d d9 a1 00 00 00 	cmp    BYTE PTR [rip+0xa1d9],0x0        # ffffffff8020c5e0 <once.1723>
ffffffff80202407:	0f 85 8b 01 00 00    	jne    ffffffff80202598 <parse_RSDP+0x198>
ffffffff8020240d:	55                   	push   rbp
ffffffff8020240e:	48 89 fd             	mov    rbp,rdi
ffffffff80202411:	48 83 ec 10          	sub    rsp,0x10
ffffffff80202415:	48 8b 05 34 a3 00 00 	mov    rax,QWORD PTR [rip+0xa334]        # ffffffff8020c750 <desc_rsdp_20>
ffffffff8020241c:	c6 05 bd a1 00 00 01 	mov    BYTE PTR [rip+0xa1bd],0x1        # ffffffff8020c5e0 <once.1723>
ffffffff80202423:	80 78 0f 00          	cmp    BYTE PTR [rax+0xf],0x0
ffffffff80202427:	74 07                	je     ffffffff80202430 <parse_RSDP+0x30>
ffffffff80202429:	48 89 3d 20 a3 00 00 	mov    QWORD PTR [rip+0xa320],rdi        # ffffffff8020c750 <desc_rsdp_20>
ffffffff80202430:	48 89 ee             	mov    rsi,rbp
ffffffff80202433:	48 8d 7c 24 07       	lea    rdi,[rsp+0x7]
ffffffff80202438:	ba 08 00 00 00       	mov    edx,0x8
ffffffff8020243d:	48 c7 44 24 07 00 00 	mov    QWORD PTR [rsp+0x7],0x0
ffffffff80202444:	00 00 
ffffffff80202446:	c6 44 24 0f 00       	mov    BYTE PTR [rsp+0xf],0x0
ffffffff8020244b:	e8 60 57 00 00       	call   ffffffff80207bb0 <memcpy>
ffffffff80202450:	48 c7 c6 c2 97 20 80 	mov    rsi,0xffffffff802097c2
ffffffff80202457:	48 8d 7c 24 07       	lea    rdi,[rsp+0x7]
ffffffff8020245c:	e8 1f 64 00 00       	call   ffffffff80208880 <strcmp>
ffffffff80202461:	84 c0                	test   al,al
ffffffff80202463:	0f 84 a7 00 00 00    	je     ffffffff80202510 <parse_RSDP+0x110>
ffffffff80202469:	31 c0                	xor    eax,eax
ffffffff8020246b:	e8 d0 3b 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202470:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202477:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020247c:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80202483:	e8 68 e7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202488:	31 c0                	xor    eax,eax
ffffffff8020248a:	e8 51 34 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020248f:	84 c0                	test   al,al
ffffffff80202491:	0f 85 09 01 00 00    	jne    ffffffff802025a0 <parse_RSDP+0x1a0>
ffffffff80202497:	48 c7 c1 a8 98 20 80 	mov    rcx,0xffffffff802098a8
ffffffff8020249e:	ba 1e 00 00 00       	mov    edx,0x1e
ffffffff802024a3:	48 c7 c6 cb 97 20 80 	mov    rsi,0xffffffff802097cb
ffffffff802024aa:	31 c0                	xor    eax,eax
ffffffff802024ac:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802024b3:	e8 a8 59 00 00       	call   ffffffff80207e60 <printf>
ffffffff802024b8:	48 89 ee             	mov    rsi,rbp
ffffffff802024bb:	48 c7 c7 40 98 20 80 	mov    rdi,0xffffffff80209840
ffffffff802024c2:	31 c0                	xor    eax,eax
ffffffff802024c4:	e8 97 59 00 00       	call   ffffffff80207e60 <printf>
ffffffff802024c9:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802024d0:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802024d5:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802024dc:	e8 0f e7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802024e1:	31 c0                	xor    eax,eax
ffffffff802024e3:	e8 78 3b 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802024e8:	31 c0                	xor    eax,eax
ffffffff802024ea:	e8 11 34 00 00       	call   ffffffff80205900 <disable_ints>
ffffffff802024ef:	31 c0                	xor    eax,eax
ffffffff802024f1:	e8 1a 34 00 00       	call   ffffffff80205910 <halt>
ffffffff802024f6:	48 81 05 4f a2 00 00 	add    QWORD PTR [rip+0xa24f],0xffffffff80000000        # ffffffff8020c750 <desc_rsdp_20>
ffffffff802024fd:	00 00 00 80 
ffffffff80202501:	48 83 c4 10          	add    rsp,0x10
ffffffff80202505:	5d                   	pop    rbp
ffffffff80202506:	c3                   	ret    
ffffffff80202507:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020250e:	00 00 
ffffffff80202510:	e8 2b 3b 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202515:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020251c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202521:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80202528:	e8 c3 e6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020252d:	31 c0                	xor    eax,eax
ffffffff8020252f:	e8 ac 33 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202534:	84 c0                	test   al,al
ffffffff80202536:	0f 85 84 00 00 00    	jne    ffffffff802025c0 <parse_RSDP+0x1c0>
ffffffff8020253c:	48 c7 c1 a8 98 20 80 	mov    rcx,0xffffffff802098a8
ffffffff80202543:	ba 1e 00 00 00       	mov    edx,0x1e
ffffffff80202548:	31 c0                	xor    eax,eax
ffffffff8020254a:	48 c7 c6 cb 97 20 80 	mov    rsi,0xffffffff802097cb
ffffffff80202551:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202558:	e8 03 59 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020255d:	48 89 ee             	mov    rsi,rbp
ffffffff80202560:	31 c0                	xor    eax,eax
ffffffff80202562:	48 c7 c7 18 98 20 80 	mov    rdi,0xffffffff80209818
ffffffff80202569:	e8 f2 58 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020256e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202575:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020257a:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202581:	e8 6a e6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202586:	31 c0                	xor    eax,eax
ffffffff80202588:	e8 d3 3a 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020258d:	e9 64 ff ff ff       	jmp    ffffffff802024f6 <parse_RSDP+0xf6>
ffffffff80202592:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80202598:	c3                   	ret    
ffffffff80202599:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff802025a0:	31 c0                	xor    eax,eax
ffffffff802025a2:	e8 c9 31 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802025a7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802025ae:	89 c6                	mov    esi,eax
ffffffff802025b0:	31 c0                	xor    eax,eax
ffffffff802025b2:	e8 a9 58 00 00       	call   ffffffff80207e60 <printf>
ffffffff802025b7:	e9 db fe ff ff       	jmp    ffffffff80202497 <parse_RSDP+0x97>
ffffffff802025bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802025c0:	31 c0                	xor    eax,eax
ffffffff802025c2:	e8 a9 31 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802025c7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802025ce:	89 c6                	mov    esi,eax
ffffffff802025d0:	31 c0                	xor    eax,eax
ffffffff802025d2:	e8 89 58 00 00       	call   ffffffff80207e60 <printf>
ffffffff802025d7:	e9 60 ff ff ff       	jmp    ffffffff8020253c <parse_RSDP+0x13c>
ffffffff802025dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff802025e0 <checksum>:
ffffffff802025e0:	8b 77 04             	mov    esi,DWORD PTR [rdi+0x4]
ffffffff802025e3:	48 85 f6             	test   rsi,rsi
ffffffff802025e6:	0f 84 14 01 00 00    	je     ffffffff80202700 <checksum+0x120>
ffffffff802025ec:	48 8d 46 ff          	lea    rax,[rsi-0x1]
ffffffff802025f0:	48 83 f8 07          	cmp    rax,0x7
ffffffff802025f4:	0f 86 0c 01 00 00    	jbe    ffffffff80202706 <checksum+0x126>
ffffffff802025fa:	49 89 f3             	mov    r11,rsi
ffffffff802025fd:	48 8b 15 b4 72 00 00 	mov    rdx,QWORD PTR [rip+0x72b4]        # ffffffff802098b8 <__func__.1725+0x10>
ffffffff80202604:	53                   	push   rbx
ffffffff80202605:	48 89 f9             	mov    rcx,rdi
ffffffff80202608:	49 b9 7f 7f 7f 7f 7f 	movabs r9,0x7f7f7f7f7f7f7f7f
ffffffff8020260f:	7f 7f 7f 
ffffffff80202612:	41 83 e3 f8          	and    r11d,0xfffffff8
ffffffff80202616:	48 bb 80 80 80 80 80 	movabs rbx,0x8080808080808080
ffffffff8020261d:	80 80 80 
ffffffff80202620:	49 01 fb             	add    r11,rdi
ffffffff80202623:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80202628:	4c 8b 01             	mov    r8,QWORD PTR [rcx]
ffffffff8020262b:	4c 89 c8             	mov    rax,r9
ffffffff8020262e:	4d 89 ca             	mov    r10,r9
ffffffff80202631:	48 83 c1 08          	add    rcx,0x8
ffffffff80202635:	48 21 d0             	and    rax,rdx
ffffffff80202638:	4d 21 c2             	and    r10,r8
ffffffff8020263b:	4c 31 c2             	xor    rdx,r8
ffffffff8020263e:	48 21 da             	and    rdx,rbx
ffffffff80202641:	4c 01 d0             	add    rax,r10
ffffffff80202644:	48 31 d0             	xor    rax,rdx
ffffffff80202647:	48 89 c2             	mov    rdx,rax
ffffffff8020264a:	4c 39 d9             	cmp    rcx,r11
ffffffff8020264d:	75 d9                	jne    ffffffff80202628 <checksum+0x48>
ffffffff8020264f:	0f b6 d4             	movzx  edx,ah
ffffffff80202652:	48 89 c1             	mov    rcx,rax
ffffffff80202655:	01 c2                	add    edx,eax
ffffffff80202657:	48 c1 e9 10          	shr    rcx,0x10
ffffffff8020265b:	01 ca                	add    edx,ecx
ffffffff8020265d:	48 89 c1             	mov    rcx,rax
ffffffff80202660:	48 c1 e9 18          	shr    rcx,0x18
ffffffff80202664:	01 ca                	add    edx,ecx
ffffffff80202666:	48 89 c1             	mov    rcx,rax
ffffffff80202669:	48 c1 e9 20          	shr    rcx,0x20
ffffffff8020266d:	01 ca                	add    edx,ecx
ffffffff8020266f:	48 89 c1             	mov    rcx,rax
ffffffff80202672:	48 c1 e9 28          	shr    rcx,0x28
ffffffff80202676:	01 ca                	add    edx,ecx
ffffffff80202678:	48 89 c1             	mov    rcx,rax
ffffffff8020267b:	48 c1 e8 38          	shr    rax,0x38
ffffffff8020267f:	48 c1 e9 30          	shr    rcx,0x30
ffffffff80202683:	01 ca                	add    edx,ecx
ffffffff80202685:	01 d0                	add    eax,edx
ffffffff80202687:	48 89 f2             	mov    rdx,rsi
ffffffff8020268a:	48 83 e2 f8          	and    rdx,0xfffffffffffffff8
ffffffff8020268e:	48 39 d6             	cmp    rsi,rdx
ffffffff80202691:	74 5e                	je     ffffffff802026f1 <checksum+0x111>
ffffffff80202693:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
ffffffff80202697:	02 04 17             	add    al,BYTE PTR [rdi+rdx*1]
ffffffff8020269a:	48 39 f1             	cmp    rcx,rsi
ffffffff8020269d:	73 52                	jae    ffffffff802026f1 <checksum+0x111>
ffffffff8020269f:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
ffffffff802026a3:	02 44 17 01          	add    al,BYTE PTR [rdi+rdx*1+0x1]
ffffffff802026a7:	48 39 ce             	cmp    rsi,rcx
ffffffff802026aa:	76 45                	jbe    ffffffff802026f1 <checksum+0x111>
ffffffff802026ac:	48 8d 4a 03          	lea    rcx,[rdx+0x3]
ffffffff802026b0:	02 44 17 02          	add    al,BYTE PTR [rdi+rdx*1+0x2]
ffffffff802026b4:	48 39 ce             	cmp    rsi,rcx
ffffffff802026b7:	76 38                	jbe    ffffffff802026f1 <checksum+0x111>
ffffffff802026b9:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
ffffffff802026bd:	02 44 17 03          	add    al,BYTE PTR [rdi+rdx*1+0x3]
ffffffff802026c1:	48 39 ce             	cmp    rsi,rcx
ffffffff802026c4:	76 2b                	jbe    ffffffff802026f1 <checksum+0x111>
ffffffff802026c6:	48 8d 4a 05          	lea    rcx,[rdx+0x5]
ffffffff802026ca:	02 44 17 04          	add    al,BYTE PTR [rdi+rdx*1+0x4]
ffffffff802026ce:	48 39 ce             	cmp    rsi,rcx
ffffffff802026d1:	76 1e                	jbe    ffffffff802026f1 <checksum+0x111>
ffffffff802026d3:	48 8d 4a 06          	lea    rcx,[rdx+0x6]
ffffffff802026d7:	02 44 17 05          	add    al,BYTE PTR [rdi+rdx*1+0x5]
ffffffff802026db:	48 39 ce             	cmp    rsi,rcx
ffffffff802026de:	76 11                	jbe    ffffffff802026f1 <checksum+0x111>
ffffffff802026e0:	48 8d 4a 07          	lea    rcx,[rdx+0x7]
ffffffff802026e4:	02 44 17 06          	add    al,BYTE PTR [rdi+rdx*1+0x6]
ffffffff802026e8:	48 39 ce             	cmp    rsi,rcx
ffffffff802026eb:	76 04                	jbe    ffffffff802026f1 <checksum+0x111>
ffffffff802026ed:	02 44 17 07          	add    al,BYTE PTR [rdi+rdx*1+0x7]
ffffffff802026f1:	84 c0                	test   al,al
ffffffff802026f3:	5b                   	pop    rbx
ffffffff802026f4:	0f 94 c0             	sete   al
ffffffff802026f7:	c3                   	ret    
ffffffff802026f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802026ff:	00 
ffffffff80202700:	b8 01 00 00 00       	mov    eax,0x1
ffffffff80202705:	c3                   	ret    
ffffffff80202706:	31 d2                	xor    edx,edx
ffffffff80202708:	31 c0                	xor    eax,eax
ffffffff8020270a:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
ffffffff8020270e:	02 04 17             	add    al,BYTE PTR [rdi+rdx*1]
ffffffff80202711:	48 39 f1             	cmp    rcx,rsi
ffffffff80202714:	73 52                	jae    ffffffff80202768 <checksum+0x188>
ffffffff80202716:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
ffffffff8020271a:	02 44 17 01          	add    al,BYTE PTR [rdi+rdx*1+0x1]
ffffffff8020271e:	48 39 ce             	cmp    rsi,rcx
ffffffff80202721:	76 45                	jbe    ffffffff80202768 <checksum+0x188>
ffffffff80202723:	48 8d 4a 03          	lea    rcx,[rdx+0x3]
ffffffff80202727:	02 44 17 02          	add    al,BYTE PTR [rdi+rdx*1+0x2]
ffffffff8020272b:	48 39 ce             	cmp    rsi,rcx
ffffffff8020272e:	76 38                	jbe    ffffffff80202768 <checksum+0x188>
ffffffff80202730:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
ffffffff80202734:	02 44 17 03          	add    al,BYTE PTR [rdi+rdx*1+0x3]
ffffffff80202738:	48 39 ce             	cmp    rsi,rcx
ffffffff8020273b:	76 2b                	jbe    ffffffff80202768 <checksum+0x188>
ffffffff8020273d:	48 8d 4a 05          	lea    rcx,[rdx+0x5]
ffffffff80202741:	02 44 17 04          	add    al,BYTE PTR [rdi+rdx*1+0x4]
ffffffff80202745:	48 39 ce             	cmp    rsi,rcx
ffffffff80202748:	76 1e                	jbe    ffffffff80202768 <checksum+0x188>
ffffffff8020274a:	48 8d 4a 06          	lea    rcx,[rdx+0x6]
ffffffff8020274e:	02 44 17 05          	add    al,BYTE PTR [rdi+rdx*1+0x5]
ffffffff80202752:	48 39 ce             	cmp    rsi,rcx
ffffffff80202755:	76 11                	jbe    ffffffff80202768 <checksum+0x188>
ffffffff80202757:	48 8d 4a 07          	lea    rcx,[rdx+0x7]
ffffffff8020275b:	02 44 17 06          	add    al,BYTE PTR [rdi+rdx*1+0x6]
ffffffff8020275f:	48 39 ce             	cmp    rsi,rcx
ffffffff80202762:	76 04                	jbe    ffffffff80202768 <checksum+0x188>
ffffffff80202764:	02 44 17 07          	add    al,BYTE PTR [rdi+rdx*1+0x7]
ffffffff80202768:	84 c0                	test   al,al
ffffffff8020276a:	0f 94 c0             	sete   al
ffffffff8020276d:	c3                   	ret    
ffffffff8020276e:	66 90                	xchg   ax,ax

ffffffff80202770 <parse_MADT>:
ffffffff80202770:	8b 57 04             	mov    edx,DWORD PTR [rdi+0x4]
ffffffff80202773:	8b 77 24             	mov    esi,DWORD PTR [rdi+0x24]
ffffffff80202776:	48 8d 47 2c          	lea    rax,[rdi+0x2c]
ffffffff8020277a:	48 01 d7             	add    rdi,rdx
ffffffff8020277d:	48 89 35 e4 9e 00 00 	mov    QWORD PTR [rip+0x9ee4],rsi        # ffffffff8020c668 <apic_info+0x68>
ffffffff80202784:	48 39 f8             	cmp    rax,rdi
ffffffff80202787:	73 34                	jae    ffffffff802027bd <parse_MADT+0x4d>
ffffffff80202789:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80202790:	80 38 05             	cmp    BYTE PTR [rax],0x5
ffffffff80202793:	77 1b                	ja     ffffffff802027b0 <parse_MADT+0x40>
ffffffff80202795:	0f b6 10             	movzx  edx,BYTE PTR [rax]
ffffffff80202798:	ff 24 d5 68 98 20 80 	jmp    QWORD PTR [rdx*8-0x7fdf6798]
ffffffff8020279f:	90                   	nop
ffffffff802027a0:	48 8b 50 04          	mov    rdx,QWORD PTR [rax+0x4]
ffffffff802027a4:	48 89 15 bd 9e 00 00 	mov    QWORD PTR [rip+0x9ebd],rdx        # ffffffff8020c668 <apic_info+0x68>
ffffffff802027ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802027b0:	48 0f be 50 01       	movsx  rdx,BYTE PTR [rax+0x1]
ffffffff802027b5:	48 01 d0             	add    rax,rdx
ffffffff802027b8:	48 39 f8             	cmp    rax,rdi
ffffffff802027bb:	72 d3                	jb     ffffffff80202790 <parse_MADT+0x20>
ffffffff802027bd:	c3                   	ret    
ffffffff802027be:	66 90                	xchg   ax,ax
ffffffff802027c0:	0f b6 48 01          	movzx  ecx,BYTE PTR [rax+0x1]
ffffffff802027c4:	48 8b 50 04          	mov    rdx,QWORD PTR [rax+0x4]
ffffffff802027c8:	48 c7 05 9d 9e 00 00 	mov    QWORD PTR [rip+0x9e9d],0x0        # ffffffff8020c670 <apic_info+0x70>
ffffffff802027cf:	00 00 00 00 
ffffffff802027d3:	48 c7 05 9a 9e 00 00 	mov    QWORD PTR [rip+0x9e9a],0x0        # ffffffff8020c678 <apic_info+0x78>
ffffffff802027da:	00 00 00 00 
ffffffff802027de:	48 c7 05 97 9e 00 00 	mov    QWORD PTR [rip+0x9e97],0x0        # ffffffff8020c680 <apic_info+0x80>
ffffffff802027e5:	00 00 00 00 
ffffffff802027e9:	88 0d 81 9e 00 00    	mov    BYTE PTR [rip+0x9e81],cl        # ffffffff8020c670 <apic_info+0x70>
ffffffff802027ef:	48 89 15 7e 9e 00 00 	mov    QWORD PTR [rip+0x9e7e],rdx        # ffffffff8020c674 <apic_info+0x74>
ffffffff802027f6:	eb b8                	jmp    ffffffff802027b0 <parse_MADT+0x40>
ffffffff802027f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802027ff:	00 
ffffffff80202800:	f6 40 04 01          	test   BYTE PTR [rax+0x4],0x1
ffffffff80202804:	74 aa                	je     ffffffff802027b0 <parse_MADT+0x40>
ffffffff80202806:	48 8b 15 f3 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9df3]        # ffffffff8020c600 <apic_info>
ffffffff8020280d:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
ffffffff80202811:	48 8d 14 52          	lea    rdx,[rdx+rdx*2]
ffffffff80202815:	48 89 0d e4 9d 00 00 	mov    QWORD PTR [rip+0x9de4],rcx        # ffffffff8020c600 <apic_info>
ffffffff8020281c:	8b 48 02             	mov    ecx,DWORD PTR [rax+0x2]
ffffffff8020281f:	48 8d 94 12 00 c6 20 	lea    rdx,[rdx+rdx*1-0x7fdf3a00]
ffffffff80202826:	80 
ffffffff80202827:	89 4a 08             	mov    DWORD PTR [rdx+0x8],ecx
ffffffff8020282a:	0f b7 48 06          	movzx  ecx,WORD PTR [rax+0x6]
ffffffff8020282e:	66 89 4a 0c          	mov    WORD PTR [rdx+0xc],cx
ffffffff80202832:	e9 79 ff ff ff       	jmp    ffffffff802027b0 <parse_MADT+0x40>
ffffffff80202837:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020283e:	00 00 
ffffffff80202840:	48 8b 15 c9 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9ec9]        # ffffffff8020c710 <apic_info+0x110>
ffffffff80202847:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
ffffffff8020284b:	48 89 0d be 9e 00 00 	mov    QWORD PTR [rip+0x9ebe],rcx        # ffffffff8020c710 <apic_info+0x110>
ffffffff80202852:	8b 48 02             	mov    ecx,DWORD PTR [rax+0x2]
ffffffff80202855:	89 0c 95 18 c7 20 80 	mov    DWORD PTR [rdx*4-0x7fdf38e8],ecx
ffffffff8020285c:	e9 4f ff ff ff       	jmp    ffffffff802027b0 <parse_MADT+0x40>
ffffffff80202861:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80202868:	48 8b 15 99 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9e99]        # ffffffff8020c708 <apic_info+0x108>
ffffffff8020286f:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
ffffffff80202873:	48 89 0d 8e 9e 00 00 	mov    QWORD PTR [rip+0x9e8e],rcx        # ffffffff8020c708 <apic_info+0x108>
ffffffff8020287a:	48 8b 48 02          	mov    rcx,QWORD PTR [rax+0x2]
ffffffff8020287e:	48 89 0c d5 88 c6 20 	mov    QWORD PTR [rdx*8-0x7fdf3978],rcx
ffffffff80202885:	80 
ffffffff80202886:	e9 25 ff ff ff       	jmp    ffffffff802027b0 <parse_MADT+0x40>
ffffffff8020288b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff80202890 <parse_RSDT>:
ffffffff80202890:	41 57                	push   r15
ffffffff80202892:	41 56                	push   r14
ffffffff80202894:	41 55                	push   r13
ffffffff80202896:	41 54                	push   r12
ffffffff80202898:	55                   	push   rbp
ffffffff80202899:	53                   	push   rbx
ffffffff8020289a:	48 83 ec 18          	sub    rsp,0x18
ffffffff8020289e:	48 8b 05 ab 9e 00 00 	mov    rax,QWORD PTR [rip+0x9eab]        # ffffffff8020c750 <desc_rsdp_20>
ffffffff802028a5:	44 8b 68 10          	mov    r13d,DWORD PTR [rax+0x10]
ffffffff802028a9:	41 8b 85 04 00 00 80 	mov    eax,DWORD PTR [r13-0x7ffffffc]
ffffffff802028b0:	48 83 e8 24          	sub    rax,0x24
ffffffff802028b4:	48 c1 e8 02          	shr    rax,0x2
ffffffff802028b8:	0f 84 0d 02 00 00    	je     ffffffff80202acb <parse_RSDT+0x23b>
ffffffff802028be:	49 81 ed dc ff ff 7f 	sub    r13,0x7fffffdc
ffffffff802028c5:	48 bb 7f 7f 7f 7f 7f 	movabs rbx,0x7f7f7f7f7f7f7f7f
ffffffff802028cc:	7f 7f 7f 
ffffffff802028cf:	49 bc 80 80 80 80 80 	movabs r12,0x8080808080808080
ffffffff802028d6:	80 80 80 
ffffffff802028d9:	4d 8d 74 85 00       	lea    r14,[r13+rax*4+0x0]
ffffffff802028de:	66 90                	xchg   ax,ax
ffffffff802028e0:	c6 44 24 0f 00       	mov    BYTE PTR [rsp+0xf],0x0
ffffffff802028e5:	ba 04 00 00 00       	mov    edx,0x4
ffffffff802028ea:	48 8d 7c 24 0b       	lea    rdi,[rsp+0xb]
ffffffff802028ef:	c7 44 24 0b 00 00 00 	mov    DWORD PTR [rsp+0xb],0x0
ffffffff802028f6:	00 
ffffffff802028f7:	41 8b 4d 00          	mov    ecx,DWORD PTR [r13+0x0]
ffffffff802028fb:	4c 8d b9 00 00 00 80 	lea    r15,[rcx-0x80000000]
ffffffff80202902:	4c 89 fe             	mov    rsi,r15
ffffffff80202905:	4c 89 fd             	mov    rbp,r15
ffffffff80202908:	e8 a3 52 00 00       	call   ffffffff80207bb0 <memcpy>
ffffffff8020290d:	41 8b 77 04          	mov    esi,DWORD PTR [r15+0x4]
ffffffff80202911:	48 85 f6             	test   rsi,rsi
ffffffff80202914:	0f 84 e6 01 00 00    	je     ffffffff80202b00 <parse_RSDT+0x270>
ffffffff8020291a:	48 8d 46 ff          	lea    rax,[rsi-0x1]
ffffffff8020291e:	48 83 f8 07          	cmp    rax,0x7
ffffffff80202922:	0f 86 9c 02 00 00    	jbe    ffffffff80202bc4 <parse_RSDT+0x334>
ffffffff80202928:	48 89 f7             	mov    rdi,rsi
ffffffff8020292b:	4c 8b 05 86 6f 00 00 	mov    r8,QWORD PTR [rip+0x6f86]        # ffffffff802098b8 <__func__.1725+0x10>
ffffffff80202932:	83 e7 f8             	and    edi,0xfffffff8
ffffffff80202935:	4c 01 ff             	add    rdi,r15
ffffffff80202938:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020293f:	00 
ffffffff80202940:	49 8b 17             	mov    rdx,QWORD PTR [r15]
ffffffff80202943:	48 89 d8             	mov    rax,rbx
ffffffff80202946:	49 89 d9             	mov    r9,rbx
ffffffff80202949:	49 83 c7 08          	add    r15,0x8
ffffffff8020294d:	4c 21 c0             	and    rax,r8
ffffffff80202950:	49 21 d1             	and    r9,rdx
ffffffff80202953:	4c 31 c2             	xor    rdx,r8
ffffffff80202956:	4c 01 c8             	add    rax,r9
ffffffff80202959:	4c 21 e2             	and    rdx,r12
ffffffff8020295c:	48 31 d0             	xor    rax,rdx
ffffffff8020295f:	49 89 c0             	mov    r8,rax
ffffffff80202962:	49 39 ff             	cmp    r15,rdi
ffffffff80202965:	75 d9                	jne    ffffffff80202940 <parse_RSDT+0xb0>
ffffffff80202967:	0f b6 d4             	movzx  edx,ah
ffffffff8020296a:	48 89 c1             	mov    rcx,rax
ffffffff8020296d:	01 c2                	add    edx,eax
ffffffff8020296f:	48 c1 e9 10          	shr    rcx,0x10
ffffffff80202973:	01 ca                	add    edx,ecx
ffffffff80202975:	48 89 c1             	mov    rcx,rax
ffffffff80202978:	48 c1 e9 18          	shr    rcx,0x18
ffffffff8020297c:	01 ca                	add    edx,ecx
ffffffff8020297e:	48 89 c1             	mov    rcx,rax
ffffffff80202981:	48 c1 e9 20          	shr    rcx,0x20
ffffffff80202985:	01 ca                	add    edx,ecx
ffffffff80202987:	48 89 c1             	mov    rcx,rax
ffffffff8020298a:	48 c1 e9 28          	shr    rcx,0x28
ffffffff8020298e:	01 ca                	add    edx,ecx
ffffffff80202990:	48 89 c1             	mov    rcx,rax
ffffffff80202993:	48 c1 e8 38          	shr    rax,0x38
ffffffff80202997:	48 c1 e9 30          	shr    rcx,0x30
ffffffff8020299b:	01 ca                	add    edx,ecx
ffffffff8020299d:	01 d0                	add    eax,edx
ffffffff8020299f:	48 89 f2             	mov    rdx,rsi
ffffffff802029a2:	48 83 e2 f8          	and    rdx,0xfffffffffffffff8
ffffffff802029a6:	48 39 f2             	cmp    rdx,rsi
ffffffff802029a9:	74 5f                	je     ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff802029ab:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
ffffffff802029af:	02 44 15 00          	add    al,BYTE PTR [rbp+rdx*1+0x0]
ffffffff802029b3:	48 39 f1             	cmp    rcx,rsi
ffffffff802029b6:	73 52                	jae    ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff802029b8:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
ffffffff802029bc:	02 44 15 01          	add    al,BYTE PTR [rbp+rdx*1+0x1]
ffffffff802029c0:	48 39 ce             	cmp    rsi,rcx
ffffffff802029c3:	76 45                	jbe    ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff802029c5:	48 8d 4a 03          	lea    rcx,[rdx+0x3]
ffffffff802029c9:	02 44 15 02          	add    al,BYTE PTR [rbp+rdx*1+0x2]
ffffffff802029cd:	48 39 ce             	cmp    rsi,rcx
ffffffff802029d0:	76 38                	jbe    ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff802029d2:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
ffffffff802029d6:	02 44 15 03          	add    al,BYTE PTR [rbp+rdx*1+0x3]
ffffffff802029da:	48 39 ce             	cmp    rsi,rcx
ffffffff802029dd:	76 2b                	jbe    ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff802029df:	48 8d 4a 05          	lea    rcx,[rdx+0x5]
ffffffff802029e3:	02 44 15 04          	add    al,BYTE PTR [rbp+rdx*1+0x4]
ffffffff802029e7:	48 39 ce             	cmp    rsi,rcx
ffffffff802029ea:	76 1e                	jbe    ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff802029ec:	48 8d 4a 06          	lea    rcx,[rdx+0x6]
ffffffff802029f0:	02 44 15 05          	add    al,BYTE PTR [rbp+rdx*1+0x5]
ffffffff802029f4:	48 39 ce             	cmp    rsi,rcx
ffffffff802029f7:	76 11                	jbe    ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff802029f9:	48 8d 4a 07          	lea    rcx,[rdx+0x7]
ffffffff802029fd:	02 44 15 06          	add    al,BYTE PTR [rbp+rdx*1+0x6]
ffffffff80202a01:	48 39 ce             	cmp    rsi,rcx
ffffffff80202a04:	76 04                	jbe    ffffffff80202a0a <parse_RSDT+0x17a>
ffffffff80202a06:	02 44 15 07          	add    al,BYTE PTR [rbp+rdx*1+0x7]
ffffffff80202a0a:	84 c0                	test   al,al
ffffffff80202a0c:	0f 84 ee 00 00 00    	je     ffffffff80202b00 <parse_RSDT+0x270>
ffffffff80202a12:	31 c0                	xor    eax,eax
ffffffff80202a14:	e8 27 36 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202a19:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202a20:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202a25:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80202a2c:	e8 bf e1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202a31:	31 c0                	xor    eax,eax
ffffffff80202a33:	e8 a8 2e 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202a38:	84 c0                	test   al,al
ffffffff80202a3a:	0f 85 48 01 00 00    	jne    ffffffff80202b88 <parse_RSDT+0x2f8>
ffffffff80202a40:	48 c7 c1 98 98 20 80 	mov    rcx,0xffffffff80209898
ffffffff80202a47:	ba 71 00 00 00       	mov    edx,0x71
ffffffff80202a4c:	48 c7 c6 cb 97 20 80 	mov    rsi,0xffffffff802097cb
ffffffff80202a53:	31 c0                	xor    eax,eax
ffffffff80202a55:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202a5c:	e8 ff 53 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202a61:	48 8d 74 24 0b       	lea    rsi,[rsp+0xb]
ffffffff80202a66:	48 c7 c7 f5 97 20 80 	mov    rdi,0xffffffff802097f5
ffffffff80202a6d:	31 c0                	xor    eax,eax
ffffffff80202a6f:	e8 ec 53 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202a74:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202a7b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202a80:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202a87:	e8 64 e1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202a8c:	31 c0                	xor    eax,eax
ffffffff80202a8e:	e8 cd 35 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202a93:	31 c0                	xor    eax,eax
ffffffff80202a95:	e8 66 2e 00 00       	call   ffffffff80205900 <disable_ints>
ffffffff80202a9a:	31 c0                	xor    eax,eax
ffffffff80202a9c:	e8 6f 2e 00 00       	call   ffffffff80205910 <halt>
ffffffff80202aa1:	48 c7 c6 0a 98 20 80 	mov    rsi,0xffffffff8020980a
ffffffff80202aa8:	48 8d 7c 24 0b       	lea    rdi,[rsp+0xb]
ffffffff80202aad:	e8 ce 5d 00 00       	call   ffffffff80208880 <strcmp>
ffffffff80202ab2:	84 c0                	test   al,al
ffffffff80202ab4:	75 2a                	jne    ffffffff80202ae0 <parse_RSDT+0x250>
ffffffff80202ab6:	48 89 ef             	mov    rdi,rbp
ffffffff80202ab9:	e8 b2 fc ff ff       	call   ffffffff80202770 <parse_MADT>
ffffffff80202abe:	49 83 c5 04          	add    r13,0x4
ffffffff80202ac2:	4d 39 f5             	cmp    r13,r14
ffffffff80202ac5:	0f 85 15 fe ff ff    	jne    ffffffff802028e0 <parse_RSDT+0x50>
ffffffff80202acb:	48 83 c4 18          	add    rsp,0x18
ffffffff80202acf:	5b                   	pop    rbx
ffffffff80202ad0:	5d                   	pop    rbp
ffffffff80202ad1:	41 5c                	pop    r12
ffffffff80202ad3:	41 5d                	pop    r13
ffffffff80202ad5:	41 5e                	pop    r14
ffffffff80202ad7:	41 5f                	pop    r15
ffffffff80202ad9:	c3                   	ret    
ffffffff80202ada:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80202ae0:	48 c7 c6 0f 98 20 80 	mov    rsi,0xffffffff8020980f
ffffffff80202ae7:	48 8d 7c 24 0b       	lea    rdi,[rsp+0xb]
ffffffff80202aec:	e8 8f 5d 00 00       	call   ffffffff80208880 <strcmp>
ffffffff80202af1:	84 c0                	test   al,al
ffffffff80202af3:	75 c9                	jne    ffffffff80202abe <parse_RSDT+0x22e>
ffffffff80202af5:	48 89 ef             	mov    rdi,rbp
ffffffff80202af8:	e8 c3 eb ff ff       	call   ffffffff802016c0 <hpet_init>
ffffffff80202afd:	eb bf                	jmp    ffffffff80202abe <parse_RSDT+0x22e>
ffffffff80202aff:	90                   	nop
ffffffff80202b00:	31 c0                	xor    eax,eax
ffffffff80202b02:	e8 39 35 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202b07:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202b0e:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202b13:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80202b1a:	e8 d1 e0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202b1f:	31 c0                	xor    eax,eax
ffffffff80202b21:	e8 ba 2d 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202b26:	84 c0                	test   al,al
ffffffff80202b28:	75 7e                	jne    ffffffff80202ba8 <parse_RSDT+0x318>
ffffffff80202b2a:	48 c7 c1 98 98 20 80 	mov    rcx,0xffffffff80209898
ffffffff80202b31:	ba 71 00 00 00       	mov    edx,0x71
ffffffff80202b36:	31 c0                	xor    eax,eax
ffffffff80202b38:	48 c7 c6 cb 97 20 80 	mov    rsi,0xffffffff802097cb
ffffffff80202b3f:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202b46:	e8 15 53 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202b4b:	48 8d 74 24 0b       	lea    rsi,[rsp+0xb]
ffffffff80202b50:	31 c0                	xor    eax,eax
ffffffff80202b52:	48 c7 c7 e2 97 20 80 	mov    rdi,0xffffffff802097e2
ffffffff80202b59:	e8 02 53 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202b5e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202b65:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202b6a:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202b71:	e8 7a e0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202b76:	31 c0                	xor    eax,eax
ffffffff80202b78:	e8 e3 34 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202b7d:	e9 1f ff ff ff       	jmp    ffffffff80202aa1 <parse_RSDT+0x211>
ffffffff80202b82:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80202b88:	31 c0                	xor    eax,eax
ffffffff80202b8a:	e8 e1 2b 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80202b8f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80202b96:	89 c6                	mov    esi,eax
ffffffff80202b98:	31 c0                	xor    eax,eax
ffffffff80202b9a:	e8 c1 52 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202b9f:	e9 9c fe ff ff       	jmp    ffffffff80202a40 <parse_RSDT+0x1b0>
ffffffff80202ba4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80202ba8:	31 c0                	xor    eax,eax
ffffffff80202baa:	e8 c1 2b 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80202baf:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80202bb6:	89 c6                	mov    esi,eax
ffffffff80202bb8:	31 c0                	xor    eax,eax
ffffffff80202bba:	e8 a1 52 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202bbf:	e9 66 ff ff ff       	jmp    ffffffff80202b2a <parse_RSDT+0x29a>
ffffffff80202bc4:	31 c0                	xor    eax,eax
ffffffff80202bc6:	31 d2                	xor    edx,edx
ffffffff80202bc8:	e9 de fd ff ff       	jmp    ffffffff802029ab <parse_RSDT+0x11b>
ffffffff80202bcd:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80202bd0 <get_cpu_info>:
ffffffff80202bd0:	80 3d 81 9b 00 00 00 	cmp    BYTE PTR [rip+0x9b81],0x0        # ffffffff8020c758 <once.1687>
ffffffff80202bd7:	74 0f                	je     ffffffff80202be8 <get_cpu_info+0x18>
ffffffff80202bd9:	48 c7 c0 64 c7 20 80 	mov    rax,0xffffffff8020c764
ffffffff80202be0:	c3                   	ret    
ffffffff80202be1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80202be8:	41 55                	push   r13
ffffffff80202bea:	31 c0                	xor    eax,eax
ffffffff80202bec:	41 54                	push   r12
ffffffff80202bee:	53                   	push   rbx
ffffffff80202bef:	c6 05 62 9b 00 00 01 	mov    BYTE PTR [rip+0x9b62],0x1        # ffffffff8020c758 <once.1687>
ffffffff80202bf6:	e8 45 34 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202bfb:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202c02:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202c07:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80202c0e:	e8 dd df ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202c13:	31 c0                	xor    eax,eax
ffffffff80202c15:	e8 c6 2c 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202c1a:	84 c0                	test   al,al
ffffffff80202c1c:	0f 85 16 0a 00 00    	jne    ffffffff80203638 <get_cpu_info+0xa68>
ffffffff80202c22:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80202c29:	ba 48 00 00 00       	mov    edx,0x48
ffffffff80202c2e:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80202c35:	31 c0                	xor    eax,eax
ffffffff80202c37:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202c3e:	e8 1d 52 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202c43:	31 c0                	xor    eax,eax
ffffffff80202c45:	48 c7 c7 da 98 20 80 	mov    rdi,0xffffffff802098da
ffffffff80202c4c:	e8 0f 52 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202c51:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202c58:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202c5d:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202c64:	e8 87 df ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202c69:	31 c0                	xor    eax,eax
ffffffff80202c6b:	e8 f0 33 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202c70:	b8 01 00 00 00       	mov    eax,0x1
ffffffff80202c75:	0f a2                	cpuid  
ffffffff80202c77:	31 c0                	xor    eax,eax
ffffffff80202c79:	41 89 d5             	mov    r13d,edx
ffffffff80202c7c:	41 89 cc             	mov    r12d,ecx
ffffffff80202c7f:	e8 bc 33 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202c84:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202c8b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202c90:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80202c97:	e8 54 df ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202c9c:	31 c0                	xor    eax,eax
ffffffff80202c9e:	e8 3d 2c 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202ca3:	84 c0                	test   al,al
ffffffff80202ca5:	0f 85 cd 09 00 00    	jne    ffffffff80203678 <get_cpu_info+0xaa8>
ffffffff80202cab:	31 c0                	xor    eax,eax
ffffffff80202cad:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80202cb4:	ba 4f 00 00 00       	mov    edx,0x4f
ffffffff80202cb9:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80202cc0:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202cc7:	e8 94 51 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202ccc:	44 89 e9             	mov    ecx,r13d
ffffffff80202ccf:	44 89 e2             	mov    edx,r12d
ffffffff80202cd2:	31 c0                	xor    eax,eax
ffffffff80202cd4:	89 de                	mov    esi,ebx
ffffffff80202cd6:	48 c7 c7 d0 99 20 80 	mov    rdi,0xffffffff802099d0
ffffffff80202cdd:	e8 7e 51 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202ce2:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202ce9:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202cee:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202cf5:	e8 f6 de ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202cfa:	31 c0                	xor    eax,eax
ffffffff80202cfc:	e8 5f 33 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202d01:	44 89 e8             	mov    eax,r13d
ffffffff80202d04:	44 89 ea             	mov    edx,r13d
ffffffff80202d07:	44 89 2d 4e 9a 00 00 	mov    DWORD PTR [rip+0x9a4e],r13d        # ffffffff8020c75c <cpuinfo_rdx>
ffffffff80202d0e:	c1 e8 1a             	shr    eax,0x1a
ffffffff80202d11:	c1 ea 19             	shr    edx,0x19
ffffffff80202d14:	44 89 25 45 9a 00 00 	mov    DWORD PTR [rip+0x9a45],r12d        # ffffffff8020c760 <cpuinfo_rcx>
ffffffff80202d1b:	83 e0 01             	and    eax,0x1
ffffffff80202d1e:	83 e2 01             	and    edx,0x1
ffffffff80202d21:	01 c0                	add    eax,eax
ffffffff80202d23:	09 d0                	or     eax,edx
ffffffff80202d25:	44 89 e2             	mov    edx,r12d
ffffffff80202d28:	83 e2 01             	and    edx,0x1
ffffffff80202d2b:	c1 e2 02             	shl    edx,0x2
ffffffff80202d2e:	09 d0                	or     eax,edx
ffffffff80202d30:	44 89 e2             	mov    edx,r12d
ffffffff80202d33:	c1 ea 13             	shr    edx,0x13
ffffffff80202d36:	83 e2 01             	and    edx,0x1
ffffffff80202d39:	c1 e2 03             	shl    edx,0x3
ffffffff80202d3c:	09 d0                	or     eax,edx
ffffffff80202d3e:	44 89 e2             	mov    edx,r12d
ffffffff80202d41:	c1 ea 1a             	shr    edx,0x1a
ffffffff80202d44:	83 e2 01             	and    edx,0x1
ffffffff80202d47:	c1 e2 04             	shl    edx,0x4
ffffffff80202d4a:	09 d0                	or     eax,edx
ffffffff80202d4c:	44 89 ea             	mov    edx,r13d
ffffffff80202d4f:	41 c1 ed 09          	shr    r13d,0x9
ffffffff80202d53:	c1 ea 16             	shr    edx,0x16
ffffffff80202d56:	41 83 e5 01          	and    r13d,0x1
ffffffff80202d5a:	83 e2 01             	and    edx,0x1
ffffffff80202d5d:	41 c1 e5 07          	shl    r13d,0x7
ffffffff80202d61:	c1 e2 06             	shl    edx,0x6
ffffffff80202d64:	09 d0                	or     eax,edx
ffffffff80202d66:	0f b7 15 f7 99 00 00 	movzx  edx,WORD PTR [rip+0x99f7]        # ffffffff8020c764 <cpuinfo>
ffffffff80202d6d:	44 09 e8             	or     eax,r13d
ffffffff80202d70:	41 c1 ec 15          	shr    r12d,0x15
ffffffff80202d74:	41 83 e4 01          	and    r12d,0x1
ffffffff80202d78:	66 81 e2 00 fe       	and    dx,0xfe00
ffffffff80202d7d:	41 c1 e4 08          	shl    r12d,0x8
ffffffff80202d81:	44 09 e0             	or     eax,r12d
ffffffff80202d84:	09 d0                	or     eax,edx
ffffffff80202d86:	66 89 05 d7 99 00 00 	mov    WORD PTR [rip+0x99d7],ax        # ffffffff8020c764 <cpuinfo>
ffffffff80202d8d:	31 c0                	xor    eax,eax
ffffffff80202d8f:	e8 ac 32 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202d94:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202d9b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202da0:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80202da7:	e8 44 de ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202dac:	31 c0                	xor    eax,eax
ffffffff80202dae:	e8 2d 2b 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202db3:	84 c0                	test   al,al
ffffffff80202db5:	0f 85 9d 08 00 00    	jne    ffffffff80203658 <get_cpu_info+0xa88>
ffffffff80202dbb:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80202dc2:	ba 60 00 00 00       	mov    edx,0x60
ffffffff80202dc7:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80202dce:	31 c0                	xor    eax,eax
ffffffff80202dd0:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202dd7:	e8 84 50 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202ddc:	31 c0                	xor    eax,eax
ffffffff80202dde:	48 c7 c7 f5 98 20 80 	mov    rdi,0xffffffff802098f5
ffffffff80202de5:	e8 76 50 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202dea:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202df1:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202df6:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202dfd:	e8 ee dd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202e02:	31 c0                	xor    eax,eax
ffffffff80202e04:	e8 57 32 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202e09:	31 c0                	xor    eax,eax
ffffffff80202e0b:	80 3d 4c 99 00 00 00 	cmp    BYTE PTR [rip+0x994c],0x0        # ffffffff8020c75e <cpuinfo_rdx+0x2>
ffffffff80202e12:	0f 88 00 06 00 00    	js     ffffffff80203418 <get_cpu_info+0x848>
ffffffff80202e18:	e8 23 32 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202e1d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202e24:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202e29:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80202e30:	e8 bb dd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202e35:	31 c0                	xor    eax,eax
ffffffff80202e37:	e8 a4 2a 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202e3c:	84 c0                	test   al,al
ffffffff80202e3e:	0f 85 34 06 00 00    	jne    ffffffff80203478 <get_cpu_info+0x8a8>
ffffffff80202e44:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202e4b:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80202e52:	ba 62 00 00 00       	mov    edx,0x62
ffffffff80202e57:	31 c0                	xor    eax,eax
ffffffff80202e59:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80202e60:	e8 fb 4f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202e65:	48 c7 c7 16 99 20 80 	mov    rdi,0xffffffff80209916
ffffffff80202e6c:	31 c0                	xor    eax,eax
ffffffff80202e6e:	e8 ed 4f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202e73:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202e7a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202e7f:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202e86:	e8 65 dd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202e8b:	31 c0                	xor    eax,eax
ffffffff80202e8d:	e8 ce 31 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202e92:	31 c0                	xor    eax,eax
ffffffff80202e94:	f6 05 c4 98 00 00 01 	test   BYTE PTR [rip+0x98c4],0x1        # ffffffff8020c75f <cpuinfo_rdx+0x3>
ffffffff80202e9b:	0f 84 17 05 00 00    	je     ffffffff802033b8 <get_cpu_info+0x7e8>
ffffffff80202ea1:	e8 9a 31 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202ea6:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202ead:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202eb2:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80202eb9:	e8 32 dd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202ebe:	31 c0                	xor    eax,eax
ffffffff80202ec0:	e8 1b 2a 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202ec5:	84 c0                	test   al,al
ffffffff80202ec7:	0f 85 2b 07 00 00    	jne    ffffffff802035f8 <get_cpu_info+0xa28>
ffffffff80202ecd:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202ed4:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80202edb:	ba 64 00 00 00       	mov    edx,0x64
ffffffff80202ee0:	31 c0                	xor    eax,eax
ffffffff80202ee2:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80202ee9:	e8 72 4f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202eee:	48 c7 c7 27 99 20 80 	mov    rdi,0xffffffff80209927
ffffffff80202ef5:	31 c0                	xor    eax,eax
ffffffff80202ef7:	e8 64 4f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202efc:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202f03:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202f08:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202f0f:	e8 dc dc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202f14:	31 c0                	xor    eax,eax
ffffffff80202f16:	e8 45 31 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202f1b:	31 c0                	xor    eax,eax
ffffffff80202f1d:	f6 05 3c 98 00 00 01 	test   BYTE PTR [rip+0x983c],0x1        # ffffffff8020c760 <cpuinfo_rcx>
ffffffff80202f24:	0f 84 2e 04 00 00    	je     ffffffff80203358 <get_cpu_info+0x788>
ffffffff80202f2a:	e8 11 31 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202f2f:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202f36:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202f3b:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80202f42:	e8 a9 dc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202f47:	31 c0                	xor    eax,eax
ffffffff80202f49:	e8 92 29 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202f4e:	84 c0                	test   al,al
ffffffff80202f50:	0f 85 82 06 00 00    	jne    ffffffff802035d8 <get_cpu_info+0xa08>
ffffffff80202f56:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202f5d:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80202f64:	ba 66 00 00 00       	mov    edx,0x66
ffffffff80202f69:	31 c0                	xor    eax,eax
ffffffff80202f6b:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80202f72:	e8 e9 4e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202f77:	48 c7 c7 46 99 20 80 	mov    rdi,0xffffffff80209946
ffffffff80202f7e:	31 c0                	xor    eax,eax
ffffffff80202f80:	e8 db 4e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80202f85:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202f8c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202f91:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80202f98:	e8 53 dc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202f9d:	31 c0                	xor    eax,eax
ffffffff80202f9f:	e8 bc 30 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80202fa4:	31 c0                	xor    eax,eax
ffffffff80202fa6:	f6 05 b5 97 00 00 02 	test   BYTE PTR [rip+0x97b5],0x2        # ffffffff8020c762 <cpuinfo_rcx+0x2>
ffffffff80202fad:	0f 84 45 03 00 00    	je     ffffffff802032f8 <get_cpu_info+0x728>
ffffffff80202fb3:	e8 88 30 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80202fb8:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80202fbf:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80202fc4:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80202fcb:	e8 20 dc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80202fd0:	31 c0                	xor    eax,eax
ffffffff80202fd2:	e8 09 29 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80202fd7:	84 c0                	test   al,al
ffffffff80202fd9:	0f 85 d9 05 00 00    	jne    ffffffff802035b8 <get_cpu_info+0x9e8>
ffffffff80202fdf:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80202fe6:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80202fed:	ba 68 00 00 00       	mov    edx,0x68
ffffffff80202ff2:	31 c0                	xor    eax,eax
ffffffff80202ff4:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80202ffb:	e8 60 4e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203000:	48 c7 c7 65 99 20 80 	mov    rdi,0xffffffff80209965
ffffffff80203007:	31 c0                	xor    eax,eax
ffffffff80203009:	e8 52 4e 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020300e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203015:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020301a:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80203021:	e8 ca db ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203026:	31 c0                	xor    eax,eax
ffffffff80203028:	e8 33 30 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020302d:	31 c0                	xor    eax,eax
ffffffff8020302f:	f6 05 28 97 00 00 10 	test   BYTE PTR [rip+0x9728],0x10        # ffffffff8020c75e <cpuinfo_rdx+0x2>
ffffffff80203036:	0f 84 5c 02 00 00    	je     ffffffff80203298 <get_cpu_info+0x6c8>
ffffffff8020303c:	e8 ff 2f 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80203041:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203048:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020304d:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80203054:	e8 97 db ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203059:	31 c0                	xor    eax,eax
ffffffff8020305b:	e8 80 28 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80203060:	84 c0                	test   al,al
ffffffff80203062:	0f 85 30 05 00 00    	jne    ffffffff80203598 <get_cpu_info+0x9c8>
ffffffff80203068:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020306f:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80203076:	ba 6a 00 00 00       	mov    edx,0x6a
ffffffff8020307b:	31 c0                	xor    eax,eax
ffffffff8020307d:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80203084:	e8 d7 4d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203089:	48 c7 c7 88 99 20 80 	mov    rdi,0xffffffff80209988
ffffffff80203090:	31 c0                	xor    eax,eax
ffffffff80203092:	e8 c9 4d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203097:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020309e:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802030a3:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802030aa:	e8 41 db ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802030af:	31 c0                	xor    eax,eax
ffffffff802030b1:	e8 aa 2f 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802030b6:	31 c0                	xor    eax,eax
ffffffff802030b8:	f6 05 9e 96 00 00 02 	test   BYTE PTR [rip+0x969e],0x2        # ffffffff8020c75d <cpuinfo_rdx+0x1>
ffffffff802030bf:	0f 84 73 01 00 00    	je     ffffffff80203238 <get_cpu_info+0x668>
ffffffff802030c5:	e8 76 2f 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802030ca:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802030d1:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802030d6:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff802030dd:	e8 0e db ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802030e2:	31 c0                	xor    eax,eax
ffffffff802030e4:	e8 f7 27 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802030e9:	84 c0                	test   al,al
ffffffff802030eb:	0f 85 87 04 00 00    	jne    ffffffff80203578 <get_cpu_info+0x9a8>
ffffffff802030f1:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802030f8:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff802030ff:	ba 6c 00 00 00       	mov    edx,0x6c
ffffffff80203104:	31 c0                	xor    eax,eax
ffffffff80203106:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff8020310d:	e8 4e 4d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203112:	48 c7 c7 a9 99 20 80 	mov    rdi,0xffffffff802099a9
ffffffff80203119:	31 c0                	xor    eax,eax
ffffffff8020311b:	e8 40 4d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203120:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203127:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020312c:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80203133:	e8 b8 da ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203138:	31 c0                	xor    eax,eax
ffffffff8020313a:	e8 21 2f 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020313f:	31 c0                	xor    eax,eax
ffffffff80203141:	f6 05 1a 96 00 00 08 	test   BYTE PTR [rip+0x961a],0x8        # ffffffff8020c762 <cpuinfo_rcx+0x2>
ffffffff80203148:	0f 84 8a 00 00 00    	je     ffffffff802031d8 <get_cpu_info+0x608>
ffffffff8020314e:	e8 ed 2e 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80203153:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020315a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020315f:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80203166:	e8 85 da ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020316b:	31 c0                	xor    eax,eax
ffffffff8020316d:	e8 6e 27 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80203172:	84 c0                	test   al,al
ffffffff80203174:	0f 85 de 03 00 00    	jne    ffffffff80203558 <get_cpu_info+0x988>
ffffffff8020317a:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80203181:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80203188:	ba 6e 00 00 00       	mov    edx,0x6e
ffffffff8020318d:	31 c0                	xor    eax,eax
ffffffff8020318f:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80203196:	e8 c5 4c 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020319b:	48 c7 c7 a7 99 20 80 	mov    rdi,0xffffffff802099a7
ffffffff802031a2:	31 c0                	xor    eax,eax
ffffffff802031a4:	e8 b7 4c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802031a9:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802031b0:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802031b5:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802031bc:	e8 2f da ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802031c1:	31 c0                	xor    eax,eax
ffffffff802031c3:	e8 98 2e 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802031c8:	5b                   	pop    rbx
ffffffff802031c9:	48 c7 c0 64 c7 20 80 	mov    rax,0xffffffff8020c764
ffffffff802031d0:	41 5c                	pop    r12
ffffffff802031d2:	41 5d                	pop    r13
ffffffff802031d4:	c3                   	ret    
ffffffff802031d5:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff802031d8:	e8 63 2e 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802031dd:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802031e4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802031e9:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff802031f0:	e8 fb d9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802031f5:	31 c0                	xor    eax,eax
ffffffff802031f7:	e8 e4 26 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802031fc:	84 c0                	test   al,al
ffffffff802031fe:	0f 85 34 03 00 00    	jne    ffffffff80203538 <get_cpu_info+0x968>
ffffffff80203204:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020320b:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80203212:	ba 6e 00 00 00       	mov    edx,0x6e
ffffffff80203217:	31 c0                	xor    eax,eax
ffffffff80203219:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80203220:	e8 3b 4c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203225:	48 c7 c7 b7 99 20 80 	mov    rdi,0xffffffff802099b7
ffffffff8020322c:	e9 71 ff ff ff       	jmp    ffffffff802031a2 <get_cpu_info+0x5d2>
ffffffff80203231:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80203238:	e8 03 2e 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020323d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203244:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203249:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80203250:	e8 9b d9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203255:	31 c0                	xor    eax,eax
ffffffff80203257:	e8 84 26 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020325c:	84 c0                	test   al,al
ffffffff8020325e:	0f 85 b4 02 00 00    	jne    ffffffff80203518 <get_cpu_info+0x948>
ffffffff80203264:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020326b:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80203272:	ba 6c 00 00 00       	mov    edx,0x6c
ffffffff80203277:	31 c0                	xor    eax,eax
ffffffff80203279:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80203280:	e8 db 4b 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203285:	48 c7 c7 b9 99 20 80 	mov    rdi,0xffffffff802099b9
ffffffff8020328c:	e9 88 fe ff ff       	jmp    ffffffff80203119 <get_cpu_info+0x549>
ffffffff80203291:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80203298:	e8 a3 2d 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020329d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802032a4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802032a9:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff802032b0:	e8 3b d9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802032b5:	31 c0                	xor    eax,eax
ffffffff802032b7:	e8 24 26 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802032bc:	84 c0                	test   al,al
ffffffff802032be:	0f 85 34 02 00 00    	jne    ffffffff802034f8 <get_cpu_info+0x928>
ffffffff802032c4:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802032cb:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff802032d2:	ba 6a 00 00 00       	mov    edx,0x6a
ffffffff802032d7:	31 c0                	xor    eax,eax
ffffffff802032d9:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff802032e0:	e8 7b 4b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802032e5:	48 c7 c7 96 99 20 80 	mov    rdi,0xffffffff80209996
ffffffff802032ec:	e9 9f fd ff ff       	jmp    ffffffff80203090 <get_cpu_info+0x4c0>
ffffffff802032f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff802032f8:	e8 43 2d 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802032fd:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203304:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203309:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80203310:	e8 db d8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203315:	31 c0                	xor    eax,eax
ffffffff80203317:	e8 c4 25 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020331c:	84 c0                	test   al,al
ffffffff8020331e:	0f 85 b4 01 00 00    	jne    ffffffff802034d8 <get_cpu_info+0x908>
ffffffff80203324:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020332b:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80203332:	ba 68 00 00 00       	mov    edx,0x68
ffffffff80203337:	31 c0                	xor    eax,eax
ffffffff80203339:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80203340:	e8 1b 4b 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203345:	48 c7 c7 75 99 20 80 	mov    rdi,0xffffffff80209975
ffffffff8020334c:	e9 b6 fc ff ff       	jmp    ffffffff80203007 <get_cpu_info+0x437>
ffffffff80203351:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80203358:	e8 e3 2c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020335d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203364:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203369:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80203370:	e8 7b d8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203375:	31 c0                	xor    eax,eax
ffffffff80203377:	e8 64 25 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020337c:	84 c0                	test   al,al
ffffffff8020337e:	0f 85 34 01 00 00    	jne    ffffffff802034b8 <get_cpu_info+0x8e8>
ffffffff80203384:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020338b:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80203392:	ba 66 00 00 00       	mov    edx,0x66
ffffffff80203397:	31 c0                	xor    eax,eax
ffffffff80203399:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff802033a0:	e8 bb 4a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802033a5:	48 c7 c7 54 99 20 80 	mov    rdi,0xffffffff80209954
ffffffff802033ac:	e9 cd fb ff ff       	jmp    ffffffff80202f7e <get_cpu_info+0x3ae>
ffffffff802033b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff802033b8:	e8 83 2c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802033bd:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802033c4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802033c9:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff802033d0:	e8 1b d8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802033d5:	31 c0                	xor    eax,eax
ffffffff802033d7:	e8 04 25 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802033dc:	84 c0                	test   al,al
ffffffff802033de:	0f 85 b4 00 00 00    	jne    ffffffff80203498 <get_cpu_info+0x8c8>
ffffffff802033e4:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802033eb:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff802033f2:	ba 64 00 00 00       	mov    edx,0x64
ffffffff802033f7:	31 c0                	xor    eax,eax
ffffffff802033f9:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80203400:	e8 5b 4a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203405:	48 c7 c7 35 99 20 80 	mov    rdi,0xffffffff80209935
ffffffff8020340c:	e9 e4 fa ff ff       	jmp    ffffffff80202ef5 <get_cpu_info+0x325>
ffffffff80203411:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80203418:	e8 23 2c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020341d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203424:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203429:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80203430:	e8 bb d7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203435:	31 c0                	xor    eax,eax
ffffffff80203437:	e8 a4 24 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020343c:	84 c0                	test   al,al
ffffffff8020343e:	0f 85 d4 01 00 00    	jne    ffffffff80203618 <get_cpu_info+0xa48>
ffffffff80203444:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020344b:	48 c7 c1 10 9a 20 80 	mov    rcx,0xffffffff80209a10
ffffffff80203452:	ba 62 00 00 00       	mov    edx,0x62
ffffffff80203457:	31 c0                	xor    eax,eax
ffffffff80203459:	48 c7 c6 c0 98 20 80 	mov    rsi,0xffffffff802098c0
ffffffff80203460:	e8 fb 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203465:	48 c7 c7 08 99 20 80 	mov    rdi,0xffffffff80209908
ffffffff8020346c:	e9 fb f9 ff ff       	jmp    ffffffff80202e6c <get_cpu_info+0x29c>
ffffffff80203471:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80203478:	31 c0                	xor    eax,eax
ffffffff8020347a:	e8 f1 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020347f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203486:	89 c6                	mov    esi,eax
ffffffff80203488:	31 c0                	xor    eax,eax
ffffffff8020348a:	e8 d1 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020348f:	e9 b0 f9 ff ff       	jmp    ffffffff80202e44 <get_cpu_info+0x274>
ffffffff80203494:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203498:	31 c0                	xor    eax,eax
ffffffff8020349a:	e8 d1 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020349f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802034a6:	89 c6                	mov    esi,eax
ffffffff802034a8:	31 c0                	xor    eax,eax
ffffffff802034aa:	e8 b1 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff802034af:	e9 30 ff ff ff       	jmp    ffffffff802033e4 <get_cpu_info+0x814>
ffffffff802034b4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802034b8:	31 c0                	xor    eax,eax
ffffffff802034ba:	e8 b1 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802034bf:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802034c6:	89 c6                	mov    esi,eax
ffffffff802034c8:	31 c0                	xor    eax,eax
ffffffff802034ca:	e8 91 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff802034cf:	e9 b0 fe ff ff       	jmp    ffffffff80203384 <get_cpu_info+0x7b4>
ffffffff802034d4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802034d8:	31 c0                	xor    eax,eax
ffffffff802034da:	e8 91 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802034df:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802034e6:	89 c6                	mov    esi,eax
ffffffff802034e8:	31 c0                	xor    eax,eax
ffffffff802034ea:	e8 71 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff802034ef:	e9 30 fe ff ff       	jmp    ffffffff80203324 <get_cpu_info+0x754>
ffffffff802034f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802034f8:	31 c0                	xor    eax,eax
ffffffff802034fa:	e8 71 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802034ff:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203506:	89 c6                	mov    esi,eax
ffffffff80203508:	31 c0                	xor    eax,eax
ffffffff8020350a:	e8 51 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020350f:	e9 b0 fd ff ff       	jmp    ffffffff802032c4 <get_cpu_info+0x6f4>
ffffffff80203514:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203518:	31 c0                	xor    eax,eax
ffffffff8020351a:	e8 51 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020351f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203526:	89 c6                	mov    esi,eax
ffffffff80203528:	31 c0                	xor    eax,eax
ffffffff8020352a:	e8 31 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020352f:	e9 30 fd ff ff       	jmp    ffffffff80203264 <get_cpu_info+0x694>
ffffffff80203534:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203538:	31 c0                	xor    eax,eax
ffffffff8020353a:	e8 31 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020353f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203546:	89 c6                	mov    esi,eax
ffffffff80203548:	31 c0                	xor    eax,eax
ffffffff8020354a:	e8 11 49 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020354f:	e9 b0 fc ff ff       	jmp    ffffffff80203204 <get_cpu_info+0x634>
ffffffff80203554:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203558:	31 c0                	xor    eax,eax
ffffffff8020355a:	e8 11 22 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020355f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203566:	89 c6                	mov    esi,eax
ffffffff80203568:	31 c0                	xor    eax,eax
ffffffff8020356a:	e8 f1 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020356f:	e9 06 fc ff ff       	jmp    ffffffff8020317a <get_cpu_info+0x5aa>
ffffffff80203574:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203578:	31 c0                	xor    eax,eax
ffffffff8020357a:	e8 f1 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020357f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203586:	89 c6                	mov    esi,eax
ffffffff80203588:	31 c0                	xor    eax,eax
ffffffff8020358a:	e8 d1 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020358f:	e9 5d fb ff ff       	jmp    ffffffff802030f1 <get_cpu_info+0x521>
ffffffff80203594:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203598:	31 c0                	xor    eax,eax
ffffffff8020359a:	e8 d1 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020359f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802035a6:	89 c6                	mov    esi,eax
ffffffff802035a8:	31 c0                	xor    eax,eax
ffffffff802035aa:	e8 b1 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff802035af:	e9 b4 fa ff ff       	jmp    ffffffff80203068 <get_cpu_info+0x498>
ffffffff802035b4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802035b8:	31 c0                	xor    eax,eax
ffffffff802035ba:	e8 b1 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802035bf:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802035c6:	89 c6                	mov    esi,eax
ffffffff802035c8:	31 c0                	xor    eax,eax
ffffffff802035ca:	e8 91 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff802035cf:	e9 0b fa ff ff       	jmp    ffffffff80202fdf <get_cpu_info+0x40f>
ffffffff802035d4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802035d8:	31 c0                	xor    eax,eax
ffffffff802035da:	e8 91 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802035df:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802035e6:	89 c6                	mov    esi,eax
ffffffff802035e8:	31 c0                	xor    eax,eax
ffffffff802035ea:	e8 71 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff802035ef:	e9 62 f9 ff ff       	jmp    ffffffff80202f56 <get_cpu_info+0x386>
ffffffff802035f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802035f8:	31 c0                	xor    eax,eax
ffffffff802035fa:	e8 71 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802035ff:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203606:	89 c6                	mov    esi,eax
ffffffff80203608:	31 c0                	xor    eax,eax
ffffffff8020360a:	e8 51 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020360f:	e9 b9 f8 ff ff       	jmp    ffffffff80202ecd <get_cpu_info+0x2fd>
ffffffff80203614:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203618:	31 c0                	xor    eax,eax
ffffffff8020361a:	e8 51 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020361f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203626:	89 c6                	mov    esi,eax
ffffffff80203628:	31 c0                	xor    eax,eax
ffffffff8020362a:	e8 31 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020362f:	e9 10 fe ff ff       	jmp    ffffffff80203444 <get_cpu_info+0x874>
ffffffff80203634:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203638:	31 c0                	xor    eax,eax
ffffffff8020363a:	e8 31 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020363f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203646:	89 c6                	mov    esi,eax
ffffffff80203648:	31 c0                	xor    eax,eax
ffffffff8020364a:	e8 11 48 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020364f:	e9 ce f5 ff ff       	jmp    ffffffff80202c22 <get_cpu_info+0x52>
ffffffff80203654:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203658:	31 c0                	xor    eax,eax
ffffffff8020365a:	e8 11 21 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020365f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203666:	89 c6                	mov    esi,eax
ffffffff80203668:	31 c0                	xor    eax,eax
ffffffff8020366a:	e8 f1 47 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020366f:	e9 47 f7 ff ff       	jmp    ffffffff80202dbb <get_cpu_info+0x1eb>
ffffffff80203674:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203678:	31 c0                	xor    eax,eax
ffffffff8020367a:	e8 f1 20 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020367f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203686:	89 c6                	mov    esi,eax
ffffffff80203688:	31 c0                	xor    eax,eax
ffffffff8020368a:	e8 d1 47 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020368f:	e9 17 f6 ff ff       	jmp    ffffffff80202cab <get_cpu_info+0xdb>
ffffffff80203694:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020369b:	00 00 00 
ffffffff8020369e:	66 90                	xchg   ax,ax

ffffffff802036a0 <init_vmm>:
ffffffff802036a0:	48 83 ec 08          	sub    rsp,0x8
ffffffff802036a4:	0f 20 d8             	mov    rax,cr3
ffffffff802036a7:	48 89 05 ba 90 00 00 	mov    QWORD PTR [rip+0x90ba],rax        # ffffffff8020c768 <limine_page_directory_addr>
ffffffff802036ae:	31 c0                	xor    eax,eax
ffffffff802036b0:	48 81 05 ad 90 00 00 	add    QWORD PTR [rip+0x90ad],0xffffffff80000000        # ffffffff8020c768 <limine_page_directory_addr>
ffffffff802036b7:	00 00 00 80 
ffffffff802036bb:	e8 70 16 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff802036c0:	b9 00 00 00 80       	mov    ecx,0x80000000
ffffffff802036c5:	48 29 c1             	sub    rcx,rax
ffffffff802036c8:	48 8d 90 00 00 00 80 	lea    rdx,[rax-0x80000000]
ffffffff802036cf:	48 8d b0 00 10 00 80 	lea    rsi,[rax-0x7ffff000]
ffffffff802036d6:	48 03 0d 8b 90 00 00 	add    rcx,QWORD PTR [rip+0x908b]        # ffffffff8020c768 <limine_page_directory_addr>
ffffffff802036dd:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff802036e0:	48 8b 04 11          	mov    rax,QWORD PTR [rcx+rdx*1]
ffffffff802036e4:	48 83 c2 08          	add    rdx,0x8
ffffffff802036e8:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
ffffffff802036ec:	48 39 f2             	cmp    rdx,rsi
ffffffff802036ef:	75 ef                	jne    ffffffff802036e0 <init_vmm+0x40>
ffffffff802036f1:	31 c0                	xor    eax,eax
ffffffff802036f3:	e8 48 29 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802036f8:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802036ff:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203704:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff8020370b:	e8 e0 d4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203710:	31 c0                	xor    eax,eax
ffffffff80203712:	e8 c9 21 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80203717:	84 c0                	test   al,al
ffffffff80203719:	75 59                	jne    ffffffff80203774 <init_vmm+0xd4>
ffffffff8020371b:	48 c7 c1 68 9b 20 80 	mov    rcx,0xffffffff80209b68
ffffffff80203722:	ba 15 00 00 00       	mov    edx,0x15
ffffffff80203727:	48 c7 c6 1d 9a 20 80 	mov    rsi,0xffffffff80209a1d
ffffffff8020372e:	31 c0                	xor    eax,eax
ffffffff80203730:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80203737:	e8 24 47 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020373c:	48 8b 35 25 90 00 00 	mov    rsi,QWORD PTR [rip+0x9025]        # ffffffff8020c768 <limine_page_directory_addr>
ffffffff80203743:	48 c7 c7 50 9a 20 80 	mov    rdi,0xffffffff80209a50
ffffffff8020374a:	31 c0                	xor    eax,eax
ffffffff8020374c:	e8 0f 47 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203751:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203758:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020375d:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80203764:	e8 87 d4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203769:	31 c0                	xor    eax,eax
ffffffff8020376b:	48 83 c4 08          	add    rsp,0x8
ffffffff8020376f:	e9 ec 28 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80203774:	31 c0                	xor    eax,eax
ffffffff80203776:	e8 f5 1f 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020377b:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203782:	89 c6                	mov    esi,eax
ffffffff80203784:	31 c0                	xor    eax,eax
ffffffff80203786:	e8 d5 46 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020378b:	eb 8e                	jmp    ffffffff8020371b <init_vmm+0x7b>
ffffffff8020378d:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80203790 <craft_addr>:
ffffffff80203790:	48 c1 e6 1e          	shl    rsi,0x1e
ffffffff80203794:	48 c1 e7 27          	shl    rdi,0x27
ffffffff80203798:	48 c1 e2 15          	shl    rdx,0x15
ffffffff8020379c:	48 09 fe             	or     rsi,rdi
ffffffff8020379f:	48 c1 e1 0c          	shl    rcx,0xc
ffffffff802037a3:	4c 09 c6             	or     rsi,r8
ffffffff802037a6:	48 09 d6             	or     rsi,rdx
ffffffff802037a9:	48 89 f0             	mov    rax,rsi
ffffffff802037ac:	48 09 c8             	or     rax,rcx
ffffffff802037af:	c3                   	ret    

ffffffff802037b0 <kmmap>:
ffffffff802037b0:	41 57                	push   r15
ffffffff802037b2:	48 89 f9             	mov    rcx,rdi
ffffffff802037b5:	41 56                	push   r14
ffffffff802037b7:	48 c1 e9 0c          	shr    rcx,0xc
ffffffff802037bb:	41 55                	push   r13
ffffffff802037bd:	49 89 fd             	mov    r13,rdi
ffffffff802037c0:	81 e1 ff 01 00 00    	and    ecx,0x1ff
ffffffff802037c6:	41 54                	push   r12
ffffffff802037c8:	41 81 e5 ff 0f 00 00 	and    r13d,0xfff
ffffffff802037cf:	49 89 cc             	mov    r12,rcx
ffffffff802037d2:	55                   	push   rbp
ffffffff802037d3:	48 89 fd             	mov    rbp,rdi
ffffffff802037d6:	4d 89 ef             	mov    r15,r13
ffffffff802037d9:	49 89 f5             	mov    r13,rsi
ffffffff802037dc:	53                   	push   rbx
ffffffff802037dd:	48 89 fb             	mov    rbx,rdi
ffffffff802037e0:	48 c1 ef 24          	shr    rdi,0x24
ffffffff802037e4:	48 c1 ed 1e          	shr    rbp,0x1e
ffffffff802037e8:	81 e7 f8 0f 00 00    	and    edi,0xff8
ffffffff802037ee:	48 c1 eb 15          	shr    rbx,0x15
ffffffff802037f2:	49 89 ee             	mov    r14,rbp
ffffffff802037f5:	81 e3 ff 01 00 00    	and    ebx,0x1ff
ffffffff802037fb:	48 83 ec 58          	sub    rsp,0x58
ffffffff802037ff:	41 81 e6 ff 01 00 00 	and    r14d,0x1ff
ffffffff80203806:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
ffffffff8020380b:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
ffffffff80203810:	4c 89 f2             	mov    rdx,r14
ffffffff80203813:	48 bd 00 20 43 86 0c 	movabs rbp,0x190c86432000
ffffffff8020381a:	19 00 00 
ffffffff8020381d:	48 0b 6c 24 30       	or     rbp,QWORD PTR [rsp+0x30]
ffffffff80203822:	48 83 7d 00 00       	cmp    QWORD PTR [rbp+0x0],0x0
ffffffff80203827:	0f 84 c3 02 00 00    	je     ffffffff80203af0 <kmmap+0x340>
ffffffff8020382d:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
ffffffff80203832:	48 89 c1             	mov    rcx,rax
ffffffff80203835:	48 c1 e1 09          	shl    rcx,0x9
ffffffff80203839:	48 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],rcx
ffffffff8020383e:	48 89 c1             	mov    rcx,rax
ffffffff80203841:	48 c1 e0 1b          	shl    rax,0x1b
ffffffff80203845:	48 c1 e1 12          	shl    rcx,0x12
ffffffff80203849:	49 89 c6             	mov    r14,rax
ffffffff8020384c:	48 8d 04 d5 00 00 00 	lea    rax,[rdx*8+0x0]
ffffffff80203853:	00 
ffffffff80203854:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
ffffffff80203859:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
ffffffff8020385e:	4c 89 e8             	mov    rax,r13
ffffffff80203861:	4d 89 fd             	mov    r13,r15
ffffffff80203864:	4d 89 f7             	mov    r15,r14
ffffffff80203867:	49 89 c6             	mov    r14,rax
ffffffff8020386a:	48 b8 00 00 40 86 0c 	movabs rax,0x190c86400000
ffffffff80203871:	19 00 00 
ffffffff80203874:	48 8b 6c 24 48       	mov    rbp,QWORD PTR [rsp+0x48]
ffffffff80203879:	48 0b 6c 24 28       	or     rbp,QWORD PTR [rsp+0x28]
ffffffff8020387e:	48 09 c5             	or     rbp,rax
ffffffff80203881:	48 83 7d 00 00       	cmp    QWORD PTR [rbp+0x0],0x0
ffffffff80203886:	0f 84 44 02 00 00    	je     ffffffff80203ad0 <kmmap+0x320>
ffffffff8020388c:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
ffffffff80203891:	4c 89 e2             	mov    rdx,r12
ffffffff80203894:	4d 89 f4             	mov    r12,r14
ffffffff80203897:	49 b9 00 00 00 00 00 	movabs r9,0x190000000000
ffffffff8020389e:	19 00 00 
ffffffff802038a1:	4d 89 fe             	mov    r14,r15
ffffffff802038a4:	4d 89 ef             	mov    r15,r13
ffffffff802038a7:	48 89 c1             	mov    rcx,rax
ffffffff802038aa:	48 c1 e0 12          	shl    rax,0x12
ffffffff802038ae:	49 89 c2             	mov    r10,rax
ffffffff802038b1:	48 c1 e1 09          	shl    rcx,0x9
ffffffff802038b5:	48 8d 04 dd 00 00 00 	lea    rax,[rbx*8+0x0]
ffffffff802038bc:	00 
ffffffff802038bd:	bb 00 10 00 00       	mov    ebx,0x1000
ffffffff802038c2:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
ffffffff802038c7:	4d 89 d5             	mov    r13,r10
ffffffff802038ca:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
ffffffff802038cf:	48 b8 00 00 00 80 0c 	movabs rax,0x190c80000000
ffffffff802038d6:	19 00 00 
ffffffff802038d9:	48 8b 6c 24 40       	mov    rbp,QWORD PTR [rsp+0x40]
ffffffff802038de:	48 0b 6c 24 20       	or     rbp,QWORD PTR [rsp+0x20]
ffffffff802038e3:	48 0b 6c 24 38       	or     rbp,QWORD PTR [rsp+0x38]
ffffffff802038e8:	48 09 c5             	or     rbp,rax
ffffffff802038eb:	48 83 7d 00 00       	cmp    QWORD PTR [rbp+0x0],0x0
ffffffff802038f0:	0f 84 aa 01 00 00    	je     ffffffff80203aa0 <kmmap+0x2f0>
ffffffff802038f6:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
ffffffff802038fb:	4c 89 e0             	mov    rax,r12
ffffffff802038fe:	48 c1 e2 03          	shl    rdx,0x3
ffffffff80203902:	4c 89 ee             	mov    rsi,r13
ffffffff80203905:	4d 89 f4             	mov    r12,r14
ffffffff80203908:	49 89 d5             	mov    r13,rdx
ffffffff8020390b:	49 89 c6             	mov    r14,rax
ffffffff8020390e:	48 c1 e7 09          	shl    rdi,0x9
ffffffff80203912:	eb 21                	jmp    ffffffff80203935 <kmmap+0x185>
ffffffff80203914:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203918:	4c 39 f2             	cmp    rdx,r14
ffffffff8020391b:	73 73                	jae    ffffffff80203990 <kmmap+0x1e0>
ffffffff8020391d:	49 83 c5 08          	add    r13,0x8
ffffffff80203921:	4f 8d b4 37 00 f0 ff 	lea    r14,[r15+r14*1-0x1000]
ffffffff80203928:	ff 
ffffffff80203929:	45 31 ff             	xor    r15d,r15d
ffffffff8020392c:	49 81 fd 00 10 00 00 	cmp    r13,0x1000
ffffffff80203933:	74 6b                	je     ffffffff802039a0 <kmmap+0x1f0>
ffffffff80203935:	4c 89 e5             	mov    rbp,r12
ffffffff80203938:	48 89 da             	mov    rdx,rbx
ffffffff8020393b:	4c 09 ed             	or     rbp,r13
ffffffff8020393e:	4c 29 fa             	sub    rdx,r15
ffffffff80203941:	48 09 f5             	or     rbp,rsi
ffffffff80203944:	48 09 fd             	or     rbp,rdi
ffffffff80203947:	4c 09 cd             	or     rbp,r9
ffffffff8020394a:	48 83 7d 00 00       	cmp    QWORD PTR [rbp+0x0],0x0
ffffffff8020394f:	75 c7                	jne    ffffffff80203918 <kmmap+0x168>
ffffffff80203951:	31 c0                	xor    eax,eax
ffffffff80203953:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
ffffffff80203958:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
ffffffff8020395d:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
ffffffff80203961:	e8 ca 13 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff80203966:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
ffffffff8020396a:	48 0b 44 24 18       	or     rax,QWORD PTR [rsp+0x18]
ffffffff8020396f:	49 b9 00 00 00 00 00 	movabs r9,0x190000000000
ffffffff80203976:	19 00 00 
ffffffff80203979:	48 83 c8 01          	or     rax,0x1
ffffffff8020397d:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
ffffffff80203982:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
ffffffff80203987:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
ffffffff8020398b:	4c 39 f2             	cmp    rdx,r14
ffffffff8020398e:	72 8d                	jb     ffffffff8020391d <kmmap+0x16d>
ffffffff80203990:	48 83 c4 58          	add    rsp,0x58
ffffffff80203994:	5b                   	pop    rbx
ffffffff80203995:	5d                   	pop    rbp
ffffffff80203996:	41 5c                	pop    r12
ffffffff80203998:	41 5d                	pop    r13
ffffffff8020399a:	41 5e                	pop    r14
ffffffff8020399c:	41 5f                	pop    r15
ffffffff8020399e:	c3                   	ret    
ffffffff8020399f:	90                   	nop
ffffffff802039a0:	4c 89 f0             	mov    rax,r14
ffffffff802039a3:	48 83 44 24 20 08    	add    QWORD PTR [rsp+0x20],0x8
ffffffff802039a9:	4d 89 e6             	mov    r14,r12
ffffffff802039ac:	49 89 f5             	mov    r13,rsi
ffffffff802039af:	49 89 c4             	mov    r12,rax
ffffffff802039b2:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
ffffffff802039b7:	31 d2                	xor    edx,edx
ffffffff802039b9:	48 3d 00 10 00 00    	cmp    rax,0x1000
ffffffff802039bf:	0f 85 0a ff ff ff    	jne    ffffffff802038cf <kmmap+0x11f>
ffffffff802039c5:	48 83 44 24 28 08    	add    QWORD PTR [rsp+0x28],0x8
ffffffff802039cb:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
ffffffff802039d0:	4d 89 fd             	mov    r13,r15
ffffffff802039d3:	31 db                	xor    ebx,ebx
ffffffff802039d5:	4d 89 f7             	mov    r15,r14
ffffffff802039d8:	4d 89 e6             	mov    r14,r12
ffffffff802039db:	4d 89 ec             	mov    r12,r13
ffffffff802039de:	48 3d 00 10 00 00    	cmp    rax,0x1000
ffffffff802039e4:	0f 85 80 fe ff ff    	jne    ffffffff8020386a <kmmap+0xba>
ffffffff802039ea:	48 83 44 24 30 08    	add    QWORD PTR [rsp+0x30],0x8
ffffffff802039f0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
ffffffff802039f5:	4d 89 ef             	mov    r15,r13
ffffffff802039f8:	4d 89 f5             	mov    r13,r14
ffffffff802039fb:	48 3d 00 10 00 00    	cmp    rax,0x1000
ffffffff80203a01:	0f 85 0c fe ff ff    	jne    ffffffff80203813 <kmmap+0x63>
ffffffff80203a07:	31 c0                	xor    eax,eax
ffffffff80203a09:	4d 89 f7             	mov    r15,r14
ffffffff80203a0c:	e8 2f 26 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80203a11:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203a18:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203a1d:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80203a24:	e8 c7 d1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203a29:	31 c0                	xor    eax,eax
ffffffff80203a2b:	e8 b0 1e 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80203a30:	84 c0                	test   al,al
ffffffff80203a32:	0f 85 d9 00 00 00    	jne    ffffffff80203b11 <kmmap+0x361>
ffffffff80203a38:	48 c7 c1 60 9b 20 80 	mov    rcx,0xffffffff80209b60
ffffffff80203a3f:	ba 4c 00 00 00       	mov    edx,0x4c
ffffffff80203a44:	48 c7 c6 1d 9a 20 80 	mov    rsi,0xffffffff80209a1d
ffffffff80203a4b:	31 c0                	xor    eax,eax
ffffffff80203a4d:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80203a54:	e8 07 44 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203a59:	4c 89 fe             	mov    rsi,r15
ffffffff80203a5c:	48 c7 c7 33 9a 20 80 	mov    rdi,0xffffffff80209a33
ffffffff80203a63:	31 c0                	xor    eax,eax
ffffffff80203a65:	e8 f6 43 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203a6a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203a71:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203a76:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80203a7d:	e8 6e d1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203a82:	48 83 c4 58          	add    rsp,0x58
ffffffff80203a86:	31 c0                	xor    eax,eax
ffffffff80203a88:	5b                   	pop    rbx
ffffffff80203a89:	5d                   	pop    rbp
ffffffff80203a8a:	41 5c                	pop    r12
ffffffff80203a8c:	41 5d                	pop    r13
ffffffff80203a8e:	41 5e                	pop    r14
ffffffff80203a90:	41 5f                	pop    r15
ffffffff80203a92:	e9 c9 25 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80203a97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80203a9e:	00 00 
ffffffff80203aa0:	31 c0                	xor    eax,eax
ffffffff80203aa2:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
ffffffff80203aa6:	e8 85 12 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff80203aab:	48 0b 44 24 18       	or     rax,QWORD PTR [rsp+0x18]
ffffffff80203ab0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
ffffffff80203ab4:	49 b9 00 00 00 00 00 	movabs r9,0x190000000000
ffffffff80203abb:	19 00 00 
ffffffff80203abe:	48 83 c8 01          	or     rax,0x1
ffffffff80203ac2:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
ffffffff80203ac6:	e9 2b fe ff ff       	jmp    ffffffff802038f6 <kmmap+0x146>
ffffffff80203acb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80203ad0:	31 c0                	xor    eax,eax
ffffffff80203ad2:	e8 59 12 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff80203ad7:	48 0b 44 24 18       	or     rax,QWORD PTR [rsp+0x18]
ffffffff80203adc:	48 83 c8 01          	or     rax,0x1
ffffffff80203ae0:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
ffffffff80203ae4:	e9 a3 fd ff ff       	jmp    ffffffff8020388c <kmmap+0xdc>
ffffffff80203ae9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80203af0:	31 c0                	xor    eax,eax
ffffffff80203af2:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
ffffffff80203af6:	e8 35 12 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff80203afb:	48 0b 44 24 18       	or     rax,QWORD PTR [rsp+0x18]
ffffffff80203b00:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
ffffffff80203b04:	48 83 c8 01          	or     rax,0x1
ffffffff80203b08:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
ffffffff80203b0c:	e9 1c fd ff ff       	jmp    ffffffff8020382d <kmmap+0x7d>
ffffffff80203b11:	31 c0                	xor    eax,eax
ffffffff80203b13:	e8 58 1c 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80203b18:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203b1f:	89 c6                	mov    esi,eax
ffffffff80203b21:	31 c0                	xor    eax,eax
ffffffff80203b23:	e8 38 43 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203b28:	e9 0b ff ff ff       	jmp    ffffffff80203a38 <kmmap+0x288>
ffffffff80203b2d:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80203b30 <is_frame_empty>:
ffffffff80203b30:	48 81 e7 00 f0 ff ff 	and    rdi,0xfffffffffffff000
ffffffff80203b37:	48 8b 17             	mov    rdx,QWORD PTR [rdi]
ffffffff80203b3a:	48 85 d2             	test   rdx,rdx
ffffffff80203b3d:	75 31                	jne    ffffffff80203b70 <is_frame_empty+0x40>
ffffffff80203b3f:	48 8d 47 08          	lea    rax,[rdi+0x8]
ffffffff80203b43:	eb 10                	jmp    ffffffff80203b55 <is_frame_empty+0x25>
ffffffff80203b45:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80203b48:	48 83 c0 08          	add    rax,0x8
ffffffff80203b4c:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203b53:	74 15                	je     ffffffff80203b6a <is_frame_empty+0x3a>
ffffffff80203b55:	48 83 c2 01          	add    rdx,0x1
ffffffff80203b59:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff80203b5d:	74 e9                	je     ffffffff80203b48 <is_frame_empty+0x18>
ffffffff80203b5f:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203b66:	0f 94 c0             	sete   al
ffffffff80203b69:	c3                   	ret    
ffffffff80203b6a:	b8 01 00 00 00       	mov    eax,0x1
ffffffff80203b6f:	c3                   	ret    
ffffffff80203b70:	31 c0                	xor    eax,eax
ffffffff80203b72:	c3                   	ret    
ffffffff80203b73:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80203b76:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80203b7d:	00 00 00 

ffffffff80203b80 <kmunmap>:
ffffffff80203b80:	41 57                	push   r15
ffffffff80203b82:	48 89 f8             	mov    rax,rdi
ffffffff80203b85:	49 89 f7             	mov    r15,rsi
ffffffff80203b88:	41 56                	push   r14
ffffffff80203b8a:	48 29 f0             	sub    rax,rsi
ffffffff80203b8d:	41 55                	push   r13
ffffffff80203b8f:	41 54                	push   r12
ffffffff80203b91:	55                   	push   rbp
ffffffff80203b92:	53                   	push   rbx
ffffffff80203b93:	48 83 ec 38          	sub    rsp,0x38
ffffffff80203b97:	83 fa 01             	cmp    edx,0x1
ffffffff80203b9a:	48 0f 44 f8          	cmove  rdi,rax
ffffffff80203b9e:	48 89 f8             	mov    rax,rdi
ffffffff80203ba1:	25 ff 0f 00 00       	and    eax,0xfff
ffffffff80203ba6:	48 8d 94 30 00 f0 ff 	lea    rdx,[rax+rsi*1-0x1000]
ffffffff80203bad:	ff 
ffffffff80203bae:	4c 0f 45 fa          	cmovne r15,rdx
ffffffff80203bb2:	49 81 ff ff 0f 00 00 	cmp    r15,0xfff
ffffffff80203bb9:	0f 86 d6 00 00 00    	jbe    ffffffff80203c95 <kmunmap+0x115>
ffffffff80203bbf:	48 89 fa             	mov    rdx,rdi
ffffffff80203bc2:	48 89 fb             	mov    rbx,rdi
ffffffff80203bc5:	4c 89 fe             	mov    rsi,r15
ffffffff80203bc8:	49 bc 00 00 00 00 00 	movabs r12,0x190000000000
ffffffff80203bcf:	19 00 00 
ffffffff80203bd2:	48 c1 ea 27          	shr    rdx,0x27
ffffffff80203bd6:	48 c1 eb 15          	shr    rbx,0x15
ffffffff80203bda:	49 89 f6             	mov    r14,rsi
ffffffff80203bdd:	81 e2 ff 01 00 00    	and    edx,0x1ff
ffffffff80203be3:	81 e3 ff 01 00 00    	and    ebx,0x1ff
ffffffff80203be9:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
ffffffff80203bee:	48 89 fa             	mov    rdx,rdi
ffffffff80203bf1:	48 c1 ef 0c          	shr    rdi,0xc
ffffffff80203bf5:	48 c1 ea 1e          	shr    rdx,0x1e
ffffffff80203bf9:	81 e7 ff 01 00 00    	and    edi,0x1ff
ffffffff80203bff:	81 e2 ff 01 00 00    	and    edx,0x1ff
ffffffff80203c05:	49 89 ff             	mov    r15,rdi
ffffffff80203c08:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
ffffffff80203c0d:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
ffffffff80203c12:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
ffffffff80203c17:	48 89 cf             	mov    rdi,rcx
ffffffff80203c1a:	48 c1 e5 15          	shl    rbp,0x15
ffffffff80203c1e:	48 c1 e7 1e          	shl    rdi,0x1e
ffffffff80203c22:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
ffffffff80203c27:	48 89 cf             	mov    rdi,rcx
ffffffff80203c2a:	48 c1 e1 0c          	shl    rcx,0xc
ffffffff80203c2e:	48 c1 e7 15          	shl    rdi,0x15
ffffffff80203c32:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
ffffffff80203c37:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
ffffffff80203c3c:	48 85 c0             	test   rax,rax
ffffffff80203c3f:	0f 84 7f 02 00 00    	je     ffffffff80203ec4 <kmunmap+0x344>
ffffffff80203c45:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80203c48:	49 83 c7 01          	add    r15,0x1
ffffffff80203c4c:	4a 8d 0c fd 00 00 00 	lea    rcx,[r15*8+0x0]
ffffffff80203c53:	00 
ffffffff80203c54:	49 81 ff 00 02 00 00 	cmp    r15,0x200
ffffffff80203c5b:	74 4b                	je     ffffffff80203ca8 <kmunmap+0x128>
ffffffff80203c5d:	48 89 d8             	mov    rax,rbx
ffffffff80203c60:	49 81 ee 00 10 00 00 	sub    r14,0x1000
ffffffff80203c67:	48 c1 e0 0c          	shl    rax,0xc
ffffffff80203c6b:	48 0b 44 24 08       	or     rax,QWORD PTR [rsp+0x8]
ffffffff80203c70:	48 09 e8             	or     rax,rbp
ffffffff80203c73:	48 09 c8             	or     rax,rcx
ffffffff80203c76:	4c 09 e0             	or     rax,r12
ffffffff80203c79:	48 8b 38             	mov    rdi,QWORD PTR [rax]
ffffffff80203c7c:	49 89 c5             	mov    r13,rax
ffffffff80203c7f:	e8 8c 16 00 00       	call   ffffffff80205310 <free_frame>
ffffffff80203c84:	49 c7 45 00 00 00 00 	mov    QWORD PTR [r13+0x0],0x0
ffffffff80203c8b:	00 
ffffffff80203c8c:	49 81 fe ff 0f 00 00 	cmp    r14,0xfff
ffffffff80203c93:	77 b3                	ja     ffffffff80203c48 <kmunmap+0xc8>
ffffffff80203c95:	48 83 c4 38          	add    rsp,0x38
ffffffff80203c99:	5b                   	pop    rbx
ffffffff80203c9a:	5d                   	pop    rbp
ffffffff80203c9b:	41 5c                	pop    r12
ffffffff80203c9d:	41 5d                	pop    r13
ffffffff80203c9f:	41 5e                	pop    r14
ffffffff80203ca1:	41 5f                	pop    r15
ffffffff80203ca3:	c3                   	ret    
ffffffff80203ca4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203ca8:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
ffffffff80203cad:	4c 8d 0c dd 00 00 00 	lea    r9,[rbx*8+0x0]
ffffffff80203cb4:	00 
ffffffff80203cb5:	4c 0b 4c 24 20       	or     r9,QWORD PTR [rsp+0x20]
ffffffff80203cba:	49 bf 00 00 00 80 0c 	movabs r15,0x190c80000000
ffffffff80203cc1:	19 00 00 
ffffffff80203cc4:	48 c1 e0 0c          	shl    rax,0xc
ffffffff80203cc8:	49 09 c1             	or     r9,rax
ffffffff80203ccb:	4d 09 cf             	or     r15,r9
ffffffff80203cce:	49 8b 07             	mov    rax,QWORD PTR [r15]
ffffffff80203cd1:	48 25 00 f0 ff ff    	and    rax,0xfffffffffffff000
ffffffff80203cd7:	48 8b 10             	mov    rdx,QWORD PTR [rax]
ffffffff80203cda:	48 85 d2             	test   rdx,rdx
ffffffff80203cdd:	75 31                	jne    ffffffff80203d10 <kmunmap+0x190>
ffffffff80203cdf:	48 83 c0 08          	add    rax,0x8
ffffffff80203ce3:	eb 14                	jmp    ffffffff80203cf9 <kmunmap+0x179>
ffffffff80203ce5:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80203ce8:	48 83 c0 08          	add    rax,0x8
ffffffff80203cec:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203cf3:	0f 84 3f 01 00 00    	je     ffffffff80203e38 <kmunmap+0x2b8>
ffffffff80203cf9:	48 83 c2 01          	add    rdx,0x1
ffffffff80203cfd:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff80203d01:	74 e5                	je     ffffffff80203ce8 <kmunmap+0x168>
ffffffff80203d03:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203d0a:	0f 84 28 01 00 00    	je     ffffffff80203e38 <kmunmap+0x2b8>
ffffffff80203d10:	48 83 c3 01          	add    rbx,0x1
ffffffff80203d14:	45 31 ff             	xor    r15d,r15d
ffffffff80203d17:	31 c9                	xor    ecx,ecx
ffffffff80203d19:	48 81 fb 00 02 00 00 	cmp    rbx,0x200
ffffffff80203d20:	0f 85 37 ff ff ff    	jne    ffffffff80203c5d <kmunmap+0xdd>
ffffffff80203d26:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
ffffffff80203d2b:	48 8d 1c c5 00 00 00 	lea    rbx,[rax*8+0x0]
ffffffff80203d32:	00 
ffffffff80203d33:	48 0b 5c 24 28       	or     rbx,QWORD PTR [rsp+0x28]
ffffffff80203d38:	48 b8 00 00 40 86 0c 	movabs rax,0x190c86400000
ffffffff80203d3f:	19 00 00 
ffffffff80203d42:	48 09 c3             	or     rbx,rax
ffffffff80203d45:	48 8b 03             	mov    rax,QWORD PTR [rbx]
ffffffff80203d48:	48 25 00 f0 ff ff    	and    rax,0xfffffffffffff000
ffffffff80203d4e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
ffffffff80203d51:	48 85 d2             	test   rdx,rdx
ffffffff80203d54:	75 32                	jne    ffffffff80203d88 <kmunmap+0x208>
ffffffff80203d56:	48 83 c0 08          	add    rax,0x8
ffffffff80203d5a:	eb 15                	jmp    ffffffff80203d71 <kmunmap+0x1f1>
ffffffff80203d5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80203d60:	48 83 c0 08          	add    rax,0x8
ffffffff80203d64:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203d6b:	0f 84 7c 01 00 00    	je     ffffffff80203eed <kmunmap+0x36d>
ffffffff80203d71:	48 83 c2 01          	add    rdx,0x1
ffffffff80203d75:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff80203d79:	74 e5                	je     ffffffff80203d60 <kmunmap+0x1e0>
ffffffff80203d7b:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203d82:	0f 84 65 01 00 00    	je     ffffffff80203eed <kmunmap+0x36d>
ffffffff80203d88:	48 83 44 24 10 01    	add    QWORD PTR [rsp+0x10],0x1
ffffffff80203d8e:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
ffffffff80203d93:	31 db                	xor    ebx,ebx
ffffffff80203d95:	45 31 ff             	xor    r15d,r15d
ffffffff80203d98:	48 81 c5 00 00 20 00 	add    rbp,0x200000
ffffffff80203d9f:	48 3d 00 02 00 00    	cmp    rax,0x200
ffffffff80203da5:	0f 85 19 01 00 00    	jne    ffffffff80203ec4 <kmunmap+0x344>
ffffffff80203dab:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
ffffffff80203db0:	48 8d 2c c5 00 00 00 	lea    rbp,[rax*8+0x0]
ffffffff80203db7:	00 
ffffffff80203db8:	48 b8 00 20 43 86 0c 	movabs rax,0x190c86432000
ffffffff80203dbf:	19 00 00 
ffffffff80203dc2:	48 09 c5             	or     rbp,rax
ffffffff80203dc5:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
ffffffff80203dc9:	48 25 00 f0 ff ff    	and    rax,0xfffffffffffff000
ffffffff80203dcf:	48 8b 10             	mov    rdx,QWORD PTR [rax]
ffffffff80203dd2:	48 85 d2             	test   rdx,rdx
ffffffff80203dd5:	75 31                	jne    ffffffff80203e08 <kmunmap+0x288>
ffffffff80203dd7:	48 83 c0 08          	add    rax,0x8
ffffffff80203ddb:	eb 14                	jmp    ffffffff80203df1 <kmunmap+0x271>
ffffffff80203ddd:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80203de0:	48 83 c0 08          	add    rax,0x8
ffffffff80203de4:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203deb:	0f 84 8c 01 00 00    	je     ffffffff80203f7d <kmunmap+0x3fd>
ffffffff80203df1:	48 83 c2 01          	add    rdx,0x1
ffffffff80203df5:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff80203df9:	74 e5                	je     ffffffff80203de0 <kmunmap+0x260>
ffffffff80203dfb:	48 81 fa 00 02 00 00 	cmp    rdx,0x200
ffffffff80203e02:	0f 84 75 01 00 00    	je     ffffffff80203f7d <kmunmap+0x3fd>
ffffffff80203e08:	48 83 44 24 18 01    	add    QWORD PTR [rsp+0x18],0x1
ffffffff80203e0e:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
ffffffff80203e13:	31 db                	xor    ebx,ebx
ffffffff80203e15:	45 31 ff             	xor    r15d,r15d
ffffffff80203e18:	48 c7 44 24 10 00 00 	mov    QWORD PTR [rsp+0x10],0x0
ffffffff80203e1f:	00 00 
ffffffff80203e21:	31 c0                	xor    eax,eax
ffffffff80203e23:	48 81 fe 00 02 00 00 	cmp    rsi,0x200
ffffffff80203e2a:	0f 84 65 fe ff ff    	je     ffffffff80203c95 <kmunmap+0x115>
ffffffff80203e30:	e9 d8 fd ff ff       	jmp    ffffffff80203c0d <kmunmap+0x8d>
ffffffff80203e35:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80203e38:	31 c0                	xor    eax,eax
ffffffff80203e3a:	e8 01 22 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80203e3f:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203e46:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203e4b:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80203e52:	e8 99 cd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203e57:	31 c0                	xor    eax,eax
ffffffff80203e59:	e8 82 1a 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80203e5e:	84 c0                	test   al,al
ffffffff80203e60:	75 6f                	jne    ffffffff80203ed1 <kmunmap+0x351>
ffffffff80203e62:	48 c7 c1 58 9b 20 80 	mov    rcx,0xffffffff80209b58
ffffffff80203e69:	ba 85 00 00 00       	mov    edx,0x85
ffffffff80203e6e:	48 c7 c6 1d 9a 20 80 	mov    rsi,0xffffffff80209a1d
ffffffff80203e75:	31 c0                	xor    eax,eax
ffffffff80203e77:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80203e7e:	e8 dd 3f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203e83:	31 c0                	xor    eax,eax
ffffffff80203e85:	48 c7 c7 78 9a 20 80 	mov    rdi,0xffffffff80209a78
ffffffff80203e8c:	e8 cf 3f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203e91:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203e98:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203e9d:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80203ea4:	e8 47 cd ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203ea9:	31 c0                	xor    eax,eax
ffffffff80203eab:	e8 b0 21 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80203eb0:	49 c7 07 00 00 00 00 	mov    QWORD PTR [r15],0x0
ffffffff80203eb7:	4c 89 ff             	mov    rdi,r15
ffffffff80203eba:	e8 51 14 00 00       	call   ffffffff80205310 <free_frame>
ffffffff80203ebf:	e9 4c fe ff ff       	jmp    ffffffff80203d10 <kmunmap+0x190>
ffffffff80203ec4:	4a 8d 0c fd 00 00 00 	lea    rcx,[r15*8+0x0]
ffffffff80203ecb:	00 
ffffffff80203ecc:	e9 8c fd ff ff       	jmp    ffffffff80203c5d <kmunmap+0xdd>
ffffffff80203ed1:	31 c0                	xor    eax,eax
ffffffff80203ed3:	e8 98 18 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80203ed8:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80203edf:	89 c6                	mov    esi,eax
ffffffff80203ee1:	31 c0                	xor    eax,eax
ffffffff80203ee3:	e8 78 3f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203ee8:	e9 75 ff ff ff       	jmp    ffffffff80203e62 <kmunmap+0x2e2>
ffffffff80203eed:	31 c0                	xor    eax,eax
ffffffff80203eef:	e8 4c 21 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80203ef4:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203efb:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203f00:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80203f07:	e8 e4 cc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203f0c:	31 c0                	xor    eax,eax
ffffffff80203f0e:	e8 cd 19 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80203f13:	84 c0                	test   al,al
ffffffff80203f15:	0f 85 ef 00 00 00    	jne    ffffffff8020400a <kmunmap+0x48a>
ffffffff80203f1b:	48 c7 c1 58 9b 20 80 	mov    rcx,0xffffffff80209b58
ffffffff80203f22:	ba 8e 00 00 00       	mov    edx,0x8e
ffffffff80203f27:	48 c7 c6 1d 9a 20 80 	mov    rsi,0xffffffff80209a1d
ffffffff80203f2e:	31 c0                	xor    eax,eax
ffffffff80203f30:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80203f37:	e8 24 3f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203f3c:	31 c0                	xor    eax,eax
ffffffff80203f3e:	48 c7 c7 98 9a 20 80 	mov    rdi,0xffffffff80209a98
ffffffff80203f45:	e8 16 3f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203f4a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203f51:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203f56:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80203f5d:	e8 8e cc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203f62:	31 c0                	xor    eax,eax
ffffffff80203f64:	e8 f7 20 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80203f69:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
ffffffff80203f70:	48 89 df             	mov    rdi,rbx
ffffffff80203f73:	e8 98 13 00 00       	call   ffffffff80205310 <free_frame>
ffffffff80203f78:	e9 0b fe ff ff       	jmp    ffffffff80203d88 <kmunmap+0x208>
ffffffff80203f7d:	31 c0                	xor    eax,eax
ffffffff80203f7f:	e8 bc 20 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80203f84:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203f8b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203f90:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80203f97:	e8 54 cc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203f9c:	31 c0                	xor    eax,eax
ffffffff80203f9e:	e8 3d 19 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80203fa3:	84 c0                	test   al,al
ffffffff80203fa5:	75 7f                	jne    ffffffff80204026 <kmunmap+0x4a6>
ffffffff80203fa7:	48 c7 c1 58 9b 20 80 	mov    rcx,0xffffffff80209b58
ffffffff80203fae:	ba 99 00 00 00       	mov    edx,0x99
ffffffff80203fb3:	48 c7 c6 1d 9a 20 80 	mov    rsi,0xffffffff80209a1d
ffffffff80203fba:	31 c0                	xor    eax,eax
ffffffff80203fbc:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80203fc3:	e8 98 3e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203fc8:	31 c0                	xor    eax,eax
ffffffff80203fca:	48 c7 c7 b8 9a 20 80 	mov    rdi,0xffffffff80209ab8
ffffffff80203fd1:	e8 8a 3e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80203fd6:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80203fdd:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80203fe2:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80203fe9:	e8 02 cc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80203fee:	31 c0                	xor    eax,eax
ffffffff80203ff0:	e8 6b 20 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80203ff5:	48 c7 45 00 00 00 00 	mov    QWORD PTR [rbp+0x0],0x0
ffffffff80203ffc:	00 
ffffffff80203ffd:	48 89 ef             	mov    rdi,rbp
ffffffff80204000:	e8 0b 13 00 00       	call   ffffffff80205310 <free_frame>
ffffffff80204005:	e9 fe fd ff ff       	jmp    ffffffff80203e08 <kmunmap+0x288>
ffffffff8020400a:	31 c0                	xor    eax,eax
ffffffff8020400c:	e8 5f 17 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80204011:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80204018:	89 c6                	mov    esi,eax
ffffffff8020401a:	31 c0                	xor    eax,eax
ffffffff8020401c:	e8 3f 3e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204021:	e9 f5 fe ff ff       	jmp    ffffffff80203f1b <kmunmap+0x39b>
ffffffff80204026:	31 c0                	xor    eax,eax
ffffffff80204028:	e8 43 17 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff8020402d:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80204034:	89 c6                	mov    esi,eax
ffffffff80204036:	31 c0                	xor    eax,eax
ffffffff80204038:	e8 23 3e 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020403d:	e9 65 ff ff ff       	jmp    ffffffff80203fa7 <kmunmap+0x427>
ffffffff80204042:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80204046:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020404d:	00 00 00 

ffffffff80204050 <create_page_directory>:
ffffffff80204050:	48 83 ec 08          	sub    rsp,0x8
ffffffff80204054:	31 c0                	xor    eax,eax
ffffffff80204056:	e8 d5 0c 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff8020405b:	be 00 00 00 80       	mov    esi,0x80000000
ffffffff80204060:	48 8d 90 00 00 00 80 	lea    rdx,[rax-0x80000000]
ffffffff80204067:	48 29 c6             	sub    rsi,rax
ffffffff8020406a:	48 8d b8 00 10 00 80 	lea    rdi,[rax-0x7ffff000]
ffffffff80204071:	48 03 35 f0 86 00 00 	add    rsi,QWORD PTR [rip+0x86f0]        # ffffffff8020c768 <limine_page_directory_addr>
ffffffff80204078:	49 89 d0             	mov    r8,rdx
ffffffff8020407b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80204080:	48 8b 0c 16          	mov    rcx,QWORD PTR [rsi+rdx*1]
ffffffff80204084:	48 83 c2 08          	add    rdx,0x8
ffffffff80204088:	48 89 4a f8          	mov    QWORD PTR [rdx-0x8],rcx
ffffffff8020408c:	48 39 fa             	cmp    rdx,rdi
ffffffff8020408f:	75 ef                	jne    ffffffff80204080 <create_page_directory+0x30>
ffffffff80204091:	48 89 c2             	mov    rdx,rax
ffffffff80204094:	49 c7 00 00 00 00 00 	mov    QWORD PTR [r8],0x0
ffffffff8020409b:	48 83 ca 03          	or     rdx,0x3
ffffffff8020409f:	49 89 90 90 01 00 00 	mov    QWORD PTR [r8+0x190],rdx
ffffffff802040a6:	48 83 c4 08          	add    rsp,0x8
ffffffff802040aa:	c3                   	ret    
ffffffff802040ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff802040b0 <setup_context_frame>:
ffffffff802040b0:	53                   	push   rbx
ffffffff802040b1:	48 bb f8 27 43 86 0c 	movabs rbx,0x190c864327f8
ffffffff802040b8:	19 00 00 
ffffffff802040bb:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
ffffffff802040bf:	0f 84 eb 00 00 00    	je     ffffffff802041b0 <setup_context_frame+0x100>
ffffffff802040c5:	48 bb f8 ff 4f 86 0c 	movabs rbx,0x190c864ffff8
ffffffff802040cc:	19 00 00 
ffffffff802040cf:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
ffffffff802040d3:	75 0e                	jne    ffffffff802040e3 <setup_context_frame+0x33>
ffffffff802040d5:	31 c0                	xor    eax,eax
ffffffff802040d7:	e8 54 0c 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff802040dc:	48 83 c8 03          	or     rax,0x3
ffffffff802040e0:	48 89 03             	mov    QWORD PTR [rbx],rax
ffffffff802040e3:	48 bb f8 ff ff 9f 0c 	movabs rbx,0x190c9ffffff8
ffffffff802040ea:	19 00 00 
ffffffff802040ed:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
ffffffff802040f1:	75 0e                	jne    ffffffff80204101 <setup_context_frame+0x51>
ffffffff802040f3:	31 c0                	xor    eax,eax
ffffffff802040f5:	e8 36 0c 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff802040fa:	48 83 c8 03          	or     rax,0x3
ffffffff802040fe:	48 89 03             	mov    QWORD PTR [rbx],rax
ffffffff80204101:	48 bb f8 ff ff ff 3f 	movabs rbx,0x193ffffffff8
ffffffff80204108:	19 00 00 
ffffffff8020410b:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
ffffffff8020410f:	75 0e                	jne    ffffffff8020411f <setup_context_frame+0x6f>
ffffffff80204111:	31 c0                	xor    eax,eax
ffffffff80204113:	e8 18 0c 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff80204118:	48 83 c8 03          	or     rax,0x3
ffffffff8020411c:	48 89 03             	mov    QWORD PTR [rbx],rax
ffffffff8020411f:	50                   	push   rax
ffffffff80204120:	0f 20 e0             	mov    rax,cr4
ffffffff80204123:	48 0d 00 02 00 00    	or     rax,0x200
ffffffff80204129:	0f 22 e0             	mov    cr4,rax
ffffffff8020412c:	58                   	pop    rax
ffffffff8020412d:	31 c0                	xor    eax,eax
ffffffff8020412f:	e8 0c 1f 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80204134:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020413b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80204140:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80204147:	e8 a4 ca ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020414c:	31 c0                	xor    eax,eax
ffffffff8020414e:	e8 8d 17 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80204153:	84 c0                	test   al,al
ffffffff80204155:	75 71                	jne    ffffffff802041c8 <setup_context_frame+0x118>
ffffffff80204157:	48 c7 c1 40 9b 20 80 	mov    rcx,0xffffffff80209b40
ffffffff8020415e:	ba c1 00 00 00       	mov    edx,0xc1
ffffffff80204163:	48 c7 c6 1d 9a 20 80 	mov    rsi,0xffffffff80209a1d
ffffffff8020416a:	31 c0                	xor    eax,eax
ffffffff8020416c:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80204173:	e8 e8 3c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204178:	48 c7 c7 d8 9a 20 80 	mov    rdi,0xffffffff80209ad8
ffffffff8020417f:	31 c0                	xor    eax,eax
ffffffff80204181:	48 be 00 f0 ff ff ff 	movabs rsi,0x7ffffffff000
ffffffff80204188:	7f 00 00 
ffffffff8020418b:	e8 d0 3c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204190:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80204197:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020419c:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802041a3:	e8 48 ca ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802041a8:	31 c0                	xor    eax,eax
ffffffff802041aa:	5b                   	pop    rbx
ffffffff802041ab:	e9 b0 1e 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff802041b0:	31 c0                	xor    eax,eax
ffffffff802041b2:	e8 79 0b 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff802041b7:	48 83 c8 03          	or     rax,0x3
ffffffff802041bb:	48 89 03             	mov    QWORD PTR [rbx],rax
ffffffff802041be:	e9 02 ff ff ff       	jmp    ffffffff802040c5 <setup_context_frame+0x15>
ffffffff802041c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802041c8:	31 c0                	xor    eax,eax
ffffffff802041ca:	e8 a1 15 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff802041cf:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802041d6:	89 c6                	mov    esi,eax
ffffffff802041d8:	31 c0                	xor    eax,eax
ffffffff802041da:	e8 81 3c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802041df:	e9 73 ff ff ff       	jmp    ffffffff80204157 <setup_context_frame+0xa7>
ffffffff802041e4:	66 90                	xchg   ax,ax
ffffffff802041e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802041ed:	00 00 00 

ffffffff802041f0 <get_size>:
ffffffff802041f0:	48 b9 00 00 00 80 0c 	movabs rcx,0x190c80000000
ffffffff802041f7:	19 00 00 
ffffffff802041fa:	48 89 f8             	mov    rax,rdi
ffffffff802041fd:	48 c1 e8 27          	shr    rax,0x27
ffffffff80204201:	89 c2                	mov    edx,eax
ffffffff80204203:	25 ff 01 00 00       	and    eax,0x1ff
ffffffff80204208:	c1 e0 03             	shl    eax,0x3
ffffffff8020420b:	66 81 e2 ff 01       	and    dx,0x1ff
ffffffff80204210:	0d 00 20 43 06       	or     eax,0x6432000
ffffffff80204215:	48 09 c8             	or     rax,rcx
ffffffff80204218:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff8020421c:	75 42                	jne    ffffffff80204260 <get_size+0x70>
ffffffff8020421e:	49 b8 00 00 00 00 80 	movabs r8,0x8000000000
ffffffff80204225:	00 00 00 
ffffffff80204228:	4c 39 c6             	cmp    rsi,r8
ffffffff8020422b:	76 2f                	jbe    ffffffff8020425c <get_size+0x6c>
ffffffff8020422d:	83 c2 01             	add    edx,0x1
ffffffff80204230:	4d 89 c1             	mov    r9,r8
ffffffff80204233:	66 81 e2 ff 01       	and    dx,0x1ff
ffffffff80204238:	0f b7 c2             	movzx  eax,dx
ffffffff8020423b:	c1 e0 03             	shl    eax,0x3
ffffffff8020423e:	0d 00 20 43 06       	or     eax,0x6432000
ffffffff80204243:	48 09 c8             	or     rax,rcx
ffffffff80204246:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff8020424a:	75 17                	jne    ffffffff80204263 <get_size+0x73>
ffffffff8020424c:	83 c2 01             	add    edx,0x1
ffffffff8020424f:	4d 01 c8             	add    r8,r9
ffffffff80204252:	66 81 e2 ff 01       	and    dx,0x1ff
ffffffff80204257:	4c 39 c6             	cmp    rsi,r8
ffffffff8020425a:	77 dc                	ja     ffffffff80204238 <get_size+0x48>
ffffffff8020425c:	4c 89 c0             	mov    rax,r8
ffffffff8020425f:	c3                   	ret    
ffffffff80204260:	45 31 c0             	xor    r8d,r8d
ffffffff80204263:	49 ba 00 00 40 86 0c 	movabs r10,0x190c86400000
ffffffff8020426a:	19 00 00 
ffffffff8020426d:	48 89 f8             	mov    rax,rdi
ffffffff80204270:	0f b7 d2             	movzx  edx,dx
ffffffff80204273:	48 c1 e8 1e          	shr    rax,0x1e
ffffffff80204277:	49 89 d1             	mov    r9,rdx
ffffffff8020427a:	89 c1                	mov    ecx,eax
ffffffff8020427c:	48 c1 e0 03          	shl    rax,0x3
ffffffff80204280:	49 c1 e1 0c          	shl    r9,0xc
ffffffff80204284:	25 f8 0f 00 00       	and    eax,0xff8
ffffffff80204289:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff8020428e:	4c 09 c8             	or     rax,r9
ffffffff80204291:	4c 09 d0             	or     rax,r10
ffffffff80204294:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff80204298:	75 43                	jne    ffffffff802042dd <get_size+0xed>
ffffffff8020429a:	49 81 c0 00 00 00 40 	add    r8,0x40000000
ffffffff802042a1:	4c 39 c6             	cmp    rsi,r8
ffffffff802042a4:	76 b6                	jbe    ffffffff8020425c <get_size+0x6c>
ffffffff802042a6:	83 c1 01             	add    ecx,0x1
ffffffff802042a9:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff802042ae:	48 8d 04 cd 00 00 00 	lea    rax,[rcx*8+0x0]
ffffffff802042b5:	00 
ffffffff802042b6:	25 f8 ff 07 00       	and    eax,0x7fff8
ffffffff802042bb:	4c 09 c8             	or     rax,r9
ffffffff802042be:	4c 09 d0             	or     rax,r10
ffffffff802042c1:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff802042c5:	75 16                	jne    ffffffff802042dd <get_size+0xed>
ffffffff802042c7:	83 c1 01             	add    ecx,0x1
ffffffff802042ca:	49 81 c0 00 00 00 40 	add    r8,0x40000000
ffffffff802042d1:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff802042d6:	4c 39 c6             	cmp    rsi,r8
ffffffff802042d9:	76 81                	jbe    ffffffff8020425c <get_size+0x6c>
ffffffff802042db:	eb d1                	jmp    ffffffff802042ae <get_size+0xbe>
ffffffff802042dd:	48 89 f8             	mov    rax,rdi
ffffffff802042e0:	0f b7 c9             	movzx  ecx,cx
ffffffff802042e3:	49 89 d3             	mov    r11,rdx
ffffffff802042e6:	53                   	push   rbx
ffffffff802042e7:	48 c1 e8 15          	shr    rax,0x15
ffffffff802042eb:	49 89 ca             	mov    r10,rcx
ffffffff802042ee:	49 c1 e3 15          	shl    r11,0x15
ffffffff802042f2:	48 bb 00 00 00 80 0c 	movabs rbx,0x190c80000000
ffffffff802042f9:	19 00 00 
ffffffff802042fc:	41 89 c1             	mov    r9d,eax
ffffffff802042ff:	48 c1 e0 03          	shl    rax,0x3
ffffffff80204303:	49 c1 e2 0c          	shl    r10,0xc
ffffffff80204307:	25 f8 0f 00 00       	and    eax,0xff8
ffffffff8020430c:	66 41 81 e1 ff 01    	and    r9w,0x1ff
ffffffff80204312:	4c 09 d0             	or     rax,r10
ffffffff80204315:	4c 09 d8             	or     rax,r11
ffffffff80204318:	48 09 d8             	or     rax,rbx
ffffffff8020431b:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff8020431f:	75 4d                	jne    ffffffff8020436e <get_size+0x17e>
ffffffff80204321:	49 81 c0 00 00 20 00 	add    r8,0x200000
ffffffff80204328:	4c 39 c6             	cmp    rsi,r8
ffffffff8020432b:	76 3c                	jbe    ffffffff80204369 <get_size+0x179>
ffffffff8020432d:	41 83 c1 01          	add    r9d,0x1
ffffffff80204331:	66 41 81 e1 ff 01    	and    r9w,0x1ff
ffffffff80204337:	4a 8d 04 cd 00 00 00 	lea    rax,[r9*8+0x0]
ffffffff8020433e:	00 
ffffffff8020433f:	25 f8 ff 07 00       	and    eax,0x7fff8
ffffffff80204344:	4c 09 d8             	or     rax,r11
ffffffff80204347:	4c 09 d0             	or     rax,r10
ffffffff8020434a:	48 09 d8             	or     rax,rbx
ffffffff8020434d:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff80204351:	75 1b                	jne    ffffffff8020436e <get_size+0x17e>
ffffffff80204353:	41 83 c1 01          	add    r9d,0x1
ffffffff80204357:	49 81 c0 00 00 20 00 	add    r8,0x200000
ffffffff8020435e:	66 41 81 e1 ff 01    	and    r9w,0x1ff
ffffffff80204364:	4c 39 c6             	cmp    rsi,r8
ffffffff80204367:	77 ce                	ja     ffffffff80204337 <get_size+0x147>
ffffffff80204369:	4c 89 c0             	mov    rax,r8
ffffffff8020436c:	5b                   	pop    rbx
ffffffff8020436d:	c3                   	ret    
ffffffff8020436e:	48 c1 ef 0c          	shr    rdi,0xc
ffffffff80204372:	45 0f b7 c9          	movzx  r9d,r9w
ffffffff80204376:	48 c1 e2 1e          	shl    rdx,0x1e
ffffffff8020437a:	49 ba 00 00 00 00 00 	movabs r10,0x190000000000
ffffffff80204381:	19 00 00 
ffffffff80204384:	49 c1 e1 0c          	shl    r9,0xc
ffffffff80204388:	89 f8                	mov    eax,edi
ffffffff8020438a:	48 c1 e7 03          	shl    rdi,0x3
ffffffff8020438e:	81 e7 f8 0f 00 00    	and    edi,0xff8
ffffffff80204394:	48 c1 e1 15          	shl    rcx,0x15
ffffffff80204398:	66 25 ff 01          	and    ax,0x1ff
ffffffff8020439c:	4c 09 cf             	or     rdi,r9
ffffffff8020439f:	48 09 d7             	or     rdi,rdx
ffffffff802043a2:	48 09 cf             	or     rdi,rcx
ffffffff802043a5:	4c 09 d7             	or     rdi,r10
ffffffff802043a8:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
ffffffff802043ac:	75 bb                	jne    ffffffff80204369 <get_size+0x179>
ffffffff802043ae:	49 81 c0 00 10 00 00 	add    r8,0x1000
ffffffff802043b5:	4c 39 c6             	cmp    rsi,r8
ffffffff802043b8:	76 af                	jbe    ffffffff80204369 <get_size+0x179>
ffffffff802043ba:	8d 78 01             	lea    edi,[rax+0x1]
ffffffff802043bd:	66 81 e7 ff 01       	and    di,0x1ff
ffffffff802043c2:	eb 14                	jmp    ffffffff802043d8 <get_size+0x1e8>
ffffffff802043c4:	83 c7 01             	add    edi,0x1
ffffffff802043c7:	49 81 c0 00 10 00 00 	add    r8,0x1000
ffffffff802043ce:	66 81 e7 ff 01       	and    di,0x1ff
ffffffff802043d3:	49 39 f0             	cmp    r8,rsi
ffffffff802043d6:	73 91                	jae    ffffffff80204369 <get_size+0x179>
ffffffff802043d8:	48 8d 04 fd 00 00 00 	lea    rax,[rdi*8+0x0]
ffffffff802043df:	00 
ffffffff802043e0:	25 f8 ff 07 00       	and    eax,0x7fff8
ffffffff802043e5:	48 09 d0             	or     rax,rdx
ffffffff802043e8:	48 09 c8             	or     rax,rcx
ffffffff802043eb:	4c 09 c8             	or     rax,r9
ffffffff802043ee:	4c 09 d0             	or     rax,r10
ffffffff802043f1:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
ffffffff802043f5:	74 cd                	je     ffffffff802043c4 <get_size+0x1d4>
ffffffff802043f7:	e9 6d ff ff ff       	jmp    ffffffff80204369 <get_size+0x179>
ffffffff802043fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80204400 <search_empty_space>:
ffffffff80204400:	49 b9 00 00 00 80 0c 	movabs r9,0x190c80000000
ffffffff80204407:	19 00 00 
ffffffff8020440a:	48 89 fa             	mov    rdx,rdi
ffffffff8020440d:	48 89 f8             	mov    rax,rdi
ffffffff80204410:	48 c1 ea 27          	shr    rdx,0x27
ffffffff80204414:	89 d6                	mov    esi,edx
ffffffff80204416:	81 e2 ff 01 00 00    	and    edx,0x1ff
ffffffff8020441c:	c1 e2 03             	shl    edx,0x3
ffffffff8020441f:	66 81 e6 ff 01       	and    si,0x1ff
ffffffff80204424:	81 ca 00 20 43 06    	or     edx,0x6432000
ffffffff8020442a:	4c 09 ca             	or     rdx,r9
ffffffff8020442d:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204431:	0f 84 03 01 00 00    	je     ffffffff8020453a <search_empty_space+0x13a>
ffffffff80204437:	48 89 fa             	mov    rdx,rdi
ffffffff8020443a:	0f b7 f6             	movzx  esi,si
ffffffff8020443d:	48 c1 ea 1e          	shr    rdx,0x1e
ffffffff80204441:	48 89 f1             	mov    rcx,rsi
ffffffff80204444:	41 89 d2             	mov    r10d,edx
ffffffff80204447:	48 c1 e2 03          	shl    rdx,0x3
ffffffff8020444b:	48 c1 e1 0c          	shl    rcx,0xc
ffffffff8020444f:	81 e2 f8 0f 00 00    	and    edx,0xff8
ffffffff80204455:	66 41 81 e2 ff 01    	and    r10w,0x1ff
ffffffff8020445b:	48 09 ca             	or     rdx,rcx
ffffffff8020445e:	48 b9 00 00 40 86 0c 	movabs rcx,0x190c86400000
ffffffff80204465:	19 00 00 
ffffffff80204468:	48 09 ca             	or     rdx,rcx
ffffffff8020446b:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff8020446f:	0f 84 c5 00 00 00    	je     ffffffff8020453a <search_empty_space+0x13a>
ffffffff80204475:	48 89 f9             	mov    rcx,rdi
ffffffff80204478:	45 0f b7 d2          	movzx  r10d,r10w
ffffffff8020447c:	49 89 f0             	mov    r8,rsi
ffffffff8020447f:	48 c1 e9 15          	shr    rcx,0x15
ffffffff80204483:	4c 89 d2             	mov    rdx,r10
ffffffff80204486:	49 c1 e0 15          	shl    r8,0x15
ffffffff8020448a:	41 89 cb             	mov    r11d,ecx
ffffffff8020448d:	48 c1 e2 0c          	shl    rdx,0xc
ffffffff80204491:	48 c1 e1 03          	shl    rcx,0x3
ffffffff80204495:	4c 09 c2             	or     rdx,r8
ffffffff80204498:	66 41 81 e3 ff 01    	and    r11w,0x1ff
ffffffff8020449e:	81 e1 f8 0f 00 00    	and    ecx,0xff8
ffffffff802044a4:	48 09 ca             	or     rdx,rcx
ffffffff802044a7:	4c 09 ca             	or     rdx,r9
ffffffff802044aa:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff802044ae:	0f 84 86 00 00 00    	je     ffffffff8020453a <search_empty_space+0x13a>
ffffffff802044b4:	49 c1 e2 15          	shl    r10,0x15
ffffffff802044b8:	48 89 f9             	mov    rcx,rdi
ffffffff802044bb:	45 0f b7 c3          	movzx  r8d,r11w
ffffffff802044bf:	48 c1 e6 1e          	shl    rsi,0x1e
ffffffff802044c3:	48 c1 e9 0c          	shr    rcx,0xc
ffffffff802044c7:	49 c1 e0 0c          	shl    r8,0xc
ffffffff802044cb:	49 b9 00 00 00 00 00 	movabs r9,0x190000000000
ffffffff802044d2:	19 00 00 
ffffffff802044d5:	48 8d 14 cd 00 00 00 	lea    rdx,[rcx*8+0x0]
ffffffff802044dc:	00 
ffffffff802044dd:	4d 09 d0             	or     r8,r10
ffffffff802044e0:	83 c1 01             	add    ecx,0x1
ffffffff802044e3:	81 e2 f8 0f 00 00    	and    edx,0xff8
ffffffff802044e9:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff802044ee:	4c 09 c2             	or     rdx,r8
ffffffff802044f1:	48 09 f2             	or     rdx,rsi
ffffffff802044f4:	4c 09 ca             	or     rdx,r9
ffffffff802044f7:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff802044fb:	74 3d                	je     ffffffff8020453a <search_empty_space+0x13a>
ffffffff802044fd:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80204500:	48 8d 14 cd 00 00 00 	lea    rdx,[rcx*8+0x0]
ffffffff80204507:	00 
ffffffff80204508:	89 c8                	mov    eax,ecx
ffffffff8020450a:	83 c1 01             	add    ecx,0x1
ffffffff8020450d:	81 e2 f8 ff 07 00    	and    edx,0x7fff8
ffffffff80204513:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff80204518:	48 09 f2             	or     rdx,rsi
ffffffff8020451b:	4c 09 c2             	or     rdx,r8
ffffffff8020451e:	4c 09 ca             	or     rdx,r9
ffffffff80204521:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204525:	75 d9                	jne    ffffffff80204500 <search_empty_space+0x100>
ffffffff80204527:	25 ff 01 00 00       	and    eax,0x1ff
ffffffff8020452c:	48 81 e7 ff 0f e0 ff 	and    rdi,0xffffffffffe00fff
ffffffff80204533:	48 c1 e0 0c          	shl    rax,0xc
ffffffff80204537:	48 09 f8             	or     rax,rdi
ffffffff8020453a:	c3                   	ret    
ffffffff8020453b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff80204540 <kmmap_physical>:
ffffffff80204540:	41 57                	push   r15
ffffffff80204542:	48 89 f8             	mov    rax,rdi
ffffffff80204545:	49 89 c8             	mov    r8,rcx
ffffffff80204548:	48 c1 ef 1e          	shr    rdi,0x1e
ffffffff8020454c:	41 56                	push   r14
ffffffff8020454e:	49 89 c7             	mov    r15,rax
ffffffff80204551:	48 89 c1             	mov    rcx,rax
ffffffff80204554:	49 89 c1             	mov    r9,rax
ffffffff80204557:	41 55                	push   r13
ffffffff80204559:	48 c1 e8 24          	shr    rax,0x24
ffffffff8020455d:	49 c1 ef 15          	shr    r15,0x15
ffffffff80204561:	49 89 f5             	mov    r13,rsi
ffffffff80204564:	41 54                	push   r12
ffffffff80204566:	25 f8 0f 00 00       	and    eax,0xff8
ffffffff8020456b:	48 c1 e9 0c          	shr    rcx,0xc
ffffffff8020456f:	4d 89 c6             	mov    r14,r8
ffffffff80204572:	55                   	push   rbp
ffffffff80204573:	41 81 e1 ff 0f 00 00 	and    r9d,0xfff
ffffffff8020457a:	48 89 d5             	mov    rbp,rdx
ffffffff8020457d:	41 81 e7 ff 01 00 00 	and    r15d,0x1ff
ffffffff80204584:	53                   	push   rbx
ffffffff80204585:	48 89 fb             	mov    rbx,rdi
ffffffff80204588:	81 e1 ff 01 00 00    	and    ecx,0x1ff
ffffffff8020458e:	4d 89 cc             	mov    r12,r9
ffffffff80204591:	81 e3 ff 01 00 00    	and    ebx,0x1ff
ffffffff80204597:	48 89 da             	mov    rdx,rbx
ffffffff8020459a:	48 83 ec 58          	sub    rsp,0x58
ffffffff8020459e:	48 89 04 24          	mov    QWORD PTR [rsp],rax
ffffffff802045a2:	48 bb 00 20 43 86 0c 	movabs rbx,0x190c86432000
ffffffff802045a9:	19 00 00 
ffffffff802045ac:	48 0b 1c 24          	or     rbx,QWORD PTR [rsp]
ffffffff802045b0:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
ffffffff802045b4:	0f 84 e6 01 00 00    	je     ffffffff802047a0 <kmmap_physical+0x260>
ffffffff802045ba:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
ffffffff802045be:	4c 8d 14 d5 00 00 00 	lea    r10,[rdx*8+0x0]
ffffffff802045c5:	00 
ffffffff802045c6:	4c 89 f7             	mov    rdi,r14
ffffffff802045c9:	48 89 c3             	mov    rbx,rax
ffffffff802045cc:	48 c1 e3 09          	shl    rbx,0x9
ffffffff802045d0:	48 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],rbx
ffffffff802045d5:	48 89 c3             	mov    rbx,rax
ffffffff802045d8:	48 c1 e0 1b          	shl    rax,0x1b
ffffffff802045dc:	48 c1 e3 12          	shl    rbx,0x12
ffffffff802045e0:	49 89 c0             	mov    r8,rax
ffffffff802045e3:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
ffffffff802045e8:	48 b8 00 00 40 86 0c 	movabs rax,0x190c86400000
ffffffff802045ef:	19 00 00 
ffffffff802045f2:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
ffffffff802045f7:	4c 09 d3             	or     rbx,r10
ffffffff802045fa:	48 09 c3             	or     rbx,rax
ffffffff802045fd:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
ffffffff80204601:	0f 84 59 01 00 00    	je     ffffffff80204760 <kmmap_physical+0x220>
ffffffff80204607:	4c 89 d0             	mov    rax,r10
ffffffff8020460a:	4d 89 d6             	mov    r14,r10
ffffffff8020460d:	4c 89 54 24 48       	mov    QWORD PTR [rsp+0x48],r10
ffffffff80204612:	4e 8d 0c fd 00 00 00 	lea    r9,[r15*8+0x0]
ffffffff80204619:	00 
ffffffff8020461a:	48 c1 e0 09          	shl    rax,0x9
ffffffff8020461e:	49 c1 e6 12          	shl    r14,0x12
ffffffff80204622:	41 bf 00 10 00 00    	mov    r15d,0x1000
ffffffff80204628:	48 bb 00 00 00 00 00 	movabs rbx,0x190000000000
ffffffff8020462f:	19 00 00 
ffffffff80204632:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
ffffffff80204637:	4d 89 f2             	mov    r10,r14
ffffffff8020463a:	49 89 ce             	mov    r14,rcx
ffffffff8020463d:	48 b8 00 00 00 80 0c 	movabs rax,0x190c80000000
ffffffff80204644:	19 00 00 
ffffffff80204647:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
ffffffff8020464c:	4c 09 ca             	or     rdx,r9
ffffffff8020464f:	48 0b 54 24 08       	or     rdx,QWORD PTR [rsp+0x8]
ffffffff80204654:	48 09 c2             	or     rdx,rax
ffffffff80204657:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff8020465b:	0f 84 af 00 00 00    	je     ffffffff80204710 <kmmap_physical+0x1d0>
ffffffff80204661:	4d 89 cb             	mov    r11,r9
ffffffff80204664:	4a 8d 0c f5 00 00 00 	lea    rcx,[r14*8+0x0]
ffffffff8020466b:	00 
ffffffff8020466c:	49 c1 e3 09          	shl    r11,0x9
ffffffff80204670:	4c 89 c0             	mov    rax,r8
ffffffff80204673:	48 89 fe             	mov    rsi,rdi
ffffffff80204676:	4c 89 fa             	mov    rdx,r15
ffffffff80204679:	48 09 c8             	or     rax,rcx
ffffffff8020467c:	4c 09 ee             	or     rsi,r13
ffffffff8020467f:	4c 29 e2             	sub    rdx,r12
ffffffff80204682:	4c 09 d0             	or     rax,r10
ffffffff80204685:	48 83 ce 01          	or     rsi,0x1
ffffffff80204689:	4c 09 d8             	or     rax,r11
ffffffff8020468c:	48 09 d8             	or     rax,rbx
ffffffff8020468f:	48 89 30             	mov    QWORD PTR [rax],rsi
ffffffff80204692:	48 39 ea             	cmp    rdx,rbp
ffffffff80204695:	73 65                	jae    ffffffff802046fc <kmmap_physical+0x1bc>
ffffffff80204697:	48 83 c1 08          	add    rcx,0x8
ffffffff8020469b:	49 8d ac 2c 00 f0 ff 	lea    rbp,[r12+rbp*1-0x1000]
ffffffff802046a2:	ff 
ffffffff802046a3:	49 01 d5             	add    r13,rdx
ffffffff802046a6:	45 31 e4             	xor    r12d,r12d
ffffffff802046a9:	48 81 f9 00 10 00 00 	cmp    rcx,0x1000
ffffffff802046b0:	75 be                	jne    ffffffff80204670 <kmmap_physical+0x130>
ffffffff802046b2:	49 83 c1 08          	add    r9,0x8
ffffffff802046b6:	45 31 f6             	xor    r14d,r14d
ffffffff802046b9:	49 81 f9 00 10 00 00 	cmp    r9,0x1000
ffffffff802046c0:	0f 85 77 ff ff ff    	jne    ffffffff8020463d <kmmap_physical+0xfd>
ffffffff802046c6:	4c 8b 54 24 48       	mov    r10,QWORD PTR [rsp+0x48]
ffffffff802046cb:	45 31 ff             	xor    r15d,r15d
ffffffff802046ce:	4c 89 e1             	mov    rcx,r12
ffffffff802046d1:	49 83 c2 08          	add    r10,0x8
ffffffff802046d5:	49 81 fa 00 10 00 00 	cmp    r10,0x1000
ffffffff802046dc:	0f 85 06 ff ff ff    	jne    ffffffff802045e8 <kmmap_physical+0xa8>
ffffffff802046e2:	48 83 04 24 08       	add    QWORD PTR [rsp],0x8
ffffffff802046e7:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
ffffffff802046eb:	49 89 fe             	mov    r14,rdi
ffffffff802046ee:	31 d2                	xor    edx,edx
ffffffff802046f0:	48 3d 00 10 00 00    	cmp    rax,0x1000
ffffffff802046f6:	0f 85 a6 fe ff ff    	jne    ffffffff802045a2 <kmmap_physical+0x62>
ffffffff802046fc:	48 83 c4 58          	add    rsp,0x58
ffffffff80204700:	5b                   	pop    rbx
ffffffff80204701:	5d                   	pop    rbp
ffffffff80204702:	41 5c                	pop    r12
ffffffff80204704:	41 5d                	pop    r13
ffffffff80204706:	41 5e                	pop    r14
ffffffff80204708:	41 5f                	pop    r15
ffffffff8020470a:	c3                   	ret    
ffffffff8020470b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80204710:	31 c0                	xor    eax,eax
ffffffff80204712:	48 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],rdi
ffffffff80204717:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
ffffffff8020471c:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
ffffffff80204721:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
ffffffff80204726:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
ffffffff8020472b:	e8 00 06 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff80204730:	48 8b 7c 24 40       	mov    rdi,QWORD PTR [rsp+0x40]
ffffffff80204735:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
ffffffff8020473a:	4c 8b 4c 24 38       	mov    r9,QWORD PTR [rsp+0x38]
ffffffff8020473f:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
ffffffff80204744:	48 09 f8             	or     rax,rdi
ffffffff80204747:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
ffffffff8020474c:	48 83 c8 01          	or     rax,0x1
ffffffff80204750:	48 89 02             	mov    QWORD PTR [rdx],rax
ffffffff80204753:	e9 09 ff ff ff       	jmp    ffffffff80204661 <kmmap_physical+0x121>
ffffffff80204758:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020475f:	00 
ffffffff80204760:	31 c0                	xor    eax,eax
ffffffff80204762:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
ffffffff80204767:	4c 89 54 24 28       	mov    QWORD PTR [rsp+0x28],r10
ffffffff8020476c:	4c 89 44 24 20       	mov    QWORD PTR [rsp+0x20],r8
ffffffff80204771:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
ffffffff80204776:	e8 b5 05 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff8020477b:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
ffffffff80204780:	4c 8b 54 24 28       	mov    r10,QWORD PTR [rsp+0x28]
ffffffff80204785:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
ffffffff8020478a:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
ffffffff8020478f:	48 09 f8             	or     rax,rdi
ffffffff80204792:	48 83 c8 01          	or     rax,0x1
ffffffff80204796:	48 89 03             	mov    QWORD PTR [rbx],rax
ffffffff80204799:	e9 69 fe ff ff       	jmp    ffffffff80204607 <kmmap_physical+0xc7>
ffffffff8020479e:	66 90                	xchg   ax,ax
ffffffff802047a0:	31 c0                	xor    eax,eax
ffffffff802047a2:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
ffffffff802047a7:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
ffffffff802047ac:	e8 7f 05 00 00       	call   ffffffff80204d30 <get_frame>
ffffffff802047b1:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
ffffffff802047b6:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
ffffffff802047bb:	4c 09 f0             	or     rax,r14
ffffffff802047be:	48 83 c8 01          	or     rax,0x1
ffffffff802047c2:	48 89 03             	mov    QWORD PTR [rbx],rax
ffffffff802047c5:	e9 f0 fd ff ff       	jmp    ffffffff802045ba <kmmap_physical+0x7a>
ffffffff802047ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff802047d0 <map_physical>:
ffffffff802047d0:	41 56                	push   r14
ffffffff802047d2:	49 89 f6             	mov    r14,rsi
ffffffff802047d5:	41 55                	push   r13
ffffffff802047d7:	49 bd 00 00 40 86 0c 	movabs r13,0x190c86400000
ffffffff802047de:	19 00 00 
ffffffff802047e1:	41 54                	push   r12
ffffffff802047e3:	49 89 fc             	mov    r12,rdi
ffffffff802047e6:	48 bf 00 00 00 00 80 	movabs rdi,0x8000000000
ffffffff802047ed:	00 00 00 
ffffffff802047f0:	55                   	push   rbp
ffffffff802047f1:	48 bd 00 00 00 00 80 	movabs rbp,0x8000000000
ffffffff802047f8:	00 00 00 
ffffffff802047fb:	53                   	push   rbx
ffffffff802047fc:	48 bb 00 00 00 80 0c 	movabs rbx,0x190c80000000
ffffffff80204803:	19 00 00 
ffffffff80204806:	e8 f5 fb ff ff       	call   ffffffff80204400 <search_empty_space>
ffffffff8020480b:	48 89 c7             	mov    rdi,rax
ffffffff8020480e:	48 85 c0             	test   rax,rax
ffffffff80204811:	0f 84 c9 01 00 00    	je     ffffffff802049e0 <map_physical+0x210>
ffffffff80204817:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020481e:	00 00 
ffffffff80204820:	48 89 fa             	mov    rdx,rdi
ffffffff80204823:	48 c1 ea 27          	shr    rdx,0x27
ffffffff80204827:	89 d1                	mov    ecx,edx
ffffffff80204829:	81 e2 ff 01 00 00    	and    edx,0x1ff
ffffffff8020482f:	c1 e2 03             	shl    edx,0x3
ffffffff80204832:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff80204837:	81 ca 00 20 43 06    	or     edx,0x6432000
ffffffff8020483d:	48 09 da             	or     rdx,rbx
ffffffff80204840:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204844:	75 62                	jne    ffffffff802048a8 <map_physical+0xd8>
ffffffff80204846:	49 39 ee             	cmp    r14,rbp
ffffffff80204849:	76 37                	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff8020484b:	48 b8 00 00 00 00 80 	movabs rax,0x8000000000
ffffffff80204852:	00 00 00 
ffffffff80204855:	83 c1 01             	add    ecx,0x1
ffffffff80204858:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff8020485d:	0f b7 d1             	movzx  edx,cx
ffffffff80204860:	c1 e2 03             	shl    edx,0x3
ffffffff80204863:	81 ca 00 20 43 06    	or     edx,0x6432000
ffffffff80204869:	48 09 da             	or     rdx,rbx
ffffffff8020486c:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204870:	75 38                	jne    ffffffff802048aa <map_physical+0xda>
ffffffff80204872:	83 c1 01             	add    ecx,0x1
ffffffff80204875:	48 01 e8             	add    rax,rbp
ffffffff80204878:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff8020487d:	49 39 c6             	cmp    r14,rax
ffffffff80204880:	77 db                	ja     ffffffff8020485d <map_physical+0x8d>
ffffffff80204882:	49 89 fd             	mov    r13,rdi
ffffffff80204885:	4c 89 f2             	mov    rdx,r14
ffffffff80204888:	4c 89 e6             	mov    rsi,r12
ffffffff8020488b:	b9 02 00 00 00       	mov    ecx,0x2
ffffffff80204890:	e8 ab fc ff ff       	call   ffffffff80204540 <kmmap_physical>
ffffffff80204895:	5b                   	pop    rbx
ffffffff80204896:	4c 89 e8             	mov    rax,r13
ffffffff80204899:	5d                   	pop    rbp
ffffffff8020489a:	41 5c                	pop    r12
ffffffff8020489c:	41 5d                	pop    r13
ffffffff8020489e:	41 5e                	pop    r14
ffffffff802048a0:	c3                   	ret    
ffffffff802048a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff802048a8:	31 c0                	xor    eax,eax
ffffffff802048aa:	48 89 fa             	mov    rdx,rdi
ffffffff802048ad:	0f b7 c9             	movzx  ecx,cx
ffffffff802048b0:	48 c1 ea 1e          	shr    rdx,0x1e
ffffffff802048b4:	49 89 c8             	mov    r8,rcx
ffffffff802048b7:	89 d6                	mov    esi,edx
ffffffff802048b9:	48 c1 e2 03          	shl    rdx,0x3
ffffffff802048bd:	49 c1 e0 0c          	shl    r8,0xc
ffffffff802048c1:	81 e2 f8 0f 00 00    	and    edx,0xff8
ffffffff802048c7:	66 81 e6 ff 01       	and    si,0x1ff
ffffffff802048cc:	4c 09 c2             	or     rdx,r8
ffffffff802048cf:	4c 09 ea             	or     rdx,r13
ffffffff802048d2:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff802048d6:	0f 85 a5 01 00 00    	jne    ffffffff80204a81 <map_physical+0x2b1>
ffffffff802048dc:	48 05 00 00 00 40    	add    rax,0x40000000
ffffffff802048e2:	49 39 c6             	cmp    r14,rax
ffffffff802048e5:	76 9b                	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff802048e7:	83 c6 01             	add    esi,0x1
ffffffff802048ea:	66 81 e6 ff 01       	and    si,0x1ff
ffffffff802048ef:	48 8d 14 f5 00 00 00 	lea    rdx,[rsi*8+0x0]
ffffffff802048f6:	00 
ffffffff802048f7:	81 e2 f8 ff 07 00    	and    edx,0x7fff8
ffffffff802048fd:	4c 09 c2             	or     rdx,r8
ffffffff80204900:	4c 09 ea             	or     rdx,r13
ffffffff80204903:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204907:	0f 85 74 01 00 00    	jne    ffffffff80204a81 <map_physical+0x2b1>
ffffffff8020490d:	83 c6 01             	add    esi,0x1
ffffffff80204910:	48 05 00 00 00 40    	add    rax,0x40000000
ffffffff80204916:	66 81 e6 ff 01       	and    si,0x1ff
ffffffff8020491b:	49 39 c6             	cmp    r14,rax
ffffffff8020491e:	0f 86 5e ff ff ff    	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff80204924:	eb c9                	jmp    ffffffff802048ef <map_physical+0x11f>
ffffffff80204926:	48 c1 e1 1e          	shl    rcx,0x1e
ffffffff8020492a:	48 89 fa             	mov    rdx,rdi
ffffffff8020492d:	45 0f b7 c0          	movzx  r8d,r8w
ffffffff80204931:	48 c1 e6 15          	shl    rsi,0x15
ffffffff80204935:	48 c1 ea 0c          	shr    rdx,0xc
ffffffff80204939:	4d 89 c2             	mov    r10,r8
ffffffff8020493c:	49 b9 00 00 00 00 00 	movabs r9,0x190000000000
ffffffff80204943:	19 00 00 
ffffffff80204946:	41 89 d3             	mov    r11d,edx
ffffffff80204949:	48 c1 e2 03          	shl    rdx,0x3
ffffffff8020494d:	49 c1 e2 0c          	shl    r10,0xc
ffffffff80204951:	81 e2 f8 0f 00 00    	and    edx,0xff8
ffffffff80204957:	66 41 81 e3 ff 01    	and    r11w,0x1ff
ffffffff8020495d:	4c 09 d2             	or     rdx,r10
ffffffff80204960:	48 09 ca             	or     rdx,rcx
ffffffff80204963:	48 09 f2             	or     rdx,rsi
ffffffff80204966:	4c 09 ca             	or     rdx,r9
ffffffff80204969:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff8020496d:	75 54                	jne    ffffffff802049c3 <map_physical+0x1f3>
ffffffff8020496f:	48 05 00 10 00 00    	add    rax,0x1000
ffffffff80204975:	49 39 c6             	cmp    r14,rax
ffffffff80204978:	0f 86 04 ff ff ff    	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff8020497e:	45 8d 43 01          	lea    r8d,[r11+0x1]
ffffffff80204982:	66 41 81 e0 ff 01    	and    r8w,0x1ff
ffffffff80204988:	eb 19                	jmp    ffffffff802049a3 <map_physical+0x1d3>
ffffffff8020498a:	41 83 c0 01          	add    r8d,0x1
ffffffff8020498e:	48 05 00 10 00 00    	add    rax,0x1000
ffffffff80204994:	66 41 81 e0 ff 01    	and    r8w,0x1ff
ffffffff8020499a:	49 39 c6             	cmp    r14,rax
ffffffff8020499d:	0f 86 df fe ff ff    	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff802049a3:	4a 8d 14 c5 00 00 00 	lea    rdx,[r8*8+0x0]
ffffffff802049aa:	00 
ffffffff802049ab:	81 e2 f8 ff 07 00    	and    edx,0x7fff8
ffffffff802049b1:	48 09 ca             	or     rdx,rcx
ffffffff802049b4:	48 09 f2             	or     rdx,rsi
ffffffff802049b7:	4c 09 d2             	or     rdx,r10
ffffffff802049ba:	4c 09 ca             	or     rdx,r9
ffffffff802049bd:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff802049c1:	74 c7                	je     ffffffff8020498a <map_physical+0x1ba>
ffffffff802049c3:	49 39 c6             	cmp    r14,rax
ffffffff802049c6:	0f 86 b6 fe ff ff    	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff802049cc:	48 01 c7             	add    rdi,rax
ffffffff802049cf:	e8 2c fa ff ff       	call   ffffffff80204400 <search_empty_space>
ffffffff802049d4:	48 89 c7             	mov    rdi,rax
ffffffff802049d7:	48 85 c0             	test   rax,rax
ffffffff802049da:	0f 85 40 fe ff ff    	jne    ffffffff80204820 <map_physical+0x50>
ffffffff802049e0:	31 c0                	xor    eax,eax
ffffffff802049e2:	e8 59 16 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802049e7:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802049ee:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802049f3:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff802049fa:	e8 f1 c1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802049ff:	31 c0                	xor    eax,eax
ffffffff80204a01:	e8 da 0e 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80204a06:	84 c0                	test   al,al
ffffffff80204a08:	75 5e                	jne    ffffffff80204a68 <map_physical+0x298>
ffffffff80204a0a:	48 c7 c1 30 9b 20 80 	mov    rcx,0xffffffff80209b30
ffffffff80204a11:	ba 27 01 00 00       	mov    edx,0x127
ffffffff80204a16:	31 c0                	xor    eax,eax
ffffffff80204a18:	45 31 ed             	xor    r13d,r13d
ffffffff80204a1b:	48 c7 c6 1d 9a 20 80 	mov    rsi,0xffffffff80209a1d
ffffffff80204a22:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80204a29:	e8 32 34 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204a2e:	4c 89 f6             	mov    rsi,r14
ffffffff80204a31:	48 c7 c7 08 9b 20 80 	mov    rdi,0xffffffff80209b08
ffffffff80204a38:	31 c0                	xor    eax,eax
ffffffff80204a3a:	e8 21 34 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204a3f:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80204a44:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80204a4b:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80204a52:	e8 99 c1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80204a57:	31 c0                	xor    eax,eax
ffffffff80204a59:	e8 02 16 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80204a5e:	31 ff                	xor    edi,edi
ffffffff80204a60:	e9 20 fe ff ff       	jmp    ffffffff80204885 <map_physical+0xb5>
ffffffff80204a65:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80204a68:	31 c0                	xor    eax,eax
ffffffff80204a6a:	e8 01 0d 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80204a6f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80204a76:	89 c6                	mov    esi,eax
ffffffff80204a78:	31 c0                	xor    eax,eax
ffffffff80204a7a:	e8 e1 33 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204a7f:	eb 89                	jmp    ffffffff80204a0a <map_physical+0x23a>
ffffffff80204a81:	48 89 fa             	mov    rdx,rdi
ffffffff80204a84:	0f b7 f6             	movzx  esi,si
ffffffff80204a87:	49 89 c9             	mov    r9,rcx
ffffffff80204a8a:	48 c1 ea 15          	shr    rdx,0x15
ffffffff80204a8e:	49 89 f2             	mov    r10,rsi
ffffffff80204a91:	49 c1 e1 15          	shl    r9,0x15
ffffffff80204a95:	41 89 d0             	mov    r8d,edx
ffffffff80204a98:	48 c1 e2 03          	shl    rdx,0x3
ffffffff80204a9c:	49 c1 e2 0c          	shl    r10,0xc
ffffffff80204aa0:	81 e2 f8 0f 00 00    	and    edx,0xff8
ffffffff80204aa6:	66 41 81 e0 ff 01    	and    r8w,0x1ff
ffffffff80204aac:	4c 09 d2             	or     rdx,r10
ffffffff80204aaf:	4c 09 ca             	or     rdx,r9
ffffffff80204ab2:	48 09 da             	or     rdx,rbx
ffffffff80204ab5:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204ab9:	0f 85 67 fe ff ff    	jne    ffffffff80204926 <map_physical+0x156>
ffffffff80204abf:	48 05 00 00 20 00    	add    rax,0x200000
ffffffff80204ac5:	49 39 c6             	cmp    r14,rax
ffffffff80204ac8:	0f 86 b4 fd ff ff    	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff80204ace:	41 83 c0 01          	add    r8d,0x1
ffffffff80204ad2:	66 41 81 e0 ff 01    	and    r8w,0x1ff
ffffffff80204ad8:	4a 8d 14 c5 00 00 00 	lea    rdx,[r8*8+0x0]
ffffffff80204adf:	00 
ffffffff80204ae0:	81 e2 f8 ff 07 00    	and    edx,0x7fff8
ffffffff80204ae6:	4c 09 ca             	or     rdx,r9
ffffffff80204ae9:	4c 09 d2             	or     rdx,r10
ffffffff80204aec:	48 09 da             	or     rdx,rbx
ffffffff80204aef:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204af3:	0f 85 2d fe ff ff    	jne    ffffffff80204926 <map_physical+0x156>
ffffffff80204af9:	41 83 c0 01          	add    r8d,0x1
ffffffff80204afd:	48 05 00 00 20 00    	add    rax,0x200000
ffffffff80204b03:	66 41 81 e0 ff 01    	and    r8w,0x1ff
ffffffff80204b09:	49 39 c6             	cmp    r14,rax
ffffffff80204b0c:	0f 86 70 fd ff ff    	jbe    ffffffff80204882 <map_physical+0xb2>
ffffffff80204b12:	eb c4                	jmp    ffffffff80204ad8 <map_physical+0x308>
ffffffff80204b14:	66 90                	xchg   ax,ax
ffffffff80204b16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80204b1d:	00 00 00 

ffffffff80204b20 <search_available>:
ffffffff80204b20:	48 b9 00 00 00 80 0c 	movabs rcx,0x190c80000000
ffffffff80204b27:	19 00 00 
ffffffff80204b2a:	48 89 f8             	mov    rax,rdi
ffffffff80204b2d:	49 89 f8             	mov    r8,rdi
ffffffff80204b30:	48 89 f7             	mov    rdi,rsi
ffffffff80204b33:	81 e6 ff 0f 00 00    	and    esi,0xfff
ffffffff80204b39:	48 c1 ef 0c          	shr    rdi,0xc
ffffffff80204b3d:	48 89 c2             	mov    rdx,rax
ffffffff80204b40:	48 83 fe 01          	cmp    rsi,0x1
ffffffff80204b44:	48 83 df ff          	sbb    rdi,0xffffffffffffffff
ffffffff80204b48:	48 c1 ea 27          	shr    rdx,0x27
ffffffff80204b4c:	89 d6                	mov    esi,edx
ffffffff80204b4e:	81 e2 ff 01 00 00    	and    edx,0x1ff
ffffffff80204b54:	c1 e2 03             	shl    edx,0x3
ffffffff80204b57:	66 81 e6 ff 01       	and    si,0x1ff
ffffffff80204b5c:	81 ca 00 20 43 06    	or     edx,0x6432000
ffffffff80204b62:	48 09 ca             	or     rdx,rcx
ffffffff80204b65:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204b69:	0f 84 01 01 00 00    	je     ffffffff80204c70 <search_available+0x150>
ffffffff80204b6f:	48 89 c2             	mov    rdx,rax
ffffffff80204b72:	0f b7 f6             	movzx  esi,si
ffffffff80204b75:	48 c1 ea 1e          	shr    rdx,0x1e
ffffffff80204b79:	49 89 f1             	mov    r9,rsi
ffffffff80204b7c:	41 89 d3             	mov    r11d,edx
ffffffff80204b7f:	48 c1 e2 03          	shl    rdx,0x3
ffffffff80204b83:	49 c1 e1 0c          	shl    r9,0xc
ffffffff80204b87:	81 e2 f8 0f 00 00    	and    edx,0xff8
ffffffff80204b8d:	66 41 81 e3 ff 01    	and    r11w,0x1ff
ffffffff80204b93:	4c 09 ca             	or     rdx,r9
ffffffff80204b96:	49 b9 00 00 40 86 0c 	movabs r9,0x190c86400000
ffffffff80204b9d:	19 00 00 
ffffffff80204ba0:	4c 09 ca             	or     rdx,r9
ffffffff80204ba3:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204ba7:	0f 84 c3 00 00 00    	je     ffffffff80204c70 <search_available+0x150>
ffffffff80204bad:	49 89 c1             	mov    r9,rax
ffffffff80204bb0:	45 0f b7 db          	movzx  r11d,r11w
ffffffff80204bb4:	53                   	push   rbx
ffffffff80204bb5:	48 89 f3             	mov    rbx,rsi
ffffffff80204bb8:	49 c1 e9 15          	shr    r9,0x15
ffffffff80204bbc:	4c 89 da             	mov    rdx,r11
ffffffff80204bbf:	48 c1 e3 15          	shl    rbx,0x15
ffffffff80204bc3:	45 89 ca             	mov    r10d,r9d
ffffffff80204bc6:	48 c1 e2 0c          	shl    rdx,0xc
ffffffff80204bca:	49 c1 e1 03          	shl    r9,0x3
ffffffff80204bce:	48 09 da             	or     rdx,rbx
ffffffff80204bd1:	66 41 81 e2 ff 01    	and    r10w,0x1ff
ffffffff80204bd7:	41 81 e1 f8 0f 00 00 	and    r9d,0xff8
ffffffff80204bde:	4c 09 ca             	or     rdx,r9
ffffffff80204be1:	48 09 ca             	or     rdx,rcx
ffffffff80204be4:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204be8:	0f 84 8a 00 00 00    	je     ffffffff80204c78 <search_available+0x158>
ffffffff80204bee:	45 0f b7 d2          	movzx  r10d,r10w
ffffffff80204bf2:	48 89 c1             	mov    rcx,rax
ffffffff80204bf5:	49 c1 e3 15          	shl    r11,0x15
ffffffff80204bf9:	49 89 f9             	mov    r9,rdi
ffffffff80204bfc:	49 c1 e2 0c          	shl    r10,0xc
ffffffff80204c00:	48 c1 e9 0c          	shr    rcx,0xc
ffffffff80204c04:	4d 09 da             	or     r10,r11
ffffffff80204c07:	48 c1 e6 1e          	shl    rsi,0x1e
ffffffff80204c0b:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff80204c10:	49 bb 00 00 00 00 00 	movabs r11,0x190000000000
ffffffff80204c17:	19 00 00 
ffffffff80204c1a:	eb 2c                	jmp    ffffffff80204c48 <search_available+0x128>
ffffffff80204c1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80204c20:	4d 85 c9             	test   r9,r9
ffffffff80204c23:	74 53                	je     ffffffff80204c78 <search_available+0x158>
ffffffff80204c25:	49 83 e9 01          	sub    r9,0x1
ffffffff80204c29:	83 c1 01             	add    ecx,0x1
ffffffff80204c2c:	49 81 e0 ff 0f e0 ff 	and    r8,0xffffffffffe00fff
ffffffff80204c33:	66 81 e1 ff 01       	and    cx,0x1ff
ffffffff80204c38:	48 89 ca             	mov    rdx,rcx
ffffffff80204c3b:	81 e2 ff 01 00 00    	and    edx,0x1ff
ffffffff80204c41:	48 c1 e2 0c          	shl    rdx,0xc
ffffffff80204c45:	49 09 d0             	or     r8,rdx
ffffffff80204c48:	48 8d 14 cd 00 00 00 	lea    rdx,[rcx*8+0x0]
ffffffff80204c4f:	00 
ffffffff80204c50:	81 e2 f8 ff 07 00    	and    edx,0x7fff8
ffffffff80204c56:	48 09 f2             	or     rdx,rsi
ffffffff80204c59:	4c 09 d2             	or     rdx,r10
ffffffff80204c5c:	4c 09 da             	or     rdx,r11
ffffffff80204c5f:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
ffffffff80204c63:	74 bb                	je     ffffffff80204c20 <search_available+0x100>
ffffffff80204c65:	4c 89 c0             	mov    rax,r8
ffffffff80204c68:	49 89 f9             	mov    r9,rdi
ffffffff80204c6b:	eb bc                	jmp    ffffffff80204c29 <search_available+0x109>
ffffffff80204c6d:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80204c70:	c3                   	ret    
ffffffff80204c71:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80204c78:	5b                   	pop    rbx
ffffffff80204c79:	c3                   	ret    
ffffffff80204c7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff80204c80 <convert_to_arch_flags>:
ffffffff80204c80:	48 89 f8             	mov    rax,rdi
ffffffff80204c83:	83 e0 07             	and    eax,0x7
ffffffff80204c86:	48 89 c2             	mov    rdx,rax
ffffffff80204c89:	80 ce 02             	or     dh,0x2
ffffffff80204c8c:	40 f6 c7 08          	test   dil,0x8
ffffffff80204c90:	48 0f 45 c2          	cmovne rax,rdx
ffffffff80204c94:	40 f6 c7 10          	test   dil,0x10
ffffffff80204c98:	74 05                	je     ffffffff80204c9f <convert_to_arch_flags+0x1f>
ffffffff80204c9a:	48 0f ba e8 3f       	bts    rax,0x3f
ffffffff80204c9f:	48 89 c2             	mov    rdx,rax
ffffffff80204ca2:	80 ce 04             	or     dh,0x4
ffffffff80204ca5:	83 e7 20             	and    edi,0x20
ffffffff80204ca8:	48 0f 45 c2          	cmovne rax,rdx
ffffffff80204cac:	c3                   	ret    
ffffffff80204cad:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80204cb0 <align>:
ffffffff80204cb0:	48 8b 15 c9 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7ec9]        # ffffffff8020cb80 <pg_size>
ffffffff80204cb7:	48 89 d0             	mov    rax,rdx
ffffffff80204cba:	48 f7 d8             	neg    rax
ffffffff80204cbd:	48 21 f8             	and    rax,rdi
ffffffff80204cc0:	48 01 c2             	add    rdx,rax
ffffffff80204cc3:	48 39 c7             	cmp    rdi,rax
ffffffff80204cc6:	48 0f 45 c2          	cmovne rax,rdx
ffffffff80204cca:	c3                   	ret    
ffffffff80204ccb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff80204cd0 <set_frame>:
ffffffff80204cd0:	48 8b 15 b9 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7ab9]        # ffffffff8020c790 <bitmap_addr>
ffffffff80204cd7:	48 89 fe             	mov    rsi,rdi
ffffffff80204cda:	48 89 f9             	mov    rcx,rdi
ffffffff80204cdd:	b8 01 00 00 00       	mov    eax,0x1
ffffffff80204ce2:	48 c1 ee 06          	shr    rsi,0x6
ffffffff80204ce6:	48 d3 e0             	shl    rax,cl
ffffffff80204ce9:	48 09 04 f2          	or     QWORD PTR [rdx+rsi*8],rax
ffffffff80204ced:	c3                   	ret    
ffffffff80204cee:	66 90                	xchg   ax,ax

ffffffff80204cf0 <flip_frame>:
ffffffff80204cf0:	48 8b 15 99 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7a99]        # ffffffff8020c790 <bitmap_addr>
ffffffff80204cf7:	48 89 fe             	mov    rsi,rdi
ffffffff80204cfa:	48 89 f9             	mov    rcx,rdi
ffffffff80204cfd:	b8 01 00 00 00       	mov    eax,0x1
ffffffff80204d02:	48 c1 ee 06          	shr    rsi,0x6
ffffffff80204d06:	48 d3 e0             	shl    rax,cl
ffffffff80204d09:	48 31 04 f2          	xor    QWORD PTR [rdx+rsi*8],rax
ffffffff80204d0d:	c3                   	ret    
ffffffff80204d0e:	66 90                	xchg   ax,ax

ffffffff80204d10 <read_frame>:
ffffffff80204d10:	48 8b 05 79 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a79]        # ffffffff8020c790 <bitmap_addr>
ffffffff80204d17:	48 89 fa             	mov    rdx,rdi
ffffffff80204d1a:	48 89 f9             	mov    rcx,rdi
ffffffff80204d1d:	48 c1 ea 06          	shr    rdx,0x6
ffffffff80204d21:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
ffffffff80204d25:	48 d3 e8             	shr    rax,cl
ffffffff80204d28:	83 e0 01             	and    eax,0x1
ffffffff80204d2b:	c3                   	ret    
ffffffff80204d2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80204d30 <get_frame>:
ffffffff80204d30:	41 55                	push   r13
ffffffff80204d32:	41 54                	push   r12
ffffffff80204d34:	55                   	push   rbp
ffffffff80204d35:	53                   	push   rbx
ffffffff80204d36:	48 83 ec 08          	sub    rsp,0x8
ffffffff80204d3a:	0f b6 1d 37 7e 00 00 	movzx  ebx,BYTE PTR [rip+0x7e37]        # ffffffff8020cb78 <is_bitmap_set>
ffffffff80204d41:	84 db                	test   bl,bl
ffffffff80204d43:	0f 84 05 01 00 00    	je     ffffffff80204e4e <get_frame+0x11e>
ffffffff80204d49:	48 8b 0d 20 7e 00 00 	mov    rcx,QWORD PTR [rip+0x7e20]        # ffffffff8020cb70 <nframes>
ffffffff80204d50:	48 c1 e9 06          	shr    rcx,0x6
ffffffff80204d54:	0f 84 db 01 00 00    	je     ffffffff80204f35 <get_frame+0x205>
ffffffff80204d5a:	4c 8b 0d 2f 7a 00 00 	mov    r9,QWORD PTR [rip+0x7a2f]        # ffffffff8020c790 <bitmap_addr>
ffffffff80204d61:	31 c0                	xor    eax,eax
ffffffff80204d63:	eb 0d                	jmp    ffffffff80204d72 <get_frame+0x42>
ffffffff80204d65:	48 83 c0 01          	add    rax,0x1
ffffffff80204d69:	48 39 c8             	cmp    rax,rcx
ffffffff80204d6c:	0f 84 c3 01 00 00    	je     ffffffff80204f35 <get_frame+0x205>
ffffffff80204d72:	49 8b 14 c1          	mov    rdx,QWORD PTR [r9+rax*8]
ffffffff80204d76:	48 83 fa ff          	cmp    rdx,0xffffffffffffffff
ffffffff80204d7a:	74 e9                	je     ffffffff80204d65 <get_frame+0x35>
ffffffff80204d7c:	48 89 d1             	mov    rcx,rdx
ffffffff80204d7f:	83 e1 01             	and    ecx,0x1
ffffffff80204d82:	74 0c                	je     ffffffff80204d90 <get_frame+0x60>
ffffffff80204d84:	31 c9                	xor    ecx,ecx
ffffffff80204d86:	48 83 c1 01          	add    rcx,0x1
ffffffff80204d8a:	48 0f a3 ca          	bt     rdx,rcx
ffffffff80204d8e:	72 f6                	jb     ffffffff80204d86 <get_frame+0x56>
ffffffff80204d90:	48 c1 e0 06          	shl    rax,0x6
ffffffff80204d94:	48 01 c1             	add    rcx,rax
ffffffff80204d97:	48 8b 05 ea 7b 00 00 	mov    rax,QWORD PTR [rip+0x7bea]        # ffffffff8020c988 <available+0x8>
ffffffff80204d9e:	48 85 c0             	test   rax,rax
ffffffff80204da1:	0f 84 8e 01 00 00    	je     ffffffff80204f35 <get_frame+0x205>
ffffffff80204da7:	48 8b 35 d2 7d 00 00 	mov    rsi,QWORD PTR [rip+0x7dd2]        # ffffffff8020cb80 <pg_size>
ffffffff80204dae:	48 c7 c7 80 c9 20 80 	mov    rdi,0xffffffff8020c980
ffffffff80204db5:	49 89 ca             	mov    r10,rcx
ffffffff80204db8:	48 89 f3             	mov    rbx,rsi
ffffffff80204dbb:	48 f7 db             	neg    rbx
ffffffff80204dbe:	eb 19                	jmp    ffffffff80204dd9 <get_frame+0xa9>
ffffffff80204dc0:	31 d2                	xor    edx,edx
ffffffff80204dc2:	48 83 c7 18          	add    rdi,0x18
ffffffff80204dc6:	48 f7 f6             	div    rsi
ffffffff80204dc9:	49 29 c2             	sub    r10,rax
ffffffff80204dcc:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
ffffffff80204dd0:	48 85 c0             	test   rax,rax
ffffffff80204dd3:	0f 84 5c 01 00 00    	je     ffffffff80204f35 <get_frame+0x205>
ffffffff80204dd9:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
ffffffff80204ddc:	4c 89 c2             	mov    rdx,r8
ffffffff80204ddf:	48 21 da             	and    rdx,rbx
ffffffff80204de2:	49 39 d0             	cmp    r8,rdx
ffffffff80204de5:	4c 8d 1c 32          	lea    r11,[rdx+rsi*1]
ffffffff80204de9:	49 89 f0             	mov    r8,rsi
ffffffff80204dec:	49 0f 45 d3          	cmovne rdx,r11
ffffffff80204df0:	4d 0f af c2          	imul   r8,r10
ffffffff80204df4:	49 89 c3             	mov    r11,rax
ffffffff80204df7:	49 29 f3             	sub    r11,rsi
ffffffff80204dfa:	49 01 d0             	add    r8,rdx
ffffffff80204dfd:	4c 01 da             	add    rdx,r11
ffffffff80204e00:	4c 39 c2             	cmp    rdx,r8
ffffffff80204e03:	72 bb                	jb     ffffffff80204dc0 <get_frame+0x90>
ffffffff80204e05:	48 89 ca             	mov    rdx,rcx
ffffffff80204e08:	b8 01 00 00 00       	mov    eax,0x1
ffffffff80204e0d:	48 c1 ea 06          	shr    rdx,0x6
ffffffff80204e11:	48 d3 e0             	shl    rax,cl
ffffffff80204e14:	49 31 04 d1          	xor    QWORD PTR [r9+rdx*8],rax
ffffffff80204e18:	49 8d 80 00 00 00 80 	lea    rax,[r8-0x80000000]
ffffffff80204e1f:	4a 8d 94 06 00 00 00 	lea    rdx,[rsi+r8*1-0x80000000]
ffffffff80204e26:	80 
ffffffff80204e27:	48 39 d0             	cmp    rax,rdx
ffffffff80204e2a:	0f 83 ec 00 00 00    	jae    ffffffff80204f1c <get_frame+0x1ec>
ffffffff80204e30:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
ffffffff80204e37:	48 83 c0 08          	add    rax,0x8
ffffffff80204e3b:	48 39 d0             	cmp    rax,rdx
ffffffff80204e3e:	72 f0                	jb     ffffffff80204e30 <get_frame+0x100>
ffffffff80204e40:	48 83 c4 08          	add    rsp,0x8
ffffffff80204e44:	4c 89 c0             	mov    rax,r8
ffffffff80204e47:	5b                   	pop    rbx
ffffffff80204e48:	5d                   	pop    rbp
ffffffff80204e49:	41 5c                	pop    r12
ffffffff80204e4b:	41 5d                	pop    r13
ffffffff80204e4d:	c3                   	ret    
ffffffff80204e4e:	4c 8b 1d 33 79 00 00 	mov    r11,QWORD PTR [rip+0x7933]        # ffffffff8020c788 <prev_i.1618>
ffffffff80204e55:	4b 8d 14 5b          	lea    rdx,[r11+r11*2]
ffffffff80204e59:	48 c1 e2 03          	shl    rdx,0x3
ffffffff80204e5d:	48 8b b2 88 c9 20 80 	mov    rsi,QWORD PTR [rdx-0x7fdf3678]
ffffffff80204e64:	48 85 f6             	test   rsi,rsi
ffffffff80204e67:	0f 84 c8 00 00 00    	je     ffffffff80204f35 <get_frame+0x205>
ffffffff80204e6d:	4c 8b 15 0c 7d 00 00 	mov    r10,QWORD PTR [rip+0x7d0c]        # ffffffff8020cb80 <pg_size>
ffffffff80204e74:	48 8b 0d e5 7c 00 00 	mov    rcx,QWORD PTR [rip+0x7ce5]        # ffffffff8020cb60 <number_of_frames_without_bitmap_in_c>
ffffffff80204e7b:	4d 89 d9             	mov    r9,r11
ffffffff80204e7e:	31 ed                	xor    ebp,ebp
ffffffff80204e80:	41 bc 01 00 00 00    	mov    r12d,0x1
ffffffff80204e86:	4d 89 d5             	mov    r13,r10
ffffffff80204e89:	49 f7 dd             	neg    r13
ffffffff80204e8c:	eb 23                	jmp    ffffffff80204eb1 <get_frame+0x181>
ffffffff80204e8e:	48 8b b2 a0 c9 20 80 	mov    rsi,QWORD PTR [rdx-0x7fdf3660]
ffffffff80204e95:	49 83 c1 01          	add    r9,0x1
ffffffff80204e99:	48 85 f6             	test   rsi,rsi
ffffffff80204e9c:	0f 84 88 00 00 00    	je     ffffffff80204f2a <get_frame+0x1fa>
ffffffff80204ea2:	4d 39 cb             	cmp    r11,r9
ffffffff80204ea5:	41 0f 42 dc          	cmovb  ebx,r12d
ffffffff80204ea9:	48 0f 42 cd          	cmovb  rcx,rbp
ffffffff80204ead:	48 83 c2 18          	add    rdx,0x18
ffffffff80204eb1:	48 8b ba 80 c9 20 80 	mov    rdi,QWORD PTR [rdx-0x7fdf3680]
ffffffff80204eb8:	48 89 f8             	mov    rax,rdi
ffffffff80204ebb:	4c 21 e8             	and    rax,r13
ffffffff80204ebe:	48 39 c7             	cmp    rdi,rax
ffffffff80204ec1:	4e 8d 04 10          	lea    r8,[rax+r10*1]
ffffffff80204ec5:	49 0f 45 c0          	cmovne rax,r8
ffffffff80204ec9:	49 89 c8             	mov    r8,rcx
ffffffff80204ecc:	4d 0f af c2          	imul   r8,r10
ffffffff80204ed0:	49 01 c0             	add    r8,rax
ffffffff80204ed3:	4c 29 d0             	sub    rax,r10
ffffffff80204ed6:	48 01 f0             	add    rax,rsi
ffffffff80204ed9:	4c 39 c0             	cmp    rax,r8
ffffffff80204edc:	76 b0                	jbe    ffffffff80204e8e <get_frame+0x15e>
ffffffff80204ede:	48 83 c1 01          	add    rcx,0x1
ffffffff80204ee2:	49 8d 80 00 00 00 80 	lea    rax,[r8-0x80000000]
ffffffff80204ee9:	4b 8d 94 02 00 00 00 	lea    rdx,[r10+r8*1-0x80000000]
ffffffff80204ef0:	80 
ffffffff80204ef1:	48 83 05 6f 7c 00 00 	add    QWORD PTR [rip+0x7c6f],0x1        # ffffffff8020cb68 <number_of_frames_without_bitmap>
ffffffff80204ef8:	01 
ffffffff80204ef9:	48 89 0d 60 7c 00 00 	mov    QWORD PTR [rip+0x7c60],rcx        # ffffffff8020cb60 <number_of_frames_without_bitmap_in_c>
ffffffff80204f00:	48 39 d0             	cmp    rax,rdx
ffffffff80204f03:	73 10                	jae    ffffffff80204f15 <get_frame+0x1e5>
ffffffff80204f05:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
ffffffff80204f0c:	48 83 c0 08          	add    rax,0x8
ffffffff80204f10:	48 39 d0             	cmp    rax,rdx
ffffffff80204f13:	72 f0                	jb     ffffffff80204f05 <get_frame+0x1d5>
ffffffff80204f15:	4c 89 0d 6c 78 00 00 	mov    QWORD PTR [rip+0x786c],r9        # ffffffff8020c788 <prev_i.1618>
ffffffff80204f1c:	48 83 c4 08          	add    rsp,0x8
ffffffff80204f20:	4c 89 c0             	mov    rax,r8
ffffffff80204f23:	5b                   	pop    rbx
ffffffff80204f24:	5d                   	pop    rbp
ffffffff80204f25:	41 5c                	pop    r12
ffffffff80204f27:	41 5d                	pop    r13
ffffffff80204f29:	c3                   	ret    
ffffffff80204f2a:	84 db                	test   bl,bl
ffffffff80204f2c:	74 07                	je     ffffffff80204f35 <get_frame+0x205>
ffffffff80204f2e:	48 89 0d 2b 7c 00 00 	mov    QWORD PTR [rip+0x7c2b],rcx        # ffffffff8020cb60 <number_of_frames_without_bitmap_in_c>
ffffffff80204f35:	31 c0                	xor    eax,eax
ffffffff80204f37:	e8 04 11 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80204f3c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80204f43:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80204f48:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80204f4f:	e8 9c bc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80204f54:	31 c0                	xor    eax,eax
ffffffff80204f56:	e8 85 09 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff80204f5b:	84 c0                	test   al,al
ffffffff80204f5d:	75 54                	jne    ffffffff80204fb3 <get_frame+0x283>
ffffffff80204f5f:	48 c7 c1 20 9c 20 80 	mov    rcx,0xffffffff80209c20
ffffffff80204f66:	ba 61 00 00 00       	mov    edx,0x61
ffffffff80204f6b:	48 c7 c6 71 9b 20 80 	mov    rsi,0xffffffff80209b71
ffffffff80204f72:	31 c0                	xor    eax,eax
ffffffff80204f74:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80204f7b:	e8 e0 2e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204f80:	31 c0                	xor    eax,eax
ffffffff80204f82:	48 c7 c7 a0 9b 20 80 	mov    rdi,0xffffffff80209ba0
ffffffff80204f89:	e8 d2 2e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204f8e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80204f95:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80204f9a:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80204fa1:	e8 4a bc ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80204fa6:	31 c0                	xor    eax,eax
ffffffff80204fa8:	e8 b3 10 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80204fad:	fa                   	cli    
ffffffff80204fae:	66 90                	xchg   ax,ax
ffffffff80204fb0:	f4                   	hlt    
ffffffff80204fb1:	eb fd                	jmp    ffffffff80204fb0 <get_frame+0x280>
ffffffff80204fb3:	31 c0                	xor    eax,eax
ffffffff80204fb5:	e8 b6 07 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80204fba:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80204fc1:	89 c6                	mov    esi,eax
ffffffff80204fc3:	31 c0                	xor    eax,eax
ffffffff80204fc5:	e8 96 2e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80204fca:	eb 93                	jmp    ffffffff80204f5f <get_frame+0x22f>
ffffffff80204fcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80204fd0 <init_pmm>:
ffffffff80204fd0:	80 3d a9 77 00 00 00 	cmp    BYTE PTR [rip+0x77a9],0x0        # ffffffff8020c780 <once.1652>
ffffffff80204fd7:	0f 85 93 01 00 00    	jne    ffffffff80205170 <init_pmm+0x1a0>
ffffffff80204fdd:	48 83 ec 08          	sub    rsp,0x8
ffffffff80204fe1:	48 8b 05 88 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b88]        # ffffffff8020cb70 <nframes>
ffffffff80204fe8:	48 89 fa             	mov    rdx,rdi
ffffffff80204feb:	c6 05 8e 77 00 00 01 	mov    BYTE PTR [rip+0x778e],0x1        # ffffffff8020c780 <once.1652>
ffffffff80204ff2:	c6 05 7f 7b 00 00 01 	mov    BYTE PTR [rip+0x7b7f],0x1        # ffffffff8020cb78 <is_bitmap_set>
ffffffff80204ff9:	48 89 3d 90 77 00 00 	mov    QWORD PTR [rip+0x7790],rdi        # ffffffff8020c790 <bitmap_addr>
ffffffff80205000:	48 c1 e8 06          	shr    rax,0x6
ffffffff80205004:	48 8d 0c c7          	lea    rcx,[rdi+rax*8]
ffffffff80205008:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020500f:	00 
ffffffff80205010:	48 89 f8             	mov    rax,rdi
ffffffff80205013:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
ffffffff8020501a:	48 83 c7 08          	add    rdi,0x8
ffffffff8020501e:	48 39 c1             	cmp    rcx,rax
ffffffff80205021:	75 ed                	jne    ffffffff80205010 <init_pmm+0x40>
ffffffff80205023:	48 8b 3d 3e 7b 00 00 	mov    rdi,QWORD PTR [rip+0x7b3e]        # ffffffff8020cb68 <number_of_frames_without_bitmap>
ffffffff8020502a:	31 c9                	xor    ecx,ecx
ffffffff8020502c:	41 b8 01 00 00 00    	mov    r8d,0x1
ffffffff80205032:	48 85 ff             	test   rdi,rdi
ffffffff80205035:	74 23                	je     ffffffff8020505a <init_pmm+0x8a>
ffffffff80205037:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020503e:	00 00 
ffffffff80205040:	48 89 c8             	mov    rax,rcx
ffffffff80205043:	4c 89 c6             	mov    rsi,r8
ffffffff80205046:	48 d3 e6             	shl    rsi,cl
ffffffff80205049:	48 c1 e8 06          	shr    rax,0x6
ffffffff8020504d:	48 83 c1 01          	add    rcx,0x1
ffffffff80205051:	48 31 34 c2          	xor    QWORD PTR [rdx+rax*8],rsi
ffffffff80205055:	48 39 f9             	cmp    rcx,rdi
ffffffff80205058:	75 e6                	jne    ffffffff80205040 <init_pmm+0x70>
ffffffff8020505a:	48 8b 35 27 79 00 00 	mov    rsi,QWORD PTR [rip+0x7927]        # ffffffff8020c988 <available+0x8>
ffffffff80205061:	48 85 f6             	test   rsi,rsi
ffffffff80205064:	74 64                	je     ffffffff802050ca <init_pmm+0xfa>
ffffffff80205066:	4c 8b 0d 13 7b 00 00 	mov    r9,QWORD PTR [rip+0x7b13]        # ffffffff8020cb80 <pg_size>
ffffffff8020506d:	31 d2                	xor    edx,edx
ffffffff8020506f:	31 ff                	xor    edi,edi
ffffffff80205071:	4d 89 ca             	mov    r10,r9
ffffffff80205074:	49 f7 da             	neg    r10
ffffffff80205077:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020507e:	00 00 
ffffffff80205080:	48 8b 82 80 c9 20 80 	mov    rax,QWORD PTR [rdx-0x7fdf3680]
ffffffff80205087:	4c 89 d1             	mov    rcx,r10
ffffffff8020508a:	48 89 ba b0 c7 20 80 	mov    QWORD PTR [rdx-0x7fdf3850],rdi
ffffffff80205091:	48 21 c1             	and    rcx,rax
ffffffff80205094:	48 39 c1             	cmp    rcx,rax
ffffffff80205097:	4e 8d 04 09          	lea    r8,[rcx+r9*1]
ffffffff8020509b:	49 0f 45 c8          	cmovne rcx,r8
ffffffff8020509f:	48 29 c8             	sub    rax,rcx
ffffffff802050a2:	48 89 8a a0 c7 20 80 	mov    QWORD PTR [rdx-0x7fdf3860],rcx
ffffffff802050a9:	48 01 f0             	add    rax,rsi
ffffffff802050ac:	48 89 82 a8 c7 20 80 	mov    QWORD PTR [rdx-0x7fdf3858],rax
ffffffff802050b3:	48 c1 e8 0c          	shr    rax,0xc
ffffffff802050b7:	48 83 c2 18          	add    rdx,0x18
ffffffff802050bb:	48 8b b2 88 c9 20 80 	mov    rsi,QWORD PTR [rdx-0x7fdf3678]
ffffffff802050c2:	48 01 c7             	add    rdi,rax
ffffffff802050c5:	48 85 f6             	test   rsi,rsi
ffffffff802050c8:	75 b6                	jne    ffffffff80205080 <init_pmm+0xb0>
ffffffff802050ca:	31 c0                	xor    eax,eax
ffffffff802050cc:	e8 6f 0f 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802050d1:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802050d8:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802050dd:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff802050e4:	e8 07 bb ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802050e9:	31 c0                	xor    eax,eax
ffffffff802050eb:	e8 f0 07 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802050f0:	84 c0                	test   al,al
ffffffff802050f2:	75 5c                	jne    ffffffff80205150 <init_pmm+0x180>
ffffffff802050f4:	48 c7 c1 10 9c 20 80 	mov    rcx,0xffffffff80209c10
ffffffff802050fb:	ba 8e 00 00 00       	mov    edx,0x8e
ffffffff80205100:	48 c7 c6 71 9b 20 80 	mov    rsi,0xffffffff80209b71
ffffffff80205107:	31 c0                	xor    eax,eax
ffffffff80205109:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205110:	e8 4b 2d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205115:	48 c7 c7 c8 9b 20 80 	mov    rdi,0xffffffff80209bc8
ffffffff8020511c:	31 c0                	xor    eax,eax
ffffffff8020511e:	e8 3d 2d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205123:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020512a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020512f:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205136:	e8 b5 ba ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020513b:	31 c0                	xor    eax,eax
ffffffff8020513d:	48 83 c4 08          	add    rsp,0x8
ffffffff80205141:	e9 1a 0f 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80205146:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020514d:	00 00 00 
ffffffff80205150:	31 c0                	xor    eax,eax
ffffffff80205152:	e8 19 06 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80205157:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020515e:	89 c6                	mov    esi,eax
ffffffff80205160:	31 c0                	xor    eax,eax
ffffffff80205162:	e8 f9 2c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205167:	eb 8b                	jmp    ffffffff802050f4 <init_pmm+0x124>
ffffffff80205169:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80205170:	c3                   	ret    
ffffffff80205171:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80205176:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020517d:	00 00 00 

ffffffff80205180 <set_memory_map>:
ffffffff80205180:	48 8d 47 18          	lea    rax,[rdi+0x18]
ffffffff80205184:	48 83 ec 08          	sub    rsp,0x8
ffffffff80205188:	48 89 05 01 7a 00 00 	mov    QWORD PTR [rip+0x7a01],rax        # ffffffff8020cb90 <memmap>
ffffffff8020518f:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
ffffffff80205193:	48 89 05 ee 79 00 00 	mov    QWORD PTR [rip+0x79ee],rax        # ffffffff8020cb88 <entry_number>
ffffffff8020519a:	31 c0                	xor    eax,eax
ffffffff8020519c:	e8 9f 0e 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802051a1:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802051a8:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802051ad:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff802051b4:	e8 37 ba ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802051b9:	31 c0                	xor    eax,eax
ffffffff802051bb:	e8 20 07 00 00       	call   ffffffff802058e0 <is_smp_active>
ffffffff802051c0:	84 c0                	test   al,al
ffffffff802051c2:	75 5c                	jne    ffffffff80205220 <set_memory_map+0xa0>
ffffffff802051c4:	48 c7 c1 00 9c 20 80 	mov    rcx,0xffffffff80209c00
ffffffff802051cb:	ba 9a 00 00 00       	mov    edx,0x9a
ffffffff802051d0:	48 c7 c6 71 9b 20 80 	mov    rsi,0xffffffff80209b71
ffffffff802051d7:	31 c0                	xor    eax,eax
ffffffff802051d9:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802051e0:	e8 7b 2c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802051e5:	48 c7 c7 87 9b 20 80 	mov    rdi,0xffffffff80209b87
ffffffff802051ec:	31 c0                	xor    eax,eax
ffffffff802051ee:	e8 6d 2c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802051f3:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802051fa:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802051ff:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205206:	e8 e5 b9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020520b:	31 c0                	xor    eax,eax
ffffffff8020520d:	48 83 c4 08          	add    rsp,0x8
ffffffff80205211:	e9 4a 0e 00 00       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80205216:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020521d:	00 00 00 
ffffffff80205220:	31 c0                	xor    eax,eax
ffffffff80205222:	e8 49 05 00 00       	call   ffffffff80205770 <get_core_id>
ffffffff80205227:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020522e:	89 c6                	mov    esi,eax
ffffffff80205230:	31 c0                	xor    eax,eax
ffffffff80205232:	e8 29 2c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205237:	eb 8b                	jmp    ffffffff802051c4 <set_memory_map+0x44>
ffffffff80205239:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80205240 <get_size_in_bits>:
ffffffff80205240:	4c 8b 05 41 79 00 00 	mov    r8,QWORD PTR [rip+0x7941]        # ffffffff8020cb88 <entry_number>
ffffffff80205247:	48 89 3d 32 79 00 00 	mov    QWORD PTR [rip+0x7932],rdi        # ffffffff8020cb80 <pg_size>
ffffffff8020524e:	4d 85 c0             	test   r8,r8
ffffffff80205251:	0f 84 a1 00 00 00    	je     ffffffff802052f8 <get_size_in_bits+0xb8>
ffffffff80205257:	48 8b 0d 32 79 00 00 	mov    rcx,QWORD PTR [rip+0x7932]        # ffffffff8020cb90 <memmap>
ffffffff8020525e:	4b 8d 04 40          	lea    rax,[r8+r8*2]
ffffffff80205262:	45 31 d2             	xor    r10d,r10d
ffffffff80205265:	45 31 c0             	xor    r8d,r8d
ffffffff80205268:	48 8d 34 c1          	lea    rsi,[rcx+rax*8]
ffffffff8020526c:	eb 0b                	jmp    ffffffff80205279 <get_size_in_bits+0x39>
ffffffff8020526e:	66 90                	xchg   ax,ax
ffffffff80205270:	48 83 c1 18          	add    rcx,0x18
ffffffff80205274:	48 39 ce             	cmp    rsi,rcx
ffffffff80205277:	74 7f                	je     ffffffff802052f8 <get_size_in_bits+0xb8>
ffffffff80205279:	8b 41 10             	mov    eax,DWORD PTR [rcx+0x10]
ffffffff8020527c:	83 f8 01             	cmp    eax,0x1
ffffffff8020527f:	75 ef                	jne    ffffffff80205270 <get_size_in_bits+0x30>
ffffffff80205281:	a8 01                	test   al,0x1
ffffffff80205283:	74 eb                	je     ffffffff80205270 <get_size_in_bits+0x30>
ffffffff80205285:	53                   	push   rbx
ffffffff80205286:	4c 8b 49 08          	mov    r9,QWORD PTR [rcx+0x8]
ffffffff8020528a:	31 d2                	xor    edx,edx
ffffffff8020528c:	44 8b 59 14          	mov    r11d,DWORD PTR [rcx+0x14]
ffffffff80205290:	48 8b 19             	mov    rbx,QWORD PTR [rcx]
ffffffff80205293:	4c 89 c8             	mov    rax,r9
ffffffff80205296:	48 f7 f7             	div    rdi
ffffffff80205299:	49 01 c0             	add    r8,rax
ffffffff8020529c:	41 0f b7 c2          	movzx  eax,r10w
ffffffff802052a0:	41 83 c2 01          	add    r10d,0x1
ffffffff802052a4:	48 8d 14 40          	lea    rdx,[rax+rax*2]
ffffffff802052a8:	48 8d 04 d5 80 c9 20 	lea    rax,[rdx*8-0x7fdf3680]
ffffffff802052af:	80 
ffffffff802052b0:	48 89 1c d5 80 c9 20 	mov    QWORD PTR [rdx*8-0x7fdf3680],rbx
ffffffff802052b7:	80 
ffffffff802052b8:	4c 89 48 08          	mov    QWORD PTR [rax+0x8],r9
ffffffff802052bc:	c7 40 10 01 00 00 00 	mov    DWORD PTR [rax+0x10],0x1
ffffffff802052c3:	44 89 58 14          	mov    DWORD PTR [rax+0x14],r11d
ffffffff802052c7:	48 83 c1 18          	add    rcx,0x18
ffffffff802052cb:	48 39 ce             	cmp    rsi,rcx
ffffffff802052ce:	74 15                	je     ffffffff802052e5 <get_size_in_bits+0xa5>
ffffffff802052d0:	8b 41 10             	mov    eax,DWORD PTR [rcx+0x10]
ffffffff802052d3:	83 f8 01             	cmp    eax,0x1
ffffffff802052d6:	75 ef                	jne    ffffffff802052c7 <get_size_in_bits+0x87>
ffffffff802052d8:	a8 01                	test   al,0x1
ffffffff802052da:	75 aa                	jne    ffffffff80205286 <get_size_in_bits+0x46>
ffffffff802052dc:	48 83 c1 18          	add    rcx,0x18
ffffffff802052e0:	48 39 ce             	cmp    rsi,rcx
ffffffff802052e3:	75 eb                	jne    ffffffff802052d0 <get_size_in_bits+0x90>
ffffffff802052e5:	4c 89 c0             	mov    rax,r8
ffffffff802052e8:	4c 89 05 81 78 00 00 	mov    QWORD PTR [rip+0x7881],r8        # ffffffff8020cb70 <nframes>
ffffffff802052ef:	5b                   	pop    rbx
ffffffff802052f0:	c3                   	ret    
ffffffff802052f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff802052f8:	4c 89 05 71 78 00 00 	mov    QWORD PTR [rip+0x7871],r8        # ffffffff8020cb70 <nframes>
ffffffff802052ff:	4c 89 c0             	mov    rax,r8
ffffffff80205302:	c3                   	ret    
ffffffff80205303:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80205306:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020530d:	00 00 00 

ffffffff80205310 <free_frame>:
ffffffff80205310:	48 8b 05 91 74 00 00 	mov    rax,QWORD PTR [rip+0x7491]        # ffffffff8020c7a8 <loc_datas+0x8>
ffffffff80205317:	4c 8b 0d 62 78 00 00 	mov    r9,QWORD PTR [rip+0x7862]        # ffffffff8020cb80 <pg_size>
ffffffff8020531e:	48 81 e7 00 f0 ff ff 	and    rdi,0xfffffffffffff000
ffffffff80205325:	48 c7 c6 a0 c7 20 80 	mov    rsi,0xffffffff8020c7a0
ffffffff8020532c:	4c 8b 05 5d 74 00 00 	mov    r8,QWORD PTR [rip+0x745d]        # ffffffff8020c790 <bitmap_addr>
ffffffff80205333:	41 ba 01 00 00 00    	mov    r10d,0x1
ffffffff80205339:	48 85 c0             	test   rax,rax
ffffffff8020533c:	74 4f                	je     ffffffff8020538d <free_frame+0x7d>
ffffffff8020533e:	66 90                	xchg   ax,ax
ffffffff80205340:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
ffffffff80205343:	48 01 d0             	add    rax,rdx
ffffffff80205346:	48 39 f8             	cmp    rax,rdi
ffffffff80205349:	76 35                	jbe    ffffffff80205380 <free_frame+0x70>
ffffffff8020534b:	48 39 fa             	cmp    rdx,rdi
ffffffff8020534e:	77 30                	ja     ffffffff80205380 <free_frame+0x70>
ffffffff80205350:	48 89 f8             	mov    rax,rdi
ffffffff80205353:	48 83 c6 18          	add    rsi,0x18
ffffffff80205357:	48 29 d0             	sub    rax,rdx
ffffffff8020535a:	31 d2                	xor    edx,edx
ffffffff8020535c:	49 f7 f1             	div    r9
ffffffff8020535f:	4c 89 d2             	mov    rdx,r10
ffffffff80205362:	48 03 46 f8          	add    rax,QWORD PTR [rsi-0x8]
ffffffff80205366:	48 89 c1             	mov    rcx,rax
ffffffff80205369:	48 c1 e8 06          	shr    rax,0x6
ffffffff8020536d:	48 d3 e2             	shl    rdx,cl
ffffffff80205370:	49 31 14 c0          	xor    QWORD PTR [r8+rax*8],rdx
ffffffff80205374:	48 8b 46 08          	mov    rax,QWORD PTR [rsi+0x8]
ffffffff80205378:	48 85 c0             	test   rax,rax
ffffffff8020537b:	75 c3                	jne    ffffffff80205340 <free_frame+0x30>
ffffffff8020537d:	c3                   	ret    
ffffffff8020537e:	66 90                	xchg   ax,ax
ffffffff80205380:	48 8b 46 20          	mov    rax,QWORD PTR [rsi+0x20]
ffffffff80205384:	48 83 c6 18          	add    rsi,0x18
ffffffff80205388:	48 85 c0             	test   rax,rax
ffffffff8020538b:	75 b3                	jne    ffffffff80205340 <free_frame+0x30>
ffffffff8020538d:	c3                   	ret    
ffffffff8020538e:	66 90                	xchg   ax,ax

ffffffff80205390 <_start_core>:
ffffffff80205390:	53                   	push   rbx
ffffffff80205391:	31 c9                	xor    ecx,ecx
ffffffff80205393:	ba 01 00 00 00       	mov    edx,0x1
ffffffff80205398:	89 c8                	mov    eax,ecx
ffffffff8020539a:	66 f0 0f b1 15 5d a4 	lock cmpxchg WORD PTR [rip+0xa45d],dx        # ffffffff8020f800 <_lock_Bootstrap>
ffffffff802053a1:	00 00 
ffffffff802053a3:	75 f3                	jne    ffffffff80205398 <_start_core+0x8>
ffffffff802053a5:	0f ae f0             	mfence 
ffffffff802053a8:	0f ae f0             	mfence 
ffffffff802053ab:	66 f0 83 2d 4c a4 00 	lock sub WORD PTR [rip+0xa44c],0x1        # ffffffff8020f800 <_lock_Bootstrap>
ffffffff802053b2:	00 01 
ffffffff802053b4:	31 c9                	xor    ecx,ecx
ffffffff802053b6:	ba 01 00 00 00       	mov    edx,0x1
ffffffff802053bb:	89 c8                	mov    eax,ecx
ffffffff802053bd:	66 f0 0f b1 15 3c a4 	lock cmpxchg WORD PTR [rip+0xa43c],dx        # ffffffff8020f802 <_lock_1>
ffffffff802053c4:	00 00 
ffffffff802053c6:	75 f3                	jne    ffffffff802053bb <_start_core+0x2b>
ffffffff802053c8:	0f ae f0             	mfence 
ffffffff802053cb:	31 c0                	xor    eax,eax
ffffffff802053cd:	c6 05 d1 77 00 00 00 	mov    BYTE PTR [rip+0x77d1],0x0        # ffffffff8020cba5 <smp_status>
ffffffff802053d4:	e8 67 0c 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802053d9:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802053e0:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802053e5:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802053ec:	e8 ff b7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802053f1:	80 3d ad 77 00 00 00 	cmp    BYTE PTR [rip+0x77ad],0x0        # ffffffff8020cba5 <smp_status>
ffffffff802053f8:	0f 85 25 02 00 00    	jne    ffffffff80205623 <_start_core+0x293>
ffffffff802053fe:	48 c7 c1 e0 9c 20 80 	mov    rcx,0xffffffff80209ce0
ffffffff80205405:	ba 40 00 00 00       	mov    edx,0x40
ffffffff8020540a:	48 c7 c6 2a 9c 20 80 	mov    rsi,0xffffffff80209c2a
ffffffff80205411:	31 c0                	xor    eax,eax
ffffffff80205413:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020541a:	e8 41 2a 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020541f:	31 c0                	xor    eax,eax
ffffffff80205421:	48 c7 c7 40 9c 20 80 	mov    rdi,0xffffffff80209c40
ffffffff80205428:	e8 33 2a 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020542d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205434:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205439:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205440:	e8 ab b7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205445:	31 c0                	xor    eax,eax
ffffffff80205447:	e8 14 0c 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020544c:	31 c0                	xor    eax,eax
ffffffff8020544e:	e8 ad ae ff ff       	call   ffffffff80200300 <setup_gdt>
ffffffff80205453:	e8 88 c4 ff ff       	call   ffffffff802018e0 <setup_idt>
ffffffff80205458:	31 c0                	xor    eax,eax
ffffffff8020545a:	e8 31 c1 ff ff       	call   ffffffff80201590 <attach_kernel_exceptions>
ffffffff8020545f:	31 c0                	xor    eax,eax
ffffffff80205461:	e8 ea eb ff ff       	call   ffffffff80204050 <create_page_directory>
ffffffff80205466:	0f 22 d8             	mov    cr3,rax
ffffffff80205469:	31 c0                	xor    eax,eax
ffffffff8020546b:	e8 40 ec ff ff       	call   ffffffff802040b0 <setup_context_frame>
ffffffff80205470:	e8 1e ae ff ff       	call   ffffffff80200293 <enable_sse>
ffffffff80205475:	31 c0                	xor    eax,eax
ffffffff80205477:	e8 c4 0b 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff8020547c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205483:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205488:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff8020548f:	e8 5c b7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205494:	80 3d 0a 77 00 00 00 	cmp    BYTE PTR [rip+0x770a],0x0        # ffffffff8020cba5 <smp_status>
ffffffff8020549b:	0f 85 c6 01 00 00    	jne    ffffffff80205667 <_start_core+0x2d7>
ffffffff802054a1:	48 c7 c1 e0 9c 20 80 	mov    rcx,0xffffffff80209ce0
ffffffff802054a8:	ba 4a 00 00 00       	mov    edx,0x4a
ffffffff802054ad:	48 c7 c6 2a 9c 20 80 	mov    rsi,0xffffffff80209c2a
ffffffff802054b4:	31 c0                	xor    eax,eax
ffffffff802054b6:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802054bd:	e8 9e 29 00 00       	call   ffffffff80207e60 <printf>
ffffffff802054c2:	31 c0                	xor    eax,eax
ffffffff802054c4:	48 c7 c7 70 9c 20 80 	mov    rdi,0xffffffff80209c70
ffffffff802054cb:	e8 90 29 00 00       	call   ffffffff80207e60 <printf>
ffffffff802054d0:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802054d7:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802054dc:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802054e3:	e8 08 b7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802054e8:	31 c0                	xor    eax,eax
ffffffff802054ea:	e8 71 0b 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802054ef:	31 c0                	xor    eax,eax
ffffffff802054f1:	e8 1a af ff ff       	call   ffffffff80200410 <map_pics>
ffffffff802054f6:	31 c0                	xor    eax,eax
ffffffff802054f8:	e8 53 b2 ff ff       	call   ffffffff80200750 <enable_APIC>
ffffffff802054fd:	31 c0                	xor    eax,eax
ffffffff802054ff:	e8 5c b3 ff ff       	call   ffffffff80200860 <init_APIC_interrupt>
ffffffff80205504:	31 c0                	xor    eax,eax
ffffffff80205506:	e8 c5 b2 ff ff       	call   ffffffff802007d0 <init_APIC_timer>
ffffffff8020550b:	31 c0                	xor    eax,eax
ffffffff8020550d:	80 05 90 76 00 00 01 	add    BYTE PTR [rip+0x7690],0x1        # ffffffff8020cba4 <booted_cpus_count>
ffffffff80205514:	c6 05 8a 76 00 00 01 	mov    BYTE PTR [rip+0x768a],0x1        # ffffffff8020cba5 <smp_status>
ffffffff8020551b:	e8 20 0b 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205520:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205527:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020552c:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80205533:	e8 b8 b6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205538:	80 3d 66 76 00 00 00 	cmp    BYTE PTR [rip+0x7666],0x0        # ffffffff8020cba5 <smp_status>
ffffffff8020553f:	0f 85 00 01 00 00    	jne    ffffffff80205645 <_start_core+0x2b5>
ffffffff80205545:	48 c7 c1 e0 9c 20 80 	mov    rcx,0xffffffff80209ce0
ffffffff8020554c:	ba 57 00 00 00       	mov    edx,0x57
ffffffff80205551:	48 c7 c6 2a 9c 20 80 	mov    rsi,0xffffffff80209c2a
ffffffff80205558:	31 c0                	xor    eax,eax
ffffffff8020555a:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205561:	e8 fa 28 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205566:	bf 20 00 00 00       	mov    edi,0x20
ffffffff8020556b:	e8 e0 af ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff80205570:	48 c7 c7 a0 9c 20 80 	mov    rdi,0xffffffff80209ca0
ffffffff80205577:	c1 e8 18             	shr    eax,0x18
ffffffff8020557a:	89 c6                	mov    esi,eax
ffffffff8020557c:	31 c0                	xor    eax,eax
ffffffff8020557e:	e8 dd 28 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205583:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020558a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020558f:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205596:	e8 55 b6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020559b:	31 c0                	xor    eax,eax
ffffffff8020559d:	e8 be 0a 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802055a2:	0f ae f0             	mfence 
ffffffff802055a5:	66 f0 83 2d 54 a2 00 	lock sub WORD PTR [rip+0xa254],0x1        # ffffffff8020f802 <_lock_1>
ffffffff802055ac:	00 01 
ffffffff802055ae:	fb                   	sti    
ffffffff802055af:	90                   	nop
ffffffff802055b0:	bf 20 00 00 00       	mov    edi,0x20
ffffffff802055b5:	48 8b 1d 64 80 00 00 	mov    rbx,QWORD PTR [rip+0x8064]        # ffffffff8020d620 <launching_addresses>
ffffffff802055bc:	e8 8f af ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff802055c1:	c1 e8 18             	shr    eax,0x18
ffffffff802055c4:	48 c7 04 c3 00 00 00 	mov    QWORD PTR [rbx+rax*8],0x0
ffffffff802055cb:	00 
ffffffff802055cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802055d0:	bf 20 00 00 00       	mov    edi,0x20
ffffffff802055d5:	48 8b 1d 44 80 00 00 	mov    rbx,QWORD PTR [rip+0x8044]        # ffffffff8020d620 <launching_addresses>
ffffffff802055dc:	e8 6f af ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff802055e1:	c1 e8 18             	shr    eax,0x18
ffffffff802055e4:	48 83 3c c3 00       	cmp    QWORD PTR [rbx+rax*8],0x0
ffffffff802055e9:	74 e5                	je     ffffffff802055d0 <_start_core+0x240>
ffffffff802055eb:	bf 20 00 00 00       	mov    edi,0x20
ffffffff802055f0:	48 8b 1d 29 80 00 00 	mov    rbx,QWORD PTR [rip+0x8029]        # ffffffff8020d620 <launching_addresses>
ffffffff802055f7:	e8 54 af ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff802055fc:	c1 e8 18             	shr    eax,0x18
ffffffff802055ff:	48 83 3c c3 01       	cmp    QWORD PTR [rbx+rax*8],0x1
ffffffff80205604:	74 ca                	je     ffffffff802055d0 <_start_core+0x240>
ffffffff80205606:	bf 20 00 00 00       	mov    edi,0x20
ffffffff8020560b:	48 8b 1d 0e 80 00 00 	mov    rbx,QWORD PTR [rip+0x800e]        # ffffffff8020d620 <launching_addresses>
ffffffff80205612:	e8 39 af ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff80205617:	c1 e8 18             	shr    eax,0x18
ffffffff8020561a:	89 c2                	mov    edx,eax
ffffffff8020561c:	31 c0                	xor    eax,eax
ffffffff8020561e:	ff 14 d3             	call   QWORD PTR [rbx+rdx*8]
ffffffff80205621:	eb 8d                	jmp    ffffffff802055b0 <_start_core+0x220>
ffffffff80205623:	bf 20 00 00 00       	mov    edi,0x20
ffffffff80205628:	e8 23 af ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff8020562d:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205634:	c1 e8 18             	shr    eax,0x18
ffffffff80205637:	89 c6                	mov    esi,eax
ffffffff80205639:	31 c0                	xor    eax,eax
ffffffff8020563b:	e8 20 28 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205640:	e9 b9 fd ff ff       	jmp    ffffffff802053fe <_start_core+0x6e>
ffffffff80205645:	bf 20 00 00 00       	mov    edi,0x20
ffffffff8020564a:	e8 01 af ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff8020564f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205656:	c1 e8 18             	shr    eax,0x18
ffffffff80205659:	89 c6                	mov    esi,eax
ffffffff8020565b:	31 c0                	xor    eax,eax
ffffffff8020565d:	e8 fe 27 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205662:	e9 de fe ff ff       	jmp    ffffffff80205545 <_start_core+0x1b5>
ffffffff80205667:	bf 20 00 00 00       	mov    edi,0x20
ffffffff8020566c:	e8 df ae ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff80205671:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205678:	c1 e8 18             	shr    eax,0x18
ffffffff8020567b:	89 c6                	mov    esi,eax
ffffffff8020567d:	31 c0                	xor    eax,eax
ffffffff8020567f:	e8 dc 27 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205684:	e9 18 fe ff ff       	jmp    ffffffff802054a1 <_start_core+0x111>
ffffffff80205689:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80205690 <get_booted_cpus_count>:
ffffffff80205690:	0f b6 05 0d 75 00 00 	movzx  eax,BYTE PTR [rip+0x750d]        # ffffffff8020cba4 <booted_cpus_count>
ffffffff80205697:	c3                   	ret    
ffffffff80205698:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020569f:	00 

ffffffff802056a0 <get_core_id_>:
ffffffff802056a0:	80 3d f5 74 00 00 00 	cmp    BYTE PTR [rip+0x74f5],0x0        # ffffffff8020cb9c <once.1813>
ffffffff802056a7:	74 07                	je     ffffffff802056b0 <get_core_id_+0x10>
ffffffff802056a9:	8b 05 e9 74 00 00    	mov    eax,DWORD PTR [rip+0x74e9]        # ffffffff8020cb98 <id.1812>
ffffffff802056af:	c3                   	ret    
ffffffff802056b0:	53                   	push   rbx
ffffffff802056b1:	31 c0                	xor    eax,eax
ffffffff802056b3:	48 89 fb             	mov    rbx,rdi
ffffffff802056b6:	c6 05 df 74 00 00 01 	mov    BYTE PTR [rip+0x74df],0x1        # ffffffff8020cb9c <once.1813>
ffffffff802056bd:	e8 7e 09 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802056c2:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802056c9:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802056ce:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff802056d5:	e8 16 b5 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802056da:	80 3d c4 74 00 00 00 	cmp    BYTE PTR [rip+0x74c4],0x0        # ffffffff8020cba5 <smp_status>
ffffffff802056e1:	75 5d                	jne    ffffffff80205740 <get_core_id_+0xa0>
ffffffff802056e3:	48 c7 c1 f0 9c 20 80 	mov    rcx,0xffffffff80209cf0
ffffffff802056ea:	ba 21 00 00 00       	mov    edx,0x21
ffffffff802056ef:	48 c7 c6 2a 9c 20 80 	mov    rsi,0xffffffff80209c2a
ffffffff802056f6:	31 c0                	xor    eax,eax
ffffffff802056f8:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802056ff:	e8 5c 27 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205704:	48 c7 c7 4f 9c 20 80 	mov    rdi,0xffffffff80209c4f
ffffffff8020570b:	31 c0                	xor    eax,eax
ffffffff8020570d:	e8 4e 27 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205712:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205719:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020571e:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205725:	e8 c6 b4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020572a:	31 c0                	xor    eax,eax
ffffffff8020572c:	e8 2f 09 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205731:	8b 03                	mov    eax,DWORD PTR [rbx]
ffffffff80205733:	5b                   	pop    rbx
ffffffff80205734:	89 05 5e 74 00 00    	mov    DWORD PTR [rip+0x745e],eax        # ffffffff8020cb98 <id.1812>
ffffffff8020573a:	c3                   	ret    
ffffffff8020573b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80205740:	bf 20 00 00 00       	mov    edi,0x20
ffffffff80205745:	e8 06 ae ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff8020574a:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205751:	c1 e8 18             	shr    eax,0x18
ffffffff80205754:	89 c6                	mov    esi,eax
ffffffff80205756:	31 c0                	xor    eax,eax
ffffffff80205758:	e8 03 27 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020575d:	eb 84                	jmp    ffffffff802056e3 <get_core_id_+0x43>
ffffffff8020575f:	90                   	nop

ffffffff80205760 <set_core_id>:
ffffffff80205760:	89 3d 3a 74 00 00    	mov    DWORD PTR [rip+0x743a],edi        # ffffffff8020cba0 <id>
ffffffff80205766:	c3                   	ret    
ffffffff80205767:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020576e:	00 00 

ffffffff80205770 <get_core_id>:
ffffffff80205770:	48 83 ec 08          	sub    rsp,0x8
ffffffff80205774:	bf 20 00 00 00       	mov    edi,0x20
ffffffff80205779:	e8 d2 ad ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff8020577e:	48 83 c4 08          	add    rsp,0x8
ffffffff80205782:	c1 e8 18             	shr    eax,0x18
ffffffff80205785:	c3                   	ret    
ffffffff80205786:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020578d:	00 00 00 

ffffffff80205790 <launch_APs>:
ffffffff80205790:	41 54                	push   r12
ffffffff80205792:	55                   	push   rbp
ffffffff80205793:	53                   	push   rbx
ffffffff80205794:	48 83 7f 20 00       	cmp    QWORD PTR [rdi+0x20],0x0
ffffffff80205799:	48 89 fb             	mov    rbx,rdi
ffffffff8020579c:	74 07                	je     ffffffff802057a5 <launch_APs+0x15>
ffffffff8020579e:	c6 05 00 74 00 00 01 	mov    BYTE PTR [rip+0x7400],0x1        # ffffffff8020cba5 <smp_status>
ffffffff802057a5:	48 89 35 74 7e 00 00 	mov    QWORD PTR [rip+0x7e74],rsi        # ffffffff8020d620 <launching_addresses>
ffffffff802057ac:	31 c9                	xor    ecx,ecx
ffffffff802057ae:	ba 01 00 00 00       	mov    edx,0x1
ffffffff802057b3:	89 c8                	mov    eax,ecx
ffffffff802057b5:	66 f0 0f b1 15 42 a0 	lock cmpxchg WORD PTR [rip+0xa042],dx        # ffffffff8020f800 <_lock_Bootstrap>
ffffffff802057bc:	00 00 
ffffffff802057be:	75 f3                	jne    ffffffff802057b3 <launch_APs+0x23>
ffffffff802057c0:	0f ae f0             	mfence 
ffffffff802057c3:	48 83 7b 20 00       	cmp    QWORD PTR [rbx+0x20],0x0
ffffffff802057c8:	0f 84 d3 00 00 00    	je     ffffffff802058a1 <launch_APs+0x111>
ffffffff802057ce:	31 ed                	xor    ebp,ebp
ffffffff802057d0:	e9 a7 00 00 00       	jmp    ffffffff8020587c <launch_APs+0xec>
ffffffff802057d5:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff802057d8:	31 c0                	xor    eax,eax
ffffffff802057da:	e8 61 08 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802057df:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802057e6:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802057eb:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff802057f2:	e8 f9 b3 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802057f7:	80 3d a7 73 00 00 00 	cmp    BYTE PTR [rip+0x73a7],0x0        # ffffffff8020cba5 <smp_status>
ffffffff802057fe:	0f 85 b4 00 00 00    	jne    ffffffff802058b8 <launch_APs+0x128>
ffffffff80205804:	48 c7 c1 d0 9c 20 80 	mov    rcx,0xffffffff80209cd0
ffffffff8020580b:	ba 73 00 00 00       	mov    edx,0x73
ffffffff80205810:	31 c0                	xor    eax,eax
ffffffff80205812:	48 83 c5 01          	add    rbp,0x1
ffffffff80205816:	48 c7 c6 2a 9c 20 80 	mov    rsi,0xffffffff80209c2a
ffffffff8020581d:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205824:	e8 37 26 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205829:	42 8b 74 23 2c       	mov    esi,DWORD PTR [rbx+r12*1+0x2c]
ffffffff8020582e:	48 c7 c7 59 9c 20 80 	mov    rdi,0xffffffff80209c59
ffffffff80205835:	31 c0                	xor    eax,eax
ffffffff80205837:	e8 24 26 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020583c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205843:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205848:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020584f:	e8 9c b3 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205854:	31 c0                	xor    eax,eax
ffffffff80205856:	e8 05 08 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff8020585b:	31 c0                	xor    eax,eax
ffffffff8020585d:	e8 ce f4 ff ff       	call   ffffffff80204d30 <get_frame>
ffffffff80205862:	4a c7 44 23 38 90 53 	mov    QWORD PTR [rbx+r12*1+0x38],0xffffffff80205390
ffffffff80205869:	20 80 
ffffffff8020586b:	48 2d 40 f0 ff 7f    	sub    rax,0x7ffff040
ffffffff80205871:	4a 89 44 23 30       	mov    QWORD PTR [rbx+r12*1+0x30],rax
ffffffff80205876:	48 39 6b 20          	cmp    QWORD PTR [rbx+0x20],rbp
ffffffff8020587a:	76 25                	jbe    ffffffff802058a1 <launch_APs+0x111>
ffffffff8020587c:	49 89 ec             	mov    r12,rbp
ffffffff8020587f:	49 c1 e4 05          	shl    r12,0x5
ffffffff80205883:	42 8b 44 23 2c       	mov    eax,DWORD PTR [rbx+r12*1+0x2c]
ffffffff80205888:	39 43 18             	cmp    DWORD PTR [rbx+0x18],eax
ffffffff8020588b:	0f 85 47 ff ff ff    	jne    ffffffff802057d8 <launch_APs+0x48>
ffffffff80205891:	89 05 09 73 00 00    	mov    DWORD PTR [rip+0x7309],eax        # ffffffff8020cba0 <id>
ffffffff80205897:	48 83 c5 01          	add    rbp,0x1
ffffffff8020589b:	48 39 6b 20          	cmp    QWORD PTR [rbx+0x20],rbp
ffffffff8020589f:	77 db                	ja     ffffffff8020587c <launch_APs+0xec>
ffffffff802058a1:	0f ae f0             	mfence 
ffffffff802058a4:	66 f0 83 2d 53 9f 00 	lock sub WORD PTR [rip+0x9f53],0x1        # ffffffff8020f800 <_lock_Bootstrap>
ffffffff802058ab:	00 01 
ffffffff802058ad:	5b                   	pop    rbx
ffffffff802058ae:	5d                   	pop    rbp
ffffffff802058af:	41 5c                	pop    r12
ffffffff802058b1:	c3                   	ret    
ffffffff802058b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff802058b8:	bf 20 00 00 00       	mov    edi,0x20
ffffffff802058bd:	e8 8e ac ff ff       	call   ffffffff80200550 <cpuReadLAPIC>
ffffffff802058c2:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802058c9:	c1 e8 18             	shr    eax,0x18
ffffffff802058cc:	89 c6                	mov    esi,eax
ffffffff802058ce:	31 c0                	xor    eax,eax
ffffffff802058d0:	e8 8b 25 00 00       	call   ffffffff80207e60 <printf>
ffffffff802058d5:	e9 2a ff ff ff       	jmp    ffffffff80205804 <launch_APs+0x74>
ffffffff802058da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff802058e0 <is_smp_active>:
ffffffff802058e0:	0f b6 05 be 72 00 00 	movzx  eax,BYTE PTR [rip+0x72be]        # ffffffff8020cba5 <smp_status>
ffffffff802058e7:	c3                   	ret    
ffffffff802058e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802058ef:	00 

ffffffff802058f0 <enable_ints>:
ffffffff802058f0:	fb                   	sti    
ffffffff802058f1:	c3                   	ret    
ffffffff802058f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802058f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802058fd:	00 00 00 

ffffffff80205900 <disable_ints>:
ffffffff80205900:	fa                   	cli    
ffffffff80205901:	c3                   	ret    
ffffffff80205902:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80205906:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020590d:	00 00 00 

ffffffff80205910 <halt>:
ffffffff80205910:	f4                   	hlt    
ffffffff80205911:	eb fd                	jmp    ffffffff80205910 <halt>
ffffffff80205913:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80205916:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020591d:	00 00 00 

ffffffff80205920 <enable_mapping>:
ffffffff80205920:	48 89 f8             	mov    rax,rdi
ffffffff80205923:	0f 22 d8             	mov    cr3,rax
ffffffff80205926:	c3                   	ret    
ffffffff80205927:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020592e:	00 00 

ffffffff80205930 <get_current_mapping>:
ffffffff80205930:	0f 20 d8             	mov    rax,cr3
ffffffff80205933:	c3                   	ret    
ffffffff80205934:	66 90                	xchg   ax,ax
ffffffff80205936:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020593d:	00 00 00 

ffffffff80205940 <bootstrap_arch>:
ffffffff80205940:	48 be fa 08 04 95 d2 	movabs rsi,0x506461d2950408fa
ffffffff80205947:	61 64 50 
ffffffff8020594a:	41 55                	push   r13
ffffffff8020594c:	41 54                	push   r12
ffffffff8020594e:	55                   	push   rbp
ffffffff8020594f:	48 89 fd             	mov    rbp,rdi
ffffffff80205952:	53                   	push   rbx
ffffffff80205953:	48 83 ec 08          	sub    rsp,0x8
ffffffff80205957:	e8 94 aa ff ff       	call   ffffffff802003f0 <stivale2_get_tag>
ffffffff8020595c:	48 89 c3             	mov    rbx,rax
ffffffff8020595f:	31 c0                	xor    eax,eax
ffffffff80205961:	e8 da 06 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205966:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020596d:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205972:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80205979:	e8 72 b2 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020597e:	31 c0                	xor    eax,eax
ffffffff80205980:	e8 5b ff ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205985:	84 c0                	test   al,al
ffffffff80205987:	0f 85 ae 05 00 00    	jne    ffffffff80205f3b <bootstrap_arch+0x5fb>
ffffffff8020598d:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205994:	ba 34 00 00 00       	mov    edx,0x34
ffffffff80205999:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff802059a0:	31 c0                	xor    eax,eax
ffffffff802059a2:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802059a9:	e8 b2 24 00 00       	call   ffffffff80207e60 <printf>
ffffffff802059ae:	31 c0                	xor    eax,eax
ffffffff802059b0:	48 c7 c7 14 9d 20 80 	mov    rdi,0xffffffff80209d14
ffffffff802059b7:	e8 a4 24 00 00       	call   ffffffff80207e60 <printf>
ffffffff802059bc:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802059c3:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802059c8:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802059cf:	e8 1c b2 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802059d4:	31 c0                	xor    eax,eax
ffffffff802059d6:	e8 85 06 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff802059db:	31 c0                	xor    eax,eax
ffffffff802059dd:	e8 5e 06 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff802059e2:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802059e9:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802059ee:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802059f5:	e8 f6 b1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802059fa:	31 c0                	xor    eax,eax
ffffffff802059fc:	e8 df fe ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205a01:	84 c0                	test   al,al
ffffffff80205a03:	0f 85 a2 05 00 00    	jne    ffffffff80205fab <bootstrap_arch+0x66b>
ffffffff80205a09:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205a10:	ba 35 00 00 00       	mov    edx,0x35
ffffffff80205a15:	31 c0                	xor    eax,eax
ffffffff80205a17:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205a1e:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205a25:	e8 36 24 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205a2a:	31 c0                	xor    eax,eax
ffffffff80205a2c:	48 89 ee             	mov    rsi,rbp
ffffffff80205a2f:	48 c7 c7 29 9d 20 80 	mov    rdi,0xffffffff80209d29
ffffffff80205a36:	e8 25 24 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205a3b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205a42:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205a47:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205a4e:	e8 9d b1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205a53:	31 c0                	xor    eax,eax
ffffffff80205a55:	e8 06 06 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205a5a:	31 c0                	xor    eax,eax
ffffffff80205a5c:	e8 df 05 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205a61:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205a68:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205a6d:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80205a74:	e8 77 b1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205a79:	31 c0                	xor    eax,eax
ffffffff80205a7b:	e8 60 fe ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205a80:	84 c0                	test   al,al
ffffffff80205a82:	0f 85 07 05 00 00    	jne    ffffffff80205f8f <bootstrap_arch+0x64f>
ffffffff80205a88:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205a8f:	31 c0                	xor    eax,eax
ffffffff80205a91:	ba 36 00 00 00       	mov    edx,0x36
ffffffff80205a96:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205a9d:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205aa4:	e8 b7 23 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205aa9:	0f b7 53 1a          	movzx  edx,WORD PTR [rbx+0x1a]
ffffffff80205aad:	0f b7 73 18          	movzx  esi,WORD PTR [rbx+0x18]
ffffffff80205ab1:	31 c0                	xor    eax,eax
ffffffff80205ab3:	48 c7 c7 78 9d 20 80 	mov    rdi,0xffffffff80209d78
ffffffff80205aba:	e8 a1 23 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205abf:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205ac6:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205acb:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205ad2:	e8 19 b1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205ad7:	31 c0                	xor    eax,eax
ffffffff80205ad9:	e8 82 05 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205ade:	31 c0                	xor    eax,eax
ffffffff80205ae0:	e8 5b 05 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205ae5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205aec:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205af1:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80205af8:	e8 f3 b0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205afd:	31 c0                	xor    eax,eax
ffffffff80205aff:	e8 dc fd ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205b04:	84 c0                	test   al,al
ffffffff80205b06:	0f 85 67 04 00 00    	jne    ffffffff80205f73 <bootstrap_arch+0x633>
ffffffff80205b0c:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205b13:	ba 37 00 00 00       	mov    edx,0x37
ffffffff80205b18:	31 c0                	xor    eax,eax
ffffffff80205b1a:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205b21:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205b28:	e8 33 23 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205b2d:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
ffffffff80205b31:	31 c0                	xor    eax,eax
ffffffff80205b33:	48 c7 c7 40 9d 20 80 	mov    rdi,0xffffffff80209d40
ffffffff80205b3a:	e8 21 23 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205b3f:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205b46:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205b4b:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205b52:	e8 99 b0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205b57:	31 c0                	xor    eax,eax
ffffffff80205b59:	e8 02 05 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205b5e:	48 89 ef             	mov    rdi,rbp
ffffffff80205b61:	48 be 07 de 12 86 9e 	movabs rsi,0x2187f79e8612de07
ffffffff80205b68:	f7 87 21 
ffffffff80205b6b:	e8 80 a8 ff ff       	call   ffffffff802003f0 <stivale2_get_tag>
ffffffff80205b70:	49 89 c5             	mov    r13,rax
ffffffff80205b73:	31 c0                	xor    eax,eax
ffffffff80205b75:	e8 c6 04 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205b7a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205b81:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205b86:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80205b8d:	e8 5e b0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205b92:	31 c0                	xor    eax,eax
ffffffff80205b94:	e8 47 fd ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205b99:	84 c0                	test   al,al
ffffffff80205b9b:	0f 85 b6 03 00 00    	jne    ffffffff80205f57 <bootstrap_arch+0x617>
ffffffff80205ba1:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205ba8:	31 c0                	xor    eax,eax
ffffffff80205baa:	ba 3a 00 00 00       	mov    edx,0x3a
ffffffff80205baf:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205bb6:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205bbd:	e8 9e 22 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205bc2:	49 8b 55 10          	mov    rdx,QWORD PTR [r13+0x10]
ffffffff80205bc6:	31 c0                	xor    eax,eax
ffffffff80205bc8:	4c 89 ee             	mov    rsi,r13
ffffffff80205bcb:	48 c7 c7 98 9d 20 80 	mov    rdi,0xffffffff80209d98
ffffffff80205bd2:	e8 89 22 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205bd7:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205bde:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205be3:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205bea:	e8 01 b0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205bef:	31 c0                	xor    eax,eax
ffffffff80205bf1:	e8 6a 04 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205bf6:	48 89 ef             	mov    rdi,rbp
ffffffff80205bf9:	48 be 25 70 64 39 63 	movabs rsi,0x34d1d96339647025
ffffffff80205c00:	d9 d1 34 
ffffffff80205c03:	e8 e8 a7 ff ff       	call   ffffffff802003f0 <stivale2_get_tag>
ffffffff80205c08:	48 83 b8 20 00 00 80 	cmp    QWORD PTR [rax-0x7fffffe0],0x0
ffffffff80205c0f:	00 
ffffffff80205c10:	4c 8d a0 00 00 00 80 	lea    r12,[rax-0x80000000]
ffffffff80205c17:	b8 00 00 00 00       	mov    eax,0x0
ffffffff80205c1c:	0f 84 8e 02 00 00    	je     ffffffff80205eb0 <bootstrap_arch+0x570>
ffffffff80205c22:	e8 19 04 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205c27:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205c2e:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205c33:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80205c3a:	e8 b1 af ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205c3f:	31 c0                	xor    eax,eax
ffffffff80205c41:	e8 9a fc ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205c46:	84 c0                	test   al,al
ffffffff80205c48:	0f 85 95 03 00 00    	jne    ffffffff80205fe3 <bootstrap_arch+0x6a3>
ffffffff80205c4e:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205c55:	31 c0                	xor    eax,eax
ffffffff80205c57:	ba 40 00 00 00       	mov    edx,0x40
ffffffff80205c5c:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205c63:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205c6a:	e8 f1 21 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205c6f:	49 8b 74 24 20       	mov    rsi,QWORD PTR [r12+0x20]
ffffffff80205c74:	31 c0                	xor    eax,eax
ffffffff80205c76:	4c 89 e2             	mov    rdx,r12
ffffffff80205c79:	48 c7 c7 53 9d 20 80 	mov    rdi,0xffffffff80209d53
ffffffff80205c80:	e8 db 21 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205c85:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205c8c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205c91:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205c98:	e8 53 af ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205c9d:	31 c0                	xor    eax,eax
ffffffff80205c9f:	e8 bc 03 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205ca4:	48 89 ef             	mov    rdi,rbp
ffffffff80205ca7:	48 be 78 5e 37 0a 93 	movabs rsi,0x9e1786930a375e78
ffffffff80205cae:	86 17 9e 
ffffffff80205cb1:	e8 3a a7 ff ff       	call   ffffffff802003f0 <stivale2_get_tag>
ffffffff80205cb6:	48 8b 78 10          	mov    rdi,QWORD PTR [rax+0x10]
ffffffff80205cba:	e8 41 c7 ff ff       	call   ffffffff80202400 <parse_RSDP>
ffffffff80205cbf:	31 c0                	xor    eax,eax
ffffffff80205cc1:	e8 3a a6 ff ff       	call   ffffffff80200300 <setup_gdt>
ffffffff80205cc6:	e8 15 bc ff ff       	call   ffffffff802018e0 <setup_idt>
ffffffff80205ccb:	31 c0                	xor    eax,eax
ffffffff80205ccd:	e8 be b8 ff ff       	call   ffffffff80201590 <attach_kernel_exceptions>
ffffffff80205cd2:	31 c0                	xor    eax,eax
ffffffff80205cd4:	e8 f7 ce ff ff       	call   ffffffff80202bd0 <get_cpu_info>
ffffffff80205cd9:	4c 89 ef             	mov    rdi,r13
ffffffff80205cdc:	45 31 ed             	xor    r13d,r13d
ffffffff80205cdf:	e8 9c f4 ff ff       	call   ffffffff80205180 <set_memory_map>
ffffffff80205ce4:	bf 00 10 00 00       	mov    edi,0x1000
ffffffff80205ce9:	31 c0                	xor    eax,eax
ffffffff80205ceb:	e8 50 f5 ff ff       	call   ffffffff80205240 <get_size_in_bits>
ffffffff80205cf0:	48 89 c5             	mov    rbp,rax
ffffffff80205cf3:	31 c0                	xor    eax,eax
ffffffff80205cf5:	e8 36 f0 ff ff       	call   ffffffff80204d30 <get_frame>
ffffffff80205cfa:	48 c1 ed 0c          	shr    rbp,0xc
ffffffff80205cfe:	48 89 c3             	mov    rbx,rax
ffffffff80205d01:	74 10                	je     ffffffff80205d13 <bootstrap_arch+0x3d3>
ffffffff80205d03:	31 c0                	xor    eax,eax
ffffffff80205d05:	49 83 c5 01          	add    r13,0x1
ffffffff80205d09:	e8 22 f0 ff ff       	call   ffffffff80204d30 <get_frame>
ffffffff80205d0e:	49 39 ed             	cmp    r13,rbp
ffffffff80205d11:	75 f0                	jne    ffffffff80205d03 <bootstrap_arch+0x3c3>
ffffffff80205d13:	48 8d bb 00 00 00 80 	lea    rdi,[rbx-0x80000000]
ffffffff80205d1a:	e8 b1 f2 ff ff       	call   ffffffff80204fd0 <init_pmm>
ffffffff80205d1f:	31 c0                	xor    eax,eax
ffffffff80205d21:	e8 7a d9 ff ff       	call   ffffffff802036a0 <init_vmm>
ffffffff80205d26:	31 c0                	xor    eax,eax
ffffffff80205d28:	e8 23 e3 ff ff       	call   ffffffff80204050 <create_page_directory>
ffffffff80205d2d:	0f 22 d8             	mov    cr3,rax
ffffffff80205d30:	31 c0                	xor    eax,eax
ffffffff80205d32:	e8 09 03 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205d37:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205d3e:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205d43:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80205d4a:	e8 a1 ae ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205d4f:	31 c0                	xor    eax,eax
ffffffff80205d51:	e8 8a fb ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205d56:	84 c0                	test   al,al
ffffffff80205d58:	0f 85 a1 02 00 00    	jne    ffffffff80205fff <bootstrap_arch+0x6bf>
ffffffff80205d5e:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205d65:	ba 5a 00 00 00       	mov    edx,0x5a
ffffffff80205d6a:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205d71:	31 c0                	xor    eax,eax
ffffffff80205d73:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205d7a:	e8 e1 20 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205d7f:	31 c0                	xor    eax,eax
ffffffff80205d81:	48 c7 c7 70 9c 20 80 	mov    rdi,0xffffffff80209c70
ffffffff80205d88:	e8 d3 20 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205d8d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205d94:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205d99:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205da0:	e8 4b ae ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205da5:	31 c0                	xor    eax,eax
ffffffff80205da7:	e8 b4 02 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205dac:	31 c0                	xor    eax,eax
ffffffff80205dae:	e8 fd e2 ff ff       	call   ffffffff802040b0 <setup_context_frame>
ffffffff80205db3:	e8 db a4 ff ff       	call   ffffffff80200293 <enable_sse>
ffffffff80205db8:	31 c0                	xor    eax,eax
ffffffff80205dba:	e8 d1 ca ff ff       	call   ffffffff80202890 <parse_RSDT>
ffffffff80205dbf:	31 c0                	xor    eax,eax
ffffffff80205dc1:	e8 8a a9 ff ff       	call   ffffffff80200750 <enable_APIC>
ffffffff80205dc6:	31 c0                	xor    eax,eax
ffffffff80205dc8:	e8 93 aa ff ff       	call   ffffffff80200860 <init_APIC_interrupt>
ffffffff80205dcd:	31 c0                	xor    eax,eax
ffffffff80205dcf:	e8 fc a9 ff ff       	call   ffffffff802007d0 <init_APIC_timer>
ffffffff80205dd4:	fb                   	sti    
ffffffff80205dd5:	48 c7 c6 c8 cb 20 80 	mov    rsi,0xffffffff8020cbc8
ffffffff80205ddc:	4c 89 e7             	mov    rdi,r12
ffffffff80205ddf:	e8 ac f9 ff ff       	call   ffffffff80205790 <launch_APs>
ffffffff80205de4:	31 c0                	xor    eax,eax
ffffffff80205de6:	e8 a5 f8 ff ff       	call   ffffffff80205690 <get_booted_cpus_count>
ffffffff80205deb:	0f b6 c0             	movzx  eax,al
ffffffff80205dee:	49 3b 44 24 20       	cmp    rax,QWORD PTR [r12+0x20]
ffffffff80205df3:	75 ef                	jne    ffffffff80205de4 <bootstrap_arch+0x4a4>
ffffffff80205df5:	31 c0                	xor    eax,eax
ffffffff80205df7:	e8 44 02 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205dfc:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205e03:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205e08:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80205e0f:	e8 dc ad ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205e14:	31 c0                	xor    eax,eax
ffffffff80205e16:	e8 c5 fa ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205e1b:	84 c0                	test   al,al
ffffffff80205e1d:	0f 85 f8 01 00 00    	jne    ffffffff8020601b <bootstrap_arch+0x6db>
ffffffff80205e23:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205e2a:	ba 6c 00 00 00       	mov    edx,0x6c
ffffffff80205e2f:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205e36:	31 c0                	xor    eax,eax
ffffffff80205e38:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205e3f:	e8 1c 20 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205e44:	31 c0                	xor    eax,eax
ffffffff80205e46:	e8 45 f8 ff ff       	call   ffffffff80205690 <get_booted_cpus_count>
ffffffff80205e4b:	48 c7 c7 c0 9d 20 80 	mov    rdi,0xffffffff80209dc0
ffffffff80205e52:	0f b6 f0             	movzx  esi,al
ffffffff80205e55:	31 c0                	xor    eax,eax
ffffffff80205e57:	e8 04 20 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205e5c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205e63:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205e68:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205e6f:	e8 7c ad ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205e74:	31 c0                	xor    eax,eax
ffffffff80205e76:	e8 e5 01 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205e7b:	49 8b 44 24 20       	mov    rax,QWORD PTR [r12+0x20]
ffffffff80205e80:	88 05 3a 6d 00 00    	mov    BYTE PTR [rip+0x6d3a],al        # ffffffff8020cbc0 <interface>
ffffffff80205e86:	31 c0                	xor    eax,eax
ffffffff80205e88:	48 c7 04 c5 c8 cb 20 	mov    QWORD PTR [rax*8-0x7fdf3438],0x1
ffffffff80205e8f:	80 01 00 00 00 
ffffffff80205e94:	48 83 c0 01          	add    rax,0x1
ffffffff80205e98:	48 83 f8 20          	cmp    rax,0x20
ffffffff80205e9c:	75 ea                	jne    ffffffff80205e88 <bootstrap_arch+0x548>
ffffffff80205e9e:	48 83 c4 08          	add    rsp,0x8
ffffffff80205ea2:	48 c7 c0 c0 cb 20 80 	mov    rax,0xffffffff8020cbc0
ffffffff80205ea9:	5b                   	pop    rbx
ffffffff80205eaa:	5d                   	pop    rbp
ffffffff80205eab:	41 5c                	pop    r12
ffffffff80205ead:	41 5d                	pop    r13
ffffffff80205eaf:	c3                   	ret    
ffffffff80205eb0:	e8 8b 01 00 00       	call   ffffffff80206040 <get_lock_print>
ffffffff80205eb5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205ebc:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205ec1:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80205ec8:	e8 23 ad ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205ecd:	31 c0                	xor    eax,eax
ffffffff80205ecf:	e8 0c fa ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80205ed4:	84 c0                	test   al,al
ffffffff80205ed6:	0f 85 eb 00 00 00    	jne    ffffffff80205fc7 <bootstrap_arch+0x687>
ffffffff80205edc:	48 c7 c1 f0 9d 20 80 	mov    rcx,0xffffffff80209df0
ffffffff80205ee3:	31 c0                	xor    eax,eax
ffffffff80205ee5:	ba 40 00 00 00       	mov    edx,0x40
ffffffff80205eea:	48 c7 c6 fd 9c 20 80 	mov    rsi,0xffffffff80209cfd
ffffffff80205ef1:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80205ef8:	e8 63 1f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205efd:	49 8b 74 24 20       	mov    rsi,QWORD PTR [r12+0x20]
ffffffff80205f02:	4c 89 e2             	mov    rdx,r12
ffffffff80205f05:	31 c0                	xor    eax,eax
ffffffff80205f07:	48 c7 c7 53 9d 20 80 	mov    rdi,0xffffffff80209d53
ffffffff80205f0e:	e8 4d 1f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205f13:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80205f1a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80205f1f:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80205f26:	e8 c5 ac ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80205f2b:	31 c0                	xor    eax,eax
ffffffff80205f2d:	e8 2e 01 00 00       	call   ffffffff80206060 <set_lock_print>
ffffffff80205f32:	fa                   	cli    
ffffffff80205f33:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80205f38:	f4                   	hlt    
ffffffff80205f39:	eb fd                	jmp    ffffffff80205f38 <bootstrap_arch+0x5f8>
ffffffff80205f3b:	31 c0                	xor    eax,eax
ffffffff80205f3d:	e8 2e f8 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80205f42:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205f49:	89 c6                	mov    esi,eax
ffffffff80205f4b:	31 c0                	xor    eax,eax
ffffffff80205f4d:	e8 0e 1f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205f52:	e9 36 fa ff ff       	jmp    ffffffff8020598d <bootstrap_arch+0x4d>
ffffffff80205f57:	31 c0                	xor    eax,eax
ffffffff80205f59:	e8 12 f8 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80205f5e:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205f65:	89 c6                	mov    esi,eax
ffffffff80205f67:	31 c0                	xor    eax,eax
ffffffff80205f69:	e8 f2 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205f6e:	e9 2e fc ff ff       	jmp    ffffffff80205ba1 <bootstrap_arch+0x261>
ffffffff80205f73:	31 c0                	xor    eax,eax
ffffffff80205f75:	e8 f6 f7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80205f7a:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205f81:	89 c6                	mov    esi,eax
ffffffff80205f83:	31 c0                	xor    eax,eax
ffffffff80205f85:	e8 d6 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205f8a:	e9 7d fb ff ff       	jmp    ffffffff80205b0c <bootstrap_arch+0x1cc>
ffffffff80205f8f:	31 c0                	xor    eax,eax
ffffffff80205f91:	e8 da f7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80205f96:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205f9d:	89 c6                	mov    esi,eax
ffffffff80205f9f:	31 c0                	xor    eax,eax
ffffffff80205fa1:	e8 ba 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205fa6:	e9 dd fa ff ff       	jmp    ffffffff80205a88 <bootstrap_arch+0x148>
ffffffff80205fab:	31 c0                	xor    eax,eax
ffffffff80205fad:	e8 be f7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80205fb2:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205fb9:	89 c6                	mov    esi,eax
ffffffff80205fbb:	31 c0                	xor    eax,eax
ffffffff80205fbd:	e8 9e 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205fc2:	e9 42 fa ff ff       	jmp    ffffffff80205a09 <bootstrap_arch+0xc9>
ffffffff80205fc7:	31 c0                	xor    eax,eax
ffffffff80205fc9:	e8 a2 f7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80205fce:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205fd5:	89 c6                	mov    esi,eax
ffffffff80205fd7:	31 c0                	xor    eax,eax
ffffffff80205fd9:	e8 82 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205fde:	e9 f9 fe ff ff       	jmp    ffffffff80205edc <bootstrap_arch+0x59c>
ffffffff80205fe3:	31 c0                	xor    eax,eax
ffffffff80205fe5:	e8 86 f7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80205fea:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80205ff1:	89 c6                	mov    esi,eax
ffffffff80205ff3:	31 c0                	xor    eax,eax
ffffffff80205ff5:	e8 66 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80205ffa:	e9 4f fc ff ff       	jmp    ffffffff80205c4e <bootstrap_arch+0x30e>
ffffffff80205fff:	31 c0                	xor    eax,eax
ffffffff80206001:	e8 6a f7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206006:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020600d:	89 c6                	mov    esi,eax
ffffffff8020600f:	31 c0                	xor    eax,eax
ffffffff80206011:	e8 4a 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206016:	e9 43 fd ff ff       	jmp    ffffffff80205d5e <bootstrap_arch+0x41e>
ffffffff8020601b:	31 c0                	xor    eax,eax
ffffffff8020601d:	e8 4e f7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206022:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206029:	89 c6                	mov    esi,eax
ffffffff8020602b:	31 c0                	xor    eax,eax
ffffffff8020602d:	e8 2e 1e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206032:	e9 ec fd ff ff       	jmp    ffffffff80205e23 <bootstrap_arch+0x4e3>
ffffffff80206037:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020603e:	00 00 

ffffffff80206040 <get_lock_print>:
ffffffff80206040:	31 c9                	xor    ecx,ecx
ffffffff80206042:	ba 01 00 00 00       	mov    edx,0x1
ffffffff80206047:	89 c8                	mov    eax,ecx
ffffffff80206049:	66 f0 0f b1 15 b2 97 	lock cmpxchg WORD PTR [rip+0x97b2],dx        # ffffffff8020f804 <_lock_print>
ffffffff80206050:	00 00 
ffffffff80206052:	75 f3                	jne    ffffffff80206047 <get_lock_print+0x7>
ffffffff80206054:	0f ae f0             	mfence 
ffffffff80206057:	c3                   	ret    
ffffffff80206058:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020605f:	00 

ffffffff80206060 <set_lock_print>:
ffffffff80206060:	0f ae f0             	mfence 
ffffffff80206063:	66 f0 83 2d 98 97 00 	lock sub WORD PTR [rip+0x9798],0x1        # ffffffff8020f804 <_lock_print>
ffffffff8020606a:	00 01 
ffffffff8020606c:	c3                   	ret    
ffffffff8020606d:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80206070 <schedule_next>:
ffffffff80206070:	c3                   	ret    
ffffffff80206071:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80206076:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020607d:	00 00 00 

ffffffff80206080 <init_scheduler>:
ffffffff80206080:	48 c7 c6 70 60 20 80 	mov    rsi,0xffffffff80206070
ffffffff80206087:	bf 1f 00 00 00       	mov    edi,0x1f
ffffffff8020608c:	e9 5f c3 ff ff       	jmp    ffffffff802023f0 <attach_isr>
ffffffff80206091:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80206098:	00 00 00 
ffffffff8020609b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff802060a0 <enable_tasking>:
ffffffff802060a0:	48 c7 c6 50 62 20 80 	mov    rsi,0xffffffff80206250
ffffffff802060a7:	bf 81 00 00 00       	mov    edi,0x81
ffffffff802060ac:	e9 3f c3 ff ff       	jmp    ffffffff802023f0 <attach_isr>
ffffffff802060b1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802060b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802060bd:	00 00 00 

ffffffff802060c0 <switch_task_stackframe>:
ffffffff802060c0:	55                   	push   rbp
ffffffff802060c1:	31 c0                	xor    eax,eax
ffffffff802060c3:	48 89 f5             	mov    rbp,rsi
ffffffff802060c6:	53                   	push   rbx
ffffffff802060c7:	48 89 fb             	mov    rbx,rdi
ffffffff802060ca:	48 83 ec 08          	sub    rsp,0x8
ffffffff802060ce:	e8 6d ff ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802060d3:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802060da:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802060df:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802060e6:	e8 05 ab ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802060eb:	31 c0                	xor    eax,eax
ffffffff802060ed:	e8 ee f7 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802060f2:	84 c0                	test   al,al
ffffffff802060f4:	0f 85 16 01 00 00    	jne    ffffffff80206210 <switch_task_stackframe+0x150>
ffffffff802060fa:	48 c7 c1 70 a0 20 80 	mov    rcx,0xffffffff8020a070
ffffffff80206101:	ba 19 00 00 00       	mov    edx,0x19
ffffffff80206106:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff8020610d:	31 c0                	xor    eax,eax
ffffffff8020610f:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206116:	e8 45 1d 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020611b:	31 c0                	xor    eax,eax
ffffffff8020611d:	48 c7 c7 1c 9e 20 80 	mov    rdi,0xffffffff80209e1c
ffffffff80206124:	e8 37 1d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206129:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206130:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206135:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020613c:	e8 af aa ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206141:	31 c0                	xor    eax,eax
ffffffff80206143:	e8 18 ff ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206148:	31 c0                	xor    eax,eax
ffffffff8020614a:	e8 f1 fe ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020614f:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206156:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020615b:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80206162:	e8 89 aa ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206167:	31 c0                	xor    eax,eax
ffffffff80206169:	e8 72 f7 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020616e:	84 c0                	test   al,al
ffffffff80206170:	0f 85 ba 00 00 00    	jne    ffffffff80206230 <switch_task_stackframe+0x170>
ffffffff80206176:	48 c7 c1 70 a0 20 80 	mov    rcx,0xffffffff8020a070
ffffffff8020617d:	ba 1a 00 00 00       	mov    edx,0x1a
ffffffff80206182:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206189:	31 c0                	xor    eax,eax
ffffffff8020618b:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206192:	e8 c9 1c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206197:	48 8b 95 88 00 00 00 	mov    rdx,QWORD PTR [rbp+0x88]
ffffffff8020619e:	48 8b b3 88 00 00 00 	mov    rsi,QWORD PTR [rbx+0x88]
ffffffff802061a5:	31 c0                	xor    eax,eax
ffffffff802061a7:	48 c7 c7 33 9e 20 80 	mov    rdi,0xffffffff80209e33
ffffffff802061ae:	e8 ad 1c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802061b3:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802061ba:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802061bf:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802061c6:	e8 25 aa ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802061cb:	31 c0                	xor    eax,eax
ffffffff802061cd:	e8 8e fe ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff802061d2:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
ffffffff802061d6:	48 8d 7b 08          	lea    rdi,[rbx+0x8]
ffffffff802061da:	48 89 ee             	mov    rsi,rbp
ffffffff802061dd:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
ffffffff802061e1:	48 89 03             	mov    QWORD PTR [rbx],rax
ffffffff802061e4:	48 8b 95 a2 00 00 00 	mov    rdx,QWORD PTR [rbp+0xa2]
ffffffff802061eb:	48 89 93 a2 00 00 00 	mov    QWORD PTR [rbx+0xa2],rdx
ffffffff802061f2:	48 29 fb             	sub    rbx,rdi
ffffffff802061f5:	48 29 de             	sub    rsi,rbx
ffffffff802061f8:	81 c3 aa 00 00 00    	add    ebx,0xaa
ffffffff802061fe:	c1 eb 03             	shr    ebx,0x3
ffffffff80206201:	89 d9                	mov    ecx,ebx
ffffffff80206203:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
ffffffff80206206:	48 83 c4 08          	add    rsp,0x8
ffffffff8020620a:	5b                   	pop    rbx
ffffffff8020620b:	5d                   	pop    rbp
ffffffff8020620c:	c3                   	ret    
ffffffff8020620d:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80206210:	31 c0                	xor    eax,eax
ffffffff80206212:	e8 59 f5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206217:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020621e:	89 c6                	mov    esi,eax
ffffffff80206220:	31 c0                	xor    eax,eax
ffffffff80206222:	e8 39 1c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206227:	e9 ce fe ff ff       	jmp    ffffffff802060fa <switch_task_stackframe+0x3a>
ffffffff8020622c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80206230:	31 c0                	xor    eax,eax
ffffffff80206232:	e8 39 f5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206237:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020623e:	89 c6                	mov    esi,eax
ffffffff80206240:	31 c0                	xor    eax,eax
ffffffff80206242:	e8 19 1c 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206247:	e9 2a ff ff ff       	jmp    ffffffff80206176 <switch_task_stackframe+0xb6>
ffffffff8020624c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80206250 <switch_task_from_interrupt>:
ffffffff80206250:	55                   	push   rbp
ffffffff80206251:	31 c0                	xor    eax,eax
ffffffff80206253:	48 89 fd             	mov    rbp,rdi
ffffffff80206256:	53                   	push   rbx
ffffffff80206257:	48 83 ec 08          	sub    rsp,0x8
ffffffff8020625b:	e8 10 f5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206260:	89 c0                	mov    eax,eax
ffffffff80206262:	48 8b 1c c5 e0 cc 20 	mov    rbx,QWORD PTR [rax*8-0x7fdf3320]
ffffffff80206269:	80 
ffffffff8020626a:	31 c0                	xor    eax,eax
ffffffff8020626c:	48 85 db             	test   rbx,rbx
ffffffff8020626f:	0f 84 7b 01 00 00    	je     ffffffff802063f0 <switch_task_from_interrupt+0x1a0>
ffffffff80206275:	e8 c6 fd ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020627a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206281:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206286:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff8020628d:	e8 5e a9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206292:	31 c0                	xor    eax,eax
ffffffff80206294:	e8 47 f6 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206299:	84 c0                	test   al,al
ffffffff8020629b:	0f 85 0f 01 00 00    	jne    ffffffff802063b0 <switch_task_from_interrupt+0x160>
ffffffff802062a1:	48 c7 c1 10 a0 20 80 	mov    rcx,0xffffffff8020a010
ffffffff802062a8:	ba 39 00 00 00       	mov    edx,0x39
ffffffff802062ad:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff802062b4:	31 c0                	xor    eax,eax
ffffffff802062b6:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802062bd:	e8 9e 1b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802062c2:	48 c7 c7 08 9f 20 80 	mov    rdi,0xffffffff80209f08
ffffffff802062c9:	31 c0                	xor    eax,eax
ffffffff802062cb:	e8 90 1b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802062d0:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802062d7:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802062dc:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802062e3:	e8 08 a9 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802062e8:	31 c0                	xor    eax,eax
ffffffff802062ea:	e8 71 fd ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff802062ef:	48 bf 00 f2 ff ff ff 	movabs rdi,0x7ffffffff200
ffffffff802062f6:	7f 00 00 
ffffffff802062f9:	b9 15 00 00 00       	mov    ecx,0x15
ffffffff802062fe:	48 89 ee             	mov    rsi,rbp
ffffffff80206301:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
ffffffff80206304:	0f b7 06             	movzx  eax,WORD PTR [rsi]
ffffffff80206307:	66 89 07             	mov    WORD PTR [rdi],ax
ffffffff8020630a:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
ffffffff8020630d:	e8 0e f6 ff ff       	call   ffffffff80205920 <enable_mapping>
ffffffff80206312:	31 c0                	xor    eax,eax
ffffffff80206314:	e8 27 fd ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206319:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206320:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206325:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff8020632c:	e8 bf a8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206331:	31 c0                	xor    eax,eax
ffffffff80206333:	e8 a8 f5 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206338:	84 c0                	test   al,al
ffffffff8020633a:	0f 85 90 00 00 00    	jne    ffffffff802063d0 <switch_task_from_interrupt+0x180>
ffffffff80206340:	48 c7 c1 30 a0 20 80 	mov    rcx,0xffffffff8020a030
ffffffff80206347:	ba 33 00 00 00       	mov    edx,0x33
ffffffff8020634c:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206353:	31 c0                	xor    eax,eax
ffffffff80206355:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020635c:	e8 ff 1a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206361:	48 c7 c7 30 9f 20 80 	mov    rdi,0xffffffff80209f30
ffffffff80206368:	31 c0                	xor    eax,eax
ffffffff8020636a:	48 be 00 f0 ff ff ff 	movabs rsi,0x7ffffffff000
ffffffff80206371:	7f 00 00 
ffffffff80206374:	e8 e7 1a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206379:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206380:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206385:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020638c:	e8 5f a8 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206391:	31 c0                	xor    eax,eax
ffffffff80206393:	e8 c8 fc ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206398:	48 83 c4 08          	add    rsp,0x8
ffffffff8020639c:	48 89 ef             	mov    rdi,rbp
ffffffff8020639f:	48 be 00 f2 ff ff ff 	movabs rsi,0x7ffffffff200
ffffffff802063a6:	7f 00 00 
ffffffff802063a9:	5b                   	pop    rbx
ffffffff802063aa:	5d                   	pop    rbp
ffffffff802063ab:	e9 10 fd ff ff       	jmp    ffffffff802060c0 <switch_task_stackframe>
ffffffff802063b0:	31 c0                	xor    eax,eax
ffffffff802063b2:	e8 b9 f3 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802063b7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802063be:	89 c6                	mov    esi,eax
ffffffff802063c0:	31 c0                	xor    eax,eax
ffffffff802063c2:	e8 99 1a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802063c7:	e9 d5 fe ff ff       	jmp    ffffffff802062a1 <switch_task_from_interrupt+0x51>
ffffffff802063cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802063d0:	31 c0                	xor    eax,eax
ffffffff802063d2:	e8 99 f3 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802063d7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802063de:	89 c6                	mov    esi,eax
ffffffff802063e0:	31 c0                	xor    eax,eax
ffffffff802063e2:	e8 79 1a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802063e7:	e9 54 ff ff ff       	jmp    ffffffff80206340 <switch_task_from_interrupt+0xf0>
ffffffff802063ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802063f0:	e8 4b fc ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802063f5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802063fc:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206401:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80206408:	e8 e3 a7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020640d:	31 c0                	xor    eax,eax
ffffffff8020640f:	e8 cc f4 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206414:	84 c0                	test   al,al
ffffffff80206416:	75 68                	jne    ffffffff80206480 <switch_task_from_interrupt+0x230>
ffffffff80206418:	48 c7 c1 10 a0 20 80 	mov    rcx,0xffffffff8020a010
ffffffff8020641f:	ba 39 00 00 00       	mov    edx,0x39
ffffffff80206424:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff8020642b:	31 c0                	xor    eax,eax
ffffffff8020642d:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206434:	e8 27 1a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206439:	31 c0                	xor    eax,eax
ffffffff8020643b:	48 c7 c7 50 9e 20 80 	mov    rdi,0xffffffff80209e50
ffffffff80206442:	e8 19 1a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206447:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020644e:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206453:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020645a:	e8 91 a7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020645f:	31 c0                	xor    eax,eax
ffffffff80206461:	e8 fa fb ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206466:	31 c0                	xor    eax,eax
ffffffff80206468:	e8 93 f4 ff ff       	call   ffffffff80205900 <disable_ints>
ffffffff8020646d:	31 c0                	xor    eax,eax
ffffffff8020646f:	e8 9c f4 ff ff       	call   ffffffff80205910 <halt>
ffffffff80206474:	e9 76 fe ff ff       	jmp    ffffffff802062ef <switch_task_from_interrupt+0x9f>
ffffffff80206479:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80206480:	31 c0                	xor    eax,eax
ffffffff80206482:	e8 e9 f2 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206487:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020648e:	89 c6                	mov    esi,eax
ffffffff80206490:	31 c0                	xor    eax,eax
ffffffff80206492:	e8 c9 19 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206497:	e9 7c ff ff ff       	jmp    ffffffff80206418 <switch_task_from_interrupt+0x1c8>
ffffffff8020649c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff802064a0 <get_context>:
ffffffff802064a0:	48 b8 00 f0 ff ff ff 	movabs rax,0x7ffffffff000
ffffffff802064a7:	7f 00 00 
ffffffff802064aa:	c3                   	ret    
ffffffff802064ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff802064b0 <switch_task_mapped>:
ffffffff802064b0:	53                   	push   rbx
ffffffff802064b1:	31 c0                	xor    eax,eax
ffffffff802064b3:	48 89 fb             	mov    rbx,rdi
ffffffff802064b6:	e8 85 fb ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802064bb:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802064c2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802064c7:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802064ce:	e8 1d a7 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802064d3:	31 c0                	xor    eax,eax
ffffffff802064d5:	e8 06 f4 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802064da:	84 c0                	test   al,al
ffffffff802064dc:	75 62                	jne    ffffffff80206540 <switch_task_mapped+0x90>
ffffffff802064de:	48 c7 c1 50 a0 20 80 	mov    rcx,0xffffffff8020a050
ffffffff802064e5:	ba 25 00 00 00       	mov    edx,0x25
ffffffff802064ea:	31 c0                	xor    eax,eax
ffffffff802064ec:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff802064f3:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802064fa:	e8 61 19 00 00       	call   ffffffff80207e60 <printf>
ffffffff802064ff:	48 89 de             	mov    rsi,rbx
ffffffff80206502:	31 c0                	xor    eax,eax
ffffffff80206504:	48 c7 c7 6e 9e 20 80 	mov    rdi,0xffffffff80209e6e
ffffffff8020650b:	e8 50 19 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206510:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206517:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020651c:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206523:	e8 c8 a6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206528:	31 c0                	xor    eax,eax
ffffffff8020652a:	e8 31 fb ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff8020652f:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
ffffffff80206532:	e8 e9 f3 ff ff       	call   ffffffff80205920 <enable_mapping>
ffffffff80206537:	cd 81                	int    0x81
ffffffff80206539:	5b                   	pop    rbx
ffffffff8020653a:	c3                   	ret    
ffffffff8020653b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80206540:	31 c0                	xor    eax,eax
ffffffff80206542:	e8 29 f2 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206547:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020654e:	89 c6                	mov    esi,eax
ffffffff80206550:	31 c0                	xor    eax,eax
ffffffff80206552:	e8 09 19 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206557:	eb 85                	jmp    ffffffff802064de <switch_task_mapped+0x2e>
ffffffff80206559:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80206560 <switch_regs_from_interrupt>:
ffffffff80206560:	55                   	push   rbp
ffffffff80206561:	31 c0                	xor    eax,eax
ffffffff80206563:	48 89 fd             	mov    rbp,rdi
ffffffff80206566:	e8 d5 fa ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020656b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206572:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206577:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff8020657e:	e8 6d a6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206583:	31 c0                	xor    eax,eax
ffffffff80206585:	e8 56 f3 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020658a:	84 c0                	test   al,al
ffffffff8020658c:	75 72                	jne    ffffffff80206600 <switch_regs_from_interrupt+0xa0>
ffffffff8020658e:	48 c7 c1 30 a0 20 80 	mov    rcx,0xffffffff8020a030
ffffffff80206595:	ba 33 00 00 00       	mov    edx,0x33
ffffffff8020659a:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff802065a1:	31 c0                	xor    eax,eax
ffffffff802065a3:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802065aa:	e8 b1 18 00 00       	call   ffffffff80207e60 <printf>
ffffffff802065af:	48 c7 c7 30 9f 20 80 	mov    rdi,0xffffffff80209f30
ffffffff802065b6:	31 c0                	xor    eax,eax
ffffffff802065b8:	48 be 00 f0 ff ff ff 	movabs rsi,0x7ffffffff000
ffffffff802065bf:	7f 00 00 
ffffffff802065c2:	e8 99 18 00 00       	call   ffffffff80207e60 <printf>
ffffffff802065c7:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802065ce:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802065d3:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802065da:	e8 11 a6 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802065df:	31 c0                	xor    eax,eax
ffffffff802065e1:	e8 7a fa ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff802065e6:	48 89 ef             	mov    rdi,rbp
ffffffff802065e9:	5d                   	pop    rbp
ffffffff802065ea:	48 be 00 f2 ff ff ff 	movabs rsi,0x7ffffffff200
ffffffff802065f1:	7f 00 00 
ffffffff802065f4:	e9 c7 fa ff ff       	jmp    ffffffff802060c0 <switch_task_stackframe>
ffffffff802065f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80206600:	31 c0                	xor    eax,eax
ffffffff80206602:	e8 69 f1 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206607:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020660e:	89 c6                	mov    esi,eax
ffffffff80206610:	31 c0                	xor    eax,eax
ffffffff80206612:	e8 49 18 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206617:	e9 72 ff ff ff       	jmp    ffffffff8020658e <switch_regs_from_interrupt+0x2e>
ffffffff8020661c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80206620 <enable_preemption>:
ffffffff80206620:	48 83 ec 08          	sub    rsp,0x8
ffffffff80206624:	31 c0                	xor    eax,eax
ffffffff80206626:	e8 15 fa ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020662b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206632:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206637:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff8020663e:	e8 ad a5 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206643:	31 c0                	xor    eax,eax
ffffffff80206645:	e8 96 f2 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020664a:	84 c0                	test   al,al
ffffffff8020664c:	75 5a                	jne    ffffffff802066a8 <enable_preemption+0x88>
ffffffff8020664e:	48 c7 c1 f0 9f 20 80 	mov    rcx,0xffffffff80209ff0
ffffffff80206655:	ba 42 00 00 00       	mov    edx,0x42
ffffffff8020665a:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206661:	31 c0                	xor    eax,eax
ffffffff80206663:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020666a:	e8 f1 17 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020666f:	31 c0                	xor    eax,eax
ffffffff80206671:	48 c7 c7 83 9e 20 80 	mov    rdi,0xffffffff80209e83
ffffffff80206678:	e8 e3 17 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020667d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206684:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206689:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206690:	e8 5b a5 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206695:	31 c0                	xor    eax,eax
ffffffff80206697:	e8 c4 f9 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff8020669c:	fb                   	sti    
ffffffff8020669d:	48 83 c4 08          	add    rsp,0x8
ffffffff802066a1:	c3                   	ret    
ffffffff802066a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff802066a8:	31 c0                	xor    eax,eax
ffffffff802066aa:	e8 c1 f0 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802066af:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802066b6:	89 c6                	mov    esi,eax
ffffffff802066b8:	31 c0                	xor    eax,eax
ffffffff802066ba:	e8 a1 17 00 00       	call   ffffffff80207e60 <printf>
ffffffff802066bf:	eb 8d                	jmp    ffffffff8020664e <enable_preemption+0x2e>
ffffffff802066c1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802066c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802066cd:	00 00 00 

ffffffff802066d0 <disable_preemption>:
ffffffff802066d0:	48 83 ec 08          	sub    rsp,0x8
ffffffff802066d4:	31 c0                	xor    eax,eax
ffffffff802066d6:	e8 65 f9 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802066db:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802066e2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802066e7:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802066ee:	e8 fd a4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802066f3:	31 c0                	xor    eax,eax
ffffffff802066f5:	e8 e6 f1 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802066fa:	84 c0                	test   al,al
ffffffff802066fc:	75 62                	jne    ffffffff80206760 <disable_preemption+0x90>
ffffffff802066fe:	48 c7 c1 d0 9f 20 80 	mov    rcx,0xffffffff80209fd0
ffffffff80206705:	ba 47 00 00 00       	mov    edx,0x47
ffffffff8020670a:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206711:	31 c0                	xor    eax,eax
ffffffff80206713:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020671a:	e8 41 17 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020671f:	48 c7 c7 97 9e 20 80 	mov    rdi,0xffffffff80209e97
ffffffff80206726:	31 c0                	xor    eax,eax
ffffffff80206728:	e8 33 17 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020672d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206734:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206739:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206740:	e8 ab a4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206745:	31 c0                	xor    eax,eax
ffffffff80206747:	e8 14 f9 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff8020674c:	31 c0                	xor    eax,eax
ffffffff8020674e:	48 83 c4 08          	add    rsp,0x8
ffffffff80206752:	e9 a9 f1 ff ff       	jmp    ffffffff80205900 <disable_ints>
ffffffff80206757:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020675e:	00 00 
ffffffff80206760:	31 c0                	xor    eax,eax
ffffffff80206762:	e8 09 f0 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206767:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020676e:	89 c6                	mov    esi,eax
ffffffff80206770:	31 c0                	xor    eax,eax
ffffffff80206772:	e8 e9 16 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206777:	eb 85                	jmp    ffffffff802066fe <disable_preemption+0x2e>
ffffffff80206779:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80206780 <create_task>:
ffffffff80206780:	41 54                	push   r12
ffffffff80206782:	31 c0                	xor    eax,eax
ffffffff80206784:	55                   	push   rbp
ffffffff80206785:	48 83 ec 08          	sub    rsp,0x8
ffffffff80206789:	e8 b2 f8 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020678e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206795:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020679a:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802067a1:	e8 4a a4 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802067a6:	31 c0                	xor    eax,eax
ffffffff802067a8:	e8 33 f1 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802067ad:	84 c0                	test   al,al
ffffffff802067af:	0f 85 0b 02 00 00    	jne    ffffffff802069c0 <create_task+0x240>
ffffffff802067b5:	48 c7 c1 d0 9f 20 80 	mov    rcx,0xffffffff80209fd0
ffffffff802067bc:	ba 47 00 00 00       	mov    edx,0x47
ffffffff802067c1:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff802067c8:	31 c0                	xor    eax,eax
ffffffff802067ca:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802067d1:	e8 8a 16 00 00       	call   ffffffff80207e60 <printf>
ffffffff802067d6:	31 c0                	xor    eax,eax
ffffffff802067d8:	48 c7 c7 97 9e 20 80 	mov    rdi,0xffffffff80209e97
ffffffff802067df:	e8 7c 16 00 00       	call   ffffffff80207e60 <printf>
ffffffff802067e4:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802067eb:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802067f0:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802067f7:	e8 f4 a3 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802067fc:	31 c0                	xor    eax,eax
ffffffff802067fe:	e8 5d f8 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206803:	31 c0                	xor    eax,eax
ffffffff80206805:	e8 f6 f0 ff ff       	call   ffffffff80205900 <disable_ints>
ffffffff8020680a:	31 c0                	xor    eax,eax
ffffffff8020680c:	e8 1f f1 ff ff       	call   ffffffff80205930 <get_current_mapping>
ffffffff80206811:	48 89 c5             	mov    rbp,rax
ffffffff80206814:	31 c0                	xor    eax,eax
ffffffff80206816:	e8 35 d8 ff ff       	call   ffffffff80204050 <create_page_directory>
ffffffff8020681b:	48 89 c7             	mov    rdi,rax
ffffffff8020681e:	49 89 c4             	mov    r12,rax
ffffffff80206821:	e8 fa f0 ff ff       	call   ffffffff80205920 <enable_mapping>
ffffffff80206826:	31 c0                	xor    eax,eax
ffffffff80206828:	e8 e3 9b ff ff       	call   ffffffff80200410 <map_pics>
ffffffff8020682d:	31 c0                	xor    eax,eax
ffffffff8020682f:	e8 0c f8 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206834:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020683b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206840:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80206847:	e8 a4 a3 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020684c:	31 c0                	xor    eax,eax
ffffffff8020684e:	e8 8d f0 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206853:	84 c0                	test   al,al
ffffffff80206855:	0f 85 c5 01 00 00    	jne    ffffffff80206a20 <create_task+0x2a0>
ffffffff8020685b:	48 c7 c1 b8 9f 20 80 	mov    rcx,0xffffffff80209fb8
ffffffff80206862:	ba 53 00 00 00       	mov    edx,0x53
ffffffff80206867:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff8020686e:	31 c0                	xor    eax,eax
ffffffff80206870:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206877:	e8 e4 15 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020687c:	31 c0                	xor    eax,eax
ffffffff8020687e:	48 c7 c7 ac 9e 20 80 	mov    rdi,0xffffffff80209eac
ffffffff80206885:	e8 d6 15 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020688a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206891:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206896:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020689d:	e8 4e a3 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802068a2:	31 c0                	xor    eax,eax
ffffffff802068a4:	e8 b7 f7 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff802068a9:	31 c0                	xor    eax,eax
ffffffff802068ab:	e8 00 d8 ff ff       	call   ffffffff802040b0 <setup_context_frame>
ffffffff802068b0:	48 89 ef             	mov    rdi,rbp
ffffffff802068b3:	e8 68 f0 ff ff       	call   ffffffff80205920 <enable_mapping>
ffffffff802068b8:	31 c0                	xor    eax,eax
ffffffff802068ba:	e8 81 f7 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802068bf:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802068c6:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802068cb:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802068d2:	e8 19 a3 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802068d7:	31 c0                	xor    eax,eax
ffffffff802068d9:	e8 02 f0 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802068de:	84 c0                	test   al,al
ffffffff802068e0:	0f 85 1a 01 00 00    	jne    ffffffff80206a00 <create_task+0x280>
ffffffff802068e6:	48 c7 c1 f0 9f 20 80 	mov    rcx,0xffffffff80209ff0
ffffffff802068ed:	ba 42 00 00 00       	mov    edx,0x42
ffffffff802068f2:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff802068f9:	31 c0                	xor    eax,eax
ffffffff802068fb:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206902:	e8 59 15 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206907:	31 c0                	xor    eax,eax
ffffffff80206909:	48 c7 c7 83 9e 20 80 	mov    rdi,0xffffffff80209e83
ffffffff80206910:	e8 4b 15 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206915:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020691c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206921:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206928:	e8 c3 a2 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020692d:	31 c0                	xor    eax,eax
ffffffff8020692f:	e8 2c f7 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206934:	fb                   	sti    
ffffffff80206935:	31 c0                	xor    eax,eax
ffffffff80206937:	e8 04 f7 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020693c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206943:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206948:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff8020694f:	e8 9c a2 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206954:	31 c0                	xor    eax,eax
ffffffff80206956:	e8 85 ef ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020695b:	84 c0                	test   al,al
ffffffff8020695d:	0f 85 7d 00 00 00    	jne    ffffffff802069e0 <create_task+0x260>
ffffffff80206963:	48 c7 c1 b8 9f 20 80 	mov    rcx,0xffffffff80209fb8
ffffffff8020696a:	ba 57 00 00 00       	mov    edx,0x57
ffffffff8020696f:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206976:	31 c0                	xor    eax,eax
ffffffff80206978:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020697f:	e8 dc 14 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206984:	48 c7 c7 c1 9e 20 80 	mov    rdi,0xffffffff80209ec1
ffffffff8020698b:	31 c0                	xor    eax,eax
ffffffff8020698d:	e8 ce 14 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206992:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206999:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020699e:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802069a5:	e8 46 a2 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802069aa:	31 c0                	xor    eax,eax
ffffffff802069ac:	e8 af f6 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff802069b1:	48 83 c4 08          	add    rsp,0x8
ffffffff802069b5:	4c 89 e0             	mov    rax,r12
ffffffff802069b8:	5d                   	pop    rbp
ffffffff802069b9:	41 5c                	pop    r12
ffffffff802069bb:	c3                   	ret    
ffffffff802069bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802069c0:	31 c0                	xor    eax,eax
ffffffff802069c2:	e8 a9 ed ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802069c7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802069ce:	89 c6                	mov    esi,eax
ffffffff802069d0:	31 c0                	xor    eax,eax
ffffffff802069d2:	e8 89 14 00 00       	call   ffffffff80207e60 <printf>
ffffffff802069d7:	e9 d9 fd ff ff       	jmp    ffffffff802067b5 <create_task+0x35>
ffffffff802069dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802069e0:	31 c0                	xor    eax,eax
ffffffff802069e2:	e8 89 ed ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802069e7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802069ee:	89 c6                	mov    esi,eax
ffffffff802069f0:	31 c0                	xor    eax,eax
ffffffff802069f2:	e8 69 14 00 00       	call   ffffffff80207e60 <printf>
ffffffff802069f7:	e9 67 ff ff ff       	jmp    ffffffff80206963 <create_task+0x1e3>
ffffffff802069fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80206a00:	31 c0                	xor    eax,eax
ffffffff80206a02:	e8 69 ed ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206a07:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206a0e:	89 c6                	mov    esi,eax
ffffffff80206a10:	31 c0                	xor    eax,eax
ffffffff80206a12:	e8 49 14 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206a17:	e9 ca fe ff ff       	jmp    ffffffff802068e6 <create_task+0x166>
ffffffff80206a1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80206a20:	31 c0                	xor    eax,eax
ffffffff80206a22:	e8 49 ed ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206a27:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206a2e:	89 c6                	mov    esi,eax
ffffffff80206a30:	31 c0                	xor    eax,eax
ffffffff80206a32:	e8 29 14 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206a37:	e9 1f fe ff ff       	jmp    ffffffff8020685b <create_task+0xdb>
ffffffff80206a3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80206a40 <register_this_context>:
ffffffff80206a40:	53                   	push   rbx
ffffffff80206a41:	31 c0                	xor    eax,eax
ffffffff80206a43:	e8 f8 f5 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206a48:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206a4f:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206a54:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80206a5b:	e8 90 a1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206a60:	31 c0                	xor    eax,eax
ffffffff80206a62:	e8 79 ee ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206a67:	84 c0                	test   al,al
ffffffff80206a69:	0f 85 61 01 00 00    	jne    ffffffff80206bd0 <register_this_context+0x190>
ffffffff80206a6f:	48 c7 c1 a0 9f 20 80 	mov    rcx,0xffffffff80209fa0
ffffffff80206a76:	ba 5c 00 00 00       	mov    edx,0x5c
ffffffff80206a7b:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206a82:	31 c0                	xor    eax,eax
ffffffff80206a84:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206a8b:	e8 d0 13 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206a90:	31 c0                	xor    eax,eax
ffffffff80206a92:	48 c7 c7 db 9e 20 80 	mov    rdi,0xffffffff80209edb
ffffffff80206a99:	e8 c2 13 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206a9e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206aa5:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206aaa:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206ab1:	e8 3a a1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206ab6:	31 c0                	xor    eax,eax
ffffffff80206ab8:	e8 a3 f5 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206abd:	31 c0                	xor    eax,eax
ffffffff80206abf:	e8 ac ec ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206ac4:	89 c0                	mov    eax,eax
ffffffff80206ac6:	48 8b 1c c5 e0 cc 20 	mov    rbx,QWORD PTR [rax*8-0x7fdf3320]
ffffffff80206acd:	80 
ffffffff80206ace:	31 c0                	xor    eax,eax
ffffffff80206ad0:	e8 6b f5 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206ad5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206adc:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206ae1:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80206ae8:	e8 03 a1 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206aed:	31 c0                	xor    eax,eax
ffffffff80206aef:	e8 ec ed ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206af4:	84 c0                	test   al,al
ffffffff80206af6:	0f 85 14 01 00 00    	jne    ffffffff80206c10 <register_this_context+0x1d0>
ffffffff80206afc:	48 c7 c1 50 a0 20 80 	mov    rcx,0xffffffff8020a050
ffffffff80206b03:	ba 25 00 00 00       	mov    edx,0x25
ffffffff80206b08:	31 c0                	xor    eax,eax
ffffffff80206b0a:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206b11:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206b18:	e8 43 13 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206b1d:	48 89 de             	mov    rsi,rbx
ffffffff80206b20:	31 c0                	xor    eax,eax
ffffffff80206b22:	48 c7 c7 6e 9e 20 80 	mov    rdi,0xffffffff80209e6e
ffffffff80206b29:	e8 32 13 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206b2e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206b35:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206b3a:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206b41:	e8 aa a0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206b46:	31 c0                	xor    eax,eax
ffffffff80206b48:	e8 13 f5 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206b4d:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
ffffffff80206b50:	e8 cb ed ff ff       	call   ffffffff80205920 <enable_mapping>
ffffffff80206b55:	cd 81                	int    0x81
ffffffff80206b57:	31 c0                	xor    eax,eax
ffffffff80206b59:	e8 e2 f4 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206b5e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206b65:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206b6a:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80206b71:	e8 7a a0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206b76:	31 c0                	xor    eax,eax
ffffffff80206b78:	e8 63 ed ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206b7d:	84 c0                	test   al,al
ffffffff80206b7f:	75 6f                	jne    ffffffff80206bf0 <register_this_context+0x1b0>
ffffffff80206b81:	48 c7 c1 a0 9f 20 80 	mov    rcx,0xffffffff80209fa0
ffffffff80206b88:	ba 5e 00 00 00       	mov    edx,0x5e
ffffffff80206b8d:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206b94:	31 c0                	xor    eax,eax
ffffffff80206b96:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206b9d:	e8 be 12 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206ba2:	48 c7 c7 f2 9e 20 80 	mov    rdi,0xffffffff80209ef2
ffffffff80206ba9:	31 c0                	xor    eax,eax
ffffffff80206bab:	e8 b0 12 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206bb0:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206bb7:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206bbc:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206bc3:	e8 28 a0 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206bc8:	31 c0                	xor    eax,eax
ffffffff80206bca:	5b                   	pop    rbx
ffffffff80206bcb:	e9 90 f4 ff ff       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80206bd0:	31 c0                	xor    eax,eax
ffffffff80206bd2:	e8 99 eb ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206bd7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206bde:	89 c6                	mov    esi,eax
ffffffff80206be0:	31 c0                	xor    eax,eax
ffffffff80206be2:	e8 79 12 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206be7:	e9 83 fe ff ff       	jmp    ffffffff80206a6f <register_this_context+0x2f>
ffffffff80206bec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80206bf0:	31 c0                	xor    eax,eax
ffffffff80206bf2:	e8 79 eb ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206bf7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206bfe:	89 c6                	mov    esi,eax
ffffffff80206c00:	31 c0                	xor    eax,eax
ffffffff80206c02:	e8 59 12 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206c07:	e9 75 ff ff ff       	jmp    ffffffff80206b81 <register_this_context+0x141>
ffffffff80206c0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80206c10:	31 c0                	xor    eax,eax
ffffffff80206c12:	e8 59 eb ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206c17:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206c1e:	89 c6                	mov    esi,eax
ffffffff80206c20:	31 c0                	xor    eax,eax
ffffffff80206c22:	e8 39 12 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206c27:	e9 d0 fe ff ff       	jmp    ffffffff80206afc <register_this_context+0xbc>
ffffffff80206c2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80206c30 <modify_target_task>:
ffffffff80206c30:	40 0f b6 ff          	movzx  edi,dil
ffffffff80206c34:	48 89 34 fd e0 cc 20 	mov    QWORD PTR [rdi*8-0x7fdf3320],rsi
ffffffff80206c3b:	80 
ffffffff80206c3c:	c3                   	ret    
ffffffff80206c3d:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff80206c40 <create_task_from_func>:
ffffffff80206c40:	41 57                	push   r15
ffffffff80206c42:	31 c0                	xor    eax,eax
ffffffff80206c44:	45 89 c7             	mov    r15d,r8d
ffffffff80206c47:	41 56                	push   r14
ffffffff80206c49:	41 55                	push   r13
ffffffff80206c4b:	49 89 fd             	mov    r13,rdi
ffffffff80206c4e:	41 54                	push   r12
ffffffff80206c50:	55                   	push   rbp
ffffffff80206c51:	48 89 d5             	mov    rbp,rdx
ffffffff80206c54:	53                   	push   rbx
ffffffff80206c55:	48 89 f3             	mov    rbx,rsi
ffffffff80206c58:	48 83 ec 18          	sub    rsp,0x18
ffffffff80206c5c:	44 89 4c 24 0c       	mov    DWORD PTR [rsp+0xc],r9d
ffffffff80206c61:	e8 3a 21 00 00       	call   ffffffff80208da0 <lock_ints>
ffffffff80206c66:	31 c0                	xor    eax,eax
ffffffff80206c68:	e8 c3 ec ff ff       	call   ffffffff80205930 <get_current_mapping>
ffffffff80206c6d:	49 89 c6             	mov    r14,rax
ffffffff80206c70:	31 c0                	xor    eax,eax
ffffffff80206c72:	e8 d9 d3 ff ff       	call   ffffffff80204050 <create_page_directory>
ffffffff80206c77:	48 89 c7             	mov    rdi,rax
ffffffff80206c7a:	49 89 c4             	mov    r12,rax
ffffffff80206c7d:	e8 9e ec ff ff       	call   ffffffff80205920 <enable_mapping>
ffffffff80206c82:	31 c0                	xor    eax,eax
ffffffff80206c84:	e8 87 97 ff ff       	call   ffffffff80200410 <map_pics>
ffffffff80206c89:	31 c0                	xor    eax,eax
ffffffff80206c8b:	e8 b0 f3 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206c90:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206c97:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206c9c:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80206ca3:	e8 48 9f ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206ca8:	31 c0                	xor    eax,eax
ffffffff80206caa:	e8 31 ec ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206caf:	84 c0                	test   al,al
ffffffff80206cb1:	0f 85 d9 01 00 00    	jne    ffffffff80206e90 <create_task_from_func+0x250>
ffffffff80206cb7:	48 c7 c1 80 9f 20 80 	mov    rcx,0xffffffff80209f80
ffffffff80206cbe:	ba 70 00 00 00       	mov    edx,0x70
ffffffff80206cc3:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206cca:	31 c0                	xor    eax,eax
ffffffff80206ccc:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206cd3:	e8 88 11 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206cd8:	31 c0                	xor    eax,eax
ffffffff80206cda:	48 c7 c7 ac 9e 20 80 	mov    rdi,0xffffffff80209eac
ffffffff80206ce1:	e8 7a 11 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206ce6:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206ced:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206cf2:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206cf9:	e8 f2 9e ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206cfe:	31 c0                	xor    eax,eax
ffffffff80206d00:	e8 5b f3 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206d05:	31 c0                	xor    eax,eax
ffffffff80206d07:	e8 a4 d3 ff ff       	call   ffffffff802040b0 <setup_context_frame>
ffffffff80206d0c:	48 89 de             	mov    rsi,rbx
ffffffff80206d0f:	48 89 ef             	mov    rdi,rbp
ffffffff80206d12:	31 d2                	xor    edx,edx
ffffffff80206d14:	48 81 e6 00 f0 ff ff 	and    rsi,0xfffffffffffff000
ffffffff80206d1b:	48 81 e7 00 f0 ff ff 	and    rdi,0xfffffffffffff000
ffffffff80206d22:	48 81 c6 00 10 00 00 	add    rsi,0x1000
ffffffff80206d29:	e8 82 ca ff ff       	call   ffffffff802037b0 <kmmap>
ffffffff80206d2e:	31 c0                	xor    eax,eax
ffffffff80206d30:	e8 0b f3 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206d35:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206d3c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206d41:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80206d48:	e8 a3 9e ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206d4d:	31 c0                	xor    eax,eax
ffffffff80206d4f:	e8 8c eb ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206d54:	84 c0                	test   al,al
ffffffff80206d56:	0f 85 74 01 00 00    	jne    ffffffff80206ed0 <create_task_from_func+0x290>
ffffffff80206d5c:	48 c7 c1 80 9f 20 80 	mov    rcx,0xffffffff80209f80
ffffffff80206d63:	ba 73 00 00 00       	mov    edx,0x73
ffffffff80206d68:	31 c0                	xor    eax,eax
ffffffff80206d6a:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206d71:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206d78:	e8 e3 10 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206d7d:	31 c0                	xor    eax,eax
ffffffff80206d7f:	4c 89 ee             	mov    rsi,r13
ffffffff80206d82:	48 c7 c7 58 9f 20 80 	mov    rdi,0xffffffff80209f58
ffffffff80206d89:	e8 d2 10 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206d8e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206d95:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206d9a:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206da1:	e8 4a 9e ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206da6:	31 c0                	xor    eax,eax
ffffffff80206da8:	e8 b3 f2 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206dad:	4c 89 e8             	mov    rax,r13
ffffffff80206db0:	4c 89 f7             	mov    rdi,r14
ffffffff80206db3:	48 a3 88 f2 ff ff ff 	movabs ds:0x7ffffffff288,rax
ffffffff80206dba:	7f 00 00 
ffffffff80206dbd:	48 8d 04 2b          	lea    rax,[rbx+rbp*1]
ffffffff80206dc1:	48 a3 a0 f2 ff ff ff 	movabs ds:0x7ffffffff2a0,rax
ffffffff80206dc8:	7f 00 00 
ffffffff80206dcb:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
ffffffff80206dd0:	48 a3 98 f2 ff ff ff 	movabs ds:0x7ffffffff298,rax
ffffffff80206dd7:	7f 00 00 
ffffffff80206dda:	44 89 f8             	mov    eax,r15d
ffffffff80206ddd:	66 a3 90 f2 ff ff ff 	movabs ds:0x7ffffffff290,ax
ffffffff80206de4:	7f 00 00 
ffffffff80206de7:	0f b7 44 24 0c       	movzx  eax,WORD PTR [rsp+0xc]
ffffffff80206dec:	66 a3 a8 f2 ff ff ff 	movabs ds:0x7ffffffff2a8,ax
ffffffff80206df3:	7f 00 00 
ffffffff80206df6:	e8 25 eb ff ff       	call   ffffffff80205920 <enable_mapping>
ffffffff80206dfb:	31 c0                	xor    eax,eax
ffffffff80206dfd:	e8 be 1c 00 00       	call   ffffffff80208ac0 <unlock_ints>
ffffffff80206e02:	31 c0                	xor    eax,eax
ffffffff80206e04:	e8 37 f2 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206e09:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206e10:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206e15:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80206e1c:	e8 cf 9d ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206e21:	31 c0                	xor    eax,eax
ffffffff80206e23:	e8 b8 ea ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206e28:	84 c0                	test   al,al
ffffffff80206e2a:	0f 85 80 00 00 00    	jne    ffffffff80206eb0 <create_task_from_func+0x270>
ffffffff80206e30:	48 c7 c1 80 9f 20 80 	mov    rcx,0xffffffff80209f80
ffffffff80206e37:	ba 81 00 00 00       	mov    edx,0x81
ffffffff80206e3c:	48 c7 c6 ff 9d 20 80 	mov    rsi,0xffffffff80209dff
ffffffff80206e43:	31 c0                	xor    eax,eax
ffffffff80206e45:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206e4c:	e8 0f 10 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206e51:	48 c7 c7 c1 9e 20 80 	mov    rdi,0xffffffff80209ec1
ffffffff80206e58:	31 c0                	xor    eax,eax
ffffffff80206e5a:	e8 01 10 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206e5f:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206e66:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206e6b:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206e72:	e8 79 9d ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206e77:	31 c0                	xor    eax,eax
ffffffff80206e79:	e8 e2 f1 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206e7e:	48 83 c4 18          	add    rsp,0x18
ffffffff80206e82:	4c 89 e0             	mov    rax,r12
ffffffff80206e85:	5b                   	pop    rbx
ffffffff80206e86:	5d                   	pop    rbp
ffffffff80206e87:	41 5c                	pop    r12
ffffffff80206e89:	41 5d                	pop    r13
ffffffff80206e8b:	41 5e                	pop    r14
ffffffff80206e8d:	41 5f                	pop    r15
ffffffff80206e8f:	c3                   	ret    
ffffffff80206e90:	31 c0                	xor    eax,eax
ffffffff80206e92:	e8 d9 e8 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206e97:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206e9e:	89 c6                	mov    esi,eax
ffffffff80206ea0:	31 c0                	xor    eax,eax
ffffffff80206ea2:	e8 b9 0f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206ea7:	e9 0b fe ff ff       	jmp    ffffffff80206cb7 <create_task_from_func+0x77>
ffffffff80206eac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80206eb0:	31 c0                	xor    eax,eax
ffffffff80206eb2:	e8 b9 e8 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206eb7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206ebe:	89 c6                	mov    esi,eax
ffffffff80206ec0:	31 c0                	xor    eax,eax
ffffffff80206ec2:	e8 99 0f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206ec7:	e9 64 ff ff ff       	jmp    ffffffff80206e30 <create_task_from_func+0x1f0>
ffffffff80206ecc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80206ed0:	31 c0                	xor    eax,eax
ffffffff80206ed2:	e8 99 e8 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80206ed7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80206ede:	89 c6                	mov    esi,eax
ffffffff80206ee0:	31 c0                	xor    eax,eax
ffffffff80206ee2:	e8 79 0f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206ee7:	e9 70 fe ff ff       	jmp    ffffffff80206d5c <create_task_from_func+0x11c>
ffffffff80206eec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80206ef0 <launch_lock_tests>:
ffffffff80206ef0:	c3                   	ret    
ffffffff80206ef1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80206ef6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80206efd:	00 00 00 

ffffffff80206f00 <launch_malloc_tests>:
ffffffff80206f00:	55                   	push   rbp
ffffffff80206f01:	bf 04 00 00 00       	mov    edi,0x4
ffffffff80206f06:	e8 15 12 00 00       	call   ffffffff80208120 <malloc>
ffffffff80206f0b:	48 89 c5             	mov    rbp,rax
ffffffff80206f0e:	31 c0                	xor    eax,eax
ffffffff80206f10:	e8 2b f1 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206f15:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206f1c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206f21:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80206f28:	e8 c3 9c ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206f2d:	31 c0                	xor    eax,eax
ffffffff80206f2f:	e8 ac e9 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206f34:	84 c0                	test   al,al
ffffffff80206f36:	0f 85 fc 01 00 00    	jne    ffffffff80207138 <launch_malloc_tests+0x238>
ffffffff80206f3c:	48 c7 c1 f0 a1 20 80 	mov    rcx,0xffffffff8020a1f0
ffffffff80206f43:	ba 13 00 00 00       	mov    edx,0x13
ffffffff80206f48:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff80206f4f:	31 c0                	xor    eax,eax
ffffffff80206f51:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206f58:	e8 03 0f 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206f5d:	48 89 ee             	mov    rsi,rbp
ffffffff80206f60:	48 c7 c7 a2 a0 20 80 	mov    rdi,0xffffffff8020a0a2
ffffffff80206f67:	31 c0                	xor    eax,eax
ffffffff80206f69:	e8 f2 0e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206f6e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206f75:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206f7a:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80206f81:	e8 6a 9c ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206f86:	31 c0                	xor    eax,eax
ffffffff80206f88:	e8 d3 f0 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80206f8d:	31 c0                	xor    eax,eax
ffffffff80206f8f:	48 85 ed             	test   rbp,rbp
ffffffff80206f92:	0f 84 00 02 00 00    	je     ffffffff80207198 <launch_malloc_tests+0x298>
ffffffff80206f98:	e8 a3 f0 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80206f9d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206fa4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206fa9:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80206fb0:	e8 3b 9c ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80206fb5:	31 c0                	xor    eax,eax
ffffffff80206fb7:	e8 24 e9 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80206fbc:	84 c0                	test   al,al
ffffffff80206fbe:	0f 85 54 01 00 00    	jne    ffffffff80207118 <launch_malloc_tests+0x218>
ffffffff80206fc4:	48 c7 c1 f0 a1 20 80 	mov    rcx,0xffffffff8020a1f0
ffffffff80206fcb:	ba 14 00 00 00       	mov    edx,0x14
ffffffff80206fd0:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff80206fd7:	31 c0                	xor    eax,eax
ffffffff80206fd9:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80206fe0:	e8 7b 0e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206fe5:	48 c7 c7 b7 a0 20 80 	mov    rdi,0xffffffff8020a0b7
ffffffff80206fec:	31 c0                	xor    eax,eax
ffffffff80206fee:	e8 6d 0e 00 00       	call   ffffffff80207e60 <printf>
ffffffff80206ff3:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80206ffa:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80206fff:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207006:	e8 e5 9b ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020700b:	31 c0                	xor    eax,eax
ffffffff8020700d:	e8 4e f0 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207012:	c7 45 00 06 00 00 00 	mov    DWORD PTR [rbp+0x0],0x6
ffffffff80207019:	31 c0                	xor    eax,eax
ffffffff8020701b:	e8 20 f0 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80207020:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207027:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020702c:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80207033:	e8 b8 9b ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207038:	31 c0                	xor    eax,eax
ffffffff8020703a:	e8 a1 e8 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020703f:	84 c0                	test   al,al
ffffffff80207041:	0f 85 31 01 00 00    	jne    ffffffff80207178 <launch_malloc_tests+0x278>
ffffffff80207047:	48 c7 c1 f0 a1 20 80 	mov    rcx,0xffffffff8020a1f0
ffffffff8020704e:	ba 16 00 00 00       	mov    edx,0x16
ffffffff80207053:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff8020705a:	31 c0                	xor    eax,eax
ffffffff8020705c:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80207063:	e8 f8 0d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207068:	31 c0                	xor    eax,eax
ffffffff8020706a:	48 c7 c7 be a0 20 80 	mov    rdi,0xffffffff8020a0be
ffffffff80207071:	e8 ea 0d 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207076:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020707d:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207082:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207089:	e8 62 9b ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020708e:	31 c0                	xor    eax,eax
ffffffff80207090:	e8 cb ef ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207095:	31 c0                	xor    eax,eax
ffffffff80207097:	e8 a4 ef ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020709c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802070a3:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802070a8:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802070af:	e8 3c 9b ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802070b4:	31 c0                	xor    eax,eax
ffffffff802070b6:	e8 25 e8 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802070bb:	84 c0                	test   al,al
ffffffff802070bd:	0f 85 95 00 00 00    	jne    ffffffff80207158 <launch_malloc_tests+0x258>
ffffffff802070c3:	48 c7 c1 f0 a1 20 80 	mov    rcx,0xffffffff8020a1f0
ffffffff802070ca:	ba 17 00 00 00       	mov    edx,0x17
ffffffff802070cf:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff802070d6:	31 c0                	xor    eax,eax
ffffffff802070d8:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802070df:	e8 7c 0d 00 00       	call   ffffffff80207e60 <printf>
ffffffff802070e4:	48 89 ee             	mov    rsi,rbp
ffffffff802070e7:	48 c7 c7 c6 a0 20 80 	mov    rdi,0xffffffff8020a0c6
ffffffff802070ee:	31 c0                	xor    eax,eax
ffffffff802070f0:	e8 6b 0d 00 00       	call   ffffffff80207e60 <printf>
ffffffff802070f5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802070fc:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207101:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207108:	e8 e3 9a ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020710d:	31 c0                	xor    eax,eax
ffffffff8020710f:	5d                   	pop    rbp
ffffffff80207110:	e9 4b ef ff ff       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80207115:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80207118:	31 c0                	xor    eax,eax
ffffffff8020711a:	e8 51 e6 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff8020711f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80207126:	89 c6                	mov    esi,eax
ffffffff80207128:	31 c0                	xor    eax,eax
ffffffff8020712a:	e8 31 0d 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020712f:	e9 90 fe ff ff       	jmp    ffffffff80206fc4 <launch_malloc_tests+0xc4>
ffffffff80207134:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207138:	31 c0                	xor    eax,eax
ffffffff8020713a:	e8 31 e6 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff8020713f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80207146:	89 c6                	mov    esi,eax
ffffffff80207148:	31 c0                	xor    eax,eax
ffffffff8020714a:	e8 11 0d 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020714f:	e9 e8 fd ff ff       	jmp    ffffffff80206f3c <launch_malloc_tests+0x3c>
ffffffff80207154:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207158:	31 c0                	xor    eax,eax
ffffffff8020715a:	e8 11 e6 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff8020715f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80207166:	89 c6                	mov    esi,eax
ffffffff80207168:	31 c0                	xor    eax,eax
ffffffff8020716a:	e8 f1 0c 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020716f:	e9 4f ff ff ff       	jmp    ffffffff802070c3 <launch_malloc_tests+0x1c3>
ffffffff80207174:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207178:	31 c0                	xor    eax,eax
ffffffff8020717a:	e8 f1 e5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff8020717f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80207186:	89 c6                	mov    esi,eax
ffffffff80207188:	31 c0                	xor    eax,eax
ffffffff8020718a:	e8 d1 0c 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020718f:	e9 b3 fe ff ff       	jmp    ffffffff80207047 <launch_malloc_tests+0x147>
ffffffff80207194:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207198:	e8 a3 ee ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020719d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802071a4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802071a9:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff802071b0:	e8 3b 9a ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802071b5:	31 c0                	xor    eax,eax
ffffffff802071b7:	e8 24 e7 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802071bc:	84 c0                	test   al,al
ffffffff802071be:	75 68                	jne    ffffffff80207228 <launch_malloc_tests+0x328>
ffffffff802071c0:	48 c7 c1 f0 a1 20 80 	mov    rcx,0xffffffff8020a1f0
ffffffff802071c7:	ba 14 00 00 00       	mov    edx,0x14
ffffffff802071cc:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff802071d3:	31 c0                	xor    eax,eax
ffffffff802071d5:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802071dc:	e8 7f 0c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802071e1:	31 c0                	xor    eax,eax
ffffffff802071e3:	48 c7 c7 b7 a0 20 80 	mov    rdi,0xffffffff8020a0b7
ffffffff802071ea:	e8 71 0c 00 00       	call   ffffffff80207e60 <printf>
ffffffff802071ef:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802071f6:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802071fb:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207202:	e8 e9 99 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207207:	31 c0                	xor    eax,eax
ffffffff80207209:	e8 52 ee ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff8020720e:	31 c0                	xor    eax,eax
ffffffff80207210:	e8 eb e6 ff ff       	call   ffffffff80205900 <disable_ints>
ffffffff80207215:	31 c0                	xor    eax,eax
ffffffff80207217:	e8 f4 e6 ff ff       	call   ffffffff80205910 <halt>
ffffffff8020721c:	e9 f1 fd ff ff       	jmp    ffffffff80207012 <launch_malloc_tests+0x112>
ffffffff80207221:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80207228:	31 c0                	xor    eax,eax
ffffffff8020722a:	e8 41 e5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff8020722f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80207236:	89 c6                	mov    esi,eax
ffffffff80207238:	31 c0                	xor    eax,eax
ffffffff8020723a:	e8 21 0c 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020723f:	e9 7c ff ff ff       	jmp    ffffffff802071c0 <launch_malloc_tests+0x2c0>
ffffffff80207244:	66 90                	xchg   ax,ax
ffffffff80207246:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020724d:	00 00 00 

ffffffff80207250 <launch_free_tests>:
ffffffff80207250:	48 83 ec 08          	sub    rsp,0x8
ffffffff80207254:	31 c0                	xor    eax,eax
ffffffff80207256:	e8 e5 ed ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020725b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207262:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207267:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff8020726e:	e8 7d 99 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207273:	31 c0                	xor    eax,eax
ffffffff80207275:	e8 66 e6 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020727a:	84 c0                	test   al,al
ffffffff8020727c:	75 62                	jne    ffffffff802072e0 <launch_free_tests+0x90>
ffffffff8020727e:	48 c7 c1 d0 a1 20 80 	mov    rcx,0xffffffff8020a1d0
ffffffff80207285:	ba 1b 00 00 00       	mov    edx,0x1b
ffffffff8020728a:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff80207291:	31 c0                	xor    eax,eax
ffffffff80207293:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020729a:	e8 c1 0b 00 00       	call   ffffffff80207e60 <printf>
ffffffff8020729f:	be 30 10 00 00       	mov    esi,0x1030
ffffffff802072a4:	48 c7 c7 d5 a0 20 80 	mov    rdi,0xffffffff8020a0d5
ffffffff802072ab:	31 c0                	xor    eax,eax
ffffffff802072ad:	e8 ae 0b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802072b2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802072b7:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802072be:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802072c5:	e8 26 99 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802072ca:	31 c0                	xor    eax,eax
ffffffff802072cc:	e8 8f ed ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff802072d1:	bf 30 10 00 00       	mov    edi,0x1030
ffffffff802072d6:	48 83 c4 08          	add    rsp,0x8
ffffffff802072da:	e9 21 12 00 00       	jmp    ffffffff80208500 <free>
ffffffff802072df:	90                   	nop
ffffffff802072e0:	31 c0                	xor    eax,eax
ffffffff802072e2:	e8 89 e4 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802072e7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802072ee:	89 c6                	mov    esi,eax
ffffffff802072f0:	31 c0                	xor    eax,eax
ffffffff802072f2:	e8 69 0b 00 00       	call   ffffffff80207e60 <printf>
ffffffff802072f7:	eb 85                	jmp    ffffffff8020727e <launch_free_tests+0x2e>
ffffffff802072f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80207300 <launch_tests>:
ffffffff80207300:	48 83 ec 08          	sub    rsp,0x8
ffffffff80207304:	31 c0                	xor    eax,eax
ffffffff80207306:	e8 35 ed ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020730b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207312:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207317:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff8020731e:	e8 cd 98 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207323:	31 c0                	xor    eax,eax
ffffffff80207325:	e8 b6 e5 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020732a:	84 c0                	test   al,al
ffffffff8020732c:	0f 85 de 04 00 00    	jne    ffffffff80207810 <launch_tests+0x510>
ffffffff80207332:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff80207339:	ba 20 00 00 00       	mov    edx,0x20
ffffffff8020733e:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff80207345:	31 c0                	xor    eax,eax
ffffffff80207347:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020734e:	e8 0d 0b 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207353:	31 c0                	xor    eax,eax
ffffffff80207355:	48 c7 c7 f0 a0 20 80 	mov    rdi,0xffffffff8020a0f0
ffffffff8020735c:	e8 ff 0a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207361:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207368:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020736d:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207374:	e8 77 98 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207379:	31 c0                	xor    eax,eax
ffffffff8020737b:	e8 e0 ec ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207380:	31 c0                	xor    eax,eax
ffffffff80207382:	e8 79 fb ff ff       	call   ffffffff80206f00 <launch_malloc_tests>
ffffffff80207387:	31 c0                	xor    eax,eax
ffffffff80207389:	e8 b2 ec ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020738e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207395:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020739a:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff802073a1:	e8 4a 98 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802073a6:	31 c0                	xor    eax,eax
ffffffff802073a8:	e8 33 e5 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802073ad:	84 c0                	test   al,al
ffffffff802073af:	0f 85 7b 05 00 00    	jne    ffffffff80207930 <launch_tests+0x630>
ffffffff802073b5:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff802073bc:	ba 20 00 00 00       	mov    edx,0x20
ffffffff802073c1:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff802073c8:	31 c0                	xor    eax,eax
ffffffff802073ca:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802073d1:	e8 8a 0a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802073d6:	31 c0                	xor    eax,eax
ffffffff802073d8:	48 c7 c7 28 a1 20 80 	mov    rdi,0xffffffff8020a128
ffffffff802073df:	e8 7c 0a 00 00       	call   ffffffff80207e60 <printf>
ffffffff802073e4:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802073eb:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802073f0:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802073f7:	e8 f4 97 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802073fc:	31 c0                	xor    eax,eax
ffffffff802073fe:	e8 5d ec ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207403:	31 c0                	xor    eax,eax
ffffffff80207405:	e8 36 ec ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020740a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207411:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207416:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff8020741d:	e8 ce 97 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207422:	31 c0                	xor    eax,eax
ffffffff80207424:	e8 b7 e4 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80207429:	84 c0                	test   al,al
ffffffff8020742b:	0f 85 df 04 00 00    	jne    ffffffff80207910 <launch_tests+0x610>
ffffffff80207431:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff80207438:	ba 21 00 00 00       	mov    edx,0x21
ffffffff8020743d:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff80207444:	31 c0                	xor    eax,eax
ffffffff80207446:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020744d:	e8 0e 0a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207452:	31 c0                	xor    eax,eax
ffffffff80207454:	48 c7 c7 58 a1 20 80 	mov    rdi,0xffffffff8020a158
ffffffff8020745b:	e8 00 0a 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207460:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207467:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020746c:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207473:	e8 78 97 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207478:	31 c0                	xor    eax,eax
ffffffff8020747a:	e8 e1 eb ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff8020747f:	31 c0                	xor    eax,eax
ffffffff80207481:	e8 ba eb ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80207486:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020748d:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207492:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80207499:	e8 52 97 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020749e:	31 c0                	xor    eax,eax
ffffffff802074a0:	e8 3b e4 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802074a5:	84 c0                	test   al,al
ffffffff802074a7:	0f 85 43 04 00 00    	jne    ffffffff802078f0 <launch_tests+0x5f0>
ffffffff802074ad:	48 c7 c1 d0 a1 20 80 	mov    rcx,0xffffffff8020a1d0
ffffffff802074b4:	ba 1b 00 00 00       	mov    edx,0x1b
ffffffff802074b9:	31 c0                	xor    eax,eax
ffffffff802074bb:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff802074c2:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802074c9:	e8 92 09 00 00       	call   ffffffff80207e60 <printf>
ffffffff802074ce:	31 c0                	xor    eax,eax
ffffffff802074d0:	be 30 10 00 00       	mov    esi,0x1030
ffffffff802074d5:	48 c7 c7 d5 a0 20 80 	mov    rdi,0xffffffff8020a0d5
ffffffff802074dc:	e8 7f 09 00 00       	call   ffffffff80207e60 <printf>
ffffffff802074e1:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802074e8:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802074ed:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802074f4:	e8 f7 96 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802074f9:	31 c0                	xor    eax,eax
ffffffff802074fb:	e8 60 eb ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207500:	bf 30 10 00 00       	mov    edi,0x1030
ffffffff80207505:	e8 f6 0f 00 00       	call   ffffffff80208500 <free>
ffffffff8020750a:	31 c0                	xor    eax,eax
ffffffff8020750c:	e8 2f eb ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80207511:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207518:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020751d:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80207524:	e8 c7 96 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207529:	31 c0                	xor    eax,eax
ffffffff8020752b:	e8 b0 e3 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80207530:	84 c0                	test   al,al
ffffffff80207532:	0f 85 98 03 00 00    	jne    ffffffff802078d0 <launch_tests+0x5d0>
ffffffff80207538:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff8020753f:	ba 21 00 00 00       	mov    edx,0x21
ffffffff80207544:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff8020754b:	31 c0                	xor    eax,eax
ffffffff8020754d:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80207554:	e8 07 09 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207559:	31 c0                	xor    eax,eax
ffffffff8020755b:	48 c7 c7 88 a1 20 80 	mov    rdi,0xffffffff8020a188
ffffffff80207562:	e8 f9 08 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207567:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020756e:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207573:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff8020757a:	e8 71 96 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020757f:	31 c0                	xor    eax,eax
ffffffff80207581:	e8 da ea ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207586:	31 c0                	xor    eax,eax
ffffffff80207588:	e8 b3 ea ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020758d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207594:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207599:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff802075a0:	e8 4b 96 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802075a5:	31 c0                	xor    eax,eax
ffffffff802075a7:	e8 34 e3 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802075ac:	84 c0                	test   al,al
ffffffff802075ae:	0f 85 fc 02 00 00    	jne    ffffffff802078b0 <launch_tests+0x5b0>
ffffffff802075b4:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff802075bb:	ba 22 00 00 00       	mov    edx,0x22
ffffffff802075c0:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff802075c7:	31 c0                	xor    eax,eax
ffffffff802075c9:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802075d0:	e8 8b 08 00 00       	call   ffffffff80207e60 <printf>
ffffffff802075d5:	31 c0                	xor    eax,eax
ffffffff802075d7:	48 c7 c7 f0 a0 20 80 	mov    rdi,0xffffffff8020a0f0
ffffffff802075de:	e8 7d 08 00 00       	call   ffffffff80207e60 <printf>
ffffffff802075e3:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802075ea:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802075ef:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802075f6:	e8 f5 95 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802075fb:	31 c0                	xor    eax,eax
ffffffff802075fd:	e8 5e ea ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207602:	31 c0                	xor    eax,eax
ffffffff80207604:	e8 f7 f8 ff ff       	call   ffffffff80206f00 <launch_malloc_tests>
ffffffff80207609:	31 c0                	xor    eax,eax
ffffffff8020760b:	e8 30 ea ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80207610:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207617:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020761c:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff80207623:	e8 c8 95 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207628:	31 c0                	xor    eax,eax
ffffffff8020762a:	e8 b1 e2 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff8020762f:	84 c0                	test   al,al
ffffffff80207631:	0f 85 59 02 00 00    	jne    ffffffff80207890 <launch_tests+0x590>
ffffffff80207637:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff8020763e:	ba 22 00 00 00       	mov    edx,0x22
ffffffff80207643:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff8020764a:	31 c0                	xor    eax,eax
ffffffff8020764c:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80207653:	e8 08 08 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207658:	31 c0                	xor    eax,eax
ffffffff8020765a:	48 c7 c7 28 a1 20 80 	mov    rdi,0xffffffff8020a128
ffffffff80207661:	e8 fa 07 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207666:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020766d:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207672:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207679:	e8 72 95 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020767e:	31 c0                	xor    eax,eax
ffffffff80207680:	e8 db e9 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207685:	31 c0                	xor    eax,eax
ffffffff80207687:	e8 b4 e9 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020768c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207693:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207698:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff8020769f:	e8 4c 95 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802076a4:	31 c0                	xor    eax,eax
ffffffff802076a6:	e8 35 e2 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802076ab:	84 c0                	test   al,al
ffffffff802076ad:	0f 85 bd 01 00 00    	jne    ffffffff80207870 <launch_tests+0x570>
ffffffff802076b3:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff802076ba:	ba 23 00 00 00       	mov    edx,0x23
ffffffff802076bf:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff802076c6:	31 c0                	xor    eax,eax
ffffffff802076c8:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802076cf:	e8 8c 07 00 00       	call   ffffffff80207e60 <printf>
ffffffff802076d4:	31 c0                	xor    eax,eax
ffffffff802076d6:	48 c7 c7 58 a1 20 80 	mov    rdi,0xffffffff8020a158
ffffffff802076dd:	e8 7e 07 00 00       	call   ffffffff80207e60 <printf>
ffffffff802076e2:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802076e9:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802076ee:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802076f5:	e8 f6 94 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802076fa:	31 c0                	xor    eax,eax
ffffffff802076fc:	e8 5f e9 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207701:	31 c0                	xor    eax,eax
ffffffff80207703:	e8 38 e9 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80207708:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020770f:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207714:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff8020771b:	e8 d0 94 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207720:	31 c0                	xor    eax,eax
ffffffff80207722:	e8 b9 e1 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80207727:	84 c0                	test   al,al
ffffffff80207729:	0f 85 21 01 00 00    	jne    ffffffff80207850 <launch_tests+0x550>
ffffffff8020772f:	48 c7 c1 d0 a1 20 80 	mov    rcx,0xffffffff8020a1d0
ffffffff80207736:	ba 1b 00 00 00       	mov    edx,0x1b
ffffffff8020773b:	31 c0                	xor    eax,eax
ffffffff8020773d:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff80207744:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020774b:	e8 10 07 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207750:	31 c0                	xor    eax,eax
ffffffff80207752:	be 30 10 00 00       	mov    esi,0x1030
ffffffff80207757:	48 c7 c7 d5 a0 20 80 	mov    rdi,0xffffffff8020a0d5
ffffffff8020775e:	e8 fd 06 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207763:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020776a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020776f:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207776:	e8 75 94 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020777b:	31 c0                	xor    eax,eax
ffffffff8020777d:	e8 de e8 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207782:	bf 30 10 00 00       	mov    edi,0x1030
ffffffff80207787:	e8 74 0d 00 00       	call   ffffffff80208500 <free>
ffffffff8020778c:	31 c0                	xor    eax,eax
ffffffff8020778e:	e8 ad e8 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80207793:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020779a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020779f:	48 c7 c6 2d 93 20 80 	mov    rsi,0xffffffff8020932d
ffffffff802077a6:	e8 45 94 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802077ab:	31 c0                	xor    eax,eax
ffffffff802077ad:	e8 2e e1 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802077b2:	84 c0                	test   al,al
ffffffff802077b4:	75 7a                	jne    ffffffff80207830 <launch_tests+0x530>
ffffffff802077b6:	48 c7 c1 c0 a1 20 80 	mov    rcx,0xffffffff8020a1c0
ffffffff802077bd:	ba 23 00 00 00       	mov    edx,0x23
ffffffff802077c2:	48 c7 c6 87 a0 20 80 	mov    rsi,0xffffffff8020a087
ffffffff802077c9:	31 c0                	xor    eax,eax
ffffffff802077cb:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802077d2:	e8 89 06 00 00       	call   ffffffff80207e60 <printf>
ffffffff802077d7:	48 c7 c7 88 a1 20 80 	mov    rdi,0xffffffff8020a188
ffffffff802077de:	31 c0                	xor    eax,eax
ffffffff802077e0:	e8 7b 06 00 00       	call   ffffffff80207e60 <printf>
ffffffff802077e5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802077ec:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802077f1:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802077f8:	e8 f3 93 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802077fd:	31 c0                	xor    eax,eax
ffffffff802077ff:	48 83 c4 08          	add    rsp,0x8
ffffffff80207803:	e9 58 e8 ff ff       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80207808:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020780f:	00 
ffffffff80207810:	31 c0                	xor    eax,eax
ffffffff80207812:	e8 59 df ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207817:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020781e:	89 c6                	mov    esi,eax
ffffffff80207820:	31 c0                	xor    eax,eax
ffffffff80207822:	e8 39 06 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207827:	e9 06 fb ff ff       	jmp    ffffffff80207332 <launch_tests+0x32>
ffffffff8020782c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207830:	31 c0                	xor    eax,eax
ffffffff80207832:	e8 39 df ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207837:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020783e:	89 c6                	mov    esi,eax
ffffffff80207840:	31 c0                	xor    eax,eax
ffffffff80207842:	e8 19 06 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207847:	e9 6a ff ff ff       	jmp    ffffffff802077b6 <launch_tests+0x4b6>
ffffffff8020784c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207850:	31 c0                	xor    eax,eax
ffffffff80207852:	e8 19 df ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207857:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020785e:	89 c6                	mov    esi,eax
ffffffff80207860:	31 c0                	xor    eax,eax
ffffffff80207862:	e8 f9 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207867:	e9 c3 fe ff ff       	jmp    ffffffff8020772f <launch_tests+0x42f>
ffffffff8020786c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207870:	31 c0                	xor    eax,eax
ffffffff80207872:	e8 f9 de ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207877:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020787e:	89 c6                	mov    esi,eax
ffffffff80207880:	31 c0                	xor    eax,eax
ffffffff80207882:	e8 d9 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207887:	e9 27 fe ff ff       	jmp    ffffffff802076b3 <launch_tests+0x3b3>
ffffffff8020788c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207890:	31 c0                	xor    eax,eax
ffffffff80207892:	e8 d9 de ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207897:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020789e:	89 c6                	mov    esi,eax
ffffffff802078a0:	31 c0                	xor    eax,eax
ffffffff802078a2:	e8 b9 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff802078a7:	e9 8b fd ff ff       	jmp    ffffffff80207637 <launch_tests+0x337>
ffffffff802078ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802078b0:	31 c0                	xor    eax,eax
ffffffff802078b2:	e8 b9 de ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802078b7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802078be:	89 c6                	mov    esi,eax
ffffffff802078c0:	31 c0                	xor    eax,eax
ffffffff802078c2:	e8 99 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff802078c7:	e9 e8 fc ff ff       	jmp    ffffffff802075b4 <launch_tests+0x2b4>
ffffffff802078cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802078d0:	31 c0                	xor    eax,eax
ffffffff802078d2:	e8 99 de ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802078d7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802078de:	89 c6                	mov    esi,eax
ffffffff802078e0:	31 c0                	xor    eax,eax
ffffffff802078e2:	e8 79 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff802078e7:	e9 4c fc ff ff       	jmp    ffffffff80207538 <launch_tests+0x238>
ffffffff802078ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802078f0:	31 c0                	xor    eax,eax
ffffffff802078f2:	e8 79 de ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff802078f7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff802078fe:	89 c6                	mov    esi,eax
ffffffff80207900:	31 c0                	xor    eax,eax
ffffffff80207902:	e8 59 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207907:	e9 a1 fb ff ff       	jmp    ffffffff802074ad <launch_tests+0x1ad>
ffffffff8020790c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207910:	31 c0                	xor    eax,eax
ffffffff80207912:	e8 59 de ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207917:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020791e:	89 c6                	mov    esi,eax
ffffffff80207920:	31 c0                	xor    eax,eax
ffffffff80207922:	e8 39 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207927:	e9 05 fb ff ff       	jmp    ffffffff80207431 <launch_tests+0x131>
ffffffff8020792c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207930:	31 c0                	xor    eax,eax
ffffffff80207932:	e8 39 de ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207937:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020793e:	89 c6                	mov    esi,eax
ffffffff80207940:	31 c0                	xor    eax,eax
ffffffff80207942:	e8 19 05 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207947:	e9 69 fa ff ff       	jmp    ffffffff802073b5 <launch_tests+0xb5>
ffffffff8020794c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80207950 <space_alloc>:
ffffffff80207950:	41 55                	push   r13
ffffffff80207952:	45 31 c0             	xor    r8d,r8d
ffffffff80207955:	b9 01 00 00 00       	mov    ecx,0x1
ffffffff8020795a:	31 d2                	xor    edx,edx
ffffffff8020795c:	41 54                	push   r12
ffffffff8020795e:	49 89 f5             	mov    r13,rsi
ffffffff80207961:	31 f6                	xor    esi,esi
ffffffff80207963:	55                   	push   rbp
ffffffff80207964:	48 89 fd             	mov    rbp,rdi
ffffffff80207967:	31 ff                	xor    edi,edi
ffffffff80207969:	e8 22 be ff ff       	call   ffffffff80203790 <craft_addr>
ffffffff8020796e:	48 89 ee             	mov    rsi,rbp
ffffffff80207971:	48 89 c7             	mov    rdi,rax
ffffffff80207974:	31 c0                	xor    eax,eax
ffffffff80207976:	e8 a5 d1 ff ff       	call   ffffffff80204b20 <search_available>
ffffffff8020797b:	4c 63 e0             	movsxd r12,eax
ffffffff8020797e:	4d 85 e4             	test   r12,r12
ffffffff80207981:	75 0d                	jne    ffffffff80207990 <space_alloc+0x40>
ffffffff80207983:	4c 89 e0             	mov    rax,r12
ffffffff80207986:	5d                   	pop    rbp
ffffffff80207987:	41 5c                	pop    r12
ffffffff80207989:	41 5d                	pop    r13
ffffffff8020798b:	c3                   	ret    
ffffffff8020798c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207990:	4c 89 ef             	mov    rdi,r13
ffffffff80207993:	e8 e8 d2 ff ff       	call   ffffffff80204c80 <convert_to_arch_flags>
ffffffff80207998:	48 89 ee             	mov    rsi,rbp
ffffffff8020799b:	4c 89 e7             	mov    rdi,r12
ffffffff8020799e:	48 89 c2             	mov    rdx,rax
ffffffff802079a1:	e8 0a be ff ff       	call   ffffffff802037b0 <kmmap>
ffffffff802079a6:	31 c0                	xor    eax,eax
ffffffff802079a8:	e8 93 e6 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802079ad:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802079b4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802079b9:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802079c0:	e8 2b 92 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802079c5:	31 c0                	xor    eax,eax
ffffffff802079c7:	e8 14 df ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802079cc:	84 c0                	test   al,al
ffffffff802079ce:	75 60                	jne    ffffffff80207a30 <space_alloc+0xe0>
ffffffff802079d0:	48 c7 c1 48 a2 20 80 	mov    rcx,0xffffffff8020a248
ffffffff802079d7:	ba 0e 00 00 00       	mov    edx,0xe
ffffffff802079dc:	48 c7 c6 28 a2 20 80 	mov    rsi,0xffffffff8020a228
ffffffff802079e3:	31 c0                	xor    eax,eax
ffffffff802079e5:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802079ec:	e8 6f 04 00 00       	call   ffffffff80207e60 <printf>
ffffffff802079f1:	4c 89 e2             	mov    rdx,r12
ffffffff802079f4:	48 89 ee             	mov    rsi,rbp
ffffffff802079f7:	31 c0                	xor    eax,eax
ffffffff802079f9:	48 c7 c7 04 a2 20 80 	mov    rdi,0xffffffff8020a204
ffffffff80207a00:	e8 5b 04 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207a05:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207a0c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207a11:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80207a18:	e8 d3 91 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207a1d:	31 c0                	xor    eax,eax
ffffffff80207a1f:	e8 3c e6 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80207a24:	4c 89 e0             	mov    rax,r12
ffffffff80207a27:	5d                   	pop    rbp
ffffffff80207a28:	41 5c                	pop    r12
ffffffff80207a2a:	41 5d                	pop    r13
ffffffff80207a2c:	c3                   	ret    
ffffffff80207a2d:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80207a30:	31 c0                	xor    eax,eax
ffffffff80207a32:	e8 39 dd ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80207a37:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80207a3e:	89 c6                	mov    esi,eax
ffffffff80207a40:	31 c0                	xor    eax,eax
ffffffff80207a42:	e8 19 04 00 00       	call   ffffffff80207e60 <printf>
ffffffff80207a47:	eb 87                	jmp    ffffffff802079d0 <space_alloc+0x80>
ffffffff80207a49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80207a50 <space_free>:
ffffffff80207a50:	31 d2                	xor    edx,edx
ffffffff80207a52:	e9 29 c1 ff ff       	jmp    ffffffff80203b80 <kmunmap>
ffffffff80207a57:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80207a5e:	00 00 

ffffffff80207a60 <memset>:
ffffffff80207a60:	48 89 f8             	mov    rax,rdi
ffffffff80207a63:	48 85 d2             	test   rdx,rdx
ffffffff80207a66:	0f 84 29 01 00 00    	je     ffffffff80207b95 <memset+0x135>
ffffffff80207a6c:	48 8d 4a ff          	lea    rcx,[rdx-0x1]
ffffffff80207a70:	48 83 f9 06          	cmp    rcx,0x6
ffffffff80207a74:	0f 86 f4 00 00 00    	jbe    ffffffff80207b6e <memset+0x10e>
ffffffff80207a7a:	48 83 ec 40          	sub    rsp,0x40
ffffffff80207a7e:	49 89 d0             	mov    r8,rdx
ffffffff80207a81:	48 c7 44 24 38 00 00 	mov    QWORD PTR [rsp+0x38],0x0
ffffffff80207a88:	00 00 
ffffffff80207a8a:	49 83 e0 f8          	and    r8,0xfffffffffffffff8
ffffffff80207a8e:	40 88 74 24 38       	mov    BYTE PTR [rsp+0x38],sil
ffffffff80207a93:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
ffffffff80207a98:	49 01 c0             	add    r8,rax
ffffffff80207a9b:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
ffffffff80207aa0:	40 88 74 24 31       	mov    BYTE PTR [rsp+0x31],sil
ffffffff80207aa5:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
ffffffff80207aaa:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
ffffffff80207aaf:	40 88 74 24 2a       	mov    BYTE PTR [rsp+0x2a],sil
ffffffff80207ab4:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
ffffffff80207ab9:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
ffffffff80207abe:	40 88 74 24 23       	mov    BYTE PTR [rsp+0x23],sil
ffffffff80207ac3:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
ffffffff80207ac8:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
ffffffff80207acd:	40 88 74 24 1c       	mov    BYTE PTR [rsp+0x1c],sil
ffffffff80207ad2:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
ffffffff80207ad7:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
ffffffff80207adc:	40 88 74 24 15       	mov    BYTE PTR [rsp+0x15],sil
ffffffff80207ae1:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
ffffffff80207ae6:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
ffffffff80207aeb:	40 88 74 24 0e       	mov    BYTE PTR [rsp+0xe],sil
ffffffff80207af0:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
ffffffff80207af5:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
ffffffff80207af9:	48 89 c1             	mov    rcx,rax
ffffffff80207afc:	40 88 74 24 07       	mov    BYTE PTR [rsp+0x7],sil
ffffffff80207b01:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
ffffffff80207b05:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80207b08:	48 89 39             	mov    QWORD PTR [rcx],rdi
ffffffff80207b0b:	48 83 c1 08          	add    rcx,0x8
ffffffff80207b0f:	4c 39 c1             	cmp    rcx,r8
ffffffff80207b12:	75 f4                	jne    ffffffff80207b08 <memset+0xa8>
ffffffff80207b14:	49 89 d0             	mov    r8,rdx
ffffffff80207b17:	48 89 d7             	mov    rdi,rdx
ffffffff80207b1a:	49 83 e0 f8          	and    r8,0xfffffffffffffff8
ffffffff80207b1e:	83 e7 07             	and    edi,0x7
ffffffff80207b21:	4a 8d 0c 00          	lea    rcx,[rax+r8*1]
ffffffff80207b25:	4c 39 c2             	cmp    rdx,r8
ffffffff80207b28:	74 3f                	je     ffffffff80207b69 <memset+0x109>
ffffffff80207b2a:	40 88 31             	mov    BYTE PTR [rcx],sil
ffffffff80207b2d:	48 83 ff 01          	cmp    rdi,0x1
ffffffff80207b31:	74 36                	je     ffffffff80207b69 <memset+0x109>
ffffffff80207b33:	40 88 71 01          	mov    BYTE PTR [rcx+0x1],sil
ffffffff80207b37:	48 83 ff 02          	cmp    rdi,0x2
ffffffff80207b3b:	74 2c                	je     ffffffff80207b69 <memset+0x109>
ffffffff80207b3d:	40 88 71 02          	mov    BYTE PTR [rcx+0x2],sil
ffffffff80207b41:	48 83 ff 03          	cmp    rdi,0x3
ffffffff80207b45:	74 22                	je     ffffffff80207b69 <memset+0x109>
ffffffff80207b47:	40 88 71 03          	mov    BYTE PTR [rcx+0x3],sil
ffffffff80207b4b:	48 83 ff 04          	cmp    rdi,0x4
ffffffff80207b4f:	74 18                	je     ffffffff80207b69 <memset+0x109>
ffffffff80207b51:	40 88 71 04          	mov    BYTE PTR [rcx+0x4],sil
ffffffff80207b55:	48 83 ff 05          	cmp    rdi,0x5
ffffffff80207b59:	74 0e                	je     ffffffff80207b69 <memset+0x109>
ffffffff80207b5b:	40 88 71 05          	mov    BYTE PTR [rcx+0x5],sil
ffffffff80207b5f:	48 83 ff 06          	cmp    rdi,0x6
ffffffff80207b63:	74 04                	je     ffffffff80207b69 <memset+0x109>
ffffffff80207b65:	40 88 71 06          	mov    BYTE PTR [rcx+0x6],sil
ffffffff80207b69:	48 83 c4 40          	add    rsp,0x40
ffffffff80207b6d:	c3                   	ret    
ffffffff80207b6e:	40 88 30             	mov    BYTE PTR [rax],sil
ffffffff80207b71:	48 83 fa 01          	cmp    rdx,0x1
ffffffff80207b75:	74 1e                	je     ffffffff80207b95 <memset+0x135>
ffffffff80207b77:	40 88 70 01          	mov    BYTE PTR [rax+0x1],sil
ffffffff80207b7b:	48 83 fa 02          	cmp    rdx,0x2
ffffffff80207b7f:	74 14                	je     ffffffff80207b95 <memset+0x135>
ffffffff80207b81:	40 88 70 02          	mov    BYTE PTR [rax+0x2],sil
ffffffff80207b85:	48 83 fa 03          	cmp    rdx,0x3
ffffffff80207b89:	74 0a                	je     ffffffff80207b95 <memset+0x135>
ffffffff80207b8b:	40 88 70 03          	mov    BYTE PTR [rax+0x3],sil
ffffffff80207b8f:	48 83 fa 04          	cmp    rdx,0x4
ffffffff80207b93:	75 01                	jne    ffffffff80207b96 <memset+0x136>
ffffffff80207b95:	c3                   	ret    
ffffffff80207b96:	40 88 70 04          	mov    BYTE PTR [rax+0x4],sil
ffffffff80207b9a:	48 83 fa 05          	cmp    rdx,0x5
ffffffff80207b9e:	74 f5                	je     ffffffff80207b95 <memset+0x135>
ffffffff80207ba0:	40 88 70 05          	mov    BYTE PTR [rax+0x5],sil
ffffffff80207ba4:	48 83 fa 06          	cmp    rdx,0x6
ffffffff80207ba8:	74 eb                	je     ffffffff80207b95 <memset+0x135>
ffffffff80207baa:	40 88 70 06          	mov    BYTE PTR [rax+0x6],sil
ffffffff80207bae:	c3                   	ret    
ffffffff80207baf:	90                   	nop

ffffffff80207bb0 <memcpy>:
ffffffff80207bb0:	48 89 f8             	mov    rax,rdi
ffffffff80207bb3:	48 85 d2             	test   rdx,rdx
ffffffff80207bb6:	0f 84 ed 00 00 00    	je     ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207bbc:	48 8d 4f 07          	lea    rcx,[rdi+0x7]
ffffffff80207bc0:	48 29 f1             	sub    rcx,rsi
ffffffff80207bc3:	48 83 f9 0e          	cmp    rcx,0xe
ffffffff80207bc7:	0f 86 c3 00 00 00    	jbe    ffffffff80207c90 <memcpy+0xe0>
ffffffff80207bcd:	48 8d 4a ff          	lea    rcx,[rdx-0x1]
ffffffff80207bd1:	48 83 f9 06          	cmp    rcx,0x6
ffffffff80207bd5:	0f 86 b5 00 00 00    	jbe    ffffffff80207c90 <memcpy+0xe0>
ffffffff80207bdb:	49 89 d0             	mov    r8,rdx
ffffffff80207bde:	31 c9                	xor    ecx,ecx
ffffffff80207be0:	49 83 e0 f8          	and    r8,0xfffffffffffffff8
ffffffff80207be4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207be8:	48 8b 3c 0e          	mov    rdi,QWORD PTR [rsi+rcx*1]
ffffffff80207bec:	48 89 3c 08          	mov    QWORD PTR [rax+rcx*1],rdi
ffffffff80207bf0:	48 83 c1 08          	add    rcx,0x8
ffffffff80207bf4:	4c 39 c1             	cmp    rcx,r8
ffffffff80207bf7:	75 ef                	jne    ffffffff80207be8 <memcpy+0x38>
ffffffff80207bf9:	48 89 d1             	mov    rcx,rdx
ffffffff80207bfc:	48 83 e1 f8          	and    rcx,0xfffffffffffffff8
ffffffff80207c00:	48 8d 3c 08          	lea    rdi,[rax+rcx*1]
ffffffff80207c04:	48 01 ce             	add    rsi,rcx
ffffffff80207c07:	48 39 ca             	cmp    rdx,rcx
ffffffff80207c0a:	0f 84 99 00 00 00    	je     ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207c10:	44 0f b6 06          	movzx  r8d,BYTE PTR [rsi]
ffffffff80207c14:	44 88 07             	mov    BYTE PTR [rdi],r8b
ffffffff80207c17:	4c 8d 41 01          	lea    r8,[rcx+0x1]
ffffffff80207c1b:	4c 39 c2             	cmp    rdx,r8
ffffffff80207c1e:	0f 86 85 00 00 00    	jbe    ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207c24:	44 0f b6 46 01       	movzx  r8d,BYTE PTR [rsi+0x1]
ffffffff80207c29:	44 88 47 01          	mov    BYTE PTR [rdi+0x1],r8b
ffffffff80207c2d:	4c 8d 41 02          	lea    r8,[rcx+0x2]
ffffffff80207c31:	4c 39 c2             	cmp    rdx,r8
ffffffff80207c34:	76 73                	jbe    ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207c36:	44 0f b6 46 02       	movzx  r8d,BYTE PTR [rsi+0x2]
ffffffff80207c3b:	44 88 47 02          	mov    BYTE PTR [rdi+0x2],r8b
ffffffff80207c3f:	4c 8d 41 03          	lea    r8,[rcx+0x3]
ffffffff80207c43:	4c 39 c2             	cmp    rdx,r8
ffffffff80207c46:	76 61                	jbe    ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207c48:	44 0f b6 46 03       	movzx  r8d,BYTE PTR [rsi+0x3]
ffffffff80207c4d:	44 88 47 03          	mov    BYTE PTR [rdi+0x3],r8b
ffffffff80207c51:	4c 8d 41 04          	lea    r8,[rcx+0x4]
ffffffff80207c55:	4c 39 c2             	cmp    rdx,r8
ffffffff80207c58:	76 4f                	jbe    ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207c5a:	44 0f b6 46 04       	movzx  r8d,BYTE PTR [rsi+0x4]
ffffffff80207c5f:	44 88 47 04          	mov    BYTE PTR [rdi+0x4],r8b
ffffffff80207c63:	4c 8d 41 05          	lea    r8,[rcx+0x5]
ffffffff80207c67:	4c 39 c2             	cmp    rdx,r8
ffffffff80207c6a:	76 3d                	jbe    ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207c6c:	44 0f b6 46 05       	movzx  r8d,BYTE PTR [rsi+0x5]
ffffffff80207c71:	48 83 c1 06          	add    rcx,0x6
ffffffff80207c75:	44 88 47 05          	mov    BYTE PTR [rdi+0x5],r8b
ffffffff80207c79:	48 39 ca             	cmp    rdx,rcx
ffffffff80207c7c:	76 2b                	jbe    ffffffff80207ca9 <memcpy+0xf9>
ffffffff80207c7e:	0f b6 56 06          	movzx  edx,BYTE PTR [rsi+0x6]
ffffffff80207c82:	88 57 06             	mov    BYTE PTR [rdi+0x6],dl
ffffffff80207c85:	c3                   	ret    
ffffffff80207c86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80207c8d:	00 00 00 
ffffffff80207c90:	31 c9                	xor    ecx,ecx
ffffffff80207c92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80207c98:	0f b6 3c 0e          	movzx  edi,BYTE PTR [rsi+rcx*1]
ffffffff80207c9c:	40 88 3c 08          	mov    BYTE PTR [rax+rcx*1],dil
ffffffff80207ca0:	48 83 c1 01          	add    rcx,0x1
ffffffff80207ca4:	48 39 ca             	cmp    rdx,rcx
ffffffff80207ca7:	75 ef                	jne    ffffffff80207c98 <memcpy+0xe8>
ffffffff80207ca9:	c3                   	ret    
ffffffff80207caa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff80207cb0 <sprintf>:
ffffffff80207cb0:	41 55                	push   r13
ffffffff80207cb2:	41 54                	push   r12
ffffffff80207cb4:	55                   	push   rbp
ffffffff80207cb5:	53                   	push   rbx
ffffffff80207cb6:	48 89 f3             	mov    rbx,rsi
ffffffff80207cb9:	48 83 ec 28          	sub    rsp,0x28
ffffffff80207cbd:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
ffffffff80207cc0:	84 c0                	test   al,al
ffffffff80207cc2:	74 56                	je     ffffffff80207d1a <sprintf+0x6a>
ffffffff80207cc4:	48 89 fd             	mov    rbp,rdi
ffffffff80207cc7:	49 89 d4             	mov    r12,rdx
ffffffff80207cca:	eb 19                	jmp    ffffffff80207ce5 <sprintf+0x35>
ffffffff80207ccc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80207cd0:	88 03                	mov    BYTE PTR [rbx],al
ffffffff80207cd2:	48 89 e8             	mov    rax,rbp
ffffffff80207cd5:	48 83 c3 01          	add    rbx,0x1
ffffffff80207cd9:	48 8d 68 01          	lea    rbp,[rax+0x1]
ffffffff80207cdd:	0f b6 40 01          	movzx  eax,BYTE PTR [rax+0x1]
ffffffff80207ce1:	84 c0                	test   al,al
ffffffff80207ce3:	74 35                	je     ffffffff80207d1a <sprintf+0x6a>
ffffffff80207ce5:	3c 7b                	cmp    al,0x7b
ffffffff80207ce7:	75 e7                	jne    ffffffff80207cd0 <sprintf+0x20>
ffffffff80207ce9:	0f b6 4d 01          	movzx  ecx,BYTE PTR [rbp+0x1]
ffffffff80207ced:	84 c9                	test   cl,cl
ffffffff80207cef:	74 df                	je     ffffffff80207cd0 <sprintf+0x20>
ffffffff80207cf1:	80 7d 02 7d          	cmp    BYTE PTR [rbp+0x2],0x7d
ffffffff80207cf5:	75 d9                	jne    ffffffff80207cd0 <sprintf+0x20>
ffffffff80207cf7:	80 f9 73             	cmp    cl,0x73
ffffffff80207cfa:	74 34                	je     ffffffff80207d30 <sprintf+0x80>
ffffffff80207cfc:	80 f9 78             	cmp    cl,0x78
ffffffff80207cff:	0f 84 bb 00 00 00    	je     ffffffff80207dc0 <sprintf+0x110>
ffffffff80207d05:	80 f9 64             	cmp    cl,0x64
ffffffff80207d08:	74 66                	je     ffffffff80207d70 <sprintf+0xc0>
ffffffff80207d0a:	48 8d 45 02          	lea    rax,[rbp+0x2]
ffffffff80207d0e:	48 8d 68 01          	lea    rbp,[rax+0x1]
ffffffff80207d12:	0f b6 40 01          	movzx  eax,BYTE PTR [rax+0x1]
ffffffff80207d16:	84 c0                	test   al,al
ffffffff80207d18:	75 cb                	jne    ffffffff80207ce5 <sprintf+0x35>
ffffffff80207d1a:	c6 03 00             	mov    BYTE PTR [rbx],0x0
ffffffff80207d1d:	48 83 c4 28          	add    rsp,0x28
ffffffff80207d21:	5b                   	pop    rbx
ffffffff80207d22:	5d                   	pop    rbp
ffffffff80207d23:	41 5c                	pop    r12
ffffffff80207d25:	41 5d                	pop    r13
ffffffff80207d27:	c3                   	ret    
ffffffff80207d28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80207d2f:	00 
ffffffff80207d30:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
ffffffff80207d34:	83 f8 2f             	cmp    eax,0x2f
ffffffff80207d37:	0f 87 ee 00 00 00    	ja     ffffffff80207e2b <sprintf+0x17b>
ffffffff80207d3d:	89 c2                	mov    edx,eax
ffffffff80207d3f:	83 c0 08             	add    eax,0x8
ffffffff80207d42:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
ffffffff80207d47:	41 89 04 24          	mov    DWORD PTR [r12],eax
ffffffff80207d4b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
ffffffff80207d4e:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
ffffffff80207d51:	84 c0                	test   al,al
ffffffff80207d53:	74 b5                	je     ffffffff80207d0a <sprintf+0x5a>
ffffffff80207d55:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80207d58:	48 83 c2 01          	add    rdx,0x1
ffffffff80207d5c:	88 03                	mov    BYTE PTR [rbx],al
ffffffff80207d5e:	48 83 c3 01          	add    rbx,0x1
ffffffff80207d62:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
ffffffff80207d65:	84 c0                	test   al,al
ffffffff80207d67:	75 ef                	jne    ffffffff80207d58 <sprintf+0xa8>
ffffffff80207d69:	eb 9f                	jmp    ffffffff80207d0a <sprintf+0x5a>
ffffffff80207d6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80207d70:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
ffffffff80207d74:	83 f8 2f             	cmp    eax,0x2f
ffffffff80207d77:	0f 87 c1 00 00 00    	ja     ffffffff80207e3e <sprintf+0x18e>
ffffffff80207d7d:	89 c2                	mov    edx,eax
ffffffff80207d7f:	83 c0 08             	add    eax,0x8
ffffffff80207d82:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
ffffffff80207d87:	41 89 04 24          	mov    DWORD PTR [r12],eax
ffffffff80207d8b:	48 8b 3a             	mov    rdi,QWORD PTR [rdx]
ffffffff80207d8e:	48 8d 74 24 1f       	lea    rsi,[rsp+0x1f]
ffffffff80207d93:	e8 28 0a 00 00       	call   ffffffff802087c0 <dec>
ffffffff80207d98:	0f b6 10             	movzx  edx,BYTE PTR [rax]
ffffffff80207d9b:	84 d2                	test   dl,dl
ffffffff80207d9d:	0f 84 67 ff ff ff    	je     ffffffff80207d0a <sprintf+0x5a>
ffffffff80207da3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80207da8:	48 83 c0 01          	add    rax,0x1
ffffffff80207dac:	88 13                	mov    BYTE PTR [rbx],dl
ffffffff80207dae:	48 83 c3 01          	add    rbx,0x1
ffffffff80207db2:	0f b6 10             	movzx  edx,BYTE PTR [rax]
ffffffff80207db5:	84 d2                	test   dl,dl
ffffffff80207db7:	75 ef                	jne    ffffffff80207da8 <sprintf+0xf8>
ffffffff80207db9:	e9 4c ff ff ff       	jmp    ffffffff80207d0a <sprintf+0x5a>
ffffffff80207dbe:	66 90                	xchg   ax,ax
ffffffff80207dc0:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
ffffffff80207dc4:	83 f8 2f             	cmp    eax,0x2f
ffffffff80207dc7:	77 52                	ja     ffffffff80207e1b <sprintf+0x16b>
ffffffff80207dc9:	89 c2                	mov    edx,eax
ffffffff80207dcb:	83 c0 08             	add    eax,0x8
ffffffff80207dce:	49 03 54 24 10       	add    rdx,QWORD PTR [r12+0x10]
ffffffff80207dd3:	41 89 04 24          	mov    DWORD PTR [r12],eax
ffffffff80207dd7:	b8 30 78 00 00       	mov    eax,0x7830
ffffffff80207ddc:	48 8b 3a             	mov    rdi,QWORD PTR [rdx]
ffffffff80207ddf:	48 8d 74 24 1f       	lea    rsi,[rsp+0x1f]
ffffffff80207de4:	4c 8d 6b 02          	lea    r13,[rbx+0x2]
ffffffff80207de8:	66 89 03             	mov    WORD PTR [rbx],ax
ffffffff80207deb:	e8 30 0a 00 00       	call   ffffffff80208820 <decX>
ffffffff80207df0:	0f b6 10             	movzx  edx,BYTE PTR [rax]
ffffffff80207df3:	84 d2                	test   dl,dl
ffffffff80207df5:	74 1c                	je     ffffffff80207e13 <sprintf+0x163>
ffffffff80207df7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80207dfe:	00 00 
ffffffff80207e00:	48 83 c0 01          	add    rax,0x1
ffffffff80207e04:	41 88 55 00          	mov    BYTE PTR [r13+0x0],dl
ffffffff80207e08:	49 83 c5 01          	add    r13,0x1
ffffffff80207e0c:	0f b6 10             	movzx  edx,BYTE PTR [rax]
ffffffff80207e0f:	84 d2                	test   dl,dl
ffffffff80207e11:	75 ed                	jne    ffffffff80207e00 <sprintf+0x150>
ffffffff80207e13:	4c 89 eb             	mov    rbx,r13
ffffffff80207e16:	e9 ef fe ff ff       	jmp    ffffffff80207d0a <sprintf+0x5a>
ffffffff80207e1b:	49 8b 54 24 08       	mov    rdx,QWORD PTR [r12+0x8]
ffffffff80207e20:	48 8d 42 08          	lea    rax,[rdx+0x8]
ffffffff80207e24:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
ffffffff80207e29:	eb ac                	jmp    ffffffff80207dd7 <sprintf+0x127>
ffffffff80207e2b:	49 8b 54 24 08       	mov    rdx,QWORD PTR [r12+0x8]
ffffffff80207e30:	48 8d 42 08          	lea    rax,[rdx+0x8]
ffffffff80207e34:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
ffffffff80207e39:	e9 0d ff ff ff       	jmp    ffffffff80207d4b <sprintf+0x9b>
ffffffff80207e3e:	49 8b 54 24 08       	mov    rdx,QWORD PTR [r12+0x8]
ffffffff80207e43:	48 8d 42 08          	lea    rax,[rdx+0x8]
ffffffff80207e47:	49 89 44 24 08       	mov    QWORD PTR [r12+0x8],rax
ffffffff80207e4c:	e9 3a ff ff ff       	jmp    ffffffff80207d8b <sprintf+0xdb>
ffffffff80207e51:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80207e56:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff80207e5d:	00 00 00 

ffffffff80207e60 <printf>:
ffffffff80207e60:	48 81 ec 48 02 00 00 	sub    rsp,0x248
ffffffff80207e67:	48 8d 84 24 50 02 00 	lea    rax,[rsp+0x250]
ffffffff80207e6e:	00 
ffffffff80207e6f:	48 89 b4 24 18 02 00 	mov    QWORD PTR [rsp+0x218],rsi
ffffffff80207e76:	00 
ffffffff80207e77:	48 8d 74 24 1c       	lea    rsi,[rsp+0x1c]
ffffffff80207e7c:	48 89 94 24 20 02 00 	mov    QWORD PTR [rsp+0x220],rdx
ffffffff80207e83:	00 
ffffffff80207e84:	48 89 e2             	mov    rdx,rsp
ffffffff80207e87:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
ffffffff80207e8c:	48 8d 84 24 10 02 00 	lea    rax,[rsp+0x210]
ffffffff80207e93:	00 
ffffffff80207e94:	48 89 8c 24 28 02 00 	mov    QWORD PTR [rsp+0x228],rcx
ffffffff80207e9b:	00 
ffffffff80207e9c:	4c 89 84 24 30 02 00 	mov    QWORD PTR [rsp+0x230],r8
ffffffff80207ea3:	00 
ffffffff80207ea4:	4c 89 8c 24 38 02 00 	mov    QWORD PTR [rsp+0x238],r9
ffffffff80207eab:	00 
ffffffff80207eac:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
ffffffff80207eb1:	c7 04 24 08 00 00 00 	mov    DWORD PTR [rsp],0x8
ffffffff80207eb8:	e8 f3 fd ff ff       	call   ffffffff80207cb0 <sprintf>
ffffffff80207ebd:	48 8d 74 24 1c       	lea    rsi,[rsp+0x1c]
ffffffff80207ec2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80207ec7:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80207ece:	e8 1d 8d ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80207ed3:	48 81 c4 48 02 00 00 	add    rsp,0x248
ffffffff80207eda:	c3                   	ret    
ffffffff80207edb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

ffffffff80207ee0 <free.part.0>:
ffffffff80207ee0:	53                   	push   rbx
ffffffff80207ee1:	31 c0                	xor    eax,eax
ffffffff80207ee3:	48 89 fb             	mov    rbx,rdi
ffffffff80207ee6:	e8 75 08 00 00       	call   ffffffff80208760 <liballoc_lock>
ffffffff80207eeb:	89 d8                	mov    eax,ebx
ffffffff80207eed:	81 78 d0 de c0 01 c0 	cmp    DWORD PTR [rax-0x30],0xc001c0de
ffffffff80207ef4:	0f 85 6b 01 00 00    	jne    ffffffff80208065 <free.part.0+0x185>
ffffffff80207efa:	48 8d 78 d0          	lea    rdi,[rax-0x30]
ffffffff80207efe:	48 8b 57 18          	mov    rdx,QWORD PTR [rdi+0x18]
ffffffff80207f02:	8b 77 08             	mov    esi,DWORD PTR [rdi+0x8]
ffffffff80207f05:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
ffffffff80207f09:	48 85 c0             	test   rax,rax
ffffffff80207f0c:	75 4e                	jne    ffffffff80207f5c <free.part.0+0x7c>
ffffffff80207f0e:	e9 f0 00 00 00       	jmp    ffffffff80208003 <free.part.0+0x123>
ffffffff80207f13:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80207f18:	48 8b 48 28          	mov    rcx,QWORD PTR [rax+0x28]
ffffffff80207f1c:	48 85 c9             	test   rcx,rcx
ffffffff80207f1f:	74 08                	je     ffffffff80207f29 <free.part.0+0x49>
ffffffff80207f21:	48 89 79 20          	mov    QWORD PTR [rcx+0x20],rdi
ffffffff80207f25:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
ffffffff80207f29:	48 85 ff             	test   rdi,rdi
ffffffff80207f2c:	74 04                	je     ffffffff80207f32 <free.part.0+0x52>
ffffffff80207f2e:	48 89 4f 28          	mov    QWORD PTR [rdi+0x28],rcx
ffffffff80207f32:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
ffffffff80207f36:	48 c7 40 20 00 00 00 	mov    QWORD PTR [rax+0x20],0x0
ffffffff80207f3d:	00 
ffffffff80207f3e:	48 89 c7             	mov    rdi,rax
ffffffff80207f41:	48 c7 40 28 00 00 00 	mov    QWORD PTR [rax+0x28],0x0
ffffffff80207f48:	00 
ffffffff80207f49:	c7 40 0c ff ff ff ff 	mov    DWORD PTR [rax+0xc],0xffffffff
ffffffff80207f50:	48 85 c9             	test   rcx,rcx
ffffffff80207f53:	0f 84 aa 00 00 00    	je     ffffffff80208003 <free.part.0+0x123>
ffffffff80207f59:	48 89 c8             	mov    rax,rcx
ffffffff80207f5c:	48 63 48 0c          	movsxd rcx,DWORD PTR [rax+0xc]
ffffffff80207f60:	85 c9                	test   ecx,ecx
ffffffff80207f62:	0f 88 9b 00 00 00    	js     ffffffff80208003 <free.part.0+0x123>
ffffffff80207f68:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
ffffffff80207f6c:	48 8b 7f 18          	mov    rdi,QWORD PTR [rdi+0x18]
ffffffff80207f70:	03 70 08             	add    esi,DWORD PTR [rax+0x8]
ffffffff80207f73:	89 70 08             	mov    DWORD PTR [rax+0x8],esi
ffffffff80207f76:	48 85 ff             	test   rdi,rdi
ffffffff80207f79:	74 04                	je     ffffffff80207f7f <free.part.0+0x9f>
ffffffff80207f7b:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
ffffffff80207f7f:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
ffffffff80207f83:	48 39 04 cd 40 d6 20 	cmp    QWORD PTR [rcx*8-0x7fdf29c0],rax
ffffffff80207f8a:	80 
ffffffff80207f8b:	75 8b                	jne    ffffffff80207f18 <free.part.0+0x38>
ffffffff80207f8d:	48 89 3c cd 40 d6 20 	mov    QWORD PTR [rcx*8-0x7fdf29c0],rdi
ffffffff80207f94:	80 
ffffffff80207f95:	48 8b 78 20          	mov    rdi,QWORD PTR [rax+0x20]
ffffffff80207f99:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
ffffffff80207f9d:	e9 76 ff ff ff       	jmp    ffffffff80207f18 <free.part.0+0x38>
ffffffff80207fa2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80207fa8:	48 89 0c c5 40 d6 20 	mov    QWORD PTR [rax*8-0x7fdf29c0],rcx
ffffffff80207faf:	80 
ffffffff80207fb0:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
ffffffff80207fb4:	48 8b 42 28          	mov    rax,QWORD PTR [rdx+0x28]
ffffffff80207fb8:	48 85 c0             	test   rax,rax
ffffffff80207fbb:	74 08                	je     ffffffff80207fc5 <free.part.0+0xe5>
ffffffff80207fbd:	48 89 48 20          	mov    QWORD PTR [rax+0x20],rcx
ffffffff80207fc1:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
ffffffff80207fc5:	48 85 c9             	test   rcx,rcx
ffffffff80207fc8:	74 04                	je     ffffffff80207fce <free.part.0+0xee>
ffffffff80207fca:	48 89 41 28          	mov    QWORD PTR [rcx+0x28],rax
ffffffff80207fce:	48 8b 42 18          	mov    rax,QWORD PTR [rdx+0x18]
ffffffff80207fd2:	48 c7 42 20 00 00 00 	mov    QWORD PTR [rdx+0x20],0x0
ffffffff80207fd9:	00 
ffffffff80207fda:	48 c7 42 28 00 00 00 	mov    QWORD PTR [rdx+0x28],0x0
ffffffff80207fe1:	00 
ffffffff80207fe2:	03 72 08             	add    esi,DWORD PTR [rdx+0x8]
ffffffff80207fe5:	c7 42 0c ff ff ff ff 	mov    DWORD PTR [rdx+0xc],0xffffffff
ffffffff80207fec:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
ffffffff80207ff0:	48 8b 52 18          	mov    rdx,QWORD PTR [rdx+0x18]
ffffffff80207ff4:	89 77 08             	mov    DWORD PTR [rdi+0x8],esi
ffffffff80207ff7:	48 85 d2             	test   rdx,rdx
ffffffff80207ffa:	74 04                	je     ffffffff80208000 <free.part.0+0x120>
ffffffff80207ffc:	48 89 7a 10          	mov    QWORD PTR [rdx+0x10],rdi
ffffffff80208000:	48 89 c2             	mov    rdx,rax
ffffffff80208003:	48 85 d2             	test   rdx,rdx
ffffffff80208006:	74 68                	je     ffffffff80208070 <free.part.0+0x190>
ffffffff80208008:	48 63 42 0c          	movsxd rax,DWORD PTR [rdx+0xc]
ffffffff8020800c:	85 c0                	test   eax,eax
ffffffff8020800e:	0f 88 9c 00 00 00    	js     ffffffff802080b0 <free.part.0+0x1d0>
ffffffff80208014:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
ffffffff80208018:	48 3b 14 c5 40 d6 20 	cmp    rdx,QWORD PTR [rax*8-0x7fdf29c0]
ffffffff8020801f:	80 
ffffffff80208020:	75 92                	jne    ffffffff80207fb4 <free.part.0+0xd4>
ffffffff80208022:	eb 84                	jmp    ffffffff80207fa8 <free.part.0+0xc8>
ffffffff80208024:	b8 08 00 00 00       	mov    eax,0x8
ffffffff80208029:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80208030:	48 0b 57 10          	or     rdx,QWORD PTR [rdi+0x10]
ffffffff80208034:	48 63 c8             	movsxd rcx,eax
ffffffff80208037:	0f 84 93 00 00 00    	je     ffffffff802080d0 <free.part.0+0x1f0>
ffffffff8020803d:	89 47 0c             	mov    DWORD PTR [rdi+0xc],eax
ffffffff80208040:	48 8b 04 cd 40 d6 20 	mov    rax,QWORD PTR [rcx*8-0x7fdf29c0]
ffffffff80208047:	80 
ffffffff80208048:	48 85 c0             	test   rax,rax
ffffffff8020804b:	74 10                	je     ffffffff8020805d <free.part.0+0x17d>
ffffffff8020804d:	48 89 78 28          	mov    QWORD PTR [rax+0x28],rdi
ffffffff80208051:	48 8b 04 cd 40 d6 20 	mov    rax,QWORD PTR [rcx*8-0x7fdf29c0]
ffffffff80208058:	80 
ffffffff80208059:	48 89 47 20          	mov    QWORD PTR [rdi+0x20],rax
ffffffff8020805d:	48 89 3c cd 40 d6 20 	mov    QWORD PTR [rcx*8-0x7fdf29c0],rdi
ffffffff80208064:	80 
ffffffff80208065:	31 c0                	xor    eax,eax
ffffffff80208067:	5b                   	pop    rbx
ffffffff80208068:	e9 13 07 00 00       	jmp    ffffffff80208780 <liballoc_unlock>
ffffffff8020806d:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80208070:	44 8d 4e d0          	lea    r9d,[rsi-0x30]
ffffffff80208074:	41 81 f9 ff 00 00 00 	cmp    r9d,0xff
ffffffff8020807b:	76 a7                	jbe    ffffffff80208024 <free.part.0+0x144>
ffffffff8020807d:	b9 08 00 00 00       	mov    ecx,0x8
ffffffff80208082:	41 ba 01 00 00 00    	mov    r10d,0x1
ffffffff80208088:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020808f:	00 
ffffffff80208090:	89 c8                	mov    eax,ecx
ffffffff80208092:	8d 49 01             	lea    ecx,[rcx+0x1]
ffffffff80208095:	83 f8 1f             	cmp    eax,0x1f
ffffffff80208098:	74 96                	je     ffffffff80208030 <free.part.0+0x150>
ffffffff8020809a:	45 89 d0             	mov    r8d,r10d
ffffffff8020809d:	41 d3 e0             	shl    r8d,cl
ffffffff802080a0:	45 39 c8             	cmp    r8d,r9d
ffffffff802080a3:	76 eb                	jbe    ffffffff80208090 <free.part.0+0x1b0>
ffffffff802080a5:	eb 89                	jmp    ffffffff80208030 <free.part.0+0x150>
ffffffff802080a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff802080ae:	00 00 
ffffffff802080b0:	44 8d 4e d0          	lea    r9d,[rsi-0x30]
ffffffff802080b4:	41 81 f9 ff 00 00 00 	cmp    r9d,0xff
ffffffff802080bb:	77 c0                	ja     ffffffff8020807d <free.part.0+0x19d>
ffffffff802080bd:	b8 08 00 00 00       	mov    eax,0x8
ffffffff802080c2:	b9 08 00 00 00       	mov    ecx,0x8
ffffffff802080c7:	e9 71 ff ff ff       	jmp    ffffffff8020803d <free.part.0+0x15d>
ffffffff802080cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802080d0:	8b 14 8d 40 d7 20 80 	mov    edx,DWORD PTR [rcx*4-0x7fdf28c0]
ffffffff802080d7:	83 fa 05             	cmp    edx,0x5
ffffffff802080da:	74 0f                	je     ffffffff802080eb <free.part.0+0x20b>
ffffffff802080dc:	83 c2 01             	add    edx,0x1
ffffffff802080df:	89 14 8d 40 d7 20 80 	mov    DWORD PTR [rcx*4-0x7fdf28c0],edx
ffffffff802080e6:	e9 52 ff ff ff       	jmp    ffffffff8020803d <free.part.0+0x15d>
ffffffff802080eb:	89 f0                	mov    eax,esi
ffffffff802080ed:	81 e6 ff 0f 00 00    	and    esi,0xfff
ffffffff802080f3:	c1 e8 0c             	shr    eax,0xc
ffffffff802080f6:	83 fe 01             	cmp    esi,0x1
ffffffff802080f9:	be 10 00 00 00       	mov    esi,0x10
ffffffff802080fe:	83 d8 ff             	sbb    eax,0xffffffff
ffffffff80208101:	83 f8 10             	cmp    eax,0x10
ffffffff80208104:	0f 43 f0             	cmovae esi,eax
ffffffff80208107:	e8 94 06 00 00       	call   ffffffff802087a0 <liballoc_free>
ffffffff8020810c:	31 c0                	xor    eax,eax
ffffffff8020810e:	5b                   	pop    rbx
ffffffff8020810f:	e9 6c 06 00 00       	jmp    ffffffff80208780 <liballoc_unlock>
ffffffff80208114:	66 90                	xchg   ax,ax
ffffffff80208116:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020811d:	00 00 00 

ffffffff80208120 <malloc>:
ffffffff80208120:	41 54                	push   r12
ffffffff80208122:	31 c0                	xor    eax,eax
ffffffff80208124:	55                   	push   rbp
ffffffff80208125:	48 89 fd             	mov    rbp,rdi
ffffffff80208128:	53                   	push   rbx
ffffffff80208129:	e8 32 06 00 00       	call   ffffffff80208760 <liballoc_lock>
ffffffff8020812e:	8b 05 ac 4c 00 00    	mov    eax,DWORD PTR [rip+0x4cac]        # ffffffff8020cde0 <l_initialized>
ffffffff80208134:	85 c0                	test   eax,eax
ffffffff80208136:	0f 85 68 01 00 00    	jne    ffffffff802082a4 <malloc+0x184>
ffffffff8020813c:	48 8b 05 75 17 00 00 	mov    rax,QWORD PTR [rip+0x1775]        # ffffffff802098b8 <__func__.1725+0x10>
ffffffff80208143:	48 8b 15 6e 17 00 00 	mov    rdx,QWORD PTR [rip+0x176e]        # ffffffff802098b8 <__func__.1725+0x10>
ffffffff8020814a:	48 89 05 ef 54 00 00 	mov    QWORD PTR [rip+0x54ef],rax        # ffffffff8020d640 <l_freePages>
ffffffff80208151:	48 89 05 f0 54 00 00 	mov    QWORD PTR [rip+0x54f0],rax        # ffffffff8020d648 <l_freePages+0x8>
ffffffff80208158:	48 89 15 e1 55 00 00 	mov    QWORD PTR [rip+0x55e1],rdx        # ffffffff8020d740 <l_completePages>
ffffffff8020815f:	48 89 05 ea 54 00 00 	mov    QWORD PTR [rip+0x54ea],rax        # ffffffff8020d650 <l_freePages+0x10>
ffffffff80208166:	48 89 05 eb 54 00 00 	mov    QWORD PTR [rip+0x54eb],rax        # ffffffff8020d658 <l_freePages+0x18>
ffffffff8020816d:	48 89 15 d4 55 00 00 	mov    QWORD PTR [rip+0x55d4],rdx        # ffffffff8020d748 <l_completePages+0x8>
ffffffff80208174:	48 89 05 e5 54 00 00 	mov    QWORD PTR [rip+0x54e5],rax        # ffffffff8020d660 <l_freePages+0x20>
ffffffff8020817b:	48 89 05 e6 54 00 00 	mov    QWORD PTR [rip+0x54e6],rax        # ffffffff8020d668 <l_freePages+0x28>
ffffffff80208182:	48 89 15 c7 55 00 00 	mov    QWORD PTR [rip+0x55c7],rdx        # ffffffff8020d750 <l_completePages+0x10>
ffffffff80208189:	48 89 05 e0 54 00 00 	mov    QWORD PTR [rip+0x54e0],rax        # ffffffff8020d670 <l_freePages+0x30>
ffffffff80208190:	48 89 05 e1 54 00 00 	mov    QWORD PTR [rip+0x54e1],rax        # ffffffff8020d678 <l_freePages+0x38>
ffffffff80208197:	48 89 15 ba 55 00 00 	mov    QWORD PTR [rip+0x55ba],rdx        # ffffffff8020d758 <l_completePages+0x18>
ffffffff8020819e:	48 89 05 db 54 00 00 	mov    QWORD PTR [rip+0x54db],rax        # ffffffff8020d680 <l_freePages+0x40>
ffffffff802081a5:	48 89 05 dc 54 00 00 	mov    QWORD PTR [rip+0x54dc],rax        # ffffffff8020d688 <l_freePages+0x48>
ffffffff802081ac:	48 89 15 ad 55 00 00 	mov    QWORD PTR [rip+0x55ad],rdx        # ffffffff8020d760 <l_completePages+0x20>
ffffffff802081b3:	48 89 05 d6 54 00 00 	mov    QWORD PTR [rip+0x54d6],rax        # ffffffff8020d690 <l_freePages+0x50>
ffffffff802081ba:	48 89 05 d7 54 00 00 	mov    QWORD PTR [rip+0x54d7],rax        # ffffffff8020d698 <l_freePages+0x58>
ffffffff802081c1:	48 89 15 a0 55 00 00 	mov    QWORD PTR [rip+0x55a0],rdx        # ffffffff8020d768 <l_completePages+0x28>
ffffffff802081c8:	48 89 05 d1 54 00 00 	mov    QWORD PTR [rip+0x54d1],rax        # ffffffff8020d6a0 <l_freePages+0x60>
ffffffff802081cf:	48 89 05 d2 54 00 00 	mov    QWORD PTR [rip+0x54d2],rax        # ffffffff8020d6a8 <l_freePages+0x68>
ffffffff802081d6:	48 89 15 93 55 00 00 	mov    QWORD PTR [rip+0x5593],rdx        # ffffffff8020d770 <l_completePages+0x30>
ffffffff802081dd:	48 89 05 cc 54 00 00 	mov    QWORD PTR [rip+0x54cc],rax        # ffffffff8020d6b0 <l_freePages+0x70>
ffffffff802081e4:	48 89 05 cd 54 00 00 	mov    QWORD PTR [rip+0x54cd],rax        # ffffffff8020d6b8 <l_freePages+0x78>
ffffffff802081eb:	48 89 15 86 55 00 00 	mov    QWORD PTR [rip+0x5586],rdx        # ffffffff8020d778 <l_completePages+0x38>
ffffffff802081f2:	48 89 05 c7 54 00 00 	mov    QWORD PTR [rip+0x54c7],rax        # ffffffff8020d6c0 <l_freePages+0x80>
ffffffff802081f9:	48 89 05 c8 54 00 00 	mov    QWORD PTR [rip+0x54c8],rax        # ffffffff8020d6c8 <l_freePages+0x88>
ffffffff80208200:	48 89 15 79 55 00 00 	mov    QWORD PTR [rip+0x5579],rdx        # ffffffff8020d780 <l_completePages+0x40>
ffffffff80208207:	48 89 05 c2 54 00 00 	mov    QWORD PTR [rip+0x54c2],rax        # ffffffff8020d6d0 <l_freePages+0x90>
ffffffff8020820e:	48 89 05 c3 54 00 00 	mov    QWORD PTR [rip+0x54c3],rax        # ffffffff8020d6d8 <l_freePages+0x98>
ffffffff80208215:	48 89 15 6c 55 00 00 	mov    QWORD PTR [rip+0x556c],rdx        # ffffffff8020d788 <l_completePages+0x48>
ffffffff8020821c:	48 89 05 bd 54 00 00 	mov    QWORD PTR [rip+0x54bd],rax        # ffffffff8020d6e0 <l_freePages+0xa0>
ffffffff80208223:	48 89 05 be 54 00 00 	mov    QWORD PTR [rip+0x54be],rax        # ffffffff8020d6e8 <l_freePages+0xa8>
ffffffff8020822a:	48 89 15 5f 55 00 00 	mov    QWORD PTR [rip+0x555f],rdx        # ffffffff8020d790 <l_completePages+0x50>
ffffffff80208231:	48 89 05 b8 54 00 00 	mov    QWORD PTR [rip+0x54b8],rax        # ffffffff8020d6f0 <l_freePages+0xb0>
ffffffff80208238:	48 89 05 b9 54 00 00 	mov    QWORD PTR [rip+0x54b9],rax        # ffffffff8020d6f8 <l_freePages+0xb8>
ffffffff8020823f:	48 89 15 52 55 00 00 	mov    QWORD PTR [rip+0x5552],rdx        # ffffffff8020d798 <l_completePages+0x58>
ffffffff80208246:	48 89 05 b3 54 00 00 	mov    QWORD PTR [rip+0x54b3],rax        # ffffffff8020d700 <l_freePages+0xc0>
ffffffff8020824d:	48 89 05 b4 54 00 00 	mov    QWORD PTR [rip+0x54b4],rax        # ffffffff8020d708 <l_freePages+0xc8>
ffffffff80208254:	48 89 15 45 55 00 00 	mov    QWORD PTR [rip+0x5545],rdx        # ffffffff8020d7a0 <l_completePages+0x60>
ffffffff8020825b:	48 89 05 ae 54 00 00 	mov    QWORD PTR [rip+0x54ae],rax        # ffffffff8020d710 <l_freePages+0xd0>
ffffffff80208262:	48 89 05 af 54 00 00 	mov    QWORD PTR [rip+0x54af],rax        # ffffffff8020d718 <l_freePages+0xd8>
ffffffff80208269:	48 89 15 38 55 00 00 	mov    QWORD PTR [rip+0x5538],rdx        # ffffffff8020d7a8 <l_completePages+0x68>
ffffffff80208270:	48 89 05 a9 54 00 00 	mov    QWORD PTR [rip+0x54a9],rax        # ffffffff8020d720 <l_freePages+0xe0>
ffffffff80208277:	48 89 05 aa 54 00 00 	mov    QWORD PTR [rip+0x54aa],rax        # ffffffff8020d728 <l_freePages+0xe8>
ffffffff8020827e:	48 89 15 2b 55 00 00 	mov    QWORD PTR [rip+0x552b],rdx        # ffffffff8020d7b0 <l_completePages+0x70>
ffffffff80208285:	48 89 05 a4 54 00 00 	mov    QWORD PTR [rip+0x54a4],rax        # ffffffff8020d730 <l_freePages+0xf0>
ffffffff8020828c:	48 89 05 a5 54 00 00 	mov    QWORD PTR [rip+0x54a5],rax        # ffffffff8020d738 <l_freePages+0xf8>
ffffffff80208293:	48 89 15 1e 55 00 00 	mov    QWORD PTR [rip+0x551e],rdx        # ffffffff8020d7b8 <l_completePages+0x78>
ffffffff8020829a:	c7 05 3c 4b 00 00 01 	mov    DWORD PTR [rip+0x4b3c],0x1        # ffffffff8020cde0 <l_initialized>
ffffffff802082a1:	00 00 00 
ffffffff802082a4:	89 ef                	mov    edi,ebp
ffffffff802082a6:	81 fd ff 00 00 00    	cmp    ebp,0xff
ffffffff802082ac:	0f 86 2f 02 00 00    	jbe    ffffffff802084e1 <malloc+0x3c1>
ffffffff802082b2:	b9 08 00 00 00       	mov    ecx,0x8
ffffffff802082b7:	be 01 00 00 00       	mov    esi,0x1
ffffffff802082bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802082c0:	89 c8                	mov    eax,ecx
ffffffff802082c2:	8d 49 01             	lea    ecx,[rcx+0x1]
ffffffff802082c5:	83 f8 1f             	cmp    eax,0x1f
ffffffff802082c8:	74 08                	je     ffffffff802082d2 <malloc+0x1b2>
ffffffff802082ca:	89 f2                	mov    edx,esi
ffffffff802082cc:	d3 e2                	shl    edx,cl
ffffffff802082ce:	39 d7                	cmp    edi,edx
ffffffff802082d0:	73 ee                	jae    ffffffff802082c0 <malloc+0x1a0>
ffffffff802082d2:	48 63 c8             	movsxd rcx,eax
ffffffff802082d5:	48 8b 04 cd 40 d6 20 	mov    rax,QWORD PTR [rcx*8-0x7fdf29c0]
ffffffff802082dc:	80 
ffffffff802082dd:	48 85 c0             	test   rax,rax
ffffffff802082e0:	0f 84 82 01 00 00    	je     ffffffff80208468 <malloc+0x348>
ffffffff802082e6:	48 8d 7d 30          	lea    rdi,[rbp+0x30]
ffffffff802082ea:	eb 0d                	jmp    ffffffff802082f9 <malloc+0x1d9>
ffffffff802082ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff802082f0:	48 85 c0             	test   rax,rax
ffffffff802082f3:	0f 84 6f 01 00 00    	je     ffffffff80208468 <malloc+0x348>
ffffffff802082f9:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
ffffffff802082fc:	49 89 c4             	mov    r12,rax
ffffffff802082ff:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
ffffffff80208303:	48 89 d6             	mov    rsi,rdx
ffffffff80208306:	48 83 ea 30          	sub    rdx,0x30
ffffffff8020830a:	48 39 fa             	cmp    rdx,rdi
ffffffff8020830d:	72 e1                	jb     ffffffff802082f0 <malloc+0x1d0>
ffffffff8020830f:	49 63 54 24 0c       	movsxd rdx,DWORD PTR [r12+0xc]
ffffffff80208314:	4c 39 24 d5 40 d6 20 	cmp    QWORD PTR [rdx*8-0x7fdf29c0],r12
ffffffff8020831b:	80 
ffffffff8020831c:	0f 84 2e 01 00 00    	je     ffffffff80208450 <malloc+0x330>
ffffffff80208322:	49 8b 54 24 28       	mov    rdx,QWORD PTR [r12+0x28]
ffffffff80208327:	48 85 d2             	test   rdx,rdx
ffffffff8020832a:	74 09                	je     ffffffff80208335 <malloc+0x215>
ffffffff8020832c:	48 89 42 20          	mov    QWORD PTR [rdx+0x20],rax
ffffffff80208330:	49 8b 44 24 20       	mov    rax,QWORD PTR [r12+0x20]
ffffffff80208335:	48 85 c0             	test   rax,rax
ffffffff80208338:	74 04                	je     ffffffff8020833e <malloc+0x21e>
ffffffff8020833a:	48 89 50 28          	mov    QWORD PTR [rax+0x28],rdx
ffffffff8020833e:	49 c7 44 24 20 00 00 	mov    QWORD PTR [r12+0x20],0x0
ffffffff80208345:	00 00 
ffffffff80208347:	49 83 7c 24 10 00    	cmp    QWORD PTR [r12+0x10],0x0
ffffffff8020834d:	49 c7 44 24 28 00 00 	mov    QWORD PTR [r12+0x28],0x0
ffffffff80208354:	00 00 
ffffffff80208356:	41 c7 44 24 0c ff ff 	mov    DWORD PTR [r12+0xc],0xffffffff
ffffffff8020835d:	ff ff 
ffffffff8020835f:	0f 84 cb 00 00 00    	je     ffffffff80208430 <malloc+0x310>
ffffffff80208365:	29 ee                	sub    esi,ebp
ffffffff80208367:	41 89 6c 24 04       	mov    DWORD PTR [r12+0x4],ebp
ffffffff8020836c:	45 89 e1             	mov    r9d,r12d
ffffffff8020836f:	8d 86 a0 fe ff ff    	lea    eax,[rsi-0x160]
ffffffff80208375:	3d ff fe ff 7f       	cmp    eax,0x7ffffeff
ffffffff8020837a:	0f 87 9c 00 00 00    	ja     ffffffff8020841c <malloc+0x2fc>
ffffffff80208380:	49 8b 44 24 18       	mov    rax,QWORD PTR [r12+0x18]
ffffffff80208385:	89 ed                	mov    ebp,ebp
ffffffff80208387:	83 ee 30             	sub    esi,0x30
ffffffff8020838a:	49 8d 7c 29 30       	lea    rdi,[r9+rbp*1+0x30]
ffffffff8020838f:	c7 07 de c0 01 c0    	mov    DWORD PTR [rdi],0xc001c0de
ffffffff80208395:	89 77 08             	mov    DWORD PTR [rdi+0x8],esi
ffffffff80208398:	48 c7 47 20 00 00 00 	mov    QWORD PTR [rdi+0x20],0x0
ffffffff8020839f:	00 
ffffffff802083a0:	48 c7 47 28 00 00 00 	mov    QWORD PTR [rdi+0x28],0x0
ffffffff802083a7:	00 
ffffffff802083a8:	4c 89 67 10          	mov    QWORD PTR [rdi+0x10],r12
ffffffff802083ac:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
ffffffff802083b0:	48 85 c0             	test   rax,rax
ffffffff802083b3:	74 04                	je     ffffffff802083b9 <malloc+0x299>
ffffffff802083b5:	48 89 78 10          	mov    QWORD PTR [rax+0x10],rdi
ffffffff802083b9:	41 29 74 24 08       	sub    DWORD PTR [r12+0x8],esi
ffffffff802083be:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
ffffffff802083c1:	49 89 7c 24 18       	mov    QWORD PTR [r12+0x18],rdi
ffffffff802083c6:	8d 70 d0             	lea    esi,[rax-0x30]
ffffffff802083c9:	81 fe ff 00 00 00    	cmp    esi,0xff
ffffffff802083cf:	0f 86 16 01 00 00    	jbe    ffffffff802084eb <malloc+0x3cb>
ffffffff802083d5:	b9 08 00 00 00       	mov    ecx,0x8
ffffffff802083da:	41 b8 01 00 00 00    	mov    r8d,0x1
ffffffff802083e0:	48 63 c1             	movsxd rax,ecx
ffffffff802083e3:	8d 48 01             	lea    ecx,[rax+0x1]
ffffffff802083e6:	83 f8 1f             	cmp    eax,0x1f
ffffffff802083e9:	74 09                	je     ffffffff802083f4 <malloc+0x2d4>
ffffffff802083eb:	44 89 c2             	mov    edx,r8d
ffffffff802083ee:	d3 e2                	shl    edx,cl
ffffffff802083f0:	39 d6                	cmp    esi,edx
ffffffff802083f2:	73 ec                	jae    ffffffff802083e0 <malloc+0x2c0>
ffffffff802083f4:	48 8b 14 c5 40 d6 20 	mov    rdx,QWORD PTR [rax*8-0x7fdf29c0]
ffffffff802083fb:	80 
ffffffff802083fc:	89 47 0c             	mov    DWORD PTR [rdi+0xc],eax
ffffffff802083ff:	48 85 d2             	test   rdx,rdx
ffffffff80208402:	74 10                	je     ffffffff80208414 <malloc+0x2f4>
ffffffff80208404:	48 89 7a 28          	mov    QWORD PTR [rdx+0x28],rdi
ffffffff80208408:	48 8b 14 c5 40 d6 20 	mov    rdx,QWORD PTR [rax*8-0x7fdf29c0]
ffffffff8020840f:	80 
ffffffff80208410:	48 89 57 20          	mov    QWORD PTR [rdi+0x20],rdx
ffffffff80208414:	48 89 3c c5 40 d6 20 	mov    QWORD PTR [rax*8-0x7fdf29c0],rdi
ffffffff8020841b:	80 
ffffffff8020841c:	4d 8d 61 30          	lea    r12,[r9+0x30]
ffffffff80208420:	31 c0                	xor    eax,eax
ffffffff80208422:	e8 59 03 00 00       	call   ffffffff80208780 <liballoc_unlock>
ffffffff80208427:	4c 89 e0             	mov    rax,r12
ffffffff8020842a:	5b                   	pop    rbx
ffffffff8020842b:	5d                   	pop    rbp
ffffffff8020842c:	41 5c                	pop    r12
ffffffff8020842e:	c3                   	ret    
ffffffff8020842f:	90                   	nop
ffffffff80208430:	49 83 7c 24 18 00    	cmp    QWORD PTR [r12+0x18],0x0
ffffffff80208436:	0f 85 29 ff ff ff    	jne    ffffffff80208365 <malloc+0x245>
ffffffff8020843c:	83 2c 8d 40 d7 20 80 	sub    DWORD PTR [rcx*4-0x7fdf28c0],0x1
ffffffff80208443:	01 
ffffffff80208444:	41 8b 74 24 08       	mov    esi,DWORD PTR [r12+0x8]
ffffffff80208449:	e9 17 ff ff ff       	jmp    ffffffff80208365 <malloc+0x245>
ffffffff8020844e:	66 90                	xchg   ax,ax
ffffffff80208450:	48 89 04 d5 40 d6 20 	mov    QWORD PTR [rdx*8-0x7fdf29c0],rax
ffffffff80208457:	80 
ffffffff80208458:	49 8b 44 24 20       	mov    rax,QWORD PTR [r12+0x20]
ffffffff8020845d:	e9 c0 fe ff ff       	jmp    ffffffff80208322 <malloc+0x202>
ffffffff80208462:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80208468:	8d 55 30             	lea    edx,[rbp+0x30]
ffffffff8020846b:	be 10 00 00 00       	mov    esi,0x10
ffffffff80208470:	89 d0                	mov    eax,edx
ffffffff80208472:	81 e2 ff 0f 00 00    	and    edx,0xfff
ffffffff80208478:	89 f3                	mov    ebx,esi
ffffffff8020847a:	c1 e8 0c             	shr    eax,0xc
ffffffff8020847d:	83 fa 01             	cmp    edx,0x1
ffffffff80208480:	83 d8 ff             	sbb    eax,0xffffffff
ffffffff80208483:	83 f8 10             	cmp    eax,0x10
ffffffff80208486:	0f 43 d8             	cmovae ebx,eax
ffffffff80208489:	89 df                	mov    edi,ebx
ffffffff8020848b:	e8 00 03 00 00       	call   ffffffff80208790 <liballoc_alloc>
ffffffff80208490:	49 89 c4             	mov    r12,rax
ffffffff80208493:	48 85 c0             	test   rax,rax
ffffffff80208496:	74 88                	je     ffffffff80208420 <malloc+0x300>
ffffffff80208498:	c1 e3 0c             	shl    ebx,0xc
ffffffff8020849b:	41 89 6c 24 04       	mov    DWORD PTR [r12+0x4],ebp
ffffffff802084a0:	41 c7 04 24 de c0 01 	mov    DWORD PTR [r12],0xc001c0de
ffffffff802084a7:	c0 
ffffffff802084a8:	89 de                	mov    esi,ebx
ffffffff802084aa:	41 89 5c 24 08       	mov    DWORD PTR [r12+0x8],ebx
ffffffff802084af:	41 c7 44 24 0c ff ff 	mov    DWORD PTR [r12+0xc],0xffffffff
ffffffff802084b6:	ff ff 
ffffffff802084b8:	49 c7 44 24 20 00 00 	mov    QWORD PTR [r12+0x20],0x0
ffffffff802084bf:	00 00 
ffffffff802084c1:	49 c7 44 24 28 00 00 	mov    QWORD PTR [r12+0x28],0x0
ffffffff802084c8:	00 00 
ffffffff802084ca:	49 c7 44 24 10 00 00 	mov    QWORD PTR [r12+0x10],0x0
ffffffff802084d1:	00 00 
ffffffff802084d3:	49 c7 44 24 18 00 00 	mov    QWORD PTR [r12+0x18],0x0
ffffffff802084da:	00 00 
ffffffff802084dc:	e9 84 fe ff ff       	jmp    ffffffff80208365 <malloc+0x245>
ffffffff802084e1:	b8 08 00 00 00       	mov    eax,0x8
ffffffff802084e6:	e9 e7 fd ff ff       	jmp    ffffffff802082d2 <malloc+0x1b2>
ffffffff802084eb:	b8 08 00 00 00       	mov    eax,0x8
ffffffff802084f0:	e9 ff fe ff ff       	jmp    ffffffff802083f4 <malloc+0x2d4>
ffffffff802084f5:	90                   	nop
ffffffff802084f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802084fd:	00 00 00 

ffffffff80208500 <free>:
ffffffff80208500:	48 85 ff             	test   rdi,rdi
ffffffff80208503:	74 0b                	je     ffffffff80208510 <free+0x10>
ffffffff80208505:	e9 d6 f9 ff ff       	jmp    ffffffff80207ee0 <free.part.0>
ffffffff8020850a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80208510:	c3                   	ret    
ffffffff80208511:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80208516:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020851d:	00 00 00 

ffffffff80208520 <calloc>:
ffffffff80208520:	0f af fe             	imul   edi,esi
ffffffff80208523:	53                   	push   rbx
ffffffff80208524:	48 63 df             	movsxd rbx,edi
ffffffff80208527:	48 89 df             	mov    rdi,rbx
ffffffff8020852a:	e8 f1 fb ff ff       	call   ffffffff80208120 <malloc>
ffffffff8020852f:	48 85 db             	test   rbx,rbx
ffffffff80208532:	0f 84 a0 00 00 00    	je     ffffffff802085d8 <calloc+0xb8>
ffffffff80208538:	48 8d 53 ff          	lea    rdx,[rbx-0x1]
ffffffff8020853c:	48 83 fa 06          	cmp    rdx,0x6
ffffffff80208540:	0f 86 94 00 00 00    	jbe    ffffffff802085da <calloc+0xba>
ffffffff80208546:	48 89 d9             	mov    rcx,rbx
ffffffff80208549:	48 8b 35 68 13 00 00 	mov    rsi,QWORD PTR [rip+0x1368]        # ffffffff802098b8 <__func__.1725+0x10>
ffffffff80208550:	48 89 c2             	mov    rdx,rax
ffffffff80208553:	48 83 e1 f8          	and    rcx,0xfffffffffffffff8
ffffffff80208557:	48 01 c1             	add    rcx,rax
ffffffff8020855a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80208560:	48 89 32             	mov    QWORD PTR [rdx],rsi
ffffffff80208563:	48 83 c2 08          	add    rdx,0x8
ffffffff80208567:	48 39 ca             	cmp    rdx,rcx
ffffffff8020856a:	75 f4                	jne    ffffffff80208560 <calloc+0x40>
ffffffff8020856c:	48 89 d9             	mov    rcx,rbx
ffffffff8020856f:	48 83 e1 f8          	and    rcx,0xfffffffffffffff8
ffffffff80208573:	89 ca                	mov    edx,ecx
ffffffff80208575:	48 39 cb             	cmp    rbx,rcx
ffffffff80208578:	74 5e                	je     ffffffff802085d8 <calloc+0xb8>
ffffffff8020857a:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
ffffffff8020857e:	8d 4a 01             	lea    ecx,[rdx+0x1]
ffffffff80208581:	48 63 c9             	movsxd rcx,ecx
ffffffff80208584:	48 39 cb             	cmp    rbx,rcx
ffffffff80208587:	76 4f                	jbe    ffffffff802085d8 <calloc+0xb8>
ffffffff80208589:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
ffffffff8020858d:	8d 4a 02             	lea    ecx,[rdx+0x2]
ffffffff80208590:	48 63 c9             	movsxd rcx,ecx
ffffffff80208593:	48 39 cb             	cmp    rbx,rcx
ffffffff80208596:	76 40                	jbe    ffffffff802085d8 <calloc+0xb8>
ffffffff80208598:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
ffffffff8020859c:	8d 4a 03             	lea    ecx,[rdx+0x3]
ffffffff8020859f:	48 63 c9             	movsxd rcx,ecx
ffffffff802085a2:	48 39 cb             	cmp    rbx,rcx
ffffffff802085a5:	76 31                	jbe    ffffffff802085d8 <calloc+0xb8>
ffffffff802085a7:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
ffffffff802085ab:	8d 4a 04             	lea    ecx,[rdx+0x4]
ffffffff802085ae:	48 63 c9             	movsxd rcx,ecx
ffffffff802085b1:	48 39 cb             	cmp    rbx,rcx
ffffffff802085b4:	76 22                	jbe    ffffffff802085d8 <calloc+0xb8>
ffffffff802085b6:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
ffffffff802085ba:	8d 4a 05             	lea    ecx,[rdx+0x5]
ffffffff802085bd:	48 63 c9             	movsxd rcx,ecx
ffffffff802085c0:	48 39 cb             	cmp    rbx,rcx
ffffffff802085c3:	76 13                	jbe    ffffffff802085d8 <calloc+0xb8>
ffffffff802085c5:	83 c2 06             	add    edx,0x6
ffffffff802085c8:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
ffffffff802085cc:	48 63 d2             	movsxd rdx,edx
ffffffff802085cf:	48 39 d3             	cmp    rbx,rdx
ffffffff802085d2:	76 04                	jbe    ffffffff802085d8 <calloc+0xb8>
ffffffff802085d4:	c6 04 10 00          	mov    BYTE PTR [rax+rdx*1],0x0
ffffffff802085d8:	5b                   	pop    rbx
ffffffff802085d9:	c3                   	ret    
ffffffff802085da:	31 d2                	xor    edx,edx
ffffffff802085dc:	31 c9                	xor    ecx,ecx
ffffffff802085de:	eb 9a                	jmp    ffffffff8020857a <calloc+0x5a>

ffffffff802085e0 <realloc>:
ffffffff802085e0:	41 54                	push   r12
ffffffff802085e2:	49 89 f4             	mov    r12,rsi
ffffffff802085e5:	55                   	push   rbp
ffffffff802085e6:	48 89 fd             	mov    rbp,rdi
ffffffff802085e9:	53                   	push   rbx
ffffffff802085ea:	48 85 f6             	test   rsi,rsi
ffffffff802085ed:	0f 84 0d 01 00 00    	je     ffffffff80208700 <realloc+0x120>
ffffffff802085f3:	48 85 ff             	test   rdi,rdi
ffffffff802085f6:	0f 84 4c 01 00 00    	je     ffffffff80208748 <realloc+0x168>
ffffffff802085fc:	48 c7 c0 60 87 20 80 	mov    rax,0xffffffff80208760
ffffffff80208603:	48 85 c0             	test   rax,rax
ffffffff80208606:	74 07                	je     ffffffff8020860f <realloc+0x2f>
ffffffff80208608:	31 c0                	xor    eax,eax
ffffffff8020860a:	e8 51 01 00 00       	call   ffffffff80208760 <liballoc_lock>
ffffffff8020860f:	89 e8                	mov    eax,ebp
ffffffff80208611:	48 63 58 d4          	movsxd rbx,DWORD PTR [rax-0x2c]
ffffffff80208615:	48 c7 c0 80 87 20 80 	mov    rax,0xffffffff80208780
ffffffff8020861c:	48 85 c0             	test   rax,rax
ffffffff8020861f:	74 07                	je     ffffffff80208628 <realloc+0x48>
ffffffff80208621:	31 c0                	xor    eax,eax
ffffffff80208623:	e8 58 01 00 00       	call   ffffffff80208780 <liballoc_unlock>
ffffffff80208628:	49 63 c4             	movsxd rax,r12d
ffffffff8020862b:	4c 39 e3             	cmp    rbx,r12
ffffffff8020862e:	4c 89 e7             	mov    rdi,r12
ffffffff80208631:	48 0f 47 d8          	cmova  rbx,rax
ffffffff80208635:	e8 e6 fa ff ff       	call   ffffffff80208120 <malloc>
ffffffff8020863a:	49 89 c4             	mov    r12,rax
ffffffff8020863d:	48 83 fb 03          	cmp    rbx,0x3
ffffffff80208641:	0f 86 f9 00 00 00    	jbe    ffffffff80208740 <realloc+0x160>
ffffffff80208647:	48 8d 45 07          	lea    rax,[rbp+0x7]
ffffffff8020864b:	48 8d 73 fc          	lea    rsi,[rbx-0x4]
ffffffff8020864f:	4c 29 e0             	sub    rax,r12
ffffffff80208652:	48 83 f8 0e          	cmp    rax,0xe
ffffffff80208656:	0f 86 b4 00 00 00    	jbe    ffffffff80208710 <realloc+0x130>
ffffffff8020865c:	48 83 fe 0f          	cmp    rsi,0xf
ffffffff80208660:	0f 86 aa 00 00 00    	jbe    ffffffff80208710 <realloc+0x130>
ffffffff80208666:	48 89 f7             	mov    rdi,rsi
ffffffff80208669:	31 d2                	xor    edx,edx
ffffffff8020866b:	48 c1 ef 02          	shr    rdi,0x2
ffffffff8020866f:	48 83 c7 01          	add    rdi,0x1
ffffffff80208673:	48 89 f9             	mov    rcx,rdi
ffffffff80208676:	48 d1 e9             	shr    rcx,1
ffffffff80208679:	48 c1 e1 03          	shl    rcx,0x3
ffffffff8020867d:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80208680:	48 8b 44 15 00       	mov    rax,QWORD PTR [rbp+rdx*1+0x0]
ffffffff80208685:	49 89 04 14          	mov    QWORD PTR [r12+rdx*1],rax
ffffffff80208689:	48 83 c2 08          	add    rdx,0x8
ffffffff8020868d:	48 39 ca             	cmp    rdx,rcx
ffffffff80208690:	75 ee                	jne    ffffffff80208680 <realloc+0xa0>
ffffffff80208692:	48 89 f9             	mov    rcx,rdi
ffffffff80208695:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
ffffffff80208699:	48 8d 14 8d 00 00 00 	lea    rdx,[rcx*4+0x0]
ffffffff802086a0:	00 
ffffffff802086a1:	48 8d 44 15 00       	lea    rax,[rbp+rdx*1+0x0]
ffffffff802086a6:	4c 01 e2             	add    rdx,r12
ffffffff802086a9:	48 39 cf             	cmp    rdi,rcx
ffffffff802086ac:	74 04                	je     ffffffff802086b2 <realloc+0xd2>
ffffffff802086ae:	8b 00                	mov    eax,DWORD PTR [rax]
ffffffff802086b0:	89 02                	mov    DWORD PTR [rdx],eax
ffffffff802086b2:	48 c1 ee 02          	shr    rsi,0x2
ffffffff802086b6:	83 e3 03             	and    ebx,0x3
ffffffff802086b9:	48 8d 04 b5 04 00 00 	lea    rax,[rsi*4+0x4]
ffffffff802086c0:	00 
ffffffff802086c1:	48 8d 54 05 00       	lea    rdx,[rbp+rax*1+0x0]
ffffffff802086c6:	4c 01 e0             	add    rax,r12
ffffffff802086c9:	48 85 db             	test   rbx,rbx
ffffffff802086cc:	74 1f                	je     ffffffff802086ed <realloc+0x10d>
ffffffff802086ce:	0f b6 0a             	movzx  ecx,BYTE PTR [rdx]
ffffffff802086d1:	88 08                	mov    BYTE PTR [rax],cl
ffffffff802086d3:	48 83 eb 01          	sub    rbx,0x1
ffffffff802086d7:	74 14                	je     ffffffff802086ed <realloc+0x10d>
ffffffff802086d9:	0f b6 4a 01          	movzx  ecx,BYTE PTR [rdx+0x1]
ffffffff802086dd:	88 48 01             	mov    BYTE PTR [rax+0x1],cl
ffffffff802086e0:	48 83 fb 01          	cmp    rbx,0x1
ffffffff802086e4:	74 07                	je     ffffffff802086ed <realloc+0x10d>
ffffffff802086e6:	0f b6 52 02          	movzx  edx,BYTE PTR [rdx+0x2]
ffffffff802086ea:	88 50 02             	mov    BYTE PTR [rax+0x2],dl
ffffffff802086ed:	48 89 ef             	mov    rdi,rbp
ffffffff802086f0:	e8 eb f7 ff ff       	call   ffffffff80207ee0 <free.part.0>
ffffffff802086f5:	4c 89 e0             	mov    rax,r12
ffffffff802086f8:	5b                   	pop    rbx
ffffffff802086f9:	5d                   	pop    rbp
ffffffff802086fa:	41 5c                	pop    r12
ffffffff802086fc:	c3                   	ret    
ffffffff802086fd:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80208700:	48 85 ff             	test   rdi,rdi
ffffffff80208703:	75 e8                	jne    ffffffff802086ed <realloc+0x10d>
ffffffff80208705:	eb ee                	jmp    ffffffff802086f5 <realloc+0x115>
ffffffff80208707:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
ffffffff8020870e:	00 00 
ffffffff80208710:	48 89 f0             	mov    rax,rsi
ffffffff80208713:	48 c1 e8 02          	shr    rax,0x2
ffffffff80208717:	48 8d 0c 85 04 00 00 	lea    rcx,[rax*4+0x4]
ffffffff8020871e:	00 
ffffffff8020871f:	31 c0                	xor    eax,eax
ffffffff80208721:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80208728:	8b 54 05 00          	mov    edx,DWORD PTR [rbp+rax*1+0x0]
ffffffff8020872c:	41 89 14 04          	mov    DWORD PTR [r12+rax*1],edx
ffffffff80208730:	48 83 c0 04          	add    rax,0x4
ffffffff80208734:	48 39 c8             	cmp    rax,rcx
ffffffff80208737:	75 ef                	jne    ffffffff80208728 <realloc+0x148>
ffffffff80208739:	e9 74 ff ff ff       	jmp    ffffffff802086b2 <realloc+0xd2>
ffffffff8020873e:	66 90                	xchg   ax,ax
ffffffff80208740:	48 89 ea             	mov    rdx,rbp
ffffffff80208743:	eb 84                	jmp    ffffffff802086c9 <realloc+0xe9>
ffffffff80208745:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80208748:	5b                   	pop    rbx
ffffffff80208749:	48 89 f7             	mov    rdi,rsi
ffffffff8020874c:	5d                   	pop    rbp
ffffffff8020874d:	41 5c                	pop    r12
ffffffff8020874f:	e9 cc f9 ff ff       	jmp    ffffffff80208120 <malloc>
ffffffff80208754:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020875b:	00 00 00 
ffffffff8020875e:	66 90                	xchg   ax,ax

ffffffff80208760 <liballoc_lock>:
ffffffff80208760:	31 c9                	xor    ecx,ecx
ffffffff80208762:	ba 01 00 00 00       	mov    edx,0x1
ffffffff80208767:	89 c8                	mov    eax,ecx
ffffffff80208769:	66 f0 0f b1 15 94 70 	lock cmpxchg WORD PTR [rip+0x7094],dx        # ffffffff8020f806 <_lock_lock_alloc>
ffffffff80208770:	00 00 
ffffffff80208772:	75 f3                	jne    ffffffff80208767 <liballoc_lock+0x7>
ffffffff80208774:	0f ae f0             	mfence 
ffffffff80208777:	31 c0                	xor    eax,eax
ffffffff80208779:	c3                   	ret    
ffffffff8020877a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff80208780 <liballoc_unlock>:
ffffffff80208780:	0f ae f0             	mfence 
ffffffff80208783:	66 f0 83 2d 7a 70 00 	lock sub WORD PTR [rip+0x707a],0x1        # ffffffff8020f806 <_lock_lock_alloc>
ffffffff8020878a:	00 01 
ffffffff8020878c:	31 c0                	xor    eax,eax
ffffffff8020878e:	c3                   	ret    
ffffffff8020878f:	90                   	nop

ffffffff80208790 <liballoc_alloc>:
ffffffff80208790:	48 63 ff             	movsxd rdi,edi
ffffffff80208793:	be 03 00 00 00       	mov    esi,0x3
ffffffff80208798:	e9 b3 f1 ff ff       	jmp    ffffffff80207950 <space_alloc>
ffffffff8020879d:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff802087a0 <liballoc_free>:
ffffffff802087a0:	48 83 ec 08          	sub    rsp,0x8
ffffffff802087a4:	48 63 f6             	movsxd rsi,esi
ffffffff802087a7:	e8 a4 f2 ff ff       	call   ffffffff80207a50 <space_free>
ffffffff802087ac:	31 c0                	xor    eax,eax
ffffffff802087ae:	48 83 c4 08          	add    rsp,0x8
ffffffff802087b2:	c3                   	ret    
ffffffff802087b3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff802087ba:	00 00 00 
ffffffff802087bd:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff802087c0 <dec>:
ffffffff802087c0:	c6 46 ff 00          	mov    BYTE PTR [rsi-0x1],0x0
ffffffff802087c4:	4c 8d 46 ff          	lea    r8,[rsi-0x1]
ffffffff802087c8:	48 b9 cd cc cc cc cc 	movabs rcx,0xcccccccccccccccd
ffffffff802087cf:	cc cc cc 
ffffffff802087d2:	48 85 ff             	test   rdi,rdi
ffffffff802087d5:	75 11                	jne    ffffffff802087e8 <dec+0x28>
ffffffff802087d7:	c6 46 fe 30          	mov    BYTE PTR [rsi-0x2],0x30
ffffffff802087db:	4c 8d 46 fe          	lea    r8,[rsi-0x2]
ffffffff802087df:	4c 89 c0             	mov    rax,r8
ffffffff802087e2:	c3                   	ret    
ffffffff802087e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff802087e8:	48 89 f8             	mov    rax,rdi
ffffffff802087eb:	48 89 fe             	mov    rsi,rdi
ffffffff802087ee:	49 83 e8 01          	sub    r8,0x1
ffffffff802087f2:	48 f7 e1             	mul    rcx
ffffffff802087f5:	48 c1 ea 03          	shr    rdx,0x3
ffffffff802087f9:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
ffffffff802087fd:	48 01 c0             	add    rax,rax
ffffffff80208800:	48 29 c6             	sub    rsi,rax
ffffffff80208803:	48 89 f0             	mov    rax,rsi
ffffffff80208806:	83 c0 30             	add    eax,0x30
ffffffff80208809:	41 88 00             	mov    BYTE PTR [r8],al
ffffffff8020880c:	48 89 f8             	mov    rax,rdi
ffffffff8020880f:	48 89 d7             	mov    rdi,rdx
ffffffff80208812:	48 83 f8 09          	cmp    rax,0x9
ffffffff80208816:	77 d0                	ja     ffffffff802087e8 <dec+0x28>
ffffffff80208818:	eb c5                	jmp    ffffffff802087df <dec+0x1f>
ffffffff8020881a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

ffffffff80208820 <decX>:
ffffffff80208820:	48 b8 30 31 32 33 34 	movabs rax,0x3736353433323130
ffffffff80208827:	35 36 37 
ffffffff8020882a:	48 83 ec 10          	sub    rsp,0x10
ffffffff8020882e:	c6 46 ff 00          	mov    BYTE PTR [rsi-0x1],0x0
ffffffff80208832:	48 89 04 24          	mov    QWORD PTR [rsp],rax
ffffffff80208836:	48 b8 38 39 61 62 63 	movabs rax,0x6665646362613938
ffffffff8020883d:	64 65 66 
ffffffff80208840:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
ffffffff80208845:	48 8d 46 ff          	lea    rax,[rsi-0x1]
ffffffff80208849:	48 85 ff             	test   rdi,rdi
ffffffff8020884c:	75 12                	jne    ffffffff80208860 <decX+0x40>
ffffffff8020884e:	c6 46 fe 30          	mov    BYTE PTR [rsi-0x2],0x30
ffffffff80208852:	48 8d 46 fe          	lea    rax,[rsi-0x2]
ffffffff80208856:	48 83 c4 10          	add    rsp,0x10
ffffffff8020885a:	c3                   	ret    
ffffffff8020885b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80208860:	48 89 fa             	mov    rdx,rdi
ffffffff80208863:	48 83 e8 01          	sub    rax,0x1
ffffffff80208867:	83 e2 0f             	and    edx,0xf
ffffffff8020886a:	48 c1 ef 04          	shr    rdi,0x4
ffffffff8020886e:	0f b6 14 14          	movzx  edx,BYTE PTR [rsp+rdx*1]
ffffffff80208872:	88 10                	mov    BYTE PTR [rax],dl
ffffffff80208874:	75 ea                	jne    ffffffff80208860 <decX+0x40>
ffffffff80208876:	eb de                	jmp    ffffffff80208856 <decX+0x36>
ffffffff80208878:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff8020887f:	00 

ffffffff80208880 <strcmp>:
ffffffff80208880:	eb 1f                	jmp    ffffffff802088a1 <strcmp+0x21>
ffffffff80208882:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
ffffffff80208888:	0f b6 06             	movzx  eax,BYTE PTR [rsi]
ffffffff8020888b:	84 c0                	test   al,al
ffffffff8020888d:	74 19                	je     ffffffff802088a8 <strcmp+0x28>
ffffffff8020888f:	0f b6 17             	movzx  edx,BYTE PTR [rdi]
ffffffff80208892:	0f b6 06             	movzx  eax,BYTE PTR [rsi]
ffffffff80208895:	38 c2                	cmp    dl,al
ffffffff80208897:	75 0f                	jne    ffffffff802088a8 <strcmp+0x28>
ffffffff80208899:	48 83 c7 01          	add    rdi,0x1
ffffffff8020889d:	48 83 c6 01          	add    rsi,0x1
ffffffff802088a1:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
ffffffff802088a4:	84 c0                	test   al,al
ffffffff802088a6:	75 e0                	jne    ffffffff80208888 <strcmp+0x8>
ffffffff802088a8:	0f b6 0f             	movzx  ecx,BYTE PTR [rdi]
ffffffff802088ab:	0f b6 16             	movzx  edx,BYTE PTR [rsi]
ffffffff802088ae:	31 c0                	xor    eax,eax
ffffffff802088b0:	38 d1                	cmp    cl,dl
ffffffff802088b2:	74 08                	je     ffffffff802088bc <strcmp+0x3c>
ffffffff802088b4:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
ffffffff802088b7:	b8 01 00 00 00       	mov    eax,0x1
ffffffff802088bc:	c3                   	ret    
ffffffff802088bd:	0f 1f 00             	nop    DWORD PTR [rax]

ffffffff802088c0 <hello>:
ffffffff802088c0:	48 83 ec 08          	sub    rsp,0x8
ffffffff802088c4:	31 c0                	xor    eax,eax
ffffffff802088c6:	e8 75 d7 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802088cb:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802088d2:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802088d7:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff802088de:	e8 0d 83 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802088e3:	31 c0                	xor    eax,eax
ffffffff802088e5:	e8 f6 cf ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802088ea:	84 c0                	test   al,al
ffffffff802088ec:	75 52                	jne    ffffffff80208940 <hello+0x80>
ffffffff802088ee:	48 c7 c1 b4 a2 20 80 	mov    rcx,0xffffffff8020a2b4
ffffffff802088f5:	ba 0a 00 00 00       	mov    edx,0xa
ffffffff802088fa:	48 c7 c6 54 a2 20 80 	mov    rsi,0xffffffff8020a254
ffffffff80208901:	31 c0                	xor    eax,eax
ffffffff80208903:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020890a:	e8 51 f5 ff ff       	call   ffffffff80207e60 <printf>
ffffffff8020890f:	48 c7 c7 6e a2 20 80 	mov    rdi,0xffffffff8020a26e
ffffffff80208916:	31 c0                	xor    eax,eax
ffffffff80208918:	e8 43 f5 ff ff       	call   ffffffff80207e60 <printf>
ffffffff8020891d:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208924:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208929:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208930:	e8 bb 82 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208935:	31 c0                	xor    eax,eax
ffffffff80208937:	48 83 c4 08          	add    rsp,0x8
ffffffff8020893b:	e9 20 d7 ff ff       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80208940:	31 c0                	xor    eax,eax
ffffffff80208942:	e8 29 ce ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208947:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020894e:	89 c6                	mov    esi,eax
ffffffff80208950:	31 c0                	xor    eax,eax
ffffffff80208952:	e8 09 f5 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208957:	eb 95                	jmp    ffffffff802088ee <hello+0x2e>
ffffffff80208959:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

ffffffff80208960 <kernel_main>:
ffffffff80208960:	53                   	push   rbx
ffffffff80208961:	e8 da cf ff ff       	call   ffffffff80205940 <bootstrap_arch>
ffffffff80208966:	48 89 c3             	mov    rbx,rax
ffffffff80208969:	31 c0                	xor    eax,eax
ffffffff8020896b:	e8 30 04 00 00       	call   ffffffff80208da0 <lock_ints>
ffffffff80208970:	31 c0                	xor    eax,eax
ffffffff80208972:	e8 c9 d6 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208977:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020897e:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208983:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff8020898a:	e8 61 82 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020898f:	31 c0                	xor    eax,eax
ffffffff80208991:	e8 4a cf ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208996:	84 c0                	test   al,al
ffffffff80208998:	0f 85 e2 00 00 00    	jne    ffffffff80208a80 <kernel_main+0x120>
ffffffff8020899e:	48 c7 c1 a8 a2 20 80 	mov    rcx,0xffffffff8020a2a8
ffffffff802089a5:	ba 15 00 00 00       	mov    edx,0x15
ffffffff802089aa:	48 c7 c6 54 a2 20 80 	mov    rsi,0xffffffff8020a254
ffffffff802089b1:	31 c0                	xor    eax,eax
ffffffff802089b3:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802089ba:	e8 a1 f4 ff ff       	call   ffffffff80207e60 <printf>
ffffffff802089bf:	31 c0                	xor    eax,eax
ffffffff802089c1:	48 c7 c7 74 a2 20 80 	mov    rdi,0xffffffff8020a274
ffffffff802089c8:	e8 93 f4 ff ff       	call   ffffffff80207e60 <printf>
ffffffff802089cd:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802089d4:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802089d9:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802089e0:	e8 0b 82 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802089e5:	31 c0                	xor    eax,eax
ffffffff802089e7:	e8 74 d6 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff802089ec:	48 c7 43 10 c0 88 20 	mov    QWORD PTR [rbx+0x10],0xffffffff802088c0
ffffffff802089f3:	80 
ffffffff802089f4:	31 c0                	xor    eax,eax
ffffffff802089f6:	48 c7 43 18 c0 88 20 	mov    QWORD PTR [rbx+0x18],0xffffffff802088c0
ffffffff802089fd:	80 
ffffffff802089fe:	e8 3d d6 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208a03:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208a0a:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208a0f:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80208a16:	e8 d5 81 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208a1b:	31 c0                	xor    eax,eax
ffffffff80208a1d:	e8 be ce ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208a22:	84 c0                	test   al,al
ffffffff80208a24:	75 7a                	jne    ffffffff80208aa0 <kernel_main+0x140>
ffffffff80208a26:	48 c7 c1 a8 a2 20 80 	mov    rcx,0xffffffff8020a2a8
ffffffff80208a2d:	ba 20 00 00 00       	mov    edx,0x20
ffffffff80208a32:	48 c7 c6 54 a2 20 80 	mov    rsi,0xffffffff8020a254
ffffffff80208a39:	31 c0                	xor    eax,eax
ffffffff80208a3b:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208a42:	e8 19 f4 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208a47:	48 c7 c7 90 a2 20 80 	mov    rdi,0xffffffff8020a290
ffffffff80208a4e:	31 c0                	xor    eax,eax
ffffffff80208a50:	e8 0b f4 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208a55:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208a5c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208a61:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208a68:	e8 83 81 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208a6d:	31 c0                	xor    eax,eax
ffffffff80208a6f:	e8 ec d5 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80208a74:	31 c0                	xor    eax,eax
ffffffff80208a76:	5b                   	pop    rbx
ffffffff80208a77:	e9 94 ce ff ff       	jmp    ffffffff80205910 <halt>
ffffffff80208a7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80208a80:	31 c0                	xor    eax,eax
ffffffff80208a82:	e8 e9 cc ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208a87:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208a8e:	89 c6                	mov    esi,eax
ffffffff80208a90:	31 c0                	xor    eax,eax
ffffffff80208a92:	e8 c9 f3 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208a97:	e9 02 ff ff ff       	jmp    ffffffff8020899e <kernel_main+0x3e>
ffffffff80208a9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80208aa0:	31 c0                	xor    eax,eax
ffffffff80208aa2:	e8 c9 cc ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208aa7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208aae:	89 c6                	mov    esi,eax
ffffffff80208ab0:	31 c0                	xor    eax,eax
ffffffff80208ab2:	e8 a9 f3 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208ab7:	e9 6a ff ff ff       	jmp    ffffffff80208a26 <kernel_main+0xc6>
ffffffff80208abc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80208ac0 <unlock_ints>:
ffffffff80208ac0:	48 83 ec 08          	sub    rsp,0x8
ffffffff80208ac4:	31 c0                	xor    eax,eax
ffffffff80208ac6:	e8 a5 cc ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208acb:	89 c0                	mov    eax,eax
ffffffff80208acd:	80 b8 00 ce 20 80 00 	cmp    BYTE PTR [rax-0x7fdf3200],0x0
ffffffff80208ad4:	b8 00 00 00 00       	mov    eax,0x0
ffffffff80208ad9:	0f 84 21 01 00 00    	je     ffffffff80208c00 <unlock_ints+0x140>
ffffffff80208adf:	e8 5c d5 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208ae4:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208aeb:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208af0:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80208af7:	e8 f4 80 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208afc:	31 c0                	xor    eax,eax
ffffffff80208afe:	e8 dd cd ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208b03:	84 c0                	test   al,al
ffffffff80208b05:	0f 85 55 02 00 00    	jne    ffffffff80208d60 <unlock_ints+0x2a0>
ffffffff80208b0b:	48 c7 c1 f0 a3 20 80 	mov    rcx,0xffffffff8020a3f0
ffffffff80208b12:	ba 07 00 00 00       	mov    edx,0x7
ffffffff80208b17:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80208b1e:	31 c0                	xor    eax,eax
ffffffff80208b20:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208b27:	e8 34 f3 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208b2c:	48 c7 c7 ba a2 20 80 	mov    rdi,0xffffffff8020a2ba
ffffffff80208b33:	31 c0                	xor    eax,eax
ffffffff80208b35:	e8 26 f3 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208b3a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208b41:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208b46:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208b4d:	e8 9e 80 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208b52:	31 c0                	xor    eax,eax
ffffffff80208b54:	e8 07 d5 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80208b59:	31 c0                	xor    eax,eax
ffffffff80208b5b:	e8 10 cc ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208b60:	89 c0                	mov    eax,eax
ffffffff80208b62:	80 a8 00 ce 20 80 01 	sub    BYTE PTR [rax-0x7fdf3200],0x1
ffffffff80208b69:	0f 84 41 01 00 00    	je     ffffffff80208cb0 <unlock_ints+0x1f0>
ffffffff80208b6f:	31 c0                	xor    eax,eax
ffffffff80208b71:	e8 ca d4 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208b76:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208b7d:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208b82:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80208b89:	e8 62 80 ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208b8e:	31 c0                	xor    eax,eax
ffffffff80208b90:	e8 4b cd ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208b95:	84 c0                	test   al,al
ffffffff80208b97:	0f 85 f3 00 00 00    	jne    ffffffff80208c90 <unlock_ints+0x1d0>
ffffffff80208b9d:	48 c7 c1 f0 a3 20 80 	mov    rcx,0xffffffff8020a3f0
ffffffff80208ba4:	ba 0c 00 00 00       	mov    edx,0xc
ffffffff80208ba9:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80208bb0:	31 c0                	xor    eax,eax
ffffffff80208bb2:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208bb9:	e8 a2 f2 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208bbe:	31 c0                	xor    eax,eax
ffffffff80208bc0:	e8 ab cb ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208bc5:	48 c7 c7 f5 a2 20 80 	mov    rdi,0xffffffff8020a2f5
ffffffff80208bcc:	89 c0                	mov    eax,eax
ffffffff80208bce:	0f b6 b0 00 ce 20 80 	movzx  esi,BYTE PTR [rax-0x7fdf3200]
ffffffff80208bd5:	31 c0                	xor    eax,eax
ffffffff80208bd7:	e8 84 f2 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208bdc:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208be3:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208be8:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208bef:	e8 fc 7f ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208bf4:	31 c0                	xor    eax,eax
ffffffff80208bf6:	48 83 c4 08          	add    rsp,0x8
ffffffff80208bfa:	e9 61 d4 ff ff       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80208bff:	90                   	nop
ffffffff80208c00:	e8 3b d4 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208c05:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208c0c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208c11:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80208c18:	e8 d3 7f ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208c1d:	31 c0                	xor    eax,eax
ffffffff80208c1f:	e8 bc cc ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208c24:	84 c0                	test   al,al
ffffffff80208c26:	0f 85 14 01 00 00    	jne    ffffffff80208d40 <unlock_ints+0x280>
ffffffff80208c2c:	48 c7 c1 f0 a3 20 80 	mov    rcx,0xffffffff8020a3f0
ffffffff80208c33:	ba 07 00 00 00       	mov    edx,0x7
ffffffff80208c38:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80208c3f:	31 c0                	xor    eax,eax
ffffffff80208c41:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208c48:	e8 13 f2 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208c4d:	31 c0                	xor    eax,eax
ffffffff80208c4f:	48 c7 c7 c9 a2 20 80 	mov    rdi,0xffffffff8020a2c9
ffffffff80208c56:	e8 05 f2 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208c5b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208c62:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208c67:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208c6e:	e8 7d 7f ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208c73:	31 c0                	xor    eax,eax
ffffffff80208c75:	e8 e6 d3 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80208c7a:	31 c0                	xor    eax,eax
ffffffff80208c7c:	e8 7f cc ff ff       	call   ffffffff80205900 <disable_ints>
ffffffff80208c81:	31 c0                	xor    eax,eax
ffffffff80208c83:	e8 88 cc ff ff       	call   ffffffff80205910 <halt>
ffffffff80208c88:	e9 cc fe ff ff       	jmp    ffffffff80208b59 <unlock_ints+0x99>
ffffffff80208c8d:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80208c90:	31 c0                	xor    eax,eax
ffffffff80208c92:	e8 d9 ca ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208c97:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208c9e:	89 c6                	mov    esi,eax
ffffffff80208ca0:	31 c0                	xor    eax,eax
ffffffff80208ca2:	e8 b9 f1 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208ca7:	e9 f1 fe ff ff       	jmp    ffffffff80208b9d <unlock_ints+0xdd>
ffffffff80208cac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80208cb0:	31 c0                	xor    eax,eax
ffffffff80208cb2:	e8 39 cc ff ff       	call   ffffffff802058f0 <enable_ints>
ffffffff80208cb7:	31 c0                	xor    eax,eax
ffffffff80208cb9:	e8 82 d3 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208cbe:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208cc5:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208cca:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80208cd1:	e8 1a 7f ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208cd6:	31 c0                	xor    eax,eax
ffffffff80208cd8:	e8 03 cc ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208cdd:	84 c0                	test   al,al
ffffffff80208cdf:	0f 85 9b 00 00 00    	jne    ffffffff80208d80 <unlock_ints+0x2c0>
ffffffff80208ce5:	48 c7 c1 f0 a3 20 80 	mov    rcx,0xffffffff8020a3f0
ffffffff80208cec:	ba 0a 00 00 00       	mov    edx,0xa
ffffffff80208cf1:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80208cf8:	31 c0                	xor    eax,eax
ffffffff80208cfa:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208d01:	e8 5a f1 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208d06:	31 c0                	xor    eax,eax
ffffffff80208d08:	48 c7 c7 e1 a2 20 80 	mov    rdi,0xffffffff8020a2e1
ffffffff80208d0f:	e8 4c f1 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208d14:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208d1b:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208d20:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208d27:	e8 c4 7e ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208d2c:	31 c0                	xor    eax,eax
ffffffff80208d2e:	e8 2d d3 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80208d33:	e9 37 fe ff ff       	jmp    ffffffff80208b6f <unlock_ints+0xaf>
ffffffff80208d38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
ffffffff80208d3f:	00 
ffffffff80208d40:	31 c0                	xor    eax,eax
ffffffff80208d42:	e8 29 ca ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208d47:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208d4e:	89 c6                	mov    esi,eax
ffffffff80208d50:	31 c0                	xor    eax,eax
ffffffff80208d52:	e8 09 f1 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208d57:	e9 d0 fe ff ff       	jmp    ffffffff80208c2c <unlock_ints+0x16c>
ffffffff80208d5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80208d60:	31 c0                	xor    eax,eax
ffffffff80208d62:	e8 09 ca ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208d67:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208d6e:	89 c6                	mov    esi,eax
ffffffff80208d70:	31 c0                	xor    eax,eax
ffffffff80208d72:	e8 e9 f0 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208d77:	e9 8f fd ff ff       	jmp    ffffffff80208b0b <unlock_ints+0x4b>
ffffffff80208d7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80208d80:	31 c0                	xor    eax,eax
ffffffff80208d82:	e8 e9 c9 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208d87:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208d8e:	89 c6                	mov    esi,eax
ffffffff80208d90:	31 c0                	xor    eax,eax
ffffffff80208d92:	e8 c9 f0 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208d97:	e9 49 ff ff ff       	jmp    ffffffff80208ce5 <unlock_ints+0x225>
ffffffff80208d9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

ffffffff80208da0 <lock_ints>:
ffffffff80208da0:	48 83 ec 08          	sub    rsp,0x8
ffffffff80208da4:	31 c0                	xor    eax,eax
ffffffff80208da6:	e8 c5 c9 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208dab:	89 c0                	mov    eax,eax
ffffffff80208dad:	80 b8 00 ce 20 80 ff 	cmp    BYTE PTR [rax-0x7fdf3200],0xff
ffffffff80208db4:	b8 00 00 00 00       	mov    eax,0x0
ffffffff80208db9:	0f 84 51 01 00 00    	je     ffffffff80208f10 <lock_ints+0x170>
ffffffff80208dbf:	e8 7c d2 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208dc4:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208dcb:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208dd0:	48 c7 c6 80 92 20 80 	mov    rsi,0xffffffff80209280
ffffffff80208dd7:	e8 14 7e ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208ddc:	31 c0                	xor    eax,eax
ffffffff80208dde:	e8 fd ca ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208de3:	84 c0                	test   al,al
ffffffff80208de5:	0f 85 05 01 00 00    	jne    ffffffff80208ef0 <lock_ints+0x150>
ffffffff80208deb:	48 c7 c1 e0 a3 20 80 	mov    rcx,0xffffffff8020a3e0
ffffffff80208df2:	ba 10 00 00 00       	mov    edx,0x10
ffffffff80208df7:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80208dfe:	31 c0                	xor    eax,eax
ffffffff80208e00:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208e07:	e8 54 f0 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208e0c:	48 c7 c7 07 a3 20 80 	mov    rdi,0xffffffff8020a307
ffffffff80208e13:	31 c0                	xor    eax,eax
ffffffff80208e15:	e8 46 f0 ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208e1a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208e21:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208e26:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208e2d:	e8 be 7d ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208e32:	31 c0                	xor    eax,eax
ffffffff80208e34:	e8 27 d2 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80208e39:	31 c0                	xor    eax,eax
ffffffff80208e3b:	e8 30 c9 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208e40:	89 c0                	mov    eax,eax
ffffffff80208e42:	80 80 00 ce 20 80 01 	add    BYTE PTR [rax-0x7fdf3200],0x1
ffffffff80208e49:	31 c0                	xor    eax,eax
ffffffff80208e4b:	e8 20 c9 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208e50:	89 c0                	mov    eax,eax
ffffffff80208e52:	80 b8 00 ce 20 80 01 	cmp    BYTE PTR [rax-0x7fdf3200],0x1
ffffffff80208e59:	0f 84 61 01 00 00    	je     ffffffff80208fc0 <lock_ints+0x220>
ffffffff80208e5f:	31 c0                	xor    eax,eax
ffffffff80208e61:	e8 da d1 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208e66:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208e6d:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208e72:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80208e79:	e8 72 7d ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208e7e:	31 c0                	xor    eax,eax
ffffffff80208e80:	e8 5b ca ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208e85:	84 c0                	test   al,al
ffffffff80208e87:	0f 85 13 01 00 00    	jne    ffffffff80208fa0 <lock_ints+0x200>
ffffffff80208e8d:	48 c7 c1 e0 a3 20 80 	mov    rcx,0xffffffff8020a3e0
ffffffff80208e94:	ba 16 00 00 00       	mov    edx,0x16
ffffffff80208e99:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80208ea0:	31 c0                	xor    eax,eax
ffffffff80208ea2:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208ea9:	e8 b2 ef ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208eae:	31 c0                	xor    eax,eax
ffffffff80208eb0:	e8 bb c8 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208eb5:	48 c7 c7 f5 a2 20 80 	mov    rdi,0xffffffff8020a2f5
ffffffff80208ebc:	89 c0                	mov    eax,eax
ffffffff80208ebe:	0f b6 b0 00 ce 20 80 	movzx  esi,BYTE PTR [rax-0x7fdf3200]
ffffffff80208ec5:	31 c0                	xor    eax,eax
ffffffff80208ec7:	e8 94 ef ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208ecc:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208ed3:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208ed8:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208edf:	e8 0c 7d ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208ee4:	31 c0                	xor    eax,eax
ffffffff80208ee6:	48 83 c4 08          	add    rsp,0x8
ffffffff80208eea:	e9 71 d1 ff ff       	jmp    ffffffff80206060 <set_lock_print>
ffffffff80208eef:	90                   	nop
ffffffff80208ef0:	31 c0                	xor    eax,eax
ffffffff80208ef2:	e8 79 c8 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208ef7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208efe:	89 c6                	mov    esi,eax
ffffffff80208f00:	31 c0                	xor    eax,eax
ffffffff80208f02:	e8 59 ef ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208f07:	e9 df fe ff ff       	jmp    ffffffff80208deb <lock_ints+0x4b>
ffffffff80208f0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80208f10:	e8 2b d1 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208f15:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208f1c:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208f21:	48 c7 c6 02 93 20 80 	mov    rsi,0xffffffff80209302
ffffffff80208f28:	e8 c3 7c ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208f2d:	31 c0                	xor    eax,eax
ffffffff80208f2f:	e8 ac c9 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208f34:	84 c0                	test   al,al
ffffffff80208f36:	0f 85 2c 01 00 00    	jne    ffffffff80209068 <lock_ints+0x2c8>
ffffffff80208f3c:	48 c7 c1 e0 a3 20 80 	mov    rcx,0xffffffff8020a3e0
ffffffff80208f43:	ba 10 00 00 00       	mov    edx,0x10
ffffffff80208f48:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80208f4f:	31 c0                	xor    eax,eax
ffffffff80208f51:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80208f58:	e8 03 ef ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208f5d:	31 c0                	xor    eax,eax
ffffffff80208f5f:	48 c7 c7 14 a3 20 80 	mov    rdi,0xffffffff8020a314
ffffffff80208f66:	e8 f5 ee ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208f6b:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208f72:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208f77:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80208f7e:	e8 6d 7c ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208f83:	31 c0                	xor    eax,eax
ffffffff80208f85:	e8 d6 d0 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80208f8a:	31 c0                	xor    eax,eax
ffffffff80208f8c:	e8 6f c9 ff ff       	call   ffffffff80205900 <disable_ints>
ffffffff80208f91:	31 c0                	xor    eax,eax
ffffffff80208f93:	e8 78 c9 ff ff       	call   ffffffff80205910 <halt>
ffffffff80208f98:	e9 9c fe ff ff       	jmp    ffffffff80208e39 <lock_ints+0x99>
ffffffff80208f9d:	0f 1f 00             	nop    DWORD PTR [rax]
ffffffff80208fa0:	31 c0                	xor    eax,eax
ffffffff80208fa2:	e8 c9 c7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80208fa7:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80208fae:	89 c6                	mov    esi,eax
ffffffff80208fb0:	31 c0                	xor    eax,eax
ffffffff80208fb2:	e8 a9 ee ff ff       	call   ffffffff80207e60 <printf>
ffffffff80208fb7:	e9 d1 fe ff ff       	jmp    ffffffff80208e8d <lock_ints+0xed>
ffffffff80208fbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80208fc0:	31 c0                	xor    eax,eax
ffffffff80208fc2:	e8 39 c9 ff ff       	call   ffffffff80205900 <disable_ints>
ffffffff80208fc7:	31 c0                	xor    eax,eax
ffffffff80208fc9:	e8 72 d0 ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80208fce:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80208fd5:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80208fda:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff80208fe1:	e8 0a 7c ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80208fe6:	31 c0                	xor    eax,eax
ffffffff80208fe8:	e8 f3 c8 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80208fed:	84 c0                	test   al,al
ffffffff80208fef:	75 57                	jne    ffffffff80209048 <lock_ints+0x2a8>
ffffffff80208ff1:	48 c7 c1 e0 a3 20 80 	mov    rcx,0xffffffff8020a3e0
ffffffff80208ff8:	ba 14 00 00 00       	mov    edx,0x14
ffffffff80208ffd:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff80209004:	31 c0                	xor    eax,eax
ffffffff80209006:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff8020900d:	e8 4e ee ff ff       	call   ffffffff80207e60 <printf>
ffffffff80209012:	31 c0                	xor    eax,eax
ffffffff80209014:	48 c7 c7 27 a3 20 80 	mov    rdi,0xffffffff8020a327
ffffffff8020901b:	e8 40 ee ff ff       	call   ffffffff80207e60 <printf>
ffffffff80209020:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff80209027:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff8020902c:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80209033:	e8 b8 7b ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80209038:	31 c0                	xor    eax,eax
ffffffff8020903a:	e8 21 d0 ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff8020903f:	e9 1b fe ff ff       	jmp    ffffffff80208e5f <lock_ints+0xbf>
ffffffff80209044:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80209048:	31 c0                	xor    eax,eax
ffffffff8020904a:	e8 21 c7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff8020904f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80209056:	89 c6                	mov    esi,eax
ffffffff80209058:	31 c0                	xor    eax,eax
ffffffff8020905a:	e8 01 ee ff ff       	call   ffffffff80207e60 <printf>
ffffffff8020905f:	eb 90                	jmp    ffffffff80208ff1 <lock_ints+0x251>
ffffffff80209061:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80209068:	31 c0                	xor    eax,eax
ffffffff8020906a:	e8 01 c7 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff8020906f:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff80209076:	89 c6                	mov    esi,eax
ffffffff80209078:	31 c0                	xor    eax,eax
ffffffff8020907a:	e8 e1 ed ff ff       	call   ffffffff80207e60 <printf>
ffffffff8020907f:	e9 b8 fe ff ff       	jmp    ffffffff80208f3c <lock_ints+0x19c>
ffffffff80209084:	66 90                	xchg   ax,ax
ffffffff80209086:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
ffffffff8020908d:	00 00 00 

ffffffff80209090 <set_ints>:
ffffffff80209090:	53                   	push   rbx
ffffffff80209091:	31 c0                	xor    eax,eax
ffffffff80209093:	89 fb                	mov    ebx,edi
ffffffff80209095:	e8 a6 cf ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff8020909a:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802090a1:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802090a6:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802090ad:	e8 3e 7b ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802090b2:	31 c0                	xor    eax,eax
ffffffff802090b4:	e8 27 c8 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802090b9:	84 c0                	test   al,al
ffffffff802090bb:	0f 85 5f 01 00 00    	jne    ffffffff80209220 <set_ints+0x190>
ffffffff802090c1:	48 c7 c1 d0 a3 20 80 	mov    rcx,0xffffffff8020a3d0
ffffffff802090c8:	ba 1a 00 00 00       	mov    edx,0x1a
ffffffff802090cd:	31 c0                	xor    eax,eax
ffffffff802090cf:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff802090d6:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802090dd:	e8 7e ed ff ff       	call   ffffffff80207e60 <printf>
ffffffff802090e2:	31 c0                	xor    eax,eax
ffffffff802090e4:	0f b6 f3             	movzx  esi,bl
ffffffff802090e7:	48 c7 c7 3c a3 20 80 	mov    rdi,0xffffffff8020a33c
ffffffff802090ee:	e8 6d ed ff ff       	call   ffffffff80207e60 <printf>
ffffffff802090f3:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802090fa:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802090ff:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff80209106:	e8 e5 7a ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff8020910b:	31 c0                	xor    eax,eax
ffffffff8020910d:	e8 4e cf ff ff       	call   ffffffff80206060 <set_lock_print>
ffffffff80209112:	31 c0                	xor    eax,eax
ffffffff80209114:	e8 57 c6 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80209119:	89 c0                	mov    eax,eax
ffffffff8020911b:	88 98 00 ce 20 80    	mov    BYTE PTR [rax-0x7fdf3200],bl
ffffffff80209121:	31 c0                	xor    eax,eax
ffffffff80209123:	e8 48 c6 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80209128:	89 c0                	mov    eax,eax
ffffffff8020912a:	80 b8 00 ce 20 80 00 	cmp    BYTE PTR [rax-0x7fdf3200],0x0
ffffffff80209131:	b8 00 00 00 00       	mov    eax,0x0
ffffffff80209136:	0f 85 84 00 00 00    	jne    ffffffff802091c0 <set_ints+0x130>
ffffffff8020913c:	e8 af c7 ff ff       	call   ffffffff802058f0 <enable_ints>
ffffffff80209141:	31 c0                	xor    eax,eax
ffffffff80209143:	e8 f8 ce ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff80209148:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff8020914f:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff80209154:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff8020915b:	e8 90 7a ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff80209160:	31 c0                	xor    eax,eax
ffffffff80209162:	e8 79 c7 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff80209167:	84 c0                	test   al,al
ffffffff80209169:	0f 85 f1 00 00 00    	jne    ffffffff80209260 <set_ints+0x1d0>
ffffffff8020916f:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff80209176:	48 c7 c1 d0 a3 20 80 	mov    rcx,0xffffffff8020a3d0
ffffffff8020917d:	ba 1e 00 00 00       	mov    edx,0x1e
ffffffff80209182:	31 c0                	xor    eax,eax
ffffffff80209184:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff8020918b:	e8 d0 ec ff ff       	call   ffffffff80207e60 <printf>
ffffffff80209190:	48 c7 c7 80 a3 20 80 	mov    rdi,0xffffffff8020a380
ffffffff80209197:	31 c0                	xor    eax,eax
ffffffff80209199:	e8 c2 ec ff ff       	call   ffffffff80207e60 <printf>
ffffffff8020919e:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802091a5:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802091aa:	48 c7 c6 f1 92 20 80 	mov    rsi,0xffffffff802092f1
ffffffff802091b1:	e8 3a 7a ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802091b6:	31 c0                	xor    eax,eax
ffffffff802091b8:	5b                   	pop    rbx
ffffffff802091b9:	e9 a2 ce ff ff       	jmp    ffffffff80206060 <set_lock_print>
ffffffff802091be:	66 90                	xchg   ax,ax
ffffffff802091c0:	e8 3b c7 ff ff       	call   ffffffff80205900 <disable_ints>
ffffffff802091c5:	31 c0                	xor    eax,eax
ffffffff802091c7:	e8 74 ce ff ff       	call   ffffffff80206040 <get_lock_print>
ffffffff802091cc:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
ffffffff802091d3:	bf f8 03 00 00       	mov    edi,0x3f8
ffffffff802091d8:	48 c7 c6 c2 93 20 80 	mov    rsi,0xffffffff802093c2
ffffffff802091df:	e8 0c 7a ff ff       	call   ffffffff80200bf0 <com_write>
ffffffff802091e4:	31 c0                	xor    eax,eax
ffffffff802091e6:	e8 f5 c6 ff ff       	call   ffffffff802058e0 <is_smp_active>
ffffffff802091eb:	84 c0                	test   al,al
ffffffff802091ed:	75 51                	jne    ffffffff80209240 <set_ints+0x1b0>
ffffffff802091ef:	48 c7 c7 bb 92 20 80 	mov    rdi,0xffffffff802092bb
ffffffff802091f6:	48 c7 c1 d0 a3 20 80 	mov    rcx,0xffffffff8020a3d0
ffffffff802091fd:	ba 21 00 00 00       	mov    edx,0x21
ffffffff80209202:	31 c0                	xor    eax,eax
ffffffff80209204:	48 c7 c6 58 a3 20 80 	mov    rsi,0xffffffff8020a358
ffffffff8020920b:	e8 50 ec ff ff       	call   ffffffff80207e60 <printf>
ffffffff80209210:	48 c7 c7 a8 a3 20 80 	mov    rdi,0xffffffff8020a3a8
ffffffff80209217:	e9 7b ff ff ff       	jmp    ffffffff80209197 <set_ints+0x107>
ffffffff8020921c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80209220:	31 c0                	xor    eax,eax
ffffffff80209222:	e8 49 c5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80209227:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020922e:	89 c6                	mov    esi,eax
ffffffff80209230:	31 c0                	xor    eax,eax
ffffffff80209232:	e8 29 ec ff ff       	call   ffffffff80207e60 <printf>
ffffffff80209237:	e9 85 fe ff ff       	jmp    ffffffff802090c1 <set_ints+0x31>
ffffffff8020923c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
ffffffff80209240:	31 c0                	xor    eax,eax
ffffffff80209242:	e8 29 c5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80209247:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020924e:	89 c6                	mov    esi,eax
ffffffff80209250:	31 c0                	xor    eax,eax
ffffffff80209252:	e8 09 ec ff ff       	call   ffffffff80207e60 <printf>
ffffffff80209257:	eb 96                	jmp    ffffffff802091ef <set_ints+0x15f>
ffffffff80209259:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
ffffffff80209260:	31 c0                	xor    eax,eax
ffffffff80209262:	e8 09 c5 ff ff       	call   ffffffff80205770 <get_core_id>
ffffffff80209267:	48 c7 c7 94 92 20 80 	mov    rdi,0xffffffff80209294
ffffffff8020926e:	89 c6                	mov    esi,eax
ffffffff80209270:	31 c0                	xor    eax,eax
ffffffff80209272:	e8 e9 eb ff ff       	call   ffffffff80207e60 <printf>
ffffffff80209277:	e9 f3 fe ff ff       	jmp    ffffffff8020916f <set_ints+0xdf>
