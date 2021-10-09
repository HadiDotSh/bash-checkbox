# Bash Checkbox
#### Small bash script to select options from an argument list.


### Install :
<p>Simply past this line in your shell :</p>

```bash
git clone https://github.com/HadiDotSh/bash-checkbox
```

### How to use it :

```bash
source /path/to/checkbox.sh "{option 1}" ... "{option N}"
# The result is stored in the array nammed $selected
# selected[0] will be "true" if "option 1" is selected
# A variable named "max" allows you to have the total number of options
```
<p>A script is available to understand how bash-checkbox is used, it is named "exemple.sh"</p>

