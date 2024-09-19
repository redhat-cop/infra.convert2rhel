Handle C2R Report
================

This role is designed to handle the Convert2RHEL (C2R) report. It extracts relevant information and prepares it for further analysis or conversion tasks.

### Process of handling:
The handling is divided into two parts based on which activity is being done.
- When the analysis is executed, check for exitense and then parse is required only for the pre-conversion report.
- For convert checking if post-conversion report is available is needed because the report can miss in situation
when the conversion process fails in the analysis part. In that moment, only the pre-conversion report is generated.

Those actions are controlled by fact `activity` which must be set in the different role related to the activity.
The rest of the actions use fact `handle_c2r_report_result_filename_txt` and `handle_c2r_report_result_filename_json`
for checking and parsing the right places.

Dependencies
------------

This role is a dependency for the `analysis` and `convert` roles. It also depend on them as setting `activity` fact is
needed.

License
-------

MIT
