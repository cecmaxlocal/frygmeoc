'' -*- mode: freebasic -*-

'' A FreeBASIC include file with the extension .bi, such as net.bi, 
'' typically contains declarations like constants, types, and function 
'' prototypes to be shared across multiple .bas source files. The actual 
'' implementation code usually lives in corresponding .bas files, though 
'' short utility functions can be included inline.

'' Here is an example minimal net.bi that declares basic networking 
'' functions and types you might use as a foundation in FreeBASIC:

'' ```freebasic
'' net.bi - Basic networking declarations for FreeBASIC

#Pragma Once

'' Common constants
Const AF_INET As Integer = 2
Const SOCK_STREAM As Integer = 1
Const SOCK_DGRAM As Integer = 2

'' Socket descriptor type
Type FDSOCKET
    value As Integer
End Type

'' sockaddr_in structure for IPv4 address and port
Type SOCKADDR_in
    sin_family As UShort
    sin_port As UShort
    sin_addr As UInt32
    sin_zero As ULong Ptr ' padding
End Type

'' Host entry returned by DNS resolver
Type HOSTENT
    h_name As String Ptr
    h_aliases As String Ptr Ptr
    h_addrtype As Integer
    h_length As Integer
    h_addr_list As UInt32 Ptr Ptr
End Type

'' Function declarations (these would be implemented in a .bas or linked lib)
Declare Function NetSocket(family As Integer, _type As Integer) As FDSOCKET
Declare Function NetConnect(sock As FDSOCKET, addr As SOCKADDR_in Ptr) As Integer
Declare Function NetSend(sock As FDSOCKET, buf As String Ptr, buflen As Integer) As Integer
Declare Function NetReceive(sock As FDSOCKET, buf As String Ptr, buflen As Integer) As Integer
Declare Function NetClose(sock As FDSOCKET) As Integer
Declare Function NetGetHostByName(name As String) As HOSTENT Ptr
'' ```

'' This header can be included in your FreeBASIC projects to provide basic socket-related 
'' function declarations and types for network programming.

'' Typically, you would implement these functions separately or use already provided 
'' FreeBASIC networking libraries. The declarations allow you to build TCP/IP clients, 
'' servers, or perform DNS lookups within your FreeBASIC code.

'' This .bi layout follows community guidelines for sharing network-related declarations 
'' succinctly and modularly.[1][3][4]

' [1](https://www.freebasic.net/forum/viewtopic.php?t=27774)
' [2](https://www.freebasic.net/forum/viewtopic.php?t=26295)
' [3](https://freebasic.net/forum/viewtopic.php?t=11083)
' [4](https://www.freebasic.net/forum/viewtopic.php?t=20689)
' [5](https://freebasic.net/forum/viewtopic.php?t=12420)
' [6](https://freebasic.net/forum/viewtopic.php?t=26961)
' [7](https://www.freebasic.net/forum/viewtopic.php?t=31995)
' [8](https://www.freebasic.net/forum/viewtopic.php?t=8316)
' [9](https://documentation.help/FreeBASIC/documentation.pdf)
' [10](https://www.autoitscript.com/forum/topic/185024-freebasic-graphical-examples-build-2019-05-08/)
