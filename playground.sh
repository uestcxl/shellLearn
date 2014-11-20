find ~/playground/ \
    \(\
        -type f \
        -not -perm 0600 \
        -exec chmod -600 '{}' ';'\
    \)\
    -or \
    \(\
       -type d \
       -not -perm 0711 \
       -exec chmod 0711 '{}' ';'\
    \)
