
u
Command: %s
53*	vivadotcl2D
0synth_design -top test_env -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
42362default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1034.316 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
test_env2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
452default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
clk2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2072default:default8@Z8-614h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
instructionFetch2default:default2q
]C:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/instructionFetch.vhd2default:default2
362default:default2
IFPort2default:default2$
instructionFetch2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2352default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2$
instructionFetch2default:default2s
]C:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/instructionFetch.vhd2default:default2
502default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
pCounter2default:default2s
]C:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/instructionFetch.vhd2default:default2
972default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
branchAddress2default:default2s
]C:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/instructionFetch.vhd2default:default2
972default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
aux2default:default2s
]C:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/instructionFetch.vhd2default:default2
1062default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
jumpAddress2default:default2s
]C:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/instructionFetch.vhd2default:default2
1062default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
instructionFetch2default:default2
12default:default2
12default:default2s
]C:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/instructionFetch.vhd2default:default2
502default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
idUnit2default:default2g
SC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/idUnit.vhd2default:default2
362default:default2
idport2default:default2
idUnit2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2372default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
idUnit2default:default2i
SC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/idUnit.vhd2default:default2
502default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
rt2default:default2i
SC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/idUnit.vhd2default:default2
782default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
rd2default:default2i
SC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/idUnit.vhd2default:default2
782default:default8@Z8-614h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
registerFile2default:default2m
YC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/registerFile.vhd2default:default2
362default:default2
RFPort2default:default2 
registerFile2default:default2i
SC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/idUnit.vhd2default:default2
922default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
registerFile2default:default2o
YC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/registerFile.vhd2default:default2
472default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
registerFile2default:default2
22default:default2
12default:default2o
YC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/registerFile.vhd2default:default2
472default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
idUnit2default:default2
32default:default2
12default:default2i
SC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/idUnit.vhd2default:default2
502default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
executionUnit2default:default2n
ZC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/executionUnit.vhd2default:default2
362default:default2
exUnit2default:default2!
executionUnit2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2392default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
executionUnit2default:default2p
ZC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/executionUnit.vhd2default:default2
532default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
rd22default:default2p
ZC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/executionUnit.vhd2default:default2
642default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ext_imm2default:default2p
ZC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/executionUnit.vhd2default:default2
642default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	ALUResAux2default:default2p
ZC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/executionUnit.vhd2default:default2
992default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
executionUnit2default:default2
42default:default2
12default:default2p
ZC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/executionUnit.vhd2default:default2
532default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
mem2default:default2d
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mem.vhd2default:default2
362default:default2
memory2default:default2
mem2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2412default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
mem2default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mem.vhd2default:default2
502default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
Address2default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mem.vhd2default:default2
702default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
mem2default:default2
52default:default2
12default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mem.vhd2default:default2
502default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
mpg2default:default2d
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mpg.vhd2default:default2
362default:default2
mpgport2default:default2
mpg2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2432default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
mpg2default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mpg.vhd2default:default2
442default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
mpg2default:default2
62default:default2
12default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mpg.vhd2default:default2
442default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
mpg2default:default2d
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/mpg.vhd2default:default2
362default:default2
mpgportmap22default:default2
mpg2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2442default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ssd2default:default2d
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/ssd.vhd2default:default2
362default:default2
afisare2default:default2
ssd2default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
2462default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
ssd2default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/ssd.vhd2default:default2
452default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
cif2default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/ssd.vhd2default:default2
602default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ssd2default:default2
72default:default2
12default:default2f
PC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/ssd.vhd2default:default2
452default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
test_env2default:default2
82default:default2
12default:default2k
UC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/sources_1/new/test_env.vhd2default:default2
452default:default8@Z8-256h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1036.934 ; gain = 2.617
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1036.934 ; gain = 2.617
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1036.934 ; gain = 2.617
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0122default:default2
1036.9342default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2n
XC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/constrs_1/new/Constraints.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2n
XC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/constrs_1/new/Constraints.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2l
XC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.srcs/constrs_1/new/Constraints.xdc2default:default2.
.Xil/test_env_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1135.1292default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1135.1292default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1135.129 ; gain = 100.812
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1135.129 ; gain = 100.812
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1135.129 ; gain = 100.812
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1135.129 ; gain = 100.812
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	              256 Bit	(16 X 16 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	 257 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1135.129 ; gain = 100.812
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2t
`+------------+----------------------------+-----------+----------------------+----------------+
2default:defaulth px? 
?
%s*synth2u
a|Module Name | RTL Object                 | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth px? 
?
%s*synth2t
`+------------+----------------------------+-----------+----------------------+----------------+
2default:defaulth px? 
?
%s*synth2u
a|test_env    | idport/RFPort/reg_file_reg | Implied   | 8 x 16               | RAM32M x 6	    | 
2default:defaulth px? 
?
%s*synth2u
a|test_env    | memory/RAM_reg             | Implied   | 16 x 16              | RAM16X1S x 16	 | 
2default:defaulth px? 
?
%s*synth2u
a+------------+----------------------------+-----------+----------------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1135.129 ; gain = 100.812
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1135.129 ; gain = 100.812
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2t
`+------------+----------------------------+-----------+----------------------+----------------+
2default:defaulth p
x
? 
?
%s
*synth2u
a|Module Name | RTL Object                 | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth p
x
? 
?
%s
*synth2t
`+------------+----------------------------+-----------+----------------------+----------------+
2default:defaulth p
x
? 
?
%s
*synth2u
a|test_env    | idport/RFPort/reg_file_reg | Implied   | 8 x 16               | RAM32M x 6	    | 
2default:defaulth p
x
? 
?
%s
*synth2u
a|test_env    | memory/RAM_reg             | Implied   | 16 x 16              | RAM16X1S x 16	 | 
2default:defaulth p
x
? 
?
%s
*synth2u
a+------------+----------------------------+-----------+----------------------+----------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 1160.641 ; gain = 126.324
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |CARRY4   |    20|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT1     |     2|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT2     |    23|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT4     |    23|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT5     |    52|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT6     |    93|
2default:defaulth px? 
F
%s*synth2.
|8     |MUXF7    |    28|
2default:defaulth px? 
F
%s*synth2.
|9     |RAM16X1S |    16|
2default:defaulth px? 
F
%s*synth2.
|10    |RAM32M   |     6|
2default:defaulth px? 
F
%s*synth2.
|11    |FDCE     |    24|
2default:defaulth px? 
F
%s*synth2.
|12    |FDRE     |    38|
2default:defaulth px? 
F
%s*synth2.
|13    |IBUF     |     7|
2default:defaulth px? 
F
%s*synth2.
|14    |OBUF     |    19|
2default:defaulth px? 
F
%s*synth2.
|15    |OBUFT    |     8|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1166.484 ; gain = 33.973
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1166.484 ; gain = 132.168
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1178.4732default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
702default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1178.4732default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 22 instances were transformed.
  RAM16X1S => RAM32X1S (RAMS32): 16 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 6 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392default:default2
122default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:302default:default2
00:00:322default:default2
1178.4732default:default2
144.1562default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2c
OC:/Users/tinte/OneDrive/Desktop/Proiecte CV/MIPS/MIPS.runs/synth_1/test_env.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file test_env_utilization_synth.rpt -pb test_env_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Mar 14 21:50:01 20212default:defaultZ17-206h px? 


End Record