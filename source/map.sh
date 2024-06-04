#!/bin/bash

# 定义一个关联数组（Map）
declare -A shell_map
shell_map["client"]="users"
shell_map["dns"]="dns"
shell_map["backend_layer"]="angular"
shell_map["webservice_layer"]="java"
shell_map["monitor"]="grafana"
shell_map["ddos"]="security"
shell_map["waf"]="user_shield"
shell_map["cfw"]="fire"
shell_map["lb"]="exchange_alt"
shell_map["nat"]="diagram_project"
shell_map["eip"]="globe_asia"
shell_map["vpngw"]="network_wired"
shell_map["cvm"]="server"
shell_map["host"]="hdd"
shell_map["gpu"]="microchip"
shell_map["fpga"]="microchip"
shell_map["dedicate_host"]="hdd"
shell_map["eks"]="cubes"
shell_map["tke"]="docker"
shell_map["security_host"]="shield_virus"
shell_map["security_docker"]="shield_virus"
shell_map["security_center"]="shield_heart"
shell_map["functions"]="functions"
shell_map["rocketmq"]="rocket"
shell_map["rabbitmq"]="rabbitmq_original"
shell_map["selfbuildmq"]="code_branch"
shell_map["kafka"]="apachekafka_original_wordmark"
shell_map["nacos"]="cogs"
shell_map["zooKeeper"]="cogs"
shell_map["mysql"]="database"
shell_map["pgsql"]="database"
shell_map["sqlserver"]="database"
shell_map["db_sub"]="database"
shell_map["oracle"]="database"
shell_map["db_cache"]="redis"
shell_map["db_document"]="mongodb"
shell_map["bigdata_offline"]="hive"
shell_map["bigdata_online"]="stream"
shell_map["warehouse"]="warehouse"
shell_map["data_search"]="searchengin"
shell_map["bigdata_ops"]="tools"
shell_map["bi"]="google_analytics"
shell_map["file_store"]="folder_tree"
shell_map["object_store"]="object_group"
shell_map["block_store"]="floppy_disk"
shell_map["logging"]="elasticsearch"
shell_map["apm"]="search"
shell_map["trainning"]="brain"

# 指定目标目录
target_dir="../"

# 遍历 Map
for key in "${!shell_map[@]}"; do
  value="${shell_map[$key]}"

  # 拷贝 .png 文件
  if [ -f "${value}.png" ]; then
    cp "${value}.png" "${target_dir}/${key}.png"
    echo "Copied ${value}.png to ${target_dir}/${key}.png"
  else
    echo "File ${value}.png not found"
  fi

  # 拷贝 .puml 文件
  if [ -f "${value}.puml" ]; then
    cp "${value}.puml" "${target_dir}/${key}.puml"
    echo "Copied ${value}.puml to ${target_dir}/${key}.puml"
    sed -i '' "s/${value}/${key}/g" "${target_dir}/${key}.puml"
  else
    echo "File ${value}.puml not found"
  fi
done
