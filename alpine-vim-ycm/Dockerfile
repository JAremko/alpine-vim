FROM jare/alpine-vim:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk --update add --virtual ycm-build-deps python git go llvm perl bash cmake python-dev build-base      && \
    mkdir -p /home/developer/bundle/  /home/developer/bundle/YouCompleteMe/                                 && \
    cd /home/developer/bundle/YouCompleteMe/                                                                && \
    git init                                                                                                && \
    git remote add origin https://github.com/Valloric/YouCompleteMe.git                                     && \
    git fetch origin 0588c23c70b862b5df55586e17fab823de95ea8a                                               && \
    git reset --hard FETCH_HEAD/                                                                            && \
    cd /home/developer/bundle/YouCompleteMe                                                                 && \
    git submodule update --init --recursive                                                                 && \
    chmod 755 /home/developer/bundle/YouCompleteMe/install.sh                                               && \
    /home/developer/bundle/YouCompleteMe/install.sh --gocode-completer                                      && \
#cleanup
    apk --update del ycm-build-deps && apk --update add python libxt libx11 libstdc++                       && \
    rm -rf /home/developer/bundle/YouCompleteMe/third_party/ycmd/cpp \
      /home/developer/bundle/YouCompleteMe/third_party/ycmd/clang_includes                                  && \
    find '/home/developer/bundle/YouCompleteMe/' -name "*.vim" -exec sh /util/tidy-viml '{}' \;             && \
    sh /util/ocd-clean /
