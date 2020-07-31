# Project Vagabond OSS Process

This document describes how Project Vagabond will manage this fork of [covidgreen/covid-green-backend-api](https://github.com/covidgreen/covid-green-backend-api) such that it adheres to and follows the process laid out in Covid Green (TODO: link to public doc describing base OSS process).

This process attempts to solve or make non-issues the following items:

1. Project Vagabond follows its own CICD process based on Github Actions. To support that process, this fork contains [NYS specific workflows](.github/workflows) and `.md` files describing that process which should not be contributed back to Covid Green. 
1. Project Vagabond uses Github secrets as part of its CICD process and those cannot exist in a public Github organization.

## Branches

<table>
<tr>
<th>Branch</th>
<th>Description</th>
<th>Reasoning</th>
<th>Rules</th>
</tr>
<tr>
<td>

`current`

</td>
<td>

Main code branch for the project.

</td>
<td>

The purpose is to always be up-to-date with Covid Green and have a clean slate to pull into.

</td>
<td>

1. The `current` branch will always track with Covid Green's `current` branch.

1. Project Vagabond will frequently pull `current` from Covid Green to ensure it is up-to-date

1. No PRs will be sent to or accepted in Project Vagabond's `current` branch.

1. Pushing to Project Vagabond's `current` branch is not allowed.

</td>
</tr>

<tr>
<td>

`nys`

</td>
<td>

NYS specific branch

</td>
<td>

These rules will allow us to cleanly rebase off of Covid Green without running into conflicts

</td>
<td>

1. This branch will always be based off `current`.

1. This branch can contain files which don't exist in Covid Green's `current` branch.

1. The only differences between `nys` and `current` should be files that do not exist in `current`.

1. Changes in this branch are not allowed on files that exist in `current`.

1. PRs can be accepted IFF they come from `nys-*` branches and do not contain changes to files in `current`.

</td>
</tr>

<tr>
<td>

`nys-*`

</td>
<td>

Branches containing changes to files only contained in `nys` branch.

</td>
<td>

These rules force us to keep NYS specific changes separate from general purpose project changes.

</td>
<td>

1. These branches must start with `nys-`.

1. These branches must only contain updates to NYS only files.

1. Files in `current` may not be edited in these branches

1. These branches may only be PR'd into Project Vagabond's `nys` branch.

</td>
</tr>
<tr>
<td>

`cg-*`

</td>
<td>

Branches containing changes to files in the `current` branch.

</td>
<td>

These rules force us to keep general purpose project changes separate from NYS specific changes as well as ensures changes make it into Covid Green's `current` branch before they hit Project Vagabond's `current` branch.

</td>
<td>

1. These branches must start with `cg-`.

1. These branches must only contain updates to shared project files.

1. NYS specific files cannot be edited in this branches.

1. PRs may only be sent to Covid Green's `current` branch.

</td>
</tr>
</table>

## Process

TODO
