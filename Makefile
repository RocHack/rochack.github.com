site:
	jekyll build

.build.out: .FORCE
	jekyll build 2>&1 | tee $@

test: .build.out
	! grep -q Error $<

.PHONY: .FORCE
