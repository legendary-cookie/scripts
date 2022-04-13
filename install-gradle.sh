#!/bin/bash
# Visit https://gradle.org/install/ for latest version
VERSION=7.4.2
wget https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-${VERSION}-bin.zip
sudo ln -s /opt/gradle/gradle-${VERSION} /opt/gradle/latest
cat << EOF | sudo tee /opt/gradle/gradle.sh
export GRADLE_HOME=/opt/gradle/latest
export PATH=\${GRADLE_HOME}/bin:\${PATH}
EOF
sudo chmod +x /opt/gradle/gradle.sh

echo "Gradle v$VERSION was successfully installed!"
echo "Now include the following line in your shells .rc file!"
echo "source /opt/gradle/gradle.sh"
