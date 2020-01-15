# OpenMRS config a derived/child configuration project

This would represent, for example, our openmrs-config-cesemr structure, which would pull in common locations,
ordertypes, encountertypes, concepts, and other configuration settings from our openmrs-config-pihemr artifacts
with set release versions.

This allows us to specify exactly the version of our dependent configuration artifacts.

pom.xml defines:
* the artifact id and version of this configuration (eg. openmrs-config-cesemr-1.0.0-SNAPSHOT)
* to use the openmrs-packager-maven-plugin

Usage:

* First, you'll want to do a "mvn clean install" on the openmrs-config-mvnparent project.  This will put that artifact in your .m2 folder
* Next, do a "mvn clean package" on this project.  You see that:
  * The contents of the mvnparent configuration were pulled into the "target" build directory
  * The contents of this mvnparent configuration with this project's configuration are zipped an combined into one

