import random

# define a list of words to use for the spelling practice
word_list = ['apple', 'banana', 'cherry', 'dog', 'elephant', 'football', 'giraffe', 'house', 'igloo', 'jacket']


# define a function to generate a random word from the list
def generate_word():
    return random.choice(word_list)


# define the main function for the spelling practice
def spelling_practice(num_words):
    print(f'Spelling practice: Please spell the following {num_words} words correctly.\n')
    num_correct = 0

    # generate and display each word, and prompt the user for their answer
    for i in range(num_words):
        word = generate_word()
        print(f'Word {i + 1}: {word}')
        answer = input('Your answer: ')

        # check if the answer is correct
        if answer.lower() == word:
            num_correct += 1
            print('Correct!\n')
        else:
            print(f'Incorrect. The correct spelling is "{word}".\n')

    # display the user's score
    print(f'You spelled {num_correct} out of {num_words} words correctly.')


# run the spelling practice program
spelling_practice(5)
