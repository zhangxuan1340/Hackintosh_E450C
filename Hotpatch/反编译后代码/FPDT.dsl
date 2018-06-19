/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembly of FPDT.aml, Wed Jun 13 10:42:49 2018
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004   4]                 Table Length : 00000064
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : A5
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-J5   "
[018h 0024   4]                 Oem Revision : 00001310
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002


[024h 0036   2]                Subtable Type : 0000
[026h 0038   1]                       Length : 10
[027h 0039   1]                     Revision : 01
[028h 0040   4]                     Reserved : 00000000
[02Ch 0044   8]     FPDT Boot Record Address : 000000009CAECE98

[034h 0052   2]                Subtable Type : 0001
[036h 0054   1]                       Length : 10
[037h 0055   1]                     Revision : 01
[038h 0056   4]                     Reserved : 00000000
[03Ch 0060   8]          S3PT Record Address : 000000009CAECE18

[044h 0068   2]                Subtable Type : 3000
[046h 0070   1]                       Length : 10
[047h 0071   1]                     Revision : 01

**** Unknown FPDT subtable type 0x3000


[054h 0084   2]                Subtable Type : 3001
[056h 0086   1]                       Length : 10
[057h 0087   1]                     Revision : 01

**** Unknown FPDT subtable type 0x3001


Raw Table Data: Length 100 (0x64)

  0000: 46 50 44 54 64 00 00 00 01 A5 4C 45 4E 4F 56 4F  // FPDTd.....LENOVO
  0010: 54 50 2D 4A 35 20 20 20 10 13 00 00 50 54 45 43  // TP-J5   ....PTEC
  0020: 02 00 00 00 00 00 10 01 00 00 00 00 98 CE AE 9C  // ................
  0030: 00 00 00 00 01 00 10 01 00 00 00 00 18 CE AE 9C  // ................
  0040: 00 00 00 00 00 30 10 01 00 00 00 00 18 90 1E 9C  // .....0..........
  0050: 00 00 00 00 01 30 10 01 00 00 00 00 18 40 18 9C  // .....0.......@..
  0060: 00 00 00 00                                      // ....
