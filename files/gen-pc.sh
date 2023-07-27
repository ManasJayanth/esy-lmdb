PKGCONFIG_DIR="$cur__lib/pkgconfig"
mkdir -p $PKGCONFIG_DIR
cat > $PKGCONFIG_DIR/lmdb.pc <<EOF
prefix=$cur__install
exec_prefix=$cur__install
libdir=$cur__lib
includedir=$cur__install/include

Name: lmdb
Description: Lightning memory-mapped database: key-value data store
Version: $cur__version
Libs: -L\${libdir} -llmdb
Cflags: -I\${includedir}
EOF
