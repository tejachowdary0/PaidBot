if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vijay14958/PaidBot /PaidBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PaidBot
fi
cd /PaidBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
