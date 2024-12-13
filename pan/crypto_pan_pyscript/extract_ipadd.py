from scapy.all import rdpcap
from yacryptopan import CryptoPAn

# Read the pcap file
inputadd = rf"D:\Homework5_EECE7398\Homework5_EECE7398\crypto_pan\crypto_pan_script\udp10k.pcap"
packets = rdpcap(inputadd)
original_ips = set()
encrypted_ips = set()

cp = CryptoPAn(b'\xff' * 16 + b'\x00' * 16)

# Iterate through all packets and extract unique IP addresses
for packet in packets:
    if packet.haslayer("IP"):
        src_ip = packet["IP"].src
        dst_ip = packet["IP"].dst
        original_ips.add(src_ip)  # Unique source IP
        original_ips.add(dst_ip)  # Unique destination IP

# Encrypt each unique IP address
for ip in original_ips:
    encrypted_ip = cp.anonymize(ip)  # Encrypt the IP address
    encrypted_ips.add(encrypted_ip)

# Write the unique original IP addresses to source_ips.dat, one per line
with open("source_ips.dat", "w") as source_file:
    for ip in sorted(original_ips):
        source_file.write(f"{ip}\n")

# Write the unique encrypted IP addresses to encrypted_ips.dat, one per line
with open("encrypted_ips.dat", "w") as encrypted_file:
    for ip in sorted(encrypted_ips):
        encrypted_file.write(f"{ip}\n")
