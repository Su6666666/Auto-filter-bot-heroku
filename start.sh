if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Su6666666/Auto-filter-bot-heroku.git /Autofilterbotheroku
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Autofilterbotheroku
fi
cd /Autofilterbotheroku
pip3 install -U -r requirements.txt
echo "Starting Auto-filter-bot-heroku...."
python3 bot.py
