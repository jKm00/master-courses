---
author: Joakim
---

# Exam Prep

## Outcome

### Knowledge

- [x] What is an information system
- [x] Taxonomies for different information systems
- [x] Relation between business strategy, organizational strategy, and ICT strategy
- [ ] Methodologies for deployment of information systems
- [ ] Methodologies for requirements engineering
- [ ] Ethics and use of information systems

### Skills

- [ ] Elicit requirements for information systems
- [x] Model business processes using BPMN

## Notes

### What is an information system

Information Systems = Information + System

Information systems are interrelated components working together to collect, process, store, and disseminate information to support decision-making, coordination, control, analysis, and visualization in an organization.


### Taxonomies for different information systems

Can be both manual and computerized.

Three types:

- **Personal IS:** improve the productivity of individual users
- **Group IS:** improve communications and support collaboration among members of a workgroup
- **Enterprise IS:** organizations use to define structured interactions among their own employees and/or external customers, suppliers, government agencies, etc.

#### Data, Information, and Knowledge

- **Data:** raw facts
- **Information:** Collection of data organized in such a way that they have value beyond the facts
- **Process:** Set of logical tasks performed to achieve a defined outcome. (E.g. turning data into information)
- **Knowledge:** Understanding of a set of information and the way it can be made useful to support a task

![Example data, info, know](./imgs/Screenshot%202023-11-07%20at%2010.32.30.png)

![Dimensions of Valuable Information](./imgs/Screenshot%202023-11-07%20at%2014.06.52.png)

### Relation between business strategy, organizational strategy, and ICT strategy

#### Why IS in organizations?

Adapting to changes as a result of external and internal forces

#### Innovation

New ideas for products, processes, and activities of a firm, leading to increased value

Modes of innovation:

- **Sustaining (incremental) innovation:** enhancements to existing products (iPhones later versions)
- **Disruptive (Radical) innovation:** provide a new product for the same market (Netflix)

Value Chains and Supply Chains:

- **Value chain:** activities organizations perform to transform inputs into outputs
- **Supply chain:** key value chain in a manufacturing organization

#### Change Management

- **Re-engineering:** Involves the radical redesign of business processes, organizational structure, information systems, and values of the organization to achieve a breakthrough in business results.

Organizational Culture and Change:

- **Organizational culture:** understanding and assumptions for a business, corporation, or other organization.
- **Organizational change:** how organizations plan for, implement, and handle change

#### Implementation and IS success

Lewin's Change Model:

1. **Unfreezing:** preparing for change
2. **Moving:** making the change
3. **Refreezing:** institutionalizing

Success can be measured in multiple ways. E.g:

- Intention of use vs actual use

![Hype Cycle](imgs/Screenshot%202023-11-07%20at%2011.26.33.png)

### BPMN

**Why:**

- Quicker and cheaper
- Similar to the system, possible to spot the consequences of the system
- Makes communication between stakeholders easier

Three Levels of Use:

1. **Descriptive:** documenting a process flow
2. **Analytical:** more accurate concerning exceptions and events.
3. **Executable:** models that can be transformed into XML.based specifications that drive process engines

#### Step-by-Step Guide

1. Define process scope
   1. How does it start?
   2. What determines when it is complete?
   3. What does each instance of the process represent?
   4. Are there different ways the process can end?
2. Create the "Happy Path"
3. Add top-level exception paths
4. Expand sub-processes to show details at the child level
5. Add intermediate message flows to external pools

#### Syntactic Quality

The rules of BPMN are preserved.

Example of poor quality:

- Dangling activities
- Messages connecting activities within a pool

#### Semantic Quality

The model accurately represents the task described.

_BPMN Exercises with a solution in [slides](https://learn-eu-central-1-prod-fleet01-xythos.content.blackboardcdn.com/5def77a38a2f7/32491316?X-Blackboard-S3-Bucket=learn-eu-central-1-prod-fleet01-xythos&X-Blackboard-Expiration=1699369200000&X-Blackboard-Signature=9dt1xRJH%2B2Rdo1YnbSMcAQbFKduJbVSt%2ByN%2BX1%2F7BgE%3D&X-Blackboard-Client-Id=303508&X-Blackboard-S3-Region=eu-central-1&response-cache-control=private%2C%20max-age%3D21600&response-content-disposition=inline%3B%20filename%2A%3DUTF-8%27%27lecture4-qualmod-BPMN%25281%2529.pdf&response-content-type=application%2Fpdf&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEGgaDGV1LWNlbnRyYWwtMSJHMEUCIQDMxfSuQcFbulwOMx9ik9a9Ai38BbBDsZrG%2BYEsGVB9CgIgE7Rgiu5UcEffiahHsGJ5jNSkN7oM2gkVU9qpcdmDTGMqxwUIof%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARADGgw2MzU1Njc5MjQxODMiDPPqD2XER%2FyRxZCPCiqbBcVhUB%2Fn27lHh2LJkPNi5HtVrPvpTGvddqZ7P6SKjRhUphNl3u%2FTH%2BJLjJp1He2T2e8XhZ7U7K7XZkIx8SgZ9fiNKwL%2FzMW3Isj3%2Benv813JmYDvN8KYiEF7qQV1RGWIIAKCWMxO%2FyS58qvaeksL2TJ7U99RtRm8ZMzQv9hZeNNVTqXfyH38qR3wXVF%2FKkTmjvgUwkl44zJtTpLhez0A4hApl3VhWYqWAi9RwXyZLWUVjW2169CEiwXTrpsol%2Bvg7lvtiju55d2rcbPA5l%2FLYlVpTlZAWyW6IVGdlepyZdspbCMRvshgqjRRur8Q7D9%2FzOhRIFHHTG6DEHbsG3Z1HLdOrDDOJkHfjLkvAJjFJXpGCguN8Cy%2BkufFyH16ozswxdnFmiFoQ5hL8Engvk3sQPb73WS3oDyt1%2F7szHV8o30%2BymzIuLDhiQ41wsP%2Bujxr2pF16Vvn%2BSNwHTgo0XmMG8rN7quDMHNzncs6JeYoohG6WSVLHuYdiTKSZ9wUBiNqiiJ6OFK9KzrZhzBNVUjdf5l1xUSBbockCtSx%2FQcNXKHAaj215hgF6FTFd752fy4NPPOTT5AsjqVV9OyGtoQrcX2CNeOm8pgKEtdC3FkToyf81vc3ncyqmCkfOXuynYFAZ%2BYTaIOy461r591%2BGLj3F%2FQMhJuGR6AnOqv054xQIVJSepyQecXAyJdIZRfk2WsdggRdrjhKBbXIaHMtrrbEkXFHb24CuaBD9aSmBz%2Fc5bp8lymjJ8UpyMvAqChy%2BdrbkNWSResksyPkI38TqUUgQBJSrdzruxnipeVpPcHNctHhdUMGtBTH97ok8a90jxQK2MAh6W%2FoE6cKRWbF2xp%2Fx1IhcJrR5qxJNH%2FEvnBkKkIZgLUlxRFsIXKTcAIwsN2nqgY6sQEJiVxaBH2liy%2Fl3wKFG3VI0p0BfvmB9vbuyoWt0nLdK48XPnftwKuFwOo4yjLDzzU69p8VFGh8MtKX%2BoBo%2FcTDJ7PRzX%2FELCkIv7O9N5UwzmbOxGugpomwTAmvNIMdXVi7mYHZF2fGth0ubSxMQtvX5F5eqBWoKPCIDOOZVgcHgK0CoonIV20BSX65Zt040mqjcCqs4bu6Ak%2B3ERoswYr4oLW52Cl86gN%2BgPi9l4gUAOk%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20231107T090000Z&X-Amz-SignedHeaders=host&X-Amz-Expires=21600&X-Amz-Credential=ASIAZH6WM4PLQJMZFY4G%2F20231107%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Signature=e6c383b735dfbead39c15d00ed02c2fdfb8de7fb744dbaee75bd0b88e285dbdc), pages 64 - 66_

