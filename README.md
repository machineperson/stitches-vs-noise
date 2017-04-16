# stitches-vs-noise

Stitches vs. Noise is a cross-stitch pattern generator based on [Perlin Noise](https://en.wikipedia.org/wiki/Perlin_noise).

Perlin noise is a type of gradient noise that is used in procedural texture and terrain generation in computer graphics (and if you want to learn more about how the algorithm works, head [here](http://flafla2.github.io/2014/08/09/perlinnoise.html) for an explanation with pictures).

I initially implemented it to generate terrain for a roguelike project I was working on at the time, but I figured that the patterns would lend themselves well to being cross-stitched. So I repurposed some of that code and put a wrapper around it so I could use it to generate cross-stitch patterns.

I'm planning to put a web interface around it at some point for the craic, but if you want to play with it in the meantime, you can download the source and compile it.

## How to compile

### Linux
Your operating system should already come with a compiler installed.
You can simply download the source by running this in your terminal in a directory of your choosing:

`git clone https://github.com/machineperson/stitches-vs-noise.git`

or click the download button to download a ZIP file if you don't have Git installed. In this case, you need to unpack the archive into a directory, and switch to that directory using `cd`, before proceeding to the next step.

Run
`make`
to compile from source. You should now have an executable file called `pattern` in your directory.

### OSX

Same instructions as for Linux. If you get error messages saying that `clang` is not installed or you don't have a compiler, you may need to install XCode through the App Store (careful though, it is a massive download). If you use a package manager like Homebrew or MacPorts, you can also install clang through these package managers.

### Windows

Same instructions as for Linux. The clang developers have [instructions](https://clang.llvm.org/get_started.html) for how to install clang on Windows.

## Usage

`pattern -w WIDTH -h HEIGHT`
will generate a pattern that is WIDTH characters wide and HEIGHT characters high, and print it to standard output.

If you want to save your pattern in a text file, you can run

`pattern -w WIDTH -h HEIGHT > mypatternfile.txt`

You're free to associate whatever colours you want to the characters, colour selection options may come in the future.

Happy stitching!

## Bug reports, feature requests, and questions

If you want to report a bug, please file an issue on Github and describe the problem as accurately as you can. If you would like to request a feature, or have a question about how to use the project, please do the same.

You're very welcome to file an issue, just keep it civil and constructive, please.

If you have suggestions for improvement, go ahead and file an issue as well, but again, please be constructive and polite.

This is a side project that I do in part of my spare time, so while I will probably get to your issue at some point in time, I don't want to make any promises as to when that will be.

## Want to contribute?

I'm open to pull requests, and you're welcome to open an issue if you want to implement a feature and want to discuss the details.
