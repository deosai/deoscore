[this:author:email]: # (atd@bitcoin.sh)
[this:author:name ]: # (Andrew DeSantis)

## `Δ://deoscore` [![s][001]][002] [![w][011]][012] [![v][010]][015] [![w][013]][014]
[![self-header.jpg][003]][012]

---
> *The languages of intelligence (writing) and self-interest (money) are the*
> *mind's greatest creations; both must be decentralized or all is lost.*
> **[—DeSantis][004]**
---

### Configuration

#### ***`.env-this`***

```bash
VOLUME := /Volumes/<volume>
VOLMOD := <unixtime>/deoscore
V      := $(VOLUME)/$(VOLMOD)
```

#### ***Disable Spotlight Volume Indexer***

```bash
$ mdutil -i off /Volumes/<volume>
$ cd /Volumes/<volume>
$ rm -rf .{,_.}{fseventsd,Spotlight-V*,Trashes}
$ mkdir .fseventsd
$ touch .fseventsd/no_log .metadata_never_index .Trashes
```

#### ***`git-encrypt`***

```bash
$ git-crypt init
$ git-crypt add-gpg-user <email>
```
---

### Specification

#### ***Commands***

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

#### ***Drivers***

* `Bitcoin`
* `BitTorrent`
* `ZeroTier`

#### ***Filesystem***

* `.git/`
* `.git-crypt/`
* `.github/`
* `app/`
* `docs/`
* `etc/`
* `include/`
* `lib/`
* `private/`
* `src/`
* `templates/`
* `test/`
* `var/`

#### ***Interfaces***

* `btc.slack.com`
* `chain.wiki`
* `deos.ai`

---

### Release Schedule

* [x] **`ΔOS`** [`v0.8.11`](https://github.com/libdeos/deoscore/releases/tag/v0.8-alpha.11) -- **Complete**
* [ ] **`ΔOS`** `v0.8.12` -- [**Due:** `Today`](https://github.com/libdeos/deoscore/milestone/2) -- `create: label` && `create: wiki page`
* [ ] **`ΔOS`** `v0.8.13` -- [**Due:** `Today`](https://github.com/libdeos/deoscore/milestone/3) -- `init-repo: deos-*` && `add-submodule: deos-*`
* [ ] **`ΔOS`** `v0.8.14` -- [**Due:** `Today`](https://github.com/libdeos/deoscore/milestone/4) -- `add: docs/*` && `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] **`ΔOS`** `v0.8.15` -- [**Due:** `Today`](https://github.com/libdeos/deoscore/milestone/5) -- `set-dns: *.deos.ai` && `assign: type`
* [ ] **`ΔOS`** `v0.8.16` -- [**Due:** `Today`](https://github.com/libdeos/deoscore/milestone/6) -- `add-cmd: cd * && make`

---

### `Bitcoin` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `BitTorrent` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Blockstack` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `btc.slack.com` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `chain.wiki` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `deos.ai` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `freebird.im` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `iPython` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Keybase` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Lightning` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Monero` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-**`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `README.wiki` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `RSKSmart` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Terminal` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `TREZOR` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Urbit` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Vault` Interface
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `wikid` Interface for HTML
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `wikid` Interface for Markdown
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `Zcash` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

### `ZeroTier` Driver
<a href="https://deoscore.metaptr.com"><img src="https://github.com/zerotier/ZeroTierOne/raw/master/artwork/AppIcon_87x87.png" align="right" hspace="20" vspace="6"></a>

* [ ] `create: label`
* [ ] `create: wiki page`
* [ ] `add: var/img/*-box-icon.[png,jpg,gif]`
* [ ] `init-repo: deos-*`
* [ ] `add-submodule: deos-*`
* [ ] `add: docs/*`
* [ ] `set-dns: *.deos.ai`
* [ ] `assign: type`
* [ ] `add-cmd: cd * && make`

---

[000]: https://libdeos.github.io/deos-graphviz/
[001]: https://travis-ci.org/libdeos/deos-graphviz.svg?branch=master
[002]: https://travis-ci.org/libdeos/deos-graphviz
[003]: var/assets/github/self-header-1499073266.png
[004]: https://twitter.com/desantis/status/795023340704595968
[010]: https://img.shields.io/badge/release-v0.8--alpha.11-blue.svg
[011]: https://img.shields.io/badge/github-wiki-orange.svg
[012]: https://github.com/libdeos/deoscore/wiki
[013]: https://img.shields.io/badge/website-deos.ai-red.svg
[014]: https://deos.ai/
[015]: https://github.com/libdeos/deoscore/releases/tag/v0.8-alpha.11
