i = 0

cipher_results = []
with open("cipher_result.txt", "r") as file:
    for line in file:
        line = line.strip()
        if line.startswith("cipher result:"):
            binary_str = line.split(":")[1].strip()[2:]
            cipher_results.append(binary_str)


if len(cipher_results) < 32:
    print("Error: Less than 32 cipher results found.")
    exit()


flip_array = [int(cipher_results[i - 1][i - 1]) for i in range(1, 33)]


print("Generated flip_array from cipher results:")
print(flip_array)


with open("cipher_result.txt", "r") as file:
    lines = file.readlines()

# 找到最后一行包含 flip_array 的行，并提取二进制字符串部分
last_flip_array_line = None
for line in reversed(lines):  # 从文件末尾向前查找
    if line.startswith("flip_array:"):
        last_flip_array_line = line.strip().split(":")[1].strip()  # 提取二进制字符串部分
        break

# 如果找到了 flip_array 行，则转换为 expected_flip_array
if last_flip_array_line:
    expected_flip_array = [int(bit) for bit in last_flip_array_line]
    print("Generated expected_flip_array from file:")
    print(expected_flip_array)
else:
    print("Error: No flip_array found in the file.")

if flip_array == expected_flip_array:
    print("flip_array matches the expected result.")
else:
    print("flip_array does not match the expected result.")
    print("Expected flip_array: ", expected_flip_array)
    print("Generated flip_array:", flip_array)
