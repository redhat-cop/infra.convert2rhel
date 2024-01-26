# Ansible Convert2RHEL Collection

[![CI](https://github.com/redhat-cop/infra.convert2rhel/workflows/CI/badge.svg?event=push)](https://github.com/redhat-cop/infra.convert2rhel/actions) [![Lint](https://github.com/redhat-cop/infra.convert2rhel/workflows/Yaml%20and%20Ansible%20Lint/badge.svg?event=push)](https://github.com/redhat-cop/infra.convert2rhel/actions) [![OpenSSF Best Practices](https://bestpractices.coreinfrastructure.org/projects/7438/badge)](https://bestpractices.coreinfrastructure.org/projects/7438)

<!-- [![Codecov](https://img.shields.io/codecov/c/github/redhat-cop/infra.convert2rhel)](https://codecov.io/gh/redhat-cop/infra.convert2rhel) -->

## Overview

This collection provides Ansible roles you can use to perform conversion using the Convert2RHEL framework. Use these roles as the foundation of your conversion automation solution.

Please check the [release section](https://github.com/oamg/infra.convert2rhel/releases) of the repository to find information about the latest updates and publication to the Ansible Galaxy.

## Roles

These are the roles included in the collection. Follow the links below to see the detailed documentation and example playbooks for each role.

- [`analysis`](./roles/analysis/) - executes the convert2rhel analysis phase
- [`common`](./roles/common/) - used for local logging, mutex locking, and common vars
- [`parse_c2r_report`](./roles/parse_c2r_report/) - reads convert2rhel results and checks for inhibitors
- [`convert`](./roles/convert/) - executes the convert2rhel OS conversion

## Example playbooks

Example playbooks can be found [here](./playbooks/).

## Installing the collection from Ansible Galaxy

Before using this collection, you need to install it with the Ansible Galaxy command-line tool:

```bash
ansible-galaxy collection install infra.convert2rhel
```

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

## Reporting issues

Please open a [new issue](https://github.com/redhat-cop/infra.convert2rhel/issues/new/choose) for any bugs or security vulnerabilities you may encounter. We also invite you to open an issue if you have ideas on how we can improve the solution or want to make a suggestion for enhancment.

## More information

This Ansible collection is just one building block of our larger initiative to make Convert2RHEL conversion automation that works at enterprise scale. Learn more about our end-to-end approach for automating conversions in these [blog posts](https://www.redhat.com/en/blog?search=convert2rhel).

## Release notes

See the [changelog](https://github.com/redhat-cop/infra.convert2rhel/tree/main/CHANGELOG.rst).

## Licensing

MIT

See [LICENSE](LICENSE) to see the full text.
