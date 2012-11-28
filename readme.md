# Responsive Table

Tables on mobile are, well… a female dog. Some people pointed out some thoughts and problems they had with responsive tables, and this is what I came up with:

- On small screens: show only crucial data in every row. If user taps the row, the extra data shows, you can explain each field’s meaning using `td:before{ content: '*header text*';}` (design it so that it's clear to the user that the row can be expanded)
- Show all data on larger screens