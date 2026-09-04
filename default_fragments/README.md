## How to use this folder:

Within this folder, you can set up an arbitrary number of subfolders that represent
categories to randomize for each default-chan.

When KKL starts up, it'll look within these subfolders and load any .txt files it can find.

Each of these text files should contain a Kisekae code fragment; things like the
version number,system parameters, or image attachments will be automatically removed.
(ALL-codes, i.e. those with *** at the beginning, will simply be ignored.)

Whenever KKL generates a default-chan, it will pick one fragment from each
category/subfolder, combine them all into a single Kisekae code, and finally
import the combined code as the new default-chan.

Empty subfolders will be ignored.
Subfolders with one file will, naturally, have that file's contents applied to
every default-chan.
