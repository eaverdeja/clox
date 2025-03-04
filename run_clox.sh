#!/bin/bash

# Ensure the clox binary is built
make -C "$(dirname "$0")" build/clox

# Run the clox interpreter with all passed arguments
"$(dirname "$0")/build/clox" "$@"