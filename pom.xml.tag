<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.example</groupId>
  <artifactId>test</artifactId>
  <version>1.0.0</version>
  <packaging>pom</packaging>
  <name>test</name>
  <description>test</description>
  <modules>
    <module>testConfigs</module>
    <module>testCompositeExporter</module>
  </modules>
  <scm>
    <connection>scm:git:https://github.com/Samitha-001/test</connection>
    <developerConnection>scm:git:https://github.com/Samitha-001/test</developerConnection>
    <url>https://github.com/Samitha-001/test</url>
    <tag>test-1.0.0</tag>
  </scm>
  <distributionManagement>
    <repository>
      <id>release</id>
      <name>Release Distribution Repository</name>
      <url>https://example.com/nexus/repository</url>
    </repository>
  </distributionManagement>
  <properties>
    <project.scm.id>integration-project</project.scm.id>
    <project.runtime.version>4.3.0</project.runtime.version>
  </properties>
  <build>
    <plugins>
      <plugin>
        <artifactId>maven-release-plugin</artifactId>
        <version>3.0.0-M1</version>
        <configuration />
      </plugin>
      <plugin>
        <artifactId>maven-deploy-plugin</artifactId>
        <version>3.0.0-M1</version>
        <configuration />
      </plugin>
      <plugin>
        <artifactId>maven-eclipse-plugin</artifactId>
        <version>2.9</version>
        <configuration>
          <projectnatures>
            <projectnature>org.wso2.developerstudio.eclipse.mavenmultimodule.project.nature</projectnature>
          </projectnatures>
        </configuration>
      </plugin>
    </plugins>
  </build>
  <profiles>
    <profile>
      <id>Solution</id>
      <build />
    </profile>
    <profile>
      <id>Docker</id>
      <build />
    </profile>
    <profile>
      <id>Kubernetes</id>
      <build />
    </profile>
    <profile>
      <activation>
        <activeByDefault>true</activeByDefault>
      </activation>
      <build />
    </profile>
  </profiles>
</project>
