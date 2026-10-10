#!/usr/bin/env python3
"""Fixtures for twins.platinum_source, one per way a raw brace count goes wrong (issue #3).

Run: python3 tools/decomp_harness/test_twins.py
"""

import sys
import tempfile
import textwrap
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from twins import platinum_source  # noqa: E402


def extract(source, func):
    with tempfile.TemporaryDirectory() as root:
        Path(root, "file.c").write_text(textwrap.dedent(source).lstrip("\n"))
        return platinum_source(Path(root), "file.c", func)


class PlatinumSource(unittest.TestCase):
    def test_plain(self):
        self.assertEqual(extract("""
            void Other(void);

            void Func(int x)
            {
                if (x) {
                    Other();
                }
            }

            void Next(void) {}
        """, "Func"), "void Func(int x)\n{\n    if (x) {\n        Other();\n    }\n}")

    def test_braces_in_comments_and_literals(self):
        body = extract("""
            void Func(void)
            {
                // a stray } in a line comment
                /* and { in a block comment
                   } spanning lines */
                Print("}{ in a string", '{');
            }

            void Next(void) {}
        """, "Func")
        self.assertTrue(body.endswith("Print(\"}{ in a string\", '{');\n}"), body)

    def test_branches_that_each_open_a_brace(self):
        body = extract("""
            void Func(int x)
            {
            #ifdef HEARTGOLD
                if (x) {
            #else
                if (!x) {
            #endif
                    Other();
                }
            }

            void Next(void) {}
        """, "Func")
        self.assertTrue(body.endswith("        Other();\n    }\n}"), body)
        self.assertNotIn("Next", body)

    def test_macro_or_initializer_naming_the_function_first(self):
        body = extract("""
            REGISTER(Func(0))
            static const Entry sTable = { Func(1) };
            int Func(int x)
            {
                return x;
            }
        """, "Func")
        self.assertEqual(body, "int Func(int x)\n{\n    return x;\n}")

    def test_multi_line_prototype_then_definition(self):
        body = extract("""
            static void Func(int a,
                             int b);

            static void Func(int a,
                             int b)
            {
                (void)a;
            }
        """, "Func")
        self.assertTrue(body.startswith("static void Func(int a,\n                 int b)\n{"), body)

    def test_missing(self):
        self.assertIsNone(extract("void Other(void) {}\n", "Func"))


if __name__ == "__main__":
    unittest.main()
