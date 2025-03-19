import numpy as np

numbers_24 = [1164,
3199,
6366,
9665,
10784,
5906,
-9882,
-41485,
-92099,
-161286,
-243445,
-327371,
-397467,
-436712,
-430954,
-373460,
-268344,
-131507,
11716,
132068,
203875,
212462,
159156,
61980,
-48667,
-138496,
-179621,
-159484,
-85356,
17415,
113282,
168245,
161705,
94334,
-11081,
-116600,
-182010,
-179455,
-104724,
19146,
147912,
230518,
227489,
127190,
-45944,
-234819,
-364684,
-365691,
-196215,
140606,
592904,
1070718,
1468718,
1694576,
1694576,
1468718,
1070718,
592904,
140606,
-196215,
-365691,
-364684,
-234819,
-45944,
127190,
227489,
230518,
147912,
19146,
-104724,
-179455,
-182010,
-116600,
-11081,
94334,
161705,
168245,
113282,
17415,
-85356,
-159484,
-179621,
-138496,
-48667,
61980,
159156,
212462,
203875,
132068,
11716,
-131507,
-268344,
-373460,
-430954,
-436712,
-397467,
-327371,
-243445,
-161286,
-92099,
-41485,
-9882,
5906,
10784,
9665,
6366,
3199,
1164]

# Function to convert to 32-bit binary representation
def convert_to_binary(num):
    return format(num & 0xffffff, '024b')  # Keep 32-bit signed format

# Polyphase decomposition with M=3
N = len(numbers_24)  # Number of taps (102)
M = 3  # Number of polyphase components

# Split into three polyphase components
H0 = np.array(numbers_24[0::M], dtype=np.int32)  # h[0], h[3], h[6], ...
H1 = np.array(numbers_24[1::M], dtype=np.int32)  # h[1], h[4], h[7], ...
H2 = np.array(numbers_24[2::M], dtype=np.int32)  # h[2], h[5], h[8], ...

# Compute element-wise sums
H0_H1 = H0 + H1
H1_H2 = H1 + H2
H0_H1_H2 = H0 + H1 + H2

# Save results to separate files with binary representation
def save_polyphase_to_file(filename, data):
    with open(filename, "w") as f:
        for num in data:
            f.write(convert_to_binary(num) + "\n")

save_polyphase_to_file("H0.txt", H0)
save_polyphase_to_file("H1.txt", H1)
save_polyphase_to_file("H2.txt", H2)
save_polyphase_to_file("H0_H1.txt", H0_H1)
save_polyphase_to_file("H1_H2.txt", H1_H2)
save_polyphase_to_file("H0_H1_H2.txt", H0_H1_H2)

print("\nPolyphase decomposition and summations complete. Files saved:")
print(" - H0.txt")
print(" - H1.txt")
print(" - H2.txt")
print(" - H0_H1.txt")
print(" - H1_H2.txt")
print(" - H0_H1_H2.txt")