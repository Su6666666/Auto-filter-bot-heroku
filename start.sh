if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Su6666666/Auto-filter-bot-heroku.git /Auto-filter-bot-heroku
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-filter-bot-heroku
fi
cd /Auto-filter-bot-heroku
pip3 install -U -r requirements.txt
echo "Starting Auto-filter-bot-heroku...."
python3 bot.py
