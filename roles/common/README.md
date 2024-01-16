Common
======

The `common` role is used to perform tasks that are shared between the `analysis` and `convert` roles. This includes checking the distribution and installing `convert2rhel`, and also creating temporary files need for the conversion.

Role Variables
--------------

Following variables are recommended to **NOT** be changed.

| Name                  | Type | Default value           | Description                                     |
|-----------------------|------|-------------------------|-------------------------------------------------|
| common_centos8_repos  | List | [CentOS-Linux-AppStream.repo, CentOS-Linux-BaseOS.repo, CentOS-Linux-ContinuousRelease.repo, CentOS-Linux-Devel.repo, CentOS-Linux-Extras.repo, CentOS-Linux-FastTrack.repo, CentOS-Linux-HighAvailability.repo, CentOS-Linux-Plus.repo, CentOS-Linux-PowerTools.repo] | List of CentOS 8 repositories to enable on the target node |
| common_supported_distribution | List | [CentOS, OracleLinux, AlmaLinux, Rocky] | List of supported distributions |
| common_supported_major_version | List | [7, 8] | List of supported major versions |

Dependencies
------------

This role is a dependency for the `analysis` and `convert` roles. It does not depend on any other roles.

License
-------

MIT
