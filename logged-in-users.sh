#!/bin/bash
#w -h | cut -d " " -f1 | sort | uniq
who | cut -d" " -f1 | sort | uniq
#both of the above commands work
