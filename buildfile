./ : lib{catch2} doc{LICENSE.txt README.md} manifest examples/

# Header-only library.
#
lib{catch2}: single_include/catch2/hxx{*}
lib{catch2}: cxx.export.poptions = "-I$src_root/single_include"

# Install .
#
single_include/catch2/hxx{*}: install = include/catch2/
single_include/catch2/hxx{*}: install.subdirs = true
contrib/file{gdbinit lldbinit} : install = share/Catch2/
docs/doc{*.md} : install = share/doc/Catch2
