FROM openjdk:8

ENV SONAR_VERSION=4.0.0.1744

WORKDIR /tmp/

RUN wget -q "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_VERSION}.zip" && \
	unzip "sonar-scanner-cli-${SONAR_VERSION}.zip" -d /usr/share/sonar-scanner && \
	rm -rf "sonar-scanner-cli-${SONAR_VERSION}.zip" && \
	ln -sf /usr/share/sonar-scanner/sonar-scanner-${SONAR_VERSION}/bin/sonar-scanner /usr/local/bin/sonar-scanner
