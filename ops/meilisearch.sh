# Update the list of available packages and their versions
sudo apt update

# Install curl which is required to install MeiliSearch in the next step
# apt install curl -y

# Install MeiliSearch latest version from the script
curl -L https://install.meilisearch.com | sh


# Move the MeiliSearch binary to your system binaries
sudo mv ./meilisearch /usr/bin/


sudo bash -c 'cat > /etc/systemd/system/meilisearch.service' << EOF
[Unit]
Description=MeiliSearch
After=systemd-user-sessions.service

[Service]
Type=simple
ExecStart=/usr/bin/meilisearch --http-addr '127.0.0.1:7700' --db-path /vagrant/meilifiles --env production --master-key 'MeilisearchLocalDevelopment'

[Install]
WantedBy=default.target
EOF


# Set the service meilisearch
sudo systemctl enable meilisearch

# Start the meilisearch service
sudo systemctl start meilisearch

# Verify that the service is actually running
sudo systemctl status meilisearch