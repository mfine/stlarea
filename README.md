# stlarea

Calculate the area from a STL file.

## Installing

Can be installed with stack:

    stack install

## Usage

Takes the name of STL text files on the commandline:

    $ stlareatext test.stl test.stl test.stl
    test.stl: 72281.990
    test.stl: 72281.990
    test.stl: 72281.990

Takes the name of STL binary files on the commandline:

    $ stlareabinary test.stl test-binary.stl test-binary.stl
    test-binary.stl: 570.034
    test-binary.stl: 570.034
    test-binary.stl: 570.034

Takes the name of STL binary or text files on the commandline:

    $ stlarea.sh test-binary.stl test.stl test-binary.stl
    test-binary.stl: 570.034
    test.stl: 72281.990
    test-binary.stl: 570.034

Also takes the name of STL binary or text files on the commandline:

    $ stlarea-file.sh test-binary.stl test.stl test-binary.stl
    test-binary.stl: 570.034
    test.stl: 72281.990
    test-binary.stl: 570.034
