
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

def convert_to_binary(num):
    # Format the number as a 32-bit binary string with leading zeros.
    return format(num & 0xffffff, '024b')


def main():
    # Extract even and odd indexed values
    H0 = [numbers_24[i] for i in range(0, len(numbers_24), 2)]
    H1 = [numbers_24[i] for i in range(1, len(numbers_24), 2)]

    # Convert to binary
    H0_binary = [convert_to_binary(num) for num in H0]
    H1_binary = [convert_to_binary(num) for num in H1]

    # Element-wise sum of H0 and H1
    H0_H1 = [H0[i] + H1[i] for i in range(len(H0))]
    H0_H1_binary = [convert_to_binary(num) for num in H0_H1]

    # Define output directory
    output_dir = r"C:\Users\muizza\Desktop\AVLSI FIR Filter - Project 1\AVLSI FIR Filter\2Filter Reduced Parallel L2\Python Tap Coeff Converter\h"

    # Write to files
    with open(output_dir + "H0.txt", "w") as f:
        f.write("\n".join(H0_binary))

    with open(output_dir + "H1.txt", "w") as f:
        f.write("\n".join(H1_binary))

    with open(output_dir + "H0_H1.txt", "w") as f:
        f.write("\n".join(H0_H1_binary))

    print("Files H0.txt, H1.txt, and H0_H1.txt have been created successfully in", output_dir)


if __name__ == "__main__":
    main()
