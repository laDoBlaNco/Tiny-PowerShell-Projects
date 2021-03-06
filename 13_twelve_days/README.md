# Twelve Days of Christmas

Write a program that will generate the verse "The Twelve Days of Christmas" song

```
C:\> (./twelve_days.ps1).split("`n") | select -last 10
Ten lords a leaping,
Nine ladies dancing,
Eight maids a milking,
Seven swans a swimming,
Six geese a laying,
Five gold rings,
Four calling birds,
Three French hens,
Two turtle doves,
And a partridge in a pear tree.
```

The program should accept a `-n` or `--number` (default 12) to control the number of verses that are generated

```
C:\> ./twelve_days.ps1 -n 2
On the first day of Christmas,
My true love gave to me,
A partridge in a pear tree.

On the second day of Christmas,
My true love gave to me,
Two turtle doves,
And a partridge in a pear tree.
```

If the `-o` or `--outfile` argument is present, the output should be printed to the named file and no output should appear on the command line

```
C:\> ./twelve_days.ps1 -o out.txt
```

There should now be an `out.txt` file with the output:

```
$ wc -l out.txt
     113 out.txt
```
