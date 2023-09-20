# Landing Pages

## Installation

Become root and make an SSH key.

```bash
sudo -s
ssh-keygen -t ed25519 -C "crosscompute-pages-$(date +%Y%m%d-%H%M%S)"
```

[Add the SSH key as a deploy key to this repository](https://github.com/crosscompute/landing-pages/settings/keys).

Set up the deploy key ssh configuration.

```bash
vim ~/.ssh/config
    Host gh-pages
    Hostname github.com
    IdentityFile ~/.ssh/crosscompute-pages
    IdentitiesOnly yes
```

Clone the repository using the deploy key.

```bash
git clone git@gh-pages:crosscompute/crosscompute-pages
```

Set up packages and services.

```bash
sudo -s
bash scripts/setup-services.sh
```

Test the deploy key.

```bash
sudo -s
bash scripts/build.sh
systemctl restart crosscompute-pages
```
