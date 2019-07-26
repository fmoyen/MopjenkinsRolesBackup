# MopjenkinsRolesBackup
Made for backuping Montpellier mopjenkins Jenkins roles/jobs.

Any Jenkins job is fully described into one or several config.xml files.
The Jenkins config.xml files of all mopjenkins Jenkins jobs are falling here and are regularly updated when any job modification is made at Jenkins level. This is ensured by a specific MopjenkinsRolesBackup jenkins job which is automatically and periodically run by Jenkins.

Additionally to all Jenkins config.xml backup files, an 'available here' script called ScriptGenerator.bash may be used in order to extract all "build/execute shells" scripts included into the config.xml files. It is much easier to read the jobs' scripts this way than reading them directly into their corresponding config.xml files.
You just need to have the xmllint command available and updated for this script to run. Xmllint command is provided by libxml2 package for RedHat and libxml2-utils package for Ubuntu.

     git clone git@github.com:fmoyen/MopjenkinsRolesBackup.git
     cd MopjenkinsRolesBackup
     ./ScriptsGenerator.bash
