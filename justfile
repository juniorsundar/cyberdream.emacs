test:
  #!/usr/bin/env sh
  for testfile in *.test.el; do
    echo emacs --script $testfile && emacs --script $testfile;
    exit=$?
    if [ $exit -ne 0 ]; then exit $exit; fi
  done

run: test
  emacs --load cyberdream-theme.el --eval "(load-theme 'cyberdream t)"
