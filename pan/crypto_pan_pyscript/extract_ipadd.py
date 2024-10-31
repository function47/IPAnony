from scapy.all import rdpcap
from yacryptopan import CryptoPAn

# 读取 pcap 文件
inputadd = rf"D:\Homework5_EECE7398\Homework5_EECE7398\crypto_pan\crypto_pan_script\udp10k.pcap"
packets = rdpcap(inputadd)
original_ips = set()
encrypted_ips = set()

cp = CryptoPAn(b'\xff' * 16 + b'\x00' * 16)

# 遍历所有数据包并提取不重复的IP地址
for packet in packets:
    if packet.haslayer("IP"):
        src_ip = packet["IP"].src
        dst_ip = packet["IP"].dst
        original_ips.add(src_ip)  # 不重复的源IP
        original_ips.add(dst_ip)  # 不重复的目的IP

# 对每个不重复的IP地址进行加密
for ip in original_ips:
    encrypted_ip = cp.anonymize(ip)  # 加密IP地址
    encrypted_ips.add(encrypted_ip)

# 将不重复的原始IP地址逐行写入 source_ips.dat 文件
with open("source_ips.dat", "w") as source_file:
    for ip in sorted(original_ips):
        source_file.write(f"{ip}\n")

# 将不重复的加密后IP地址逐行写入 encrypted_ips.dat 文件
with open("encrypted_ips.dat", "w") as encrypted_file:
    for ip in sorted(encrypted_ips):
        encrypted_file.write(f"{ip}\n")
