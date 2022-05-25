if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kccutzz/Forward-Ajm2-Bot.git /Forward-Ajm2-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Forward-Ajm2-Bot
fi
cd /Forward-Ajm2-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot This May Take Time Depending On Database Size..."
python3 bot.py
