# MM4

General-purpose simulator for molecular nanotechnology (work in progress)

Documentation: [philipturner.github.io/MM4](https://philipturner.github.io/MM4)

| MM4 Atom Code | 6-ring | 5-ring | 4-ring | 3-ring |
| - | - | - | - | - |
| H            | 5   | n/a | n/a           | n/a           |
| C (sp3)      | 1   | 123 | not supported | not supported |
| N (sp3)      | 8   | 8   | not supported | not supported |
| F            | 11  | n/a | n/a           | n/a           |
| Si (sp3)     | 19  | 19  | not supported | not supported |
| P (sp3)      | 25  | 25  | not supported | not supported |
| S (sp3)      | 15  | 15  | not supported | not supported |

| Element | H | C<sub>sp3</sub> | N | F | Si | P | S |
| --------------- | - | - | - | - | - | - | - |
| H               |   | X |   |   | X |   |   |
| C<sub>sp3</sub> | X | X | O | O | O | O | O |
| N               |   | O |   |   |   |   |   |
| F               |   | O |   |   |   |   |   |
| Si              | X | O |   |   | X |   |   |
| P               |   | O |   |   |   |   |   |
| S               |   | O |   |   |   |   |   |

Key:
- X = nonpolar covalent bond
- O = polar covalent bond
- blank = not supported
