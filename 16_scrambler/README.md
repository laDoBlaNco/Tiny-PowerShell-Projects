# Scrambler

Write a program that will randomly scramble the middle parts of words of 3 letters or more in a given text which may come from the command line

```
C:\> ./scrambler.ps1 'The quick brown fox jumps over the lazy dog.'
The qiuck bwron fox jmpus over the lzay dog.
```

Or from an input file

```
C:\> ./scrambler.ps1 ../inputFiles/fox.txt
The qucik borwn fox jpmus over the lazy dog.
```

The program should accept a `-s` or `--seed` value for the random seed to ensure reproducibility

```
C:\> ./scrambler.ps1 -s 1 ../inputFiles/fox.txt
The qicuk bwron fox jupms over the lazy dog.
```