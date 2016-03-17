package hdf5

// #cgo LDFLAGS: -lhdf5 -lhdf5_hl
// #cgo CFLAGS: -I${SRCDIR}/vendor/c-hdf5/build/include
// #cgo LDFLAGS: -L${SRCDIR}/vendor/c-hdf5/build/lib
// #include "hdf5.h"
import "C"
