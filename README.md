## Task

## Examples for tests

| Input       | Output                  |
|:------------- |:-------------         |
| "hlleo" | "~hlleo~"|
| "hello my name is Orange" | "hello my name is Orange" |
| "hello my nmae is Orange" | "hello my ~nmae~ is Orange" |
| "hlleo my nmae is Orange" | "~hlleo~ my ~nmae~ is Orange" |
| "" | Error message |
|" " | Error message |


~
string - string
valid strings
empty strings - edge case raise error.
