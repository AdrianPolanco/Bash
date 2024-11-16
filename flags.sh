name=''
age=0

# Get the flags with the getopts command and store them in the variables
#Use: ./flags.sh -n Adrian -a 23 or ./flags.sh -a 23 -n Adrian
while getopts "n:a:" flag;
do
    case "${flag}" in
        n) name=${OPTARG};;
        a) age=${OPTARG};;
    esac
done

echo "Name: $name"
echo "Age: $age"