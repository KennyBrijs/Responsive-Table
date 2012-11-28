# Responsive Table

Tables on mobile are, well… a female dog. Some people pointed out some thoughts and problems they had with them, and this is what I came up with:

- On small screens: show only most important data in every row. If user taps the row, the extra data shows, you can explain each field’s meaning using `td:before{ content: 'header text';}` (design it so that it's clear to the user that the row can be expanded)
- Show all data on larger screens

Here’s how it works:


## HTML

Just a regular table, add semantic classes to the cells (`<td>`) so you can point to the cells you wish to hide/show. (You could also use something like `.crucial` `.not-crucial`, but I’m a stickler for semantics :)


## JavaScript

Add classes to less important cells to hide them (`.is-hidden` is [the SMACSS way](http://smacss.com/book/type-state) :)

Add a clickhandler to crucial cells which toggles the `.is-hidden` class.


## CSS

Table cells are floated, so the less important cells kan be displayed *underneath* the crucial cells on smaller screens.

`.is-hidden` is of course set to `display: none;`

On large enough screens (in a media query), hiding less important fields is ignored by resetting the styles for the `.is-hidden` class to `display: table-cell` (e.g. `table.responsive td.is-hidden{ display: table-cell; }`)

Because you won’t be able to use the table headings when the less important fields are displayed horizontally, you have to use `td.cellname:before { content: 'header text'; }`
