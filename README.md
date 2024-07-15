# docker-dcraw

docker-dcraw defines a [Docker](https://www.docker.com) image that runs [dcraw](https://www.cybercom.net/~dcoffin/dcraw/).

# Installation

```sh
$ docker pull nboisvert/dcraw
```

# Usage

A simple example with no arguments.
```sh
$ docker run --rm nboisvert/dcraw
```
```
Raw photo decoder "dcraw" v9.27
by Dave Coffin, dcoffin a cybercom o net

Usage:  dcraw [OPTION]... [FILE]...

-v        Print verbose messages
-c        Write image data to standard output
-e        Extract embedded thumbnail image
-i        Identify files without decoding them
-i -v     Identify files and show metadata
-z        Change file dates to camera timestamp
-w        Use camera white balance, if possible
-a        Average the whole image for white balance
-A <x y w h> Average a grey box for white balance
-r <r g b g> Set custom white balance
+M/-M     Use/don't use an embedded color matrix
-C <r b>  Correct chromatic aberration
-P <file> Fix the dead pixels listed in this file
-K <file> Subtract dark frame (16-bit raw PGM)
-k <num>  Set the darkness level
-S <num>  Set the saturation level
-n <num>  Set threshold for wavelet denoising
-H [0-9]  Highlight mode (0=clip, 1=unclip, 2=blend, 3+=rebuild)
-t [0-7]  Flip image (0=none, 3=180, 5=90CCW, 6=90CW)
-o [0-6]  Output colorspace (raw,sRGB,Adobe,Wide,ProPhoto,XYZ,ACES)
-o <file> Apply output ICC profile from file
-p <file> Apply camera ICC profile from file or "embed"
-d        Document mode (no color, no interpolation)
-D        Document mode without scaling (totally raw)
-j        Don't stretch or rotate raw pixels
-W        Don't automatically brighten the image
-b <num>  Adjust brightness (default = 1.0)
-g <p ts> Set custom gamma curve (default = 2.222 4.5)
-q [0-3]  Set the interpolation quality
-h        Half-size color image (twice as fast as "-q 0")
-f        Interpolate RGGB as four colors
-m <num>  Apply a 3x3 median filter to R-G and B-G
-s [0..N-1] Select one raw image or "all" from each file
-6        Write 16-bit instead of 8-bit
-4        Linear 16-bit, same as "-6 -W -g 1 1"
-T        Write TIFF instead of PPM
```

A more complete example...

```sh
$ docker run --rm -v ~/camera_files:/mnt/media nboisvert/dcraw -4 -T -w -q 3 -o 6 -H 0 /mnt/media/DSC_0400.NEF
```
