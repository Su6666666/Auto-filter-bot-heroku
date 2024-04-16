if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Joelkb/Auto-filter-bot-heroku.git /Auto-filter-bot-heroku
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-filter-bot-heroku
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting Auto-filter-bot-heroku...."
python3 bot.py
