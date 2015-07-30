# minivimc
Vim files for syntax highlighting MiniZinc files (.mzn, .dzn)

Place the contents of **syntax** and **ftdetect** in their respective folders
in the .vim/ directory if they exist. Otherwise copy the entire folders.

The contents of **vimrc** can be copied to your .vimrc to add MiniZinc
keywords as autocomplete words with \<Ctrl-N\> and \<Ctrl-P\>. It also has
commands that allow quickly saving and running a MiniZinc file (.mzn), and to
quickly save and add data files (.dzn) to run with the MiniZinc file.

**minizinc_dict** can be placed anywhere, and should work as long as this is
reflected in the path to the dictionary in your .vimrc. The location
~/.vim/misc/ is set by default.
