FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# update the telnet config to bind to localhost only
SRC_URI += "file://telnet.xinetd.inetutils"

install_append(){
    cp ${WORKDIR}/telnet.xinetd.inetutils  ${D}/${sysconfdir}/xinetd.d/telnet
}
