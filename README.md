# clox: A Lox Interpreter in C

## Project Overview

`clox` is a bytecode virtual machine implementation of the Lox programming language, created as part of the "Crafting Interpreters" book by Robert Nystrom. This project is the second part of the book's language implementation, written in C for performance and low-level control.

I tackled the first part of the book in Python instead of Java as part of the [Codecrafters challenge](https://app.codecrafters.io/courses/interpreter). You can see my implementation of `Pylox` here:
https://github.com/eaverdeja/codecrafters-interpreter-python

## Prerequisites

- GCC compiler
- Make
- Standard C99 development environment

## Building the Project

### Compilation

To compile the project, simply run:

```bash
make
```

This will:
- Create a `build` directory
- Compile all source files
- Link the object files
- Generate the `clox` executable

### Running clox

To run the interpreter:

```bash
make run
```

Or directly execute the built binary:

```bash
./build/clox
```

### Cleaning the Project

To remove all compiled files and the build directory:

```bash
make clean
```

## Project Structure

- `src/`: Contains all source code files
- `build/`: Output directory for compiled objects and executable
- `Makefile`: Build script for compiling the project

## Features (Work in Progress)

- Bytecode compilation
- Virtual machine execution
- Dynamic typing
- Garbage collection
- First-class functions
- Closures
- Object-oriented programming support

## Testing

This project leverages the [test suite from the original source repo](https://github.com/munificent/craftinginterpreters/blob/master/tool/bin/test.dart).
To run it, `cd` into the original source repo and run:

```bash
# For the whole test suite
$ dart tool/bin/test.dart clox --interpreter ../clox/run_clox.sh

# For a specific chapter
$ dart tool/bin/test.dart chap17_compiling --interpreter ../clox/run_clox.sh
```

## Learning Resources

- [Crafting Interpreters](https://craftinginterpreters.com/) - The book guiding this implementation
- [Project GitHub Repository](https://github.com/munificent/craftinginterpreters) - Original source code

## License

This project follows the educational purposes of the "Crafting Interpreters" book. Refer to the book's website for specific licensing details.

## Contributions

As this is a learning project, contributions are primarily for educational purposes. Feel free to explore, learn, and experiment!