#!/usr/bin/env bash
start() {
echo -e "\e[32m $USER Starting wireguard sessions codeby games! \e[0m"
wg-quick up /home/$USER/hacklab/codeby/a0x1tier.conf
}
stop() {
echo -e "\e[31m $USER Stopping wireguard sessions codeby games!  \e[0m"
wg-quick down /home/$USER/hacklab/codeby/a0x1tier.conf
}
while getops ':h-' OPTION; do
    case "$OPTION" in
    h) ;;
    start) start ;;
    stop) stop ;;
    *);;
    esac
done
