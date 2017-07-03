[this:author:email]: # (atd@bitcoin.sh )
[this:author:name ]: # (Andrew DeSantis)

---

# [ΔOS v0.8-alpha.11][000] :/: `deoscore` :/: [![Build Status][001]][002]

[![self-header.jpg][003]](https://github.com/libdeos/deos-graphviz/wiki)

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

## macOS

### Disable Spotlight Volume Indexer

* `mdutil -i off /Volumes/<volume>`
* `cd /Volumes/<volume>`
* `rm -rf .{,_.}{fseventsd,Spotlight-V*,Trashes}`
* `mkdir .fseventsd`
* `touch .fseventsd/no_log .metadata_never_index .Trashes`

---

## Milestones

[comment]: # (<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>)
* [ ] **`ΔOS`** `v0.8.11` --- [**Due:** `July 03, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.12` --- [**Due:** `July 03, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.13` --- [**Due:** `July 03, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.14` --- [**Due:** `July 03, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.15` --- [**Due:** `July 03, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.16` --- [**Due:** `July 04, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.17` --- [**Due:** `July 04, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.18` --- [**Due:** `July 04, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.19` --- [**Due:** `July 04, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.20` --- [**Due:** `July 04, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.21` --- [**Due:** `July 04, 2017`](#) --- [`000` **Tasks**](#)
* [ ] **`ΔOS`** `v0.8.22` --- [**Due:** `July 04, 2017`](#) --- [`000` **Tasks**](#)

---

## Setup

### `git-encrypt`

* `git-crypt init`
* `git-crypt add-gpg-user <email>`

---

[000]: https://libdeos.github.io/deos-graphviz/
[001]: https://travis-ci.org/libdeos/deos-graphviz.svg?branch=master
[002]: https://travis-ci.org/libdeos/deos-graphviz
[003]: var/assets/github/self-header-1499073266.png
[004]: https://twitter.com/desantis/status/795023340704595968
