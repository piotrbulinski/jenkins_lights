======================
Jenkins Lights Project
======================

Hardware:

    * Universal IO port card - http://ep.com.pl/files/4241.pdf
    * Relays: 3 x FRM18NA-5VDC - http://www.tme.eu/pl/details/frm18na-5vdc/przekazniki-elektromagn-miniaturowe/forward-industrial-co/frm18na-5-dc5v/
    * Case: CP-19-27 - http://www.tme.eu/pl/details/cp-19-27/obudowy-z-mocowaniem/combiplast/
    * Cable connectors: DG126-5.0-2P14 - http://www.tme.eu/pl/details/dg126-5.0-2p14/listwy-zaciskowe-do-druku/degson-electronics/dg126-50-02p-14-00a/
    * Universal board: H25SR050 - http://www.tme.eu/pl/details/h25sr050/plytki-uniwersalne/
    * Router: Asus WL500g Premium V2 - http://www.asus.com/Networks/Wireless_Routers/WL500gP_V2/
    * Traffic lights: 3 x 4.5W/230V LED bulbs - take one from closest interesction ;)

Software:

    WL500gpv2-1.9.2.7-rtn-r4667.trx (renewed Oleg's firmware) - http://code.google.com/p/wl500g/

HowTo:

    1) Connect LED bulbs -> relays -> Universal IO port card (D port) -> Router
    2) Configure router (IP address, etc...)
    3) Download monitor.sh and post-boot to /usr/local/sbin/
    4) chmod +x /usr/local/sbin/monitor.sh /usr/local/sbin/post-boot
    5) flashfs save
    6) flashfs commit
    7) flashfs enable
    8) reboot & enjoy ;)
