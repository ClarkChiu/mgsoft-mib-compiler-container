# The container of MG-SOFT MIB Compiler

## Tool

- MG-SOFT MIB Compiler: **version 14.0 build 1410**

## Example

```shell
$ sudo docker run -it --rm clarkchiu/mgsoft-mib-compiler -V
MG-SOFT MIB Compiler (front-end), Version 14.0 Build 1410 (Linux) (64-bit)
Copyright (C) 1997-2020  MG-SOFT Corporation. All rights reserved.

Usage: MibC filename [options]

Options (No space between switch and parameter):

 -Dt[string]        Prints MIB symbols
 -Dn[string]        Prints MIB nodes
 -Ds[string]        Prints MIB sequences
 -Dr[string]        Prints SNMPv1 traps
 -Sc[string]        Saves current MIB module(s) to database
 -Ss                Saves current MIB module(s) to database (source file path)
 -Sa[string]        Saves current and imported MIB module(s) to database
 -Rsn               Saves MIB module source file path to registry
 -Rso               Saves MIB module source file path to registry (overwrite)
 -Rdn               Saves MIB module database file path to registry
 -Rdo               Saves MIB module database file path to registry (overwrite)
 -Rr                Reads MIB module(s) information from registry
 -Rf                Use registered MIB module source file paths
 -Mmodule:source    Sets MIB module source path
 -Lc                Scans file(s) for MIB module definiton
 -Li                Scans file(s) for MIB module definiton and imports
 -B[s]              Batch compile. [s] - to stop batch compilation
                    when one MIB module failed to compile
 -F                 Use input file name as the list for the batch compilation.
 -I                 Includes subfolders (only for scan and batch compile)
 -Amodule1:module2  Creates the alias of MIB module1 - named MIB module2
 -Enumber           Sets the number of maximum error(s) alowed
 -N                 Skips compiled MIB modules
 -Os                Saves global sequences
 -Od                Suppresses DESCRIPTION in smidb database
 -Ou                Allows unreferenced sequences
 -OmX               Sets operation mode: 'Mode X' 0-strict, 1-loose (default)
 -Oc                Strict ASN.1 for comments
 -Ok                Preserve comments
 -Oa                Import MIB Module(s) specified in SUPPORTS clause of AC
 -On                Import MIB Module(s) specified in MODULE clause of MC
 -Oi                Import all items for OBJECT-GROUP and NOTIFICATION-GROUP
 -P[iwena]          Print messages: info, warning, error, none, all (default)

Examples:
Print all nodes: mibc rfc1213.mib -Dn
Print node: mibc rfc1213.mib -DnsysDescr
Print all symbol definitions: mibc rfc1213.mib -Dt

Finished.
```
