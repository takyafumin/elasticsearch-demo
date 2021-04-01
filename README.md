elasticsearch head plugin を試す
==============================


環境
----------

* elasticsearch, 7.11.2
* elasticsearch-head plugin,


構成
----------

| service | 用途                |
|---------|---------------------|
| es01    | elasticsearch node1 |
| es02    | elasticsearch node2 |
| es03    | elasticsearch node3 |
| es-head | elasticsearch head  |
| db      | Database            |
| adminer | Database WebGUI     |


使い方
----------

```bash
# リポジトリをclone
git clone [リポジトリ]

# プロジェクトディレクトリ内で docker-compose 起動
cd elasticsearch-head
docker-compose up -d
```


こんな時は・・・
----------

### max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]

* dockerを動作させているhostで以下を実行。
https://swfz.hatenablog.com/entry/2017/03/02/033957

```bash
sudo sysctl -w vm.max_map_count=262144
```
