[this:author:email]: # (atd@bitcoin.sh )
[this:author:name ]: # (Andrew DeSantis)

---
# [ΔOS v0.8-alpha.11][000] :/: `deoscore` :/: [![Build Status][001]][002]
[![self-header.jpg][003]](https://github.com/libdeos/deos-graphviz/wiki) :/: [![this:version][svg:version]](#)

---
> *The languages of intelligence (writing) and self-interest (money) are the*
> *mind's greatest creations; both must be decentralized or all is lost.*
> **[—DeSantis][004]**
---

## Commands
* `make all`
* `make build`
* `make clean`
* `make docs.build`
* `make docs.start`
* `make graphviz`
* `make msg="add: var/asset/img/*.png" push`
* `make run`
* `make sync`
* `make venv`
* `make wiki.pull`
* `make wiki.push`
* `make wikid`

---

## Initialization

### `.env-this`
```bash
VOLUME := /Volumes/<volume>
VOLMOD := <unixtime>/deoscore
V      := $(VOLUME)/$(VOLMOD)
```
---

## Setup
### `git-encrypt`
```bash
$ git-crypt init
$ git-crypt add-gpg-user <email>
```
---

## Issues
### Disable Spotlight Volume Indexer
```bash
$ mdutil -i off /Volumes/<volume>
$ cd /Volumes/<volume>
$ rm -rf .{,_.}{fseventsd,Spotlight-V*,Trashes}
$ mkdir .fseventsd
$ touch .fseventsd/no_log .metadata_never_index .Trashes
```
---

## Milestones
[comment]: # (<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>)
* [ ] **`ΔOS`** `v0.8.11` :/: [**Due:** `July 03, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.12` :/: [**Due:** `July 03, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.13` :/: [**Due:** `July 03, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.14` :/: [**Due:** `July 03, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.15` :/: [**Due:** `July 03, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.16` :/: [**Due:** `July 04, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.17` :/: [**Due:** `July 04, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.18` :/: [**Due:** `July 04, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.19` :/: [**Due:** `July 04, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.20` :/: [**Due:** `July 04, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.21` :/: [**Due:** `July 04, 2017`](#) :/: [`0/0` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.22` :/: [**Due:** `July 04, 2017`](#) :/: [`0/0` **Tasks**](#)

---
[000]: https://libdeos.github.io/deos-graphviz/
[001]: https://travis-ci.org/libdeos/deos-graphviz.svg?branch=master
[002]: https://travis-ci.org/libdeos/deos-graphviz
[003]: var/assets/github/self-header-1499073266.png
[004]: https://twitter.com/desantis/status/795023340704595968

[svg:version]: data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iOTQiIGhlaWdodD0iMjAiPgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgIDxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIgLz4KICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiIC8+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPGNsaXBQYXRoIGlkPSJhIj4KICAgICAgICA8cmVjdCB3aWR0aD0iOTQiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIiAvPgogICAgPC9jbGlwUGF0aD4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCNhKSI+CiAgICAgICAgPHBhdGggZmlsbD0iIzU1NSIgZD0iTTAgMGg0OXYyMEgweiIgLz4KICAgICAgICA8cGF0aCBmaWxsPSIjMDA3ZWM2IiBkPSJNNDkgMGg0NXYyMEg0OXoiIC8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGg5NHYyMEgweiIgLz4KICAgIDwvZz4KICAgIDxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJEZWphVnUgU2FucyxWZXJkYW5hLEdlbmV2YSxzYW5zLXNlcmlmIiBmb250LXNpemU9IjExIj4KICAgICAgICA8dGV4dCB4PSIyNC41IiB5PSIxNSIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyI+cmVsZWFzZTwvdGV4dD4KICAgICAgICA8dGV4dCB4PSIyNC41IiB5PSIxNCI+cmVsZWFzZTwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI3MC41IiB5PSIxNSIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyI+djIuMC4yPC90ZXh0PgogICAgICAgIDx0ZXh0IHg9IjcwLjUiIHk9IjE0Ij52Mi4wLjI8L3RleHQ+CiAgICA8L2c+Cjwvc3ZnPgo=
