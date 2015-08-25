
FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk --update add --virtual ycm-build-deps python git go llvm perl bash cmake python-dev build-base      && \
    mkdir -p /home/developer/bundle/                                                                        && \
    git clone https://github.com/Valloric/YouCompleteMe.git /home/developer/bundle/YouCompleteMe/           && \
    cd /home/developer/bundle/YouCompleteMe                                                                 && \
    git reset --hard dd143bcaaab34bab2ef84953c4a06a3c13cefed0 && git clean -f                               && \
    git submodule update --init --recursive                                                                 && \
    chmod 755 /home/developer/bundle/YouCompleteMe/install.sh                                               && \
    /home/developer/bundle/YouCompleteMe/install.sh --gocode-completer                                      && \
#cleanup
    apk --update del ycm-build-deps && apk --update add python libxt libx11 libstdc++                       && \
    rm -rf /home/developer/bundle/YouCompleteMe/third_party/ycmd/cpp \
      /home/developer/bundle/YouCompleteMe/third_party/ycmd/clang_includes                                  && \
    find '/home/developer/bundle/YouCompleteMe/' -name "*.vim" -exec sh /util/tidy-viml '{}' \;             && \
    sh /util/ocd-clean /
