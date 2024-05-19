---
date: 12.05.24
author: Joakim
---

# Exam Prep Notes

## Explain differente requirement elication and documentation approaches

### RSL (requirement specificaiton languages)

#### Guided natural language

- Use words from predefined dictionary
- Avoids vague words and terms
- Retain benefit of free text
- Does not introduce additional formal constraints
- Requires minimal expertise

#### Boilerplate-based RSL

- The _system name_ shall _function_ _object_ every _performance_ _units_
- The _coffe machine_ sall _produce_ _a hot dring_ every _10_ _seconds_

##### User storis

A type of boilerpalte based RSL

### Requirement elication (kravfremkalling)

- Interviews: Interviews with stakeholders to gather requirements
- Workshops: Sessions that bring multiple stakeholders together to discuss requirements
- Questionnaires: Distribute to large number of people to collect responses on specific questions
- Observation: Observer users in their work envrionmnet to understand the task they are performing.
- Document analysis: Review existing documentation to extract system requirments.

### Documentation approaches:

- Complete: All possible situtations must be covered
- Unambiguous: Cant be interpreted in different ways
- Consistent: Does not conflict with other requirements
- Correct: Reflects the inteded purpose and functions envisioned by stakeholders.
- Verifiable: Can check if the final product meets the requirment
- Traceable: Can be linked to its origin in the specifications, design, implementation, and testing.

## Identify qualiy issues of requirements and fix them

### Example

- Requirement: _Reverse thrust may only be used <u>when the airplane is landed</u>_
- Translation: _Reverse thrust may only be used <u>while the wheels are rotating</u>_
- Implementation: _Reverse thrust may only be used <u>while the wheels are rotating fast enough</U>_

## Define different functional and non-functional requirements

### Example Functional

- As a user, I should be able to log into my account using my email and password.

### Example Non-Functional

- The system should be able to handle a request load of up to 1000 request per minute.

## Explain the coverage criteria explained in the lectures

- Statement coverage: Each statement in the code has been executed at least one.
- Decision coverage: Each of the possible branch from each decision point is executed at least once.
- Path coverage: All possible paths of the software should be tested.

## Create test cases by using different data flow testing strategies

- Statment/decision/path
- White box testing: use the code and validate that all lines are reached through the tests

### McCabes Cyclomatic Complexity

$v(G) = E - N + P*$

- E = number of edges
- N = number of nodes
- P = nuber of connected components

$v(G) \le number of paths \le 2^{|{predicates}|}$

### Decicison table

![Control Flow Diagram](./images/control-flow-diagram.PNG)

| P1  | P2  | Test description or reference |
| --- | --- | ----------------------------- |
| 0   | 0   | S1, S3, S5, S6                |
| 0   | 1   | S1, S3, S4, S6                |
| 1   | 0   | S1, S2, S6                    |
| 1   | 1   | S1, S2, S6                    |

## Explain how to use the test coverage information for different purposes

- Use as test acceptance criteria (E.g. "the system shall aim for 85% decision coverage")

## Apply domain testing approach to generate test cases of single variable and multiple variables in combination

### Single variable example

BankA has a credit limit between \$4_000 to \$40_000.

- Identify the variable: "credit-limit"
- Determine the input domain: $\$4,000 \le credit-limit \le \$40,000$
- Identify risks:
  - Failure to process credit limit request between the range correctly
  - Failure to disapprove credit limit requests less that \$4,000
  - Failure to disapproce credit limit requests greater than \$40,000
  - Mishandling of negative credit limit request
- Partion the input domain into equivalance classes based on risks:
  - \$4.000, \$40.000
  - \$3999
  - \$4001
  - \$39.999
  - \$40.001
  - -\$4000

### Multivariable appication

- All variables will interact as they are part of one functional unit and they have to unite to achieve the duty that the functional unit is designated for, so they influence each other

#### Do we need to test all combination?

- Root cause of many bugs shows they depend on the value of one variable
- Most defects can be discovered in tests of the interactions between the values of two variables

#### n-way test

- A system with n variables, every combination of values of these n variables is covered in at least on test.
- E.g an application with 5 variables: 2-way - Every combination of values of any 2 variables is covered in at least on test

## Random testing

- Feed random input to the system
- Observe if the system behaves as expected:
  - Execution satisfies the given specification
  - Or it just does not crash

### Random testing for security

- Identifying vulnerabilities
  - Random attack inputs
  - injection attacks

### Random testing for concurrent programs

- The sequences of thread execution is undeterministic
- Introduce `sleep()` to check for different scheduling, does the system still work?

## Risk based testing

- Testing features based on their risk of failure and the impact of such failures.

1. Risk identificaiton
2. Risk assessment
3. Test planning
4. Test execution
5. Risk mitigation
6. Monitoring and review

- Spend resources and budget on the functionality that has high risks and high impact.

## Explain different approaches for creating integration test cases and their pros and cons

### Top-down

- Begin with main
- Use "stubs" to simulate called functions
- Replace stubs with real functions one by one

### Bottom-up

- Begin with leaves
- Use "drivers" to emulate functions calling the leaves
- Replace "drivers" with real function later

#### Pros & Cons

- Incremental and intuitive
- Easy fault isolation

- Need "stub" or "driver"

### Sandwich

- Mix of top-down and bottom-up

### Incremental

- Testing is conducted incrementally as a series of test cycles

#### Pros & Cons

- Do not need "stub" or "driver"
- Test more global and complex intergrations
- Closely coupled with actual system behavior

- Difficult fault isolation
- Extra effort is needed to identify message path

### Big bang

- Test modules individually
- Put them all together to construct the entire system which is tested as a whole
- Not recommended for big systems

## Explain focuses of different types of system tests

- Functionality: Verify that all modules function individually
- GUI: accessibility, responsiveness, efficiency, comprehensibility
- Interoperability: Verify the ability of the system to inter-operate with third-party products
- Performance: Test the performance of a system compared to the expected
- Robustness: Test how sensitive the system is to erroneous inputs or changes in env
- Scalability: The magnitude of demand the system can handle while continuing to meet performance requirements
- Stress: System can perform acceptably under the worse-case condition
- Load and stability: Ensure the system remains stable for a long period of timer under full load
- Security: Make sure the system is secure
- Regulatory
- Safety assurance: For safety-critical systems -> focus on identifying and mitigating harzards

## Create different system test cases

## Explain different test prioritzation approaches

## Explain regression test selection approaches

## Explain different regression tet minimization and prioritization strategies
