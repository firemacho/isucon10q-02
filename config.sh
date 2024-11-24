# 各サーバで起動するサービス
## app, mysql, nginxのうち起動するサービスを半角スペース区切りで指定する
## 起動順は左から順番となる
## 何も起動しない場合は""を指定する
declare -A SERVER_SERVICES=(
  ["s1"]="app nginx"
  ["s2"]="mysql"
  ["s3"]="mysql"
)

# 各サーバにSSHで接続する際のホスト名
declare -A SERVER_HOSTS=(
  ["s1"]="s1"
  ["s2"]="s2"
  ["s3"]="s3"
)
# SSHのユーザ
ssh_user=isucon

# GitHubリポジトリのSSHのURL
GITHUB_URL="git@github.com:firemacho/isucon10q-02.git"
