# About

**permute**

*produce permutations*

## Getting started
### Prerequisites

- make

```sh
sudo apt install make
```

- node

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install latest
# check node is installed
node --version
```

### Installation

```sh
git clone https://github.com/pnoulis/permute.git
npm install
make

# or

npm install https://github.com/pnoulis/permute.git

# If you are getting errors try installing esbuild globally
# then re-install
npm install -g esbuild
# esbuild is a transpiler. In this case, it produces the library
# in esm and cjs format.

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

