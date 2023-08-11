# MP4 to Animated AVIF Conversion

This repository provides a tutorial and script for converting `.mp4` videos to `.avif` animations. It's a GitHub representation of the blog post available at: [Converting an MP4 to an Animated AVIF](https://tuffstuff9.hashnode.dev/converting-an-mp4-to-an-animated-avif).

## Why AVIF over GIF?
- Better quality
- Smaller file sizes
- Faster page loads

## Prerequisites

Ensure you have `ffmpeg` and `libavif` installed. For MacOS users, you can use `brew`:

```bash
brew install ffmpeg libavif
```

## Usage

1. Navigate to the directory where your `.mp4` file is saved.
2. Use the provided script to convert your mp4 file to avif:

```bash
./script/mp4_to_avif.sh path_to_your_file.mp4
```

For example:

```bash
./script/mp4_to_avif.sh /Users/videos/input.mp4
```

**Note:** Ensure that both `ffmpeg` and `libavif` are installed and available in your PATH for the script to work properly.

### Viewing AVIF files on MacOS

As of writing this, MacOS doesn't natively support viewing animated AVIF files. If you try opening the file using MacOS' native Preview app, you'll see a static frame. To properly view the animated AVIF file, consider using third-party solutions like the [IINA media player](https://iina.io/), or viewing in a supported browser.

## Bash Script

For convenience, a bash script `mp4_to_avif.sh` is provided within this repository to automate the conversion process. Ensure you've made the script executable with `chmod +x mp4_to_avif.sh` before using.
