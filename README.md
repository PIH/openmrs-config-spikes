## Overview

The intention of this repository is to provide a places where we can iterate on several different options for how we want
to structure our configurations, and the mechanisms and tools we want to use to support authoring these configurations.

## Option 1 - Defining versions, dependencies, and build process within each configuration repository using maven

1. See README within openmrs-config-mavenparent and openmrs-config-mavenchild


### Other notes

* Standardize on common output/configuration artifact formats and file structures
* This will allow us to have standard maven tools (plugins, SDK extensions, or parent poms) to deal with configs, which will minimize boilerplate build code
* Investigate other formats that allow our configuration files themselves to act as resource filter variables.
* Consider more use of yml over csv and json
* Look at options that do not involve defining poms and artifact.xml files in config projects directly, but which:
  * Have a standard config file structure
  * Have more user-friendly and less maven-specific syntax than pom.xml to define versions and dependencies
  * Add spike options that use a maven plugin (possibly within the SDK) that reads these file structures (like the SDK current reads the distro.properties file)
  * Have spike options that use a maven parent pom project as the starter, which does not require as much configuration in each pom
