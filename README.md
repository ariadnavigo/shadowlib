# Library symbol shadowing demo

This is a small demo that shows how the linker will always give priority to a
symbol found in object files above that very same symbol found in a library.
I'm using a static library for convenience, but this works exactly the same for
dynamic libraries.

The symbol being shadowed here is ``my_print()``. The version of that 
subroutine that is implemented inside the static library ``libslib.a`` is never 
called by the executable ``shadowlib``, despite it being used internally by the
library itself! Yes, the library grabs the _executable's_ version of 
``my_print()``.

## Build

To build this demo, you need:

* A POSIX-like system
* A C99 compiler

Build the library first by using:

```
$ cd slib/
$ make
```

And then build the executable:

```
$ cd ..
$ make
```

## License

This demo is published under an MIT/X11/Expat-type License. See ``LICENSE`` 
file for copyright and license details.
