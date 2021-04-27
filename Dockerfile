FROM yourls:latest

WORKDIR /usr/src/yourls

ADD https://github.com/wlabarron/yourls-anonymise/tarball/main                \
    /opt/yourls-anonymise.tar.gz
ADD https://github.com/adigitalife/yourls-allow-aliases/tarball/master        \
    /opt/yourls-allow-aliases.tar.gz
ADD https://github.com/claytondaley/yourls-api-delete/tarball/master          \
    /opt/yourls-api-delete.tar.gz
ADD https://github.com/adigitalife/yourls-case-insensitive/tarball/master     \
    /opt/yourls-case-insensitive.tar.gz    

RUN for i in $(ls /opt/*.tar.gz); do                                          \
      plugin_name="$(basename ${i} '.tar.gz')"                              ; \
      mkdir -p user/plugins/${plugin_name}                                  ; \
      tar zxvf /opt/${plugin_name}.tar.gz                                     \
        --strip-components=1                                                  \
        -C user/plugins/${plugin_name}                                      ; \
    done

RUN chown -R www-data:www-data /usr/src/yourls/user/plugins
