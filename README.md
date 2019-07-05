# Utilities for mac configurations:

I've configured my mac to run different versions of java depending on the shell I'm running

  * Install whatever versions you want using homebrew
  * Install jEnv `brew install jenv`
  
`jEnv` will now allow you to switch between java versions.

`.bash_profile` is my default profile with configs
`jEnv` is configured on my machine to switch between java versions with aliases added in this profile - to switch only for the shell youre currently using

`.mavenrc` is used to switch java versions for maven when `jEnv` is used to change java versions. The `.bash_profile` alias will atomatically switch the java version and update the version that maven uses.
