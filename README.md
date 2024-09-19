# Ansible Convert2RHEL Collection

[![CI](https://github.com/redhat-cop/infra.convert2rhel/actions/workflows/ansible-test.yml/badge.svg)](https://github.com/redhat-cop/infra.convert2rhel/actions/workflows/ansible-test.yml)
[![Yaml and Ansible Lint](https://github.com/redhat-cop/infra.convert2rhel/actions/workflows/ansible-lint.yml/badge.svg)](https://github.com/redhat-cop/infra.convert2rhel/actions/workflows/ansible-lint.yml)
[![Release](https://github.com/redhat-cop/infra.convert2rhel/actions/workflows/release.yml/badge.svg?event=release)](https://github.com/redhat-cop/infra.convert2rhel/actions/workflows/release.yml)
[![OpenSSF Best Practices](https://www.bestpractices.dev/projects/8649/badge)](https://www.bestpractices.dev/projects/8649)

<!-- [![Codecov](https://img.shields.io/codecov/c/github/redhat-cop/infra.convert2rhel)](https://codecov.io/gh/redhat-cop/infra.convert2rhel) -->

## Overview

This collection provides Ansible roles you can use to perform conversion using the Convert2RHEL framework. Use these roles as the foundation of your conversion automation solution.

Please check the [release section](https://github.com/oamg/infra.convert2rhel/releases) of the repository to find information about the latest updates and publication to the Ansible Galaxy.

## Roles

These are the roles included in the collection. Follow the links below to see the detailed documentation and example playbooks for each role.

- [`analysis`](./roles/analysis/) - executes the convert2rhel analysis phase
- [`common`](./roles/common/) - used for local logging, mutex locking, and common vars
- [`handle_c2r_report`](./roles/handle_c2r_report/) - reads convert2rhel results and checks for inhibitors
- [`convert`](./roles/convert/) - executes the convert2rhel OS conversion

## Example playbooks

Example playbooks can be found [here](./playbooks/).

## Installing the collection from Ansible Galaxy

You can install the collection from [Ansible Galaxy](https://galaxy.ansible.com/ui/repo/published/infra/convert2rhel/) by running `ansible-galaxy collection install infra.convert2rhel`.

You can also include it in a `requirements.yml` file and install it with `ansible-galaxy collection install -r requirements.yml`, using the format:

```yaml
---
collections:
  - name: infra.convert2rhel
```

Note that if you install the collection from Ansible Galaxy, it will not be upgraded automatically when you upgrade the `ansible` package. To upgrade the collection to the latest available version, run the following command:

```bash
ansible-galaxy collection install infra.convert2rhel --upgrade
```

You can also install a specific version of the collection, for example, if you need to downgrade when something is broken in the latest version (please report an issue in this repository). Use the following syntax to install version `1.0.0`:

```bash
ansible-galaxy collection install infra.convert2rhel:==1.0.0
```

See [Using Ansible collections](https://docs.ansible.com/ansible/devel/user_guide/collections_using.html) for more details.

## Contributing

We are a fledgling community and welcome any new contributors. Get started by opening an issue or pull request. Refer to our [contribution guide](CONTRIBUTING.md) for more information.

## Testing
For testing, you have two options. Use manually provisioned machine and run the playbook manually or use the automated
way using `Makefile` and `molecule` plugin.

### Manually provisioned machine
- Provision machine (e.g. using vagrant). This can be done by `vagrant init eurolinux-vagrant/centos-7` or by using
Vagrantfile. Capture it's IP and directory where you are running this command.
- Move to `infra.convert2rhel` and create needed folders for ansible by running `make create-folder-for-test`. This
will create structure of directories ansible needs. Remember, you need to run this command each time you change
something in the project.
- Run `export ANSIBLE_COLLECTIONS_PATH=$(pwd)` to set where should ansible look for the expected dir structure.
- Create file in which you will specify hosts to run the ansible playbook.
E.g. the file is created in `playbook/` called `hosts` and contain:
```
[testing]
<IP-of-the-machine> ansible_python_interpreter=/usr/bin/python2.7
```
Note: the specified `ansible_python_interpreter` is mainly for easier debugging if you have the correct version of
`ansible-core` (2.16.11), without this you can get a bit confusing error message.
Note: if you want to subscribe the system, you can replace the config file by credentials you have
in the `analysis/tasks/analysis-c2r.yml` or `convert/tasks/main.yml`
- Run the ansible playbook you want using:
```
ansible-playbook --private-key <path-where-vagrant-was-called>/.vagrant/machines/default/libvirt/private_key -i <specified-hosts> <playbook-path> -u root -vv
```
e.g.
```
ansible-playbook --private-key ~/vagrant-box/vagrant/.vagrant/machines/default/libvirt/private_key -i playbooks/hosts playbooks/analysis.yml -u root -vv
```

## Automated way
TBD

## Reporting issues

Please open a [new issue](https://github.com/redhat-cop/infra.convert2rhel/issues/new/choose) for any bugs or security vulnerabilities you may encounter. We also invite you to open an issue if you have ideas on how we can improve the solution or want to make a suggestion for enhancment.

## More information

This Ansible collection is just one building block of our larger initiative to make Convert2RHEL conversion automation that works at enterprise scale. Learn more about our end-to-end approach for automating conversions in these [blog posts](https://www.redhat.com/en/blog?search=convert2rhel).

## Release notes

See the [changelog](https://github.com/redhat-cop/infra.convert2rhel/tree/main/CHANGELOG.rst).

## Licensing

MIT

See [LICENSE](LICENSE) to see the full text.
