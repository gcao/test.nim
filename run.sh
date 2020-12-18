#!/usr/bin/env bash

nim c --app:lib --outdir:build src/extension.nim

nim c --outdir:build -r src/main.nim
