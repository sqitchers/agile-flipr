Agile Database Development Project
==================================

This is the project for the
“[Agile Database Development](http://www.pgcon.org/2013/schedule/events/615.en.html)”
tutorial, presented at [PGCon 2013](http://www.pgcon.org/2013/) on May 21,
2013, and updated in January, 2016. Use this repository as an upstream remote
to help follow along.

Dependencies
------------

Before you start the project, you'll need some software.

* [PostgreSQL](http://www.postgresql.org/)

    9.1.0 or higher recommended. Usually available via your distribution's
    package system. Binaries and source are also available
    [for download](http://www.postgresql.org/download/).

* [Git](http://git-scm.com)

    1.7.0 or higher recommended. Usually available via your distribution's
    package system. Binaries and source are also available
    [for download](http://git-scm.com/downloads).

* [pgTAP](http://pgtap.org/)

    0.92.0 or higher recommended. Download
    [from PGXN](http://pgxn.org/dist/pgtap/) and consult its
    [`README.md`](https://github.com/theory/pgtap#readme) for
    build instructions. Also available in some packaging systems.

* [Perl](http://perl.org/)

    5.10.0 or higher. Included in most Unix distributions and on OS X. Windows
    users can install
    [ActivePerl](http://www.activestate.com/activeperl/downloads).

* [`pg_prove`](http://pgtap.org/pg_prove.html)

    3.28 or higher recommended. Available in some packaging systems.
    Otherwise, Download via CPAN:

        cpan TAP::Parser::SourceHandler::pgTAP

    ActivePerl users can use PPI:

        ppm install TAP-Parser-SourceHandler-pgTAP

* [Sqitch](http://sqitch.org/)

    0.97.0 or higher recommended. Install via CPAN:

        cpan App::Sqitch DBD::Pg

    ActivePerl users should use PPI:
    
        ppi App-Sqitch

    [Homebrew](http://brew.sh) users can use the [Sqitch Tap](https://github.com/theory/homebrew-sqitch/):
    
        brew tap theory/sqitch
        brew install sqitch_pg

Author
------

[David E. Wheeler](http://justatheory.com/)

License
-------

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Agile Database Development</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://www.justatheory.com/" property="cc:attributionName" rel="cc:attributionURL">David E. Wheeler</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/theory/agile-flipr" rel="dct:source">https://github.com/theory/agile-flipr</a>.
