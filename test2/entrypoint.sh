#!/bin/sh

set -eu
#!/bin/sh -l
# Set deploy key
SSH_PATH="$HOME/.ssh"
mkdir "$SSH_PATH"
echo "$DEPLOY_KEY" > "$SSH_PATH/deploy_key"
chmod 600 "$SSH_PATH/deploy_key"


# Do deployment
sh -c "rsync -avzr --delete -e 'ssh -i $SSH_PATH/deploy_key -o StrictHostKeyChecking=no' $GITHUB_WORKSPACE/ root@bangechengzi.com:/var/www/blog/"
