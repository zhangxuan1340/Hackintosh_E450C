/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembly of BGRT.aml, Wed Jun 13 10:42:36 2018
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004   4]                 Table Length : 00000038
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : AF
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-J5   "
[018h 0024   4]                 Oem Revision : 00001310
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036   2]                      Version : 0001
[026h 0038   1]       Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039   1]                   Image Type : 00
[028h 0040   8]                Image Address : 0000000094458018
[030h 0048   4]                Image OffsetX : 00000240
[034h 0052   4]                Image OffsetY : 0000015F

Raw Table Data: Length 56 (0x38)

  0000: 42 47 52 54 38 00 00 00 01 AF 4C 45 4E 4F 56 4F  // BGRT8.....LENOVO
  0010: 54 50 2D 4A 35 20 20 20 10 13 00 00 50 54 45 43  // TP-J5   ....PTEC
  0020: 02 00 00 00 01 00 01 00 18 80 45 94 00 00 00 00  // ..........E.....
  0030: 40 02 00 00 5F 01 00 00                          // @..._...
