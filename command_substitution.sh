
command=''

# Get the flags with the getopts command and store them in the variables
getopts "c:" flag;
case "${flag}" in
    c) command=${OPTARG};;
esac

# Check if the command is empty
if [ -z "$command" ]; then
    echo "Command is required"
    exit 1
fi

echo "Command: $command"
# Execute the command and store the result
result=$($command)

echo "Result: $result"

# Count the number of times 'hello' is repeated in the result
# The <<< operator is used to pass the result as input to the grep command
# In this case, the result is passed as input to grep, instead of a file
# wc (word count) is used to count the number of words
# With the -l option, wc counts the number of lines in the input instead of words
repeatedTerm=$(grep 'hello' <<< $result | wc -l)

echo "Number of times 'hello' is repeated: $repeatedTerm"