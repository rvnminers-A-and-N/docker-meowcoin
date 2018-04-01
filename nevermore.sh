#!/bin/bash
NUM_FALLBACK_THREADS=${NUM_FALLBACK_THREADS:-$(( $(nproc) * 2 ))}

exec nevermore -a x16r -o $URL -u $USER -p $PASS $@
