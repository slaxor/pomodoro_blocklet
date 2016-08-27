export STATUS_FILE="${BATS_TMPDIR}/pomodoro_status_test.$$"

mkstatus() {
  cat >${STATUS_FILE}<<-__EOF__
TYPE=${1}
SPRINT=${2}
STARTED=${3}
NOTIFY=${4}
__EOF__
}

now() {
  date --date="@$(($(date +%s) + (${1:-0}*60)))" +%s
}

flunk() {
  { if [[ "$#" -eq 0 ]]; then cat -
    else echo "$*"
    fi
  }
  return 1
}

assert_equal() {
  if [[ "$1" != "$2" ]]; then
    { echo "expected: $1"
      echo "actual:   $2"
    } | flunk
  fi
}

assert_match() {
  if ! $(echo "$2" |grep -q "$1") ; then
    { echo "expected: $1"
      echo "actual:   $2"
    } | flunk
  fi
}

assert_exit_status() {
  assert_equal "$status" "$1"
}

