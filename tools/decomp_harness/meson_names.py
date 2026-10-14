"""Meson's object naming for main.lsf, both ways. Pure stdlib.

main.lsf names each game object the way Meson does for the top-level `main` target:
main.nef.p/<source path, '/' -> '_'>.o, e.g. src/field/fieldmap.c -> main.nef.p/src_field_fieldmap.c.o.
"""
import hashlib
import os
import re
from pathlib import Path

OBJDIR = "main.nef.p/"
GAME_OBJ_RE = re.compile(r"^main\.nef\.p/(src|asm)_")


def canonicalize_filename(fname):
    """Verbatim from meson 1.12 mesonbuild/backend/backends.py (Backend.canonicalize_filename)."""
    if os.path.altsep is not None:
        fname = fname.replace(os.path.altsep, os.path.sep)
    parts = fname.split(os.path.sep)
    hashed = ""
    if len(parts) > 5:
        temp = "/".join(parts[-5:])
        # is it shorter to hash the beginning of the path?
        if len(fname) > len(temp) + 41:
            hashed = hashlib.sha1(fname.encode("utf-8")).hexdigest() + "_"
            fname = temp
    for ch in ("/", "\\", ":"):
        fname = fname.replace(ch, "_")
    return hashed + fname


def object_name(src):
    """Meson object path in main.lsf for a source of the `main` target, e.g. src/a/b.c."""
    return OBJDIR + canonicalize_filename(src) + ".o"


_SOURCE_MAPS = {}


def source_map(root):
    """{main.lsf object name: source path relative to root} over every src/ and asm/ source."""
    root = Path(root)
    key = str(root.resolve())
    if key not in _SOURCE_MAPS:
        m = {}
        for top in ("src", "asm"):
            for dirpath, _, files in os.walk(root / top):
                for f in files:
                    if f.endswith((".c", ".s")):
                        rel = os.path.relpath(os.path.join(dirpath, f), root)
                        m[object_name(rel)] = rel
        _SOURCE_MAPS[key] = m
    return _SOURCE_MAPS[key]


def source_of(obj, root):
    """Source path for a main.lsf game object name, or None."""
    return source_map(root).get(obj)
