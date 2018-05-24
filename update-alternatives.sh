#!/bin/sh

files='appletviewer idlj jaotc jar jarsigner java javac javadoc javah
javap javapackager javaws jcmd jconsole jcontrol jdb jdeprscan jdeps
jhsdb jimage jinfo jjs jlink jmap jmc jmod jps jrunscript jshell jstack 
jstat jstatd jweblauncher keytool orbd pack200 policytool rmic rmid 
rmiregistry schemagen serialver servertool tnameserv unpack200 wsgen 
wsimport xjc'

for f in $files
do
	update-alternatives --install /usr/bin/$f $f /usr/lib/jvm/jdk-9.0.4/bin/$f 1
	chmod a+x /usr/bin/$f
done
