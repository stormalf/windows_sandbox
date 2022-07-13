# windows_sandbox

small examples to help to use windows_sandbox with automatic installation when running it

WINDOWS SANDBOX feature is very interesting to test some snapshots versions of products without to uninstall them and to test in a new clean windows environment!

Automating installation tasks can help to start with a ready new Windows environment for tests purposes.

## limitations

It's not possible to restart the Windows Sandbox, all things done in the Windows Sandbox are lost after closing it!

## Examples

JAPAN.WSB

    it's an example using a powershell script to install automatically japan language on the windows sandbox

JAVA.WSB

    it's an example about copying an existing jre/java folder from your host pc to the windows sandbox automatically during starting the windows sandbox step.

RTC.WSB

    it's an example about installing Rational Team Concert from your host pc to the windows sandbox automatically during starting the windows sandbox step.

SANDBOX1.WSB

    it's an example about downloading and/or installing some software : vscode, cygwin64, packer, terraform, vagrant...
