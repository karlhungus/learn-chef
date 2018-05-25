#!/bin/bash
chef-client --local-mode --runlist "recipe[$1]"
