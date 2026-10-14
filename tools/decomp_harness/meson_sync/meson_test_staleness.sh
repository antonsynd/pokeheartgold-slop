#!/bin/bash
S=$1; T=$S/mesontoy; rm -rf $T; mkdir -p $T && cd $T
M() { python3 "$S/meson-1.12.0/meson.py" "$@"; }
echo good > in.txt
printf '%s *out.bin\n' "$(shasum in.txt | cut -d' ' -f1)" > out.sha1
cat > meson.build <<'EOM'
project('toy', [])
ct = custom_target('out.bin', input: 'in.txt', output: 'out.bin', command: ['cp', '@INPUT@', '@OUTPUT@'])
sha1sum = find_program(['sha1sum', 'shasum'], native: true)
if get_option('fix')
  test('ROM', sha1sum, args: ['-c', '--quiet', files('out.sha1')], workdir: meson.current_build_dir(), depends: ct)
else
  test('ROM', sha1sum, args: ['-c', '--quiet', files('out.sha1')], workdir: meson.current_build_dir())
endif
EOM
echo "option('fix', type: 'boolean', value: false)" > meson.options
M setup b >/dev/null || exit 1
echo "== A. upstream-style test: build ROM, then change its input, then plain 'meson test'"
ninja -C b out.bin >/dev/null; echo bad > in.txt
M test -C b 2>&1 | grep -E "^Ok:|^Fail:"
echo "== B. test() with depends: ct — same sequence"
echo good > in.txt; M configure b -Dfix=true >/dev/null; ninja -C b out.bin >/dev/null; echo bad > in.txt
M test -C b 2>&1 | grep -E "^Ok:|^Fail:"
echo "== C. depends: ct, fresh build dir, nothing prebuilt, good input"
echo good > in.txt; M setup b2 -Dfix=true >/dev/null; M test -C b2 2>&1 | grep -E "^Ok:|^Fail:"
echo "== D. upstream-style, fresh build dir, nothing prebuilt, good input"
M setup b3 >/dev/null; M test -C b3 2>&1 | grep -E "^Ok:|^Fail:"
