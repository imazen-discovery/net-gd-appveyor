# A front-end for CI with AppVeyor

This project is here to provide a way to do continuous integration on
the LibGD and net-gd projects using the AppVeyor service.  It will
probably not be useful to anyone not involved with Imazen except maybe
as an example of this sort of thing.  (Still, it's open-source so go
nuts.)

AppVeyor is geared toward Visual Studio projects (which these are not)
and common testing frameworks (which GD does not use).  Instead, we
build everything with Msys and (where possible) MinGW.  In addition,
net-gd depends on the libs built from the gd-libgd source tree and the
whole thing requires 