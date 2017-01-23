# Chimera 
##Corpora Heterogenization by Invocation Modulation for Executables in Reversing Analyses
##Overview
Source to binary corpora creation based on multiple different compiler invocations, for say creating a corpora of binaries with every different optimization level. Currently you can customize chimera.cfg with compiler, cflags, extension for the binary, and folder for the binaries. This allows for exercising compile-time obfuscators like [o-llvm](https://github.com/obfuscator-llvm/obfuscator/wiki) to create corpora of binaries that exhibit different levels of obfuscation transformations. The hope is that these corpora are used to create automated reverse engineering analyses or for other research. 

Chimera is simple set of bash scripts and a C corpora with build processes that have been standardized by a buildit.chimera script. 

Additions to the source corpora as well as additions to the mechanics of Chimera are welcome.

##Vision
The vision for Chimera is to be an automatic corpora generation tool that can handle source-to-source, compile-time obfuscators and binary rewriters, whether they are command-line or GUI. We hope also to add [theZoo](https://github.com/ytisf/theZoo) malware sources as part of the Chimera source corpora to make it much more relevant for malware analyses.

# Requirements

 Many things:
* Bash
* Make
* Autoconf
* Configure
* Automake
* CMake

But also every dependency for each source project. This is an ongoing [issue](../../issues/1). We may release Chimera as a virtual machine appliance once work is more mature.

# Using Chimera

`chimera.sh chimera.cfg` This will run every compiler invocation in "chimera.cfg" for every co-located source code folder that has a well-formed "buildit.chimera" script.

"chimera.cfg" should be composed of lines in the form: `compiler_path cflags binary_extension build_folder`
