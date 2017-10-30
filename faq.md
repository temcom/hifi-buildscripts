My Interface console window is flooding with messages about USB access errors.  WHY?

    Blame method(s) used to poll for certain controllers for that one -- not sure if it's a HiFi problem (bug) or from
    library provided to drive said controllers.  Either way, the fix involves giving user running Interface read *and*
    write permission to USB subsystem.  Google is your friend on this one - most distribtuions have a group that will
    have RW perms on /dev/USB* and, if so, your user needs to be assigned to said group.  If not it gets more complex.
    But - **DO NOT** take the easy way and run Interface with root or sudo...

Interface won't run on my _whatever hardware I have_ with _whatever driver I have_.

    Sorry - Interface is exceedingly picky about OpenGL level (4.1/4.3 -- though I once saw a "hack" alowing it to run
    on 3.?, but, that's outside scope of wat I deal with here).  Basically - if you're not running an Nvidia 9xx or
    10xx series with Nvidia closed source drivers... good luck.

Why don't you support the Linux distribution *I* love instead of this crap you do?

    One human with plenty enough to do above and beyond juggling virtual machines and distributions 16 hours a day to
    figure them all out.  That said - assuming a distribtution has Qt5.9.x or an *easy* way to install it via its
    native packaging system... all that's needed for Distribtuion X is a list of packages and a few tests to see if
    you can use packaged versions of TBB, GLM, SDL etc etc etc.  Once that's known you'll need to format package info
    as I have for other examples and modify build script changing nothing but path to Qt and, possbily, Cmake options.
    Feel free to sort it all out and make a pull request.  Once I have time to test and assuming it all works, then
    I'll merge in.  If you do this include a full name of distribution and a URL to download the specific ISO for
    version you're proposing to add support for in a file or comments in scripts.  Also - understand it could take
    a long time for me to get around to reviewing your PR and building VMs to test building and running.
