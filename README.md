## vim-dnd5edb: vim interface to Python dnd5edb module

Vim module that provides convenient use of the Python dnd5edb module from within vim.

For now, this functionality is limited to autocomplete on spell names.

This is activated via the `SpellCompleteOneLine` command, after which point executing `^X^U` from Insert mode will autocomplete spell names left of the cursor.

For example, with the cursor positioned at the end of the line

    Hold P

hitting `^X^U` will replace that text with

    Hold Person A/60'/C<=1m [V/S/M] (2:Bd+C+CO+D+DL+PCo+PR+PV+S+Wl+Wz)

`^X^U` after `Wall of` will offer suggestions including `Wall of Force` and `Wall of Stone`, among others.
