# About

## Getting started
### Prerequisites

- node >= 22.11.0

- git

### Installation

```sh

git clone git@github.com:pnoulis/permute.git
npm install

# or

npm install git@github.com:pnoulis/permute.git

```

## Examples

```javascript

import * as permute from 'permute';

/*
  __powerset__
  permutation: { set: [ { index: Number, value: any }, ... ], index: Number }

  set = the current permutation set
  permutation.index = The index of the current permutation set in the powerset.
  set[].value = An element of the permutation
  set[].index = The index of the set[].value in the input set
*/
permute.powerset([0, 1, 2], handlePermutation)

function handlePermutation(permutation) {
    console.log(permutation);
}

```

## Contributing

Submit a pull request

## Contact

pavlos.noulis@gmail.com

