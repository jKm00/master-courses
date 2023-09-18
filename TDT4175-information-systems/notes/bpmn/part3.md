---
Date: 18.09.23
Place: Home office
---

# BPMN - Flows

## Sequence Flow

- Represents the sequential execution of process steps
- Connects only flow object within the same pool

## Message Flow

- Represents communication between the process
- Can connect to any type of activity
- Cannot connect to boundary of white-box, must be directly connected to an activity inside the pool

# BPMN - Date & Date Associations

## Data Object

- Represents a local variable in a process
- Piece of temporary data stored inside the process
- Gone when process is finished

## Data Store

- Represents persisten data
- Does not disappear when the process ends