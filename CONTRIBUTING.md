# Contributing

Thank you for your interest in contributing to the Ansible Convert2RHEL Collection. All we ask is that contributors please observe the [Ansible Community Guidelines](https://docs.ansible.com/ansible/devel/community/index.html) and follow the [Ansible Collections Contributor Guide](https://docs.ansible.com/ansible/devel/community/contributions_collections.html). We look forward to reviewing your pull request.

Everyone is invited to participate. We welcome first timers as well as experienced open source contributors. If you are unsure how to get started with your contributon, open a [new issue](https://github.com/oamg/infra.convert2rhel/issues/new) explaining what you want to do and we'll do our best to help!

## Changelog

For registering the PR into changelog, please create a file `changelogs/fragments/name_of_change.yaml`. For example the file `changelogs/fragments/fix_something.yaml` would contain:

```yaml
---
bugfixes:
  - Fixed something really important
...
```

For more tags, please see [Changelog sections](changelogs/config.yaml).

## Testing locally

For testing this project locally, you will need to set up the project to this
folder structure on your machine:

```bash
.
├── ansible_collections
│   └── infra
│       └── convert2rhel
```

This is required so `molecule` can find it's own configuration to provision a
VM.

After moving the project to the above mentioned layout, you can simply run:

```bash
# To execute an analysis
make analysis
# To execute an conversion
make convert
```

And after you are done with your local tests, you can cleanup with:

```bash
# Will remove the local VM provisioned by molecule.
make destroy
```
