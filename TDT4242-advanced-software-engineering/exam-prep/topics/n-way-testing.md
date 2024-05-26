# n-way testing

- Too much to test all different combination of input variables
- Most defects are related to one single factor or a combination of two factors
  - Thats why choosing n = 2 is often good enough

## Example 1

- x: a, b, c
- y: alpha, beta, gamma
- z: 1, 2, 3,

3 x 3 x 3 = 27 test cases. Thats a lot. Using 2-way testing, we can reduce it to 9 tests.

Find all pairs:

- x-y: a-alpha, a-beta, a-gamma, b-alpha, b-beta, b-gamma, c-alpha, c-beta, c-gamma
- x-z: a-1, a-2, a-3, b-1, b-2, b-3, c-1, c-2, c-3
- y-z: alpha-1, alpha-2, alpha-3, beta-1, beta-2, beta-3, gamma-1, gamma-2, gamma-3

Setup in table:

| x   | y     | x   |
| --- | ----- | --- |
| a   | alpha | 1   |
| a   | beta  | 2   |
| a   | gamma | 3   |
| b   | alpha | 2   |
| b   | beta  | 3   |
| b   | gamma | 1   |
| c   | alpha | 3   |
| c   | beta  | 1   |
| c   | gamma | 2   |

With the table above, each pair is tested once.

## Example 2 (20217 exam)

Variables:

- Availability: AVA, NIS, DIS
- Payment: CC, GV
- Deliver: MA, UPS, FE

All pairs:

- Availability-payment: **AVA-CC**, **AVA-GV**, **NIS-CC**, **NIS-GV**, **DIS-CC**, **DIS-GV**
- Availability-delivery: **AVA-MA**, **AVA-UPS**, **AVA-FE**, **NIS-MA**, **NIS-UPS**, **NIS-FE**, **DIS-MA**, **DIS-UPS**, **DIS-FE**
- Payment-delivery: **CC-MA**, **CC-UPS**, **CC-FE**, **GV-MA**, **GV-UPS**, **GV-FE**

Table:

| Availability | Delivery | Payment |
| ------------ | -------- | ------- |
| AVA          | MA       | CC      |
| AVA          | UPS      | GV      |
| AVA          | FE       | CC      |
| NIS          | MA       | GV      |
| NIS          | UPS      | CC      |
| NIS          | FE       | GV      |
| DIS          | MA       | CC      |
| DIS          | UPS      | GV      |
| DIS          | FE       | CC      |

_Note: Take the variables with the most values first_
