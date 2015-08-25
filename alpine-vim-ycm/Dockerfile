FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk --update add --virtual ycm-build-deps python git go llvm perl bash cmake python-dev build-base      && \
    mkdir -p /home/developer/bundle/                                                                        && \
    git clone --depth 1 https://github.com/Valloric/YouCompleteMe.git /home/developer/bundle/YouCompleteMe/ && \
    cd /home/developer/bundle/YouCompleteMe                                                                 && \
    git submodule update --init --recursive                                                                 && \
    /home/developer/bundle/YouCompleteMe/install.sh --gocode-completer                                      && \
#cleanup
    apk --update del ycm-build-deps && apk --update add python libxt libx11 libstdc++                       && \
    rm -rf /home/developer/bundle/YouCompleteMe/third_party/ycmd/cpp \
      /home/developer/bundle/YouCompleteMe/third_party/ycmd/clang_includes                                  && \
    find '/home/developer/bundle/YouCompleteMe/' -name "*.vim" -exec sh /util/tidy-viml '{}' \;             && \
    sh /util/ocd-clean /
