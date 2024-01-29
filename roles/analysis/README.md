Analysis
========

The `analysis` role is used to create the `pre-conversion` report on the target hosts.

This role will not fail if there are inhibitors found, it will throw a warning. However, there is a fact available `conversion_inhibited` which indicates whether the upgrade will be inhibited or not and you can choose to fail your own playbook using this variable.

Role Variables
--------------

| Name                  | Type | Default value           | Description                                     |
|-----------------------|------|-------------------------|-------------------------------------------------|
| analysis_convert2rhel_preconv_opts | String | | Optional string to define command line options to be passed to the `convert2rhel` command when running the pre-conversion. |
| analysis_convert2rhel_eus | Boolean | false | If you are converting to RHEL 8.8 and have an Extended Upgrade Support (EUS), add the --eus option by setting this variable to true. |
| analysis_convert2rhel_repos_enabled | List | [] | List of repositories to enable on the target node |
| analysis_convert2rhel_repos_disabled | List | [] | List of repositories to disable on the target node |
| analysis_os_path | String | $PATH | Option string to override the $PATH variable used on the target node |
| analysis_async_timeout_maximum   | Int | 7200                  | Variable used to set the asynchronous task timeout value (in seconds)
| analysis_async_poll_interval     | Int | 60                    | Variable used to set the asynchronous task polling internal value (in seconds)

## Red Hat Subscription Manager (RHSM) variables

RHSM credentials provide a method to identify content views available from Red Hat Subscription Manager (RHSM). Use these variables to specify the RHSM credentials for the required content views.

| Name                  | Type | Default value           | Description                                     |
|-----------------------|------|-------------------------|-------------------------------------------------|
| rhsm_username         | String   |  | RHSM username |
| rhsm_password         | String   |  | RHSM password |
| rhsm_org              | String   |  | RHSM organization |
| rhsm_activation_key   | String   |  | RHSM activation key |

Dependencies
------------

This role is dependent on the `common` role and `parse_c2r_report` role.

Example Playbook
----------------

See [analysis.yml](../../playbooks/analysis.yml)

License
-------

MIT
