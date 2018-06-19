/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembly of ASF!.aml, Wed Jun 13 10:42:27 2018
 *
 * ACPI Data Table [ASF!]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "ASF!"    [Alert Standard Format table]
[004h 0004   4]                 Table Length : 000000A5
[008h 0008   1]                     Revision : 20
[009h 0009   1]                     Checksum : 07
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-J5   "
[018h 0024   4]                 Oem Revision : 00001310
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036   1]                Subtable Type : 00 [ASF Information]
[025h 0037   1]                     Reserved : 00
[026h 0038   2]                       Length : 0010
[028h 0040   1]          Minimum Reset Value : FF
[029h 0041   1]     Minimum Polling Interval : FF
[02Ah 0042   2]                    System ID : 202A
[02Ch 0044   4]              Manufacturer ID : 664A0000
[030h 0048   1]                        Flags : 00
[031h 0049   3]                     Reserved : 000000

[034h 0052   1]                Subtable Type : 01 [ASF Alerts]
[035h 0053   1]                     Reserved : 00
[036h 0054   2]                       Length : 002C
[038h 0056   1]                   AssertMask : 00
[039h 0057   1]                 DeassertMask : 00
[03Ah 0058   1]                  Alert Count : 03
[03Bh 0059   1]            Alert Data Length : 0C

[03Ch 0060   1]                      Address : 00
[03Dh 0061   1]                      Command : 00
[03Eh 0062   1]                         Mask : 00
[03Fh 0063   1]                        Value : 00
[040h 0064   1]                   SensorType : 00
[041h 0065   1]                         Type : 00
[042h 0066   1]                       Offset : 00
[043h 0067   1]                   SourceType : 00
[044h 0068   1]                     Severity : 00
[045h 0069   1]                 SensorNumber : 00
[046h 0070   1]                       Entity : 00
[047h 0071   1]                     Instance : 00

[048h 0072   1]                      Address : 00
[049h 0073   1]                      Command : 00
[04Ah 0074   1]                         Mask : 00
[04Bh 0075   1]                        Value : 00
[04Ch 0076   1]                   SensorType : 00
[04Dh 0077   1]                         Type : 00
[04Eh 0078   1]                       Offset : 00
[04Fh 0079   1]                   SourceType : 00
[050h 0080   1]                     Severity : 00
[051h 0081   1]                 SensorNumber : 00
[052h 0082   1]                       Entity : 00
[053h 0083   1]                     Instance : 00

[054h 0084   1]                      Address : 00
[055h 0085   1]                      Command : 00
[056h 0086   1]                         Mask : 00
[057h 0087   1]                        Value : 00
[058h 0088   1]                   SensorType : 00
[059h 0089   1]                         Type : 00
[05Ah 0090   1]                       Offset : 00
[05Bh 0091   1]                   SourceType : 00
[05Ch 0092   1]                     Severity : 00
[05Dh 0093   1]                 SensorNumber : 00
[05Eh 0094   1]                       Entity : 00
[05Fh 0095   1]                     Instance : 00

[060h 0096   1]                Subtable Type : 02 [ASF Remote Control]
[061h 0097   1]                     Reserved : 00
[062h 0098   2]                       Length : 0018
[064h 0100   1]                Control Count : 04
[065h 0101   1]          Control Data Length : 04
[066h 0102   2]                     Reserved : 0000

[068h 0104   1]                     Function : 00
[069h 0105   1]                      Address : 88
[06Ah 0106   1]                      Command : 00
[06Bh 0107   1]                        Value : 03

[06Ch 0108   1]                     Function : 01
[06Dh 0109   1]                      Address : 88
[06Eh 0110   1]                      Command : 00
[06Fh 0111   1]                        Value : 02

[070h 0112   1]                     Function : 02
[071h 0113   1]                      Address : 88
[072h 0114   1]                      Command : 00
[073h 0115   1]                        Value : 01

[074h 0116   1]                     Function : 03
[075h 0117   1]                      Address : 88
[076h 0118   1]                      Command : 00
[077h 0119   1]                        Value : 04

[078h 0120   1]                Subtable Type : 03 [ASF RMCP Boot Options]
[079h 0121   1]                     Reserved : 00
[07Ah 0122   2]                       Length : 0017
[07Ch 0124   7]                 Capabilities : 00 F8 00 00 00 13 F0
[083h 0131   1]              Completion Code : 00
[084h 0132   4]                Enterprise ID : 00000000
[088h 0136   1]                      Command : 00
[089h 0137   2]                    Parameter : 0000
[08Bh 0139   2]                 Boot Options : 0000
[08Dh 0141   2]               Oem Parameters : 0000

[08Fh 0143   1]                Subtable Type : 84 [ASF Address]
[090h 0144   1]                     Reserved : 00
[091h 0145   2]                       Length : 0016
[093h 0147   1]                Eprom Address : 00
[094h 0148   1]                 Device Count : 10
[095h 0149   1]                    Addresses : 5C 68 88 C2 D2 DC A0 A2 A4 A6 C8 00 00 00 00 00 


Raw Table Data: Length 165 (0xA5)

  0000: 41 53 46 21 A5 00 00 00 20 07 4C 45 4E 4F 56 4F  // ASF!.... .LENOVO
  0010: 54 50 2D 4A 35 20 20 20 10 13 00 00 50 54 45 43  // TP-J5   ....PTEC
  0020: 02 00 00 00 00 00 10 00 FF FF 2A 20 00 00 4A 66  // ..........* ..Jf
  0030: 00 00 00 00 01 00 2C 00 00 00 03 0C 00 00 00 00  // ......,.........
  0040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  0050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
  0060: 02 00 18 00 04 04 00 00 00 88 00 03 01 88 00 02  // ................
  0070: 02 88 00 01 03 88 00 04 03 00 17 00 00 F8 00 00  // ................
  0080: 00 13 F0 00 00 00 00 00 00 00 00 00 00 00 00 84  // ................
  0090: 00 16 00 00 10 5C 68 88 C2 D2 DC A0 A2 A4 A6 C8  // .....\h.........
  00A0: 00 00 00 00 00                                   // .....
