## vim-dnd5edb: vim interface to Python dnd5edb module

Vim module that provides convenient use of the Python dnd5edb module from within vim.

For now, this functionality is limited to autocomplete on spell names.

This is activated via the `SpellCompleteOneLine` command, after which point executing `^X^U` from Insert mode will autocomplete spell names left of the cursor.

For example, with the cursor positioned at the end of the line

    Hold P

hitting `^X^U` will replace that text with

    Hold Person A/60'/C<=1m [V/S/M] (2:Bd+C+CO+D+DL+PCo+PR+PV+S+Wl+Wz)

`^X^U` after `Wall of` will offer suggestions including `Wall of Force` and `Wall of Stone`, among others.

### Info fields

Information about the spell is provided in a very concise format.  The format used is

    SPELL_NAME T/R/D [COMPONENTS] (L:CLASSES)

where

    - T: Casting time
    - R: Range
    - D: Duration (preceded by `C` if the spell requires Concentration)
    - COMPONENTS: Verbal, Somatic, Material
    - L: Spell level (`0` for cantrips)
    - CLASSES: Classes and Subclasses which get the spell on their list.  B is Bard, C is Cleric, Wl is Warlock, Wz is Wizard, CO is Order Cleric, etc.  More detailed documentation will be found in the readme for `dnd5edb`.

### Material components with monetary value

Material components which have a monetary value are notes as such:

    Identify (rit.) 1m/T/I [V/S/M@100gp] (1:A+Bd+CF+CK+Wz)

If the material component is consumed by the spell, this is indicated by surrounding the value with exclamation points:

    Revivify A/T/I [V/S/M@!300!gp] (3:A+C+CG+CLf+D+DW+P+Ra+WlC)
