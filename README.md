# aeneas-install

NPM Installer for Aeneas -- works with Ubuntu and OSX

More about Aeneas from Readbeyond: https://github.com/readbeyond/aeneas/

It's complicated getting Aeneas to install on OSX and Ubuntu. Here's a stab at packaging the install in a convenient NPM module. It's messy but works most of the time

Simply

`npm install aeneas-install`

Then

`npm run-script setup`

Note: This does a system-wide install of FFMPEG, Python etc. so expect several sudo steps requiring you to enter your admin password.

With a successful installation, it should end the output with something like this:

```
[INFO] Test 1/4...
[INFO] Trying to import package aeneas...
[INFO] Trying to import package aeneas... succeeded.
[INFO] Test 2/4...
[INFO] Trying to call ffprobe...
[INFO] Trying to call ffprobe... succeeded.
[INFO] Test 3/4...
[INFO] Trying to call ffmpeg...
[INFO] Trying to call ffmpeg... succeeded.
[INFO] Test 4/4...
[INFO] Trying to call espeak...
[INFO] Trying to call espeak... succeeded.
[INFO] Congratulations, all dependencies are met.
[INFO] Enjoy running aeneas!
```






