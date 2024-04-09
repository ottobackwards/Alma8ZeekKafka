# installing zeek kafak plugin 

> This is an Alma 8.9 docker image setup to build and install ZeekKafka plugin.
> It uses the cert zeek 6.0.2 rpms ( currrently the Centos Stream official builds are broken )

- build this image: `docker build -t NAME .`
- run this image : `docker run -it NAME bash`
- run `source /opt/rh/gcc-toolset-13/enable && /opt/zeek/bin/zkg install seisollc/zeek-kafka --version v1.2.0`
- run `/opt/zeek/bin/zeek -N`


```bash
[root@e126c399dfcc ~]# source /opt/rh/gcc-toolset-13/enable && /opt/zeek/bin/zkg install seisollc/zeek-kafka --version v1.2.0
The following packages will be INSTALLED:
  zeek/seisollc/zeek-kafka (v1.2.0)

Verify the following REQUIRED external dependencies:
(Ensure their installation on all relevant systems before proceeding):
  from zeek/seisollc/zeek-kafka (v1.2.0):
    librdkafka ~1.4.2

Proceed? [Y/n] y
"zeek/seisollc/zeek-kafka" requires a "LIBRDKAFKA_ROOT" value (Path to librdkafka installation tree root):
LIBRDKAFKA_ROOT: /usr/local/lib
Saved answers to config file: /opt/zeek/etc/zkg/config
Running unit tests for "zeek/seisollc/zeek-kafka"
Installing "zeek/seisollc/zeek-kafka".........................
Installed "zeek/seisollc/zeek-kafka" (v1.2.0)
Loaded "zeek/seisollc/zeek-kafka"
[root@e126c399dfcc ~]# /opt/zeek/bin/zeek -N
Zeek::AF_Packet - Packet acquisition via AF_Packet (built-in)
Zeek::ARP - ARP packet analyzer (built-in)
Zeek::AsciiReader - ASCII input reader (built-in)
Zeek::AsciiWriter - ASCII log writer (built-in)
Zeek::AYIYA - AYIYA packet analyzer (built-in)
Zeek::BenchmarkReader - Benchmark input reader (built-in)
Zeek::BinaryReader - Binary input reader (built-in)
Zeek::BitTorrent - BitTorrent Analyzer (built-in)
Zeek::ConfigReader - Configuration file input reader (built-in)
Zeek::ConnSize - Connection size analyzer (built-in)
Zeek::DCE_RPC - DCE-RPC analyzer (built-in)
Zeek::DHCP - DHCP analyzer (built-in)
Zeek::DNP3 - DNP3 UDP/TCP analyzers (built-in)
Zeek::DNS - DNS analyzer (built-in)
Zeek::Ethernet - Ethernet packet analyzer (built-in)
Zeek::FDDI - FDDI packet analyzer (built-in)
Zeek::File - Generic file analyzer (built-in)
Zeek::FileDataEvent - Delivers file content (built-in)
Zeek::FileEntropy - Entropy test file content (built-in)
Zeek::FileExtract - Extract file content (built-in)
Zeek::FileHash - Hash file content (built-in)
Zeek::FTP - FTP analyzer (built-in)
Zeek::Geneve - Geneve packet analyzer (built-in)
Zeek::Gnutella - Gnutella analyzer (built-in)
Zeek::GRE - GRE packet analyzer (built-in)
Zeek::GSSAPI - GSSAPI analyzer (built-in)
Zeek::GTPv1 - GTPv1 analyzer (built-in)
Zeek::HTTP - HTTP analyzer (built-in)
Zeek::ICMP - Packet analyzer for ICMP (built-in)
Zeek::Ident - Ident analyzer (built-in)
Zeek::IEEE802_11 - IEEE 802.11 packet analyzer (built-in)
Zeek::IEEE802_11_Radio - IEEE 802.11 Radiotap packet analyzer (built-in)
Zeek::IMAP - IMAP analyzer (StartTLS only) (built-in)
Zeek::IP - Packet analyzer for IP fallback (v4 or v6) (built-in)
Zeek::IPTunnel - IPTunnel packet analyzer (built-in)
Zeek::IRC - IRC analyzer (built-in)
Zeek::KRB - Kerberos analyzer (built-in)
Zeek::LinuxSLL - Linux cooked capture (SLL) packet analyzer (built-in)
Zeek::LinuxSLL2 - Linux cooked capture version 2 (SLL2) packet analyzer (built-in)
Zeek::LLC - LLC packet analyzer (built-in)
Zeek::Login - Telnet/Rsh/Rlogin analyzers (built-in)
Zeek::MIME - MIME parsing (built-in)
Zeek::Modbus - Modbus analyzer (built-in)
Zeek::MPLS - MPLS packet analyzer (built-in)
Zeek::MQTT - Message Queuing Telemetry Transport v3.1.1 Protocol analyzer (built-in)
Zeek::MySQL - MySQL analyzer (built-in)
Zeek::NCP - NCP analyzer (built-in)
Zeek::NetBIOS - NetBIOS analyzer support (built-in)
Zeek::NFLog - NFLog packet analyzer (built-in)
Zeek::NoneWriter - None log writer (primarily for debugging) (built-in)
Zeek::NOVELL_802_3 - Novell 802.3 variantx packet analyzer (built-in)
Zeek::NTLM - NTLM analyzer (built-in)
Zeek::NTP - NTP analyzer (built-in)
Zeek::Null - Null packet analyzer (built-in)
Zeek::PBB - PBB packet analyzer (built-in)
Zeek::Pcap - Packet acquisition via libpcap (built-in)
Zeek::PE - Portable Executable analyzer (built-in)
Zeek::PIA - Analyzers implementing Dynamic Protocol (built-in)
Zeek::POP3 - POP3 analyzer (built-in)
Zeek::PPPoE - PPPoE packet analyzer (built-in)
Zeek::PPPSerial - PPPSerial packet analyzer (built-in)
Zeek::RADIUS - RADIUS analyzer (built-in)
Zeek::RawReader - Raw input reader (built-in)
Zeek::RDP - RDP analyzer (built-in)
Zeek::RFB - Parser for rfb (VNC) analyzer (built-in)
Zeek::Root - Root packet analyzer (built-in)
Zeek::RPC - Analyzers for RPC-based protocols (built-in)
Zeek::SIP - SIP analyzer UDP-only (built-in)
Zeek::Skip - Skip packet analyzer (built-in)
Zeek::SMB - SMB analyzer (built-in)
Zeek::SMTP - SMTP analyzer (built-in)
Zeek::SNAP - SNAP packet analyzer (built-in)
Zeek::SNMP - SNMP analyzer (built-in)
Zeek::SOCKS - SOCKS analyzer (built-in)
Zeek::Spicy - Support for Spicy parsers (*.hlto) (built-in)
Zeek::SQLiteReader - SQLite input reader (built-in)
Zeek::SQLiteWriter - SQLite log writer (built-in)
Zeek::SSH - Secure Shell analyzer (built-in)
Zeek::SSL - SSL/TLS and DTLS analyzers (built-in)
Zeek::TCP - TCP analyzer (built-in)
Zeek::TCP_PKT - Packet analyzer for TCP (built-in)
Zeek::Teredo - Teredo packet analyzer (built-in)
Zeek::UDP - Packet analyzer for UDP (built-in)
Zeek::VLAN - VLAN packet analyzer (built-in)
Zeek::VNTag - VNTag packet analyzer (built-in)
Zeek::VXLAN - VXLAN packet analyzer (built-in)
Zeek::X509 - X509 and OCSP analyzer (built-in)
Zeek::XMPP - XMPP analyzer (StartTLS only) (built-in)
Zeek::ZIP - Generic ZIP support analyzer (built-in)
Seiso::Kafka - Writes logs to Kafka (dynamic, version 0.3.0)
[root@e126c399dfcc ~]#
```

