/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembly of PCCT.aml, Wed Jun 13 10:43:13 2018
 *
 * ACPI Data Table [PCCT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "PCCT"    [Platform Communications Channel Table]
[004h 0004   4]                 Table Length : 0000006E
[008h 0008   1]                     Revision : 05
[009h 0009   1]                     Checksum : 68
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-J5   "
[018h 0024   4]                 Oem Revision : 00001310
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036   4]        Flags (decoded below) : 00000001
                                    Platform : 1
[028h 0040   8]                     Reserved : 0000000000000000

[030h 0048   1]                Subtable Type : 00 [Generic Communications Subspace]
[031h 0049   1]                       Length : 3E

[032h 0050   6]                     Reserved : 000000000000
[038h 0056   8]                 Base Address : 000000009CF63018
[040h 0064   8]               Address Length : 0000000000001000

[048h 0072  12]            Doorbell Register : [Generic Address Structure]
[048h 0072   1]                     Space ID : 01 [SystemIO]
[049h 0073   1]                    Bit Width : 08
[04Ah 0074   1]                   Bit Offset : 00
[04Bh 0075   1]         Encoded Access Width : 01 [Byte Access:8]
[04Ch 0076   8]                      Address : 0000000000001842

[054h 0084   8]                Preserve Mask : 00000000000000FD
[05Ch 0092   8]                   Write Mask : 0000000000000002
[064h 0100   4]              Command Latency : 00001388
[068h 0104   4]          Maximum Access Rate : 00000000
[06Ch 0108   2]      Minimum Turnaround Time : 0000

Raw Table Data: Length 110 (0x6E)

  0000: 50 43 43 54 6E 00 00 00 05 68 4C 45 4E 4F 56 4F  // PCCTn....hLENOVO
  0010: 54 50 2D 4A 35 20 20 20 10 13 00 00 50 54 45 43  // TP-J5   ....PTEC
  0020: 02 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // ................
  0030: 00 3E 00 00 00 00 00 00 18 30 F6 9C 00 00 00 00  // .>.......0......
  0040: 00 10 00 00 00 00 00 00 01 08 00 01 42 18 00 00  // ............B...
  0050: 00 00 00 00 FD 00 00 00 00 00 00 00 02 00 00 00  // ................
  0060: 00 00 00 00 88 13 00 00 00 00 00 00 00 00        // ..............
