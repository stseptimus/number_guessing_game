#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=users -t --no-align -c"

echo Enter your username:
read USERNAME

FOUND_USERNAME="$($PSQL "SELECT * FROM users WHERE username = '$USERNAME'")"

if [[ $FOUND_USERNAME ]]
then 
  IFS="|" read USER_ID USERNAME GAMES_PLAYED BEST_GAME < <(echo $FOUND_USERNAME)
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME');")
  GAMES_PLAYED=0
  BEST_GAME=0
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

SECRET_NUMBER=$((1 + $RANDOM % 1000))
NUMBER_OF_TRIES=0

echo Guess the secret number between 1 and 1000:

while [[ $CURRENT_GUESS != $SECRET_NUMBER ]]
do
  ((NUMBER_OF_TRIES++))
  read CURRENT_GUESS
  if [[ $CURRENT_GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $SECRET_NUMBER > $CURRENT_GUESS ]]
    then
      echo "It's higher than that, guess again:"
    else
      if [[ $SECRET_NUMBER = $CURRENT_GUESS ]]
      then
        echo ""
      else
        echo "It's lower than that, guess again:"
      fi
    fi
  else
    echo "That is not an integer, guess again:"
  fi
done

if [[ $BEST_GAME -gt $NUMBER_OF_TRIES || $BEST_GAME = 0 ]]
then
  INSERT_BEST_RESULT=$($PSQL "UPDATE users SET best_game = $NUMBER_OF_TRIES WHERE username = '$USERNAME'")
fi

((GAMES_PLAYED++))
INSERT_GAME_RESULT=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED WHERE username = '$USERNAME'")

echo "You guessed it in $NUMBER_OF_TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
