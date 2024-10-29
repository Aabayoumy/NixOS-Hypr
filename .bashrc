case $- in
  *i*) ;;
    *) return;;
esac
export OSH='/home/varmisanth/.oh-my-bash'
OSH_THEME="powerbash10k"
OMB_CASE_SENSITIVE="true"
OMB_HYPHEN_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS='[mm/dd/yyyy]'
OMB_DEFAULT_ALIASES="check"
OMB_USE_SUDO=true
OMB_PROMPT_SHOW_PYTHON_VENV=true
source "$OSH"/oh-my-bash.sh
export EDITOR='nano'
