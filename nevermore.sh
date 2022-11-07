#!/bin/bash
NUM_FALLBACK_THREADS=${NUM_FALLBACK_THREADS:-$(( $(nproc) * 2 ))}

exec meowcoinminer -a kawpow -o $URL -u $USERNAME -p $PASSWORD $@
