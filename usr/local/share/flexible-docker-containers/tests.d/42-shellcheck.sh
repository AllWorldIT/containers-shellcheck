#!/bin/bash
# Copyright (c) 2022-2025, AllWorldIT.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.


# shellcheck disable=SC2164
cd "$CI_PROJECT_DIR"


fdc_test_start "shellcheck" "Testing valid shell script"
if ! run-shellcheck test-success; then
    fdc_test_fail "shellcheck" "Valid shell script test failed"
    false
fi
fdc_test_pass "shellcheck" "Valid shell script test passed"


fdc_test_start "shellcheck" "Testing invalid shell script"
if run-shellcheck test-fail; then
    fdc_test_fail "shellcheck" "Invalid shell script test failed"
    false
fi
fdc_test_pass "shellcheck" "Invalid shell script test passed"
