# Responsive Table

Tables on mobile are, well… a female dog. Some people pointed out some thoughts and problems they had with them, and this is what I came up with:

- On small screens: show only most important data in every row. If user taps the row (design it so that it's clear to the user that the row can be expanded), the extra data shows, you can explain each field’s meaning using CSS `:before{ content: 'header text';}`
- Show all data on larger screens

[Go check out the demo!](http://kennybrijs.net/demos/responsive-table/)

Here’s how it works:


## HTML

Just a regular table, add semantic classes to the cells (`<td>`) so you can point to the cells you wish to hide/show. (You could also use something like `.crucial` `.not-crucial`, but I’m a stickler for semantics :)

Also, add row number classes to the rows, so you can tell JavaScript to only show/hide extra data from the row that is tapped.

[Checken sie der HTML](https://github.com/KennyBrijs/Responsive-Table/blob/master/index.html)


## JavaScript

Add classes to less important cells to hide them (`.is-hidden` is [the SMACSS way](http://smacss.com/book/type-state) :)

Add a clickhandler to crucial cells which toggles the `.is-hidden` class.

[Check the Javascript code](https://github.com/KennyBrijs/Responsive-Table/blob/master/js/main.js), or [check the CoffeeScript code](https://github.com/KennyBrijs/Responsive-Table/blob/master/js/coffee/main.coffee)


## CSS

Table cells are floated, so the less important cells kan be displayed *underneath* the crucial cells on smaller screens. [Check the _layout sass file](https://github.com/KennyBrijs/Responsive-Table/blob/master/css/scss/_layout.scss)

`.is-hidden` is of course set to `display: none;` [Check the _states sass file](https://github.com/KennyBrijs/Responsive-Table/blob/master/css/scss/_states.scss)

On large enough screens (in a media query), hiding less important fields is ignored by resetting the styles for the `.is-hidden` class to `display: table-cell` (e.g. `table.responsive td.is-hidden{ display: table-cell; }`) [Check the mediaquery file for large screens](https://github.com/KennyBrijs/Responsive-Table/blob/master/css/scss/_768.scss)

Explain the meaning of the extra fields with CSS `:before` and `content: ''` (e.g. `td.cellname:before { content: 'header text'; }`)
