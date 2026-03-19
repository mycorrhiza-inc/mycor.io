---
title: "Kessler"
tagline: "Turn any government website into a queryable database"
status: concept
target: Movement Organizations
order: 1
---

Government data is legally public. It is practically inaccessible. Movement researchers spend enormous amounts of time manually navigating agency websites — downloading PDFs, copy-pasting tables, reconciling inconsistent formats — to get information that is nominally available to everyone.

The core technical problem is program synthesis: given only a rendered web page, infer the schema behind it and generate correct extraction code. In the general case this is NP-hard. The reason previous attempts at this space failed is that this problem wasn't taken seriously as a hard problem — the instinct was to just ship a scraper and deal with edge cases as they came up. That doesn't work. Kessler uses LLMs to automate the schema inference step and treats the validation of that inference as a first-class problem, not an afterthought.

The deliverable is a local SQLite database you can query with standard tools, plus update scripts that keep it current as the source changes. The goal is to make the data governments are required to publish actually usable by the people it's supposed to serve.
