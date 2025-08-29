[![GitHub Tag](https://github.com/ivan-danov/xubuntu-remaster/actions/workflows/build_deb.yml/badge.svg)](https://github.com/ivan-danov/xubuntu-remaster/releases)

# XDebRepo2

Custom signed debian repository organizer

## Create deb package
make deb

## Install deb package
apt install ./xdebrpo\_&lt;VERSION&gt;\_all.deb

## Use xdebrpo

**xdebrepo2** init &lt;repo path&gt; &lt;conf path&gt;<br/>
Init xdebrpo. Create /etc/xdebrepo2/xdebrepo2.conf.

**xdebrepo2** key gen &lt;gpg dir&gt; &lt;owner name&gt; &lt;owner email&gt;<br/>
Generate GnuPG key. &lt;gpg dir&gt; is relative to &lt;conf path&gt;.

**xdebrepo2** key list &lt;gpg dir&gt;<br/>
List generated GnuPG key. &lt;gpg dir&gt; is relative to &lt;conf path&gt;.

**xdebrepo2** repo create &lt;repodir&gt; &lt;gpg dir&gt; &lt;key&gt;<br/>
Create a new repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>
&lt;gpg dir&gt; is relative to &lt;conf path&gt;.<br/>
&lt;key&gt; is a GnuPG key id to sign repository.<br/>

**xdebrepo2** repo repo destroy &lt;repodir&gt;<br/>
Destroy repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo2** repo aptconf &lt;repodir&gt;"<br/>
Generate apt config file for repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo2** repo pubkey &lt;repodir&gt;"<br/>
Show public key for repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo2** repo add &lt;repodir&gt; &lt;distname&gt; &lt;deb file&gt;"<br/>
Add a deb file to repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo2** repo del &lt;repodir&gt; &lt;distname&gt; &lt;package name&gt;"<br/>
Delete package from repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>

**xdebrepo2** repo list &lt;repodir&gt; [distname]<br/>
List packages in repository.<br/>
&lt;repodir&gt; is relative to &lt;repo path&gt;.<br/>
