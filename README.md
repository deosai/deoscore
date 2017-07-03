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

* [ ] `deos0.000` **Release** --- **Due:** `June 06, 2017` --- `000` **Tasks**
* [ ] `deos0.001` **Release** --- **Due:** `June 07, 2017` --- `000` **Tasks**
* [ ] `deos0.002` **Release** --- **Due:** `June 08, 2017` --- `000` **Tasks**
* [ ] `deos0.003` **Release** --- **Due:** `June 09, 2017` --- `000` **Tasks**
* [ ] `deos0.004` **Release** --- **Due:** `June 10, 2017` --- `000` **Tasks**
* [ ] `deos0.005` **Release** --- **Due:** `June 11, 2017` --- `000` **Tasks**
* [ ] `deos0.006` **Release** --- **Due:** `June 12, 2017` --- `000` **Tasks**
* [ ] `deos0.007` **Release** --- **Due:** `June 13, 2017` --- `000` **Tasks**
* [ ] `deos0.008` **Release** --- **Due:** `June 14, 2017` --- `000` **Tasks**
* [ ] `deos0.009` **Release** --- **Due:** `June 15, 2017` --- `000` **Tasks**
* [ ] `deos0.010` **Release** --- **Due:** `June 16, 2017` --- `000` **Tasks**

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
