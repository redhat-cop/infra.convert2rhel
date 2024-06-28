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
| common_convert2rhel_repokey_url | String | https://www.redhat.com/security/data/fd431d51.txt | Can be used to override where to get the GPG Key for the convert2rhel repository. |
| common_convert2rhel_7_repofile_url | String | https://cdn-public.redhat.com/content/public/addon/dist/convert2rhel/server/7/7Server/x86_64/files/repofile.repo | Can be used to override where to get the RHEL 7 convert2rhel repo file. |
| common_convert2rhel_8_repofile_url | String | https://cdn-public.redhat.com/content/public/addon/dist/convert2rhel8/8/x86_64/files/repofile.repo | Can be used to override where to get the RHEL 8 convert2rhel repo file. |
| common_convert2rhel_repo_satellite | boolean | false | Set to true if the convert2rhel repo is served from Satellite. |
| common_yum_enable_repos | list of strings | unset | Optionally pass a list of repositories to enable to yum install convert2rhel. |

Dependencies
------------

This role is a dependency for the `analysis` and `convert` roles. It does not depend on any other roles.

License
-------

MIT
