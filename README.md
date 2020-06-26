## Task

To create a spell-checker for my client which would indentify incorrectly spelt words. The spell-checker would be fed a string of text and would return a string with the incorrect words highlighted by tildas "~" on either side.

## Design

I used the following examples for my tests. I realised early on that I had picked some complicated examples by making them more than one word.

The following inputs and outputs were the basis for my early tests.

| Input       | Output                  |
|:------------- |:-------------         |
| "hello" | "hello" |
| "hlleo" | "~hlleo~"|
| "hello nmae" | "hello ~nmae~" |
| "hlleo my nmae" | "~hlleo~ my ~nmae~" |
| "" | Error message |
|" " | Error message |

Edge cases were empty strings. If an empty string was given it would need to throw an error.
