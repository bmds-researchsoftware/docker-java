#!/bin/sh

files='jaotc jar jarsigner java javac javadoc javap jcmd jconsole jdb 
jdeprscan jdeps jhsdb jimage jinfo jjs jlink jmap jmod jps jrunscript 
jshell jstack jstat jstatd keytool pack200 rmic rmid rmiregistry 
serialver unpack200'

for f in $files
do
    update-alternatives --install /usr/bin/$f $f /usr/lib/jvm/jdk-11.0.2/bin/$f 1
    chmod a+x /usr/bin/$f
done

