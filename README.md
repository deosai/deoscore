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

## Initialization

### `.env-this` Example

```bash
export MAKEFLAGS := --no-print-directory

VOLUME           := /Volumes/<volume>
VOLMOD           := <unixtime>/deoscore
V                := $(VOLUME)/$(VOLMOD)

include             .env-common
ifeq ($(OS_TYPE),   $(IS_MACOS))
  include           .env-macos
  include           make-macos.mk
endif

ifeq ($(OS_TYPE),   $(IS_LINUX))
  include           .env-linux
  include           make-linux.mk
endif

include             src/make/deos-boolean.mk
include             src/make/deos-git.mk
include             src/make/deos-host.mk
include             src/make/deos-unix.mk

#[endfi]
```

## macOS

### Disable Spotlight Volume Indexer

* `mdutil -i off /Volumes/<volume>`
* `cd /Volumes/<volume>`
* `rm -rf .{,_.}{fseventsd,Spotlight-V*,Trashes}`
* `mkdir .fseventsd`
* `touch .fseventsd/no_log .metadata_never_index .Trashes`

## Milestones

<a href="https://www.zerotier.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="left" hspace="20" vspace="6"></a>

<hr>

* [ ] `ΔOS v0.8.11` **Release** --- **Due:** `July 03, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.12` **Release** --- **Due:** `July 04, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.13` **Release** --- **Due:** `July 05, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.14` **Release** --- **Due:** `July 06, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.15` **Release** --- **Due:** `July 07, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.16` **Release** --- **Due:** `July 08, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.17` **Release** --- **Due:** `July 09, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.18` **Release** --- **Due:** `July 10, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.19` **Release** --- **Due:** `July 11, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.20` **Release** --- **Due:** `July 12, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.21` **Release** --- **Due:** `July 13, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.22` **Release** --- **Due:** `July 14, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.23` **Release** --- **Due:** `July 15, 2017` --- `00` **Tasks**
* [ ] `ΔOS v0.8.24` **Release** --- **Due:** `July 16, 2017` --- `00` **Tasks**

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
