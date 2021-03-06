#!/bin/sh
#检查/opt/module是否存在
	if [ ! -d "/opt/module" ]; 
			then
				echo "/opt/module不存在，创建/opt/module目录" && mkdir -p /opt/module  
			else
				echo "/opt/module已存在，跳过创建"
	fi

#安装包存储目录
	if [ ! -d "/opt/software" ]; 	
			then
				echo "/opt/software不存在，创建/opt/software目录"  && mkdir -p /opt/software
			else
				echo "/opt/software已存在，跳过创建"	
	fi

#下载并解压各组件
cd /opt/software

#JDK11最新版11.0.9（现在Oracle官网必须登录才给临时下载链接，这是我个人onedrive用工具生成的直链，可能会失效）	
#	if [ ! -d "/opt/module/jdk-11.0.9" ]; 
#		then
#			echo "/opt/module/jdk-11.0.9不存在,查看jdk-11.0.9二进制包是否存在"
#			if [ ! -f "jdk-11.0.9.tar.gz" ]; 
#				then
#					echo -e "jdk-11.0.9二进制包不存在，下载并解压至/opt/module/\n（现在Oracle官网必须登录才给临时下载链接，这是我用工具生成的个人Onedrive直链，可能会失效，此处国内可能有点慢，耐心等待）"
#					wget -c -O jdk-11.0.9.tar.gz https://onedrive.gimhoy.com/1drv/aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBckxZM25PVHJEM1ZyYmN2VXY2SFVrZGJmSmEyLWc/ZT1ZTU9LUks=.gz
#				else
#					echo "jdk-11.0.9二进制包已存在，解压至/opt/module/"
#			fi
#				tar -zxf jdk-11.0.9.tar.gz -C /opt/module && echo "解压成功"
#		else
#			echo "/opt/module/jdk-11.0.9已存在，跳过jdk-11.0.9的下载及解压"
#	fi	
					
#JDK8最新版8u271（现在Oracle官网必须登录才给临时下载链接，这是我个人onedrive用工具生成的直链，可能会失效）	
	if [ ! -d "/opt/module/jdk1.8.0_271" ]; 
		then
			echo "/opt/module/jdk1.8.0_271不存在,查看jdk1.8.0_271二进制包是否存在"
			if [ ! -f "jdk1.8.0_271.tar.gz" ]; 
				then
					echo -e "jdk1.8.0_271二进制包不存在，下载并解压至/opt/module/\n（现在Oracle官网必须登录才给临时下载链接，这是我用工具生成的个人Onedrive直链，可能会失效，此处国内可能有点慢，耐心等待）"
					wget -c -O jdk1.8.0_271.tar.gz https://onedrive.gimhoy.com/1drv/aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBckxZM25PVHJEM1ZyYmNrb3NXdW1tR1NoSmtLcHc/ZT1DY2M3d3I=.gz
				else
					echo "jdk1.8.0_271二进制包已存在，解压至/opt/module/"
			fi
				tar -zxf jdk1.8.0_271.tar.gz -C /opt/module && echo "解压成功"
		else
			echo "/opt/module/jdk1.8.0_271已存在，跳过jdk1.8.0_271的下载及解压"
	fi	

#SCALA-2.11.12
	if [ ! -d "/opt/module/scala-2.11.12" ]; 
		then
			echo "/opt/module/scala-2.11.12不存在,查看scala-2.11.12二进制包是否存在"
						if [ ! -f "scala-2.11.12.tgz" ]; 
							then
								echo "scala-2.11.12二进制包不存在，从scala-lang.org(lightbend.com)下载并解压至/opt/module/"
								wget -c https://downloads.lightbend.com/scala/2.11.12/scala-2.11.12.tgz
							else
								echo "scala-2.11.12二进制包已存在，解压至/opt/module/"
						fi
			tar -zxf scala-2.11.12.tgz -C /opt/module && echo "解压成功"
		else
			echo "/opt/module/scala-2.11.12已存在，跳过scala-2.11.12的下载及解压"
	fi

#SCALA-2.12.12
if [ ! -d "/opt/module/scala-2.12.12" ]; 
		then
			echo "/opt/module/scala-2.12.12不存在,查看scala-2.12.12二进制包是否存在"
						if [ ! -f "scala-2.12.12.tgz" ]; 
							then
								echo "scala-2.12.12二进制包不存在，从scala-lang.org(lightbend.com)下载并解压至/opt/module/"
								wget -c https://downloads.lightbend.com/scala/2.12.12/scala-2.12.12.tgz
							else
								echo "scala-2.12.12二进制包已存在，解压至/opt/module/"
						fi
			tar -zxf scala-2.12.12.tgz -C /opt/module && echo "解压成功"
		else
			echo "/opt/module/scala-2.12.12已存在，跳过scala-2.12.12的下载及解压"
	fi

#SCALA-2.13.4
if [ ! -d "/opt/module/scala-2.13.4" ]; 
		then
			echo "/opt/module/scala-2.13.4不存在,查看scala-2.13.4二进制包是否存在"
						if [ ! -f "scala-2.13.4.tgz" ]; 
							then
								echo "scala-2.13.4二进制包不存在，从scala-lang.org(lightbend.com)下载并解压至/opt/module/"
								wget -c https://downloads.lightbend.com/scala/2.13.4/scala-2.13.4.tgz
							else
								echo "scala-2.13.4二进制包已存在，解压至/opt/module/"
						fi
			tar -zxf scala-2.13.4.tgz -C /opt/module && echo "解压成功"
		else
			echo "/opt/module/scala-2.13.4已存在，跳过scala-2.13.4的下载及解压"
	fi


#MAVEN			
	if [ ! -d "/opt/module/maven-3.6.3" ]; 
		then
			echo "/opt/module/maven-3.6.3不存在,查看maven-3.6.3二进制包是否存在"
						if [ ! -f "maven-3.6.3.tar.gz" ]; 
							then
								echo "maven-3.6.3二进制包不存在，从清华源下载并解压至/opt/module/"
								wget -c -O maven-3.6.3.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
							else
								echo "maven-3.6.3二进制包已存在，解压至/opt/module/"
						fi
			tar -zxf maven-3.6.3.tar.gz -C /opt/module && echo "解压成功"
			mv /opt/module/apache-maven-3.6.3 /opt/module/maven-3.6.3 && echo "重命名/opt/module/apache-maven-3.6.3为/opt/module/maven-3.6.3"
		else
			echo "/opt/module/maven-3.6.3已存在，跳过maven的下载及解压"
	fi
	

#Hadoop	3.1.4		
	if [ ! -d "/opt/module/hadoop-3.1.4" ]; 
		then
			echo "/opt/module/hadoop-3.1.4不存在,查看hadoop-3.1.4二进制包是否存在"
				if [ ! -f "hadoop-3.1.4.tar.gz" ]; 
					then
						echo "hadoop-3.1.4二进制包不存在，从清华源下载并解压至/opt/module/"
						wget -c https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-3.1.4/hadoop-3.1.4.tar.gz
					else
						echo "hadoop-3.1.4二进制包已存在，解压至/opt/module/"
				fi
				tar -zxf hadoop-3.1.4.tar.gz -C /opt/module && echo "解压成功"
		else
			echo "/opt/module/hadoop-3.1.4已存在，跳过hadoop-3.1.4的下载及解压"
	fi

#Hadoop	3.3.0		
#	if [ ! -d "/opt/module/hadoop-3.3.0" ]; 
#		then
#			echo "/opt/module/hadoop-3.3.0不存在,查看hadoop-3.3.0二进制包是否存在"
#				if [ ! -f "hadoop-3.3.0.tar.gz" ]; 
#					then
#						echo "hadoop-3.3.0二进制包不存在，从清华源下载并解压至/opt/module/"
#						wget -c https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz
#					else
#						echo "hadoop-3.3.0二进制包已存在，解压至/opt/module/"
#				fi
#				tar -zxf hadoop-3.3.0.tar.gz -C /opt/module && echo "解压成功"
#		else
#			echo "/opt/module/hadoop-3.3.0已存在，跳过hadoop-3.3.0的下载及解压"
#	fi


#Zookeeper		
	if [ ! -d "/opt/module/zookeeper-3.6.2" ]; 
		then
			echo "/opt/module/zookeeper-3.6.2不存在,查看zookeeper-3.6.2二进制包是否存在"
				if [ ! -f "zookeeper-3.6.2.tar.gz" ]; 
					then
						echo "zookeeper-3.6.2二进制包不存在，从清华源下载并解压至/opt/module/"
						wget -c -O zookeeper-3.6.2.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/zookeeper-3.6.2/apache-zookeeper-3.6.2-bin.tar.gz
					else
						echo "zookeeper-3.6.2二进制包已存在，解压至/opt/module/"
				fi
					tar -zxf zookeeper-3.6.2.tar.gz -C /opt/module && echo "解压成功"
					mv /opt/module/apache-zookeeper-3.6.2-bin /opt/module/zookeeper-3.6.2 && echo "重命名/opt/module/apache-zookeeper-3.6.2-bin为/opt/module/zookeeper-3.6.2"
		else
			echo "/opt/module/zookeeper-3.6.2已存在，跳过zookeeper-3.6.2的下载及解压"
	fi

#Hive
	if [ ! -d "/opt/module/hive-3.1.2" ]; 
		then
			echo "/opt/module/hive-3.1.2不存在,查看hive-3.1.2二进制包是否存在"
			if [ ! -f "hive-3.1.2.tar.gz" ]; 
				then
					echo "hive-3.1.2二进制包不存在，从清华源下载并解压至/opt/module/"
					wget -c -O hive-3.1.2.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz
				else
					echo "hive-3.1.2二进制包已存在，解压至/opt/module/"
			fi
				tar -zxf hive-3.1.2.tar.gz -C /opt/module && echo "解压成功"
				mv /opt/module/apache-hive-3.1.2-bin /opt/module/hive-3.1.2 && echo "重命名/opt/module/apache-hive-3.1.2-bin为/opt/module/hive-3.1.2"
		else
			echo "/opt/module/hive-3.1.2已存在，跳过hive-3.1.2的下载及解压"
	fi
	

#Flume			
	if [ ! -d "/opt/module/flume-1.9.0" ]; 
		then
			echo "/opt/module/flume-1.9.0不存在,查看flume-1.9.0二进制包是否存在"
			if [ ! -f "flume-1.9.0.tar.gz" ]; 
				then
					echo "flume-1.9.0二进制包不存在，从清华源下载并解压至/opt/module/"
					wget -c -O flume-1.9.0.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/flume/1.9.0/apache-flume-1.9.0-bin.tar.gz
				else
					echo "flume-1.9.0二进制包已存在，解压至/opt/module/"
			fi
				tar -zxf flume-1.9.0.tar.gz -C /opt/module && echo "解压成功"
				mv /opt/module/apache-flume-1.9.0-bin /opt/module/flume-1.9.0 && echo "重命名/opt/module/apache-flume-1.9.0-bin为/opt/module/flume-1.9.0"
		else
			echo "/opt/module/flume-1.9.0已存在，跳过flume-1.9.0的下载及解压"
	fi

#Kafka2.12-2.6.0		
	if [ ! -d "/opt/module/kafka_2.12-2.6.0" ]; 
		then
			echo "/opt/module/kafka_2.12-2.6.0不存在,查看kafka_2.12-2.6.0二进制包是否存在"
			if [ ! -f "kafka_2.12-2.6.0.tgz" ]; 
				then
					echo "kafka_2.12-2.6.0二进制包不存在，从清华源下载并解压至/opt/module/"
					wget -c -O kafka_2.12-2.6.0.tgz https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.6.0/kafka_2.12-2.6.0.tgz
				else
					echo "kafka_2.12-2.6.0二进制包已存在，解压至/opt/module/"
			fi
				tar -zxf kafka_2.12-2.6.0.tgz -C /opt/module && echo "解压成功"
				mv /opt/module/apache-kafka_2.12-2.6.0-bin /opt/module/kafka_2.12-2.6.0 && echo "重命名/opt/module/apache-kafka_2.12-2.6.0-bin为/opt/module/kafka_2.12-2.6.0"
		else
			echo "/opt/module/kafka_2.12-2.6.0已存在，跳过kafka_2.12-2.6.0的下载及解压"
	fi	


#Kafka2.13-2.6.0		
#	if [ ! -d "/opt/module/kafka_2.13-2.6.0" ]; 
#		then
#			echo "/opt/module/kafka_2.13-2.6.0不存在,查看kafka_2.13-2.6.0二进制包是否存在"
#			if [ ! -f "kafka_2.13-2.6.0.tgz" ]; 
#				then
#					echo "kafka_2.13-2.6.0二进制包不存在，从清华源下载并解压至/opt/module/"
#					wget -c -O kafka_2.13-2.6.0.tgz https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.6.0/kafka_2.13-2.6.0.tgz
#				else
#					echo "kafka_2.13-2.6.0二进制包已存在，解压至/opt/module/"
#			fi
#				tar -zxf kafka_2.13-2.6.0.tgz -C /opt/module && echo "解压成功"
#				mv /opt/module/apache-kafka_2.13-2.6.0-bin /opt/module/kafka_2.13-2.6.0 && echo "重命名/opt/module/apache-kafka_2.13-2.6.0-bin为/opt/module/kafka_2.13-2.6.0"
#		else
#			echo "/opt/module/kafka_2.13-2.6.0已存在，跳过kafka_2.13-2.6.0的下载及解压"
#	fi	


#Kafka-eagle	
	if [ ! -d "/opt/module/kafka-eagle-2.0.2" ]; 
		then
			echo "/opt/module/kafka-eagle-2.0.2不存在,查看kafka-eagle-2.0.2二进制包是否存在"
			if [ ! -f "kafka-eagle-2.0.2.tar.gz" ]; 
				then
					echo "kafka-eagle-2.0.2二进制包不存在，从github下载并解压至/opt/module/"
					wget -c -O kafka-eagle-2.0.2.tar.gz https://github.com/smartloli/kafka-eagle-bin/archive/v2.0.2.tar.gz
				else
					echo "kafka-eagle-2.0.2二进制包已存在，解压至/opt/module/"
			fi
				tar -zxf kafka-eagle-2.0.2.tar.gz -C /opt/module && echo "解压成功"
				mv /opt/module/apache-kafka-eagle-2.0.2-bin /opt/module/kafka-eagle-2.0.2 && echo "重命名/opt/module/apache-kafka-eagle-2.0.2-bin为/opt/module/kafka-eagle-2.0.2"
		else
			echo "/opt/module/kafka-eagle-2.0.2已存在，跳过kafka-eagle-2.0.2的下载及解压"
	fi	

	

#HBase	
	if [ ! -d "/opt/module/hbase-2.3.3" ]; 
		then
			echo "/opt/module/hbase-2.3.3不存在,查看hbase-2.3.3二进制包是否存在"
			if [ ! -f "hbase-2.3.3.tar.gz" ]; 
				then
					echo "hbase-2.3.3二进制包不存在，从清华源下载并解压至/opt/module/"
					wget -c -O hbase-2.3.3.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/2.3.3/hbase-2.3.3-bin.tar.gz
				else
					echo "hbase-2.3.3二进制包已存在，解压至/opt/module/"
			fi
				tar -zxf hbase-2.3.3.tar.gz -C /opt/module && echo "解压成功"
				mv /opt/module/apache-hbase-2.3.3-bin /opt/module/hbase-2.3.3 && echo "重命名/opt/module/apache-hbase-2.3.3-bin为/opt/module/hbase-2.3.3"
		else
			echo "/opt/module/hbase-2.3.3已存在，跳过hbase-2.3.3的下载及解压"
	fi	
		

#Phoenix
	if [ ! -d "/opt/module/phoenix-5.0.0" ]; 
		then
			echo "/opt/module/phoenix-5.0.0不存在,查看phoenix-5.0.0二进制包是否存在"
			if [ ! -f "phoenix-5.0.0.tar.gz" ]; 
				then
					echo "phoenix-5.0.0二进制包不存在，从清华源下载并解压至/opt/module/"
					wget -c -O phoenix-5.0.0.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/phoenix/apache-phoenix-5.0.0-HBase-2.0/bin/apache-phoenix-5.0.0-HBase-2.0-bin.tar.gz
				else
					echo "phoenix-5.0.0二进制包已存在，解压至/opt/module/"
			fi
				tar -zxf phoenix-5.0.0.tar.gz -C /opt/module && echo "解压成功"
				mv /opt/module/apache-phoenix-5.0.0-HBase-2.0-bin /opt/module/phoenix-5.0.0 && echo "重命名/opt/module/apache-phoenix-5.0.0-HBase-2.0-bin为/opt/module/phoenix-5.0.0"
		else
			echo "/opt/module/phoenix-5.0.0已存在，跳过phoenix-5.0.0的下载及解压"
	fi	
	
	


		
	
#Spark-3.0.1
wget -c https://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-3.0.1/spark-3.0.1-bin-hadoop3.2.tgz

#AZKABAN-3.90.0
wget -c -O azkaban-3.90.0.tar.gz https://github.com/azkaban/azkaban/archive/3.90.0.tar.gz
#wget -c -O azkaban-3.90.0.tar.gz https://download.fastgit.org/azkaban/azkaban/archive/3.90.0.tar.gz

#Flink-1.12.0_2.11
	if [ ! -d "/opt/module/flink-1.12.0_2.11" ]; 
		then
			echo "/opt/module/flink-1.12.0_2.11不存在,查看flink-1.12.0_2.11二进制包是否存在"
						if [ ! -f "flink-1.12.0_2.11.tgz" ]; 
							then
								echo "flink-1.12.0_2.11二进制包不存在，从清华源下载并解压至/opt/module/"
								wget -c http://mirrors.aliyun.com/apache/flink/flink-1.12.0/flink-1.12.0-bin-scala_2.11.tgz
							else
								echo "flink-1.12.0_2.11二进制包已存在，解压至/opt/module/"
						fi
			tar -zxf flink-1.12.0.tar.gz -C /opt/module && echo "解压成功"
			mv /opt/module/flink-1.12.0 /opt/module/flink-1.12.0_2.11 && echo "重命名/opt/module/flink-1.12.0为flink-1.12.0_2.11
		else
			echo "/opt/module/flink-1.12.0_2.11已存在，跳过flink-1.12.0_2.11的下载及解压"
	fi


#Flink-1.12.0_2.12
	if [ ! -d "/opt/module/flink-1.12.0_2.12" ]; 
		then
			echo "/opt/module/flink-1.12.0_2.12不存在,查看flink-1.12.0_2.12二进制包是否存在"
						if [ ! -f "flink-1.12.0_2.12.tgz" ]; 
							then
								echo "flink-1.12.0_2.12二进制包不存在，从清华源下载并解压至/opt/module/"
								wget -c http://mirrors.aliyun.com/apache/flink/flink-1.12.0/flink-1.12.0-bin-scala_2.12.tgz
							else
								echo "flink-1.12.0_2.12二进制包已存在，解压至/opt/module/"
						fi
			tar -zxf flink-1.12.0.tar.gz -C /opt/module && echo "解压成功"
			mv /opt/module/flink-1.12.0 /opt/module/flink-1.12.0_2.12 && echo "重命名/opt/module/flink-1.12.0为flink-1.12.0_2.12
		else
			echo "/opt/module/flink-1.12.0_2.12已存在，跳过flink-1.12.0_2.12的下载及解压"
	fi


#设置环境变量
if [ ! -f "/etc/profile.d/bigdataenv.sh" ]; 
	then
		touch /etc/profile.d/bigdataenv.sh 
	else
		rm -f /etc/profile.d/bigdataenv.sh && touch /etc/profile.d/bigdataenv.sh 
fi
echo -e "export JAVA_HOME=/opt/module/jdk1.8.0_271\n" >> /etc/profile.d/bigdataenv.sh
#echo -e "export JAVA_HOME=/opt/module/jdk-11.0.9\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export MAVEN_HOME=/opt/module/maven-3.6.3\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export HADOOP_HOME=/opt/module/hadoop-3.1.4\n" >> /etc/profile.d/bigdataenv.sh
#echo -e "export HADOOP_HOME=/opt/module/hadoop-3.3.0\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export ZK_HOME=/opt/module/zookeeper-3.6.2\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export HIVE_HOME=/opt/module/hive-3.1.2\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export FLUME_HOME=/opt/module/flume-1.9.0\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export KAFKA_HOME=/opt/module/kafka_2.12-2.6.0\n" >> /etc/profile.d/bigdataenv.sh
#echo -e "export KAFKA_HOME=/opt/module/kafka_2.13-2.6.0\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export HBASE_HOME=/opt/module/hbase-2.3.1\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export PHN_HOME=/opt/module/phoenix-5.0.0\n" >> /etc/profile.d/bigdataenv.sh
#echo -e "export SH_HOME=/opt/module/scripts\n" >> /etc/profile.d/bigdataenv.sh
echo -e "export PATH=\$PATH:\${JAVA_HOME}/bin:\${MAVEN_HOME}/bin:\${HADOOP_HOME}/bin:\${HADOOP_HOME}/sbin:\${ZK_HOME}/bin:\${HIVE_HOME}/bin:\${FLUME_HOME}/bin:\${KAFKA_HOME}/bin:\${HBASE_HOME}/bin:\${PHN_HOME}/bin" >> /etc/profile.d/bigdataenv.sh
#echo -e "export PATH=\$PATH:\$SH_HOME\n" >> /etc/profile.d/bigdataenv.sh
echo "将环境变量设置写入/etc/profile.d/bigdataenv.sh"
source /etc/profile.d/bigdataenv.sh
echo "刷新环境变量成功"

#修改sshd配置:服务端不自动断开,允许root登录
sed -i 's/#LoginGraceTime 2m/LoginGraceTime 0/' /etc/ssh/sshd_config
sed -i 's/^LoginGraceTime.*/LoginGraceTime 0/' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#UseDNS yes/UseDNS no/' /etc/ssh/sshd_config
sed -i 's/#UseDNS no/UseDNS no/' /etc/ssh/sshd_config
echo "修改sshd配置:服务端不自动断开,允许root登录"
systemctl restart sshd && echo "重启sshd服务成功"
echo "全部安装完成，尝试运行hadoop version查看环境变量是否生效"
hadoop version && echo "成功"
