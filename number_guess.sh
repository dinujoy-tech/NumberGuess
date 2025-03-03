#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
echo "Enter your username:"
read USERNAME
USER_DATA=$($PSQL "SELECT username,games_played,best_game FROM users WHERE username='$USERNAME'")
if [[ -n $USER_DATA ]]
then
echo $USER_DATA | while IFS="|" read NAME GAMES_PLAYED BEST_GAME
do
echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
done
else
echo "Welcome, $USERNAME! It looks like this is your first time here."
INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
fi
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
echo "Guess the secret number between 1 and 1000:"
GUESS_COUNT=0
while true
do
  read GUESS
  ((GUESS_COUNT++))

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  fi
done
if [[ -n $USER_DATA ]]
then
  UPDATE_RESULT=$($PSQL "UPDATE users SET games_played = games_played + 1, best_game = LEAST(best_game, $GUESS_COUNT) WHERE username='$USERNAME'")
else
  UPDATE_RESULT=$($PSQL "UPDATE users SET games_played = 1, best_game = $GUESS_COUNT WHERE username='$USERNAME'")
fi