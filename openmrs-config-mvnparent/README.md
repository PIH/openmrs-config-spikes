# OpenMRS config for a base/parent configuration project

This would represent, for example, our openmrs-config-pihemr structure, where implementation config projects would 
depend on to pull in a library of common configuration elements without redefining them through copy and paste.

pom.xml defines:
* the artifact id and version of this configuration (eg. openmrs-config-pihemr-1.0.0-SNAPSHOT)
* to use the openmrs-packager-maven-plugin

Usage:

* Do a "mvn clean package" on this project.  You see that:
  * A global property and order type initializer file refer to a variable, which is defined in constants.yml
  * After packaging, in the generated target zip, these variables have been replaced with the defined constant value

You should also be able to try turning off variable replacement in this file, in favor of replacing those variables in
downstream dependent files (eg. in openmrs-config-mvnchild)
