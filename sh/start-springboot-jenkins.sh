#! /bin/bash
echo "stop springBoot-jenkins"
SERVER_NAME="grep springboot-jenkins"
pid=$(ps  -ef | grep  "springboot-jenkins" | grep "java" | awk '{print $2}')
if [[ -n "$pid" ]]
then
echo "pid:${pid} will be kill..."
kill -9 "$pid"
echo "pid:${pid} killed success!"
else
echo "not found this [$pid] process!"
fi

# 启动
APP_NAME="springboot-jenkins-0.0.1-SNAPSHOT.jar"
nohup /software/jdk1.8.0_231/bin/java -jar /deploy/target/${APP_NAME} > /deploy/springboot-jenkins.txt 2>&1 &
echo "started ${APP_NAME}  success!"
echo "成功了，真开心！"


# 注意：这里我使用的是绝对路径，可以解决一些未知的问题