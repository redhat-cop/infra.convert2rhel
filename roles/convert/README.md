Convert
=======

The `convert` role is used to perform the actual conversion of the target hosts. After the conversion is complete target hosts are cleaned up by removing the `convert2rhel` package and any related files.

This role will not fail if there are inhibitors found, it will throw a warning. However, there is a fact available `conversion_inhibited` which indicates whether the conversion will be inhibited or not and you can choose to fail your own playbook using this variable.

Role Variables
--------------

| Name                  | Type | Default value           | Description                                     |
|-----------------------|------|-------------------------|-------------------------------------------------|
| convert_convert2rhel_opts | String | | Optional string to define command line options to be passed to the `convert2rhel` command when running the conversion. |
| convert_convert2rhel_env_vars | Dict | {} | Optional dictionary to define shell environment variables for the `convert2rhel` command when running the conversion. See defaults/main.yml for an example. |
| convert_convert2rhel_eus | Boolean | false | If you are converting to RHEL 8.8 and have an Extended Upgrade Support (EUS), add the --eus option by setting this variable to true. |
| convert_convert2rhel_repos_enabled | List | [] | List of repositories to enable on the target node |
| convert_convert2rhel_repos_disabled | List | [] | List of repositories to disable on the target node |
| convert_os_path | String | $PATH | Option string to override the $PATH variable used on the target node |
| convert_async_timeout_maximum   | Int | 7200                  | Variable used to set the asynchronous task timeout value (in seconds) |
| convert_async_poll_interval     | Int | 60                    | Variable used to set the asynchronous task polling internal value (in seconds) |
| convert_reboot_timeout | Int | 900 | Variable used for reboot task reboot_timeout (in seconds) |
| convert_no_rhsm | Boolean | false |  Set to true to pass --no-rhsm to convert2rhel. User must configure /etc/yum.repos.d RHEL repo file with repo disabled and specify analysis_convert2rhel_repos_enabled. |
| convert_reboot_requested | Boolean | false | Perform a reboot after conversion. |
| convert_gpg_key_remove | Boolean | false | Remove the convert2rhel GPG key after conversion. |
| convert_convert2rhel_repo_remove | Boolean | true | Remove the convert2rhel repo file after conversion. |
| convert_convert2rhel_package_remove | Boolean | true | Remove the convert2rhel package after conversion. |

## Red Hat Subscription Manager (RHSM) variables

RHSM credentials provide a method to identify content views available from Red Hat Subscription Manager (RHSM). Use these variables to specify the RHSM credentials for the required content views. Alternatively, systems may be pre-registered to RHSM and these can be set to empty strings ("").

| Name                  | Type | Default value           | Description                                     |
|-----------------------|------|-------------------------|-------------------------------------------------|
| rhsm_username         | String   |  | RHSM username |
| rhsm_password         | String   |  | RHSM password |
| rhsm_org              | String   |  | RHSM organization |
| rhsm_activation_key   | String   |  | RHSM activation key |

Dependencies
------------

This role is dependent on the `common` role and `handle_c2r_report` role.

Example Playbook
----------------

See [convert.yml](../../playbooks/convert.yml)

License
-------

MIT
