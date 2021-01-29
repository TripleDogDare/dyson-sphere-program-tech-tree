#!/bin/bash
#reflex -v -g '*.dot' -- m4 {} | dot -Tpng  {} -o {}.png
reflex -s -g reflex.conf -- reflex -c reflex.conf

