#!/bin/bash
age=23
if [ $age -gt 18 ];
then
    echo "You are eligible to vote."
else
    echo "You are not eligible to vote."
fi

if [ $age -eq 23 ]; 
then 
    echo "You are 23 years old." 
fi