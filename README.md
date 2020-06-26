## Review 3

A live coding challenge where I had to build a solution for a client. Crafted in Ruby and tested with RSpec.

### Task

To create a spell-checker for my client which would indentify incorrectly spelt words. The spell-checker would be fed a string of text and would return a string with the incorrect words highlighted by tildes "~" on either side.

### Design

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

### Reflection

I chose quite early on - when there were 2 words to check - to implement a dictionary. The input would be checked against the correctly spelt words in this dictionary and assessed to be incorrectly spelt if they were not present.

This made the code scalable later, but it may have been implemented too early as it was not the simplest solution for that particular test. However once the dictionary was in place, it made longer sentences easy to handle - all you had to do was add the correctly spelt words to the dictionary.

I implemented a Set as the structure for my dictionary to make my solution more memory efficient. A Set is a more efficient structure than an array because looking up a value can be done in constant time or O(1). This means that no matter how large your dictionary gets the time it takes to find a value is the same.
