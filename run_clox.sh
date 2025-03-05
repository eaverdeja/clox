#!/bin/bash

# Ensure the clox binary is built
make -s -C "$(dirname "$0")" DEBUG=$DEBUG build/clox

# Run the clox interpreter with all passed arguments
"$(dirname "$0")/build/clox" "$@"