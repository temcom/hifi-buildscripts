Xenial is a real pain due to needing PPA and it being barely capable of properly supporting HiFi's "bleeding edge everything" approach.  I tested this build method using ~VirtualBox~ VMWare Player 12 and this is how I setup its VM.

Using VirtubalBox Interface binary core dumps on launch while using VMWare Player 12 produces Interface binary that works.  Likely something deep in openGL, includes and link libs.  Not worth it for me to figure out, use VMWare Player if you want to build Interface that works... if all you care about is Stack (AC/DS) then, I suppose, VBox will do.

I used Ubuntu's net install ISO -- http://archive.ubuntu.com/ubuntu/dists/xenial-updates/main/installer-amd64/current/images/netboot/

I worked through various install steps and selected package groups;

`standard system utilities`

`OpenSSH server`

Once installed and booted I then added packages via list provided.
