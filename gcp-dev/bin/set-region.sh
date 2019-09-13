
echo "Please select your region"
echo "1) australia-southeast1-a"
echo "2) australia-southeast1-b"
echo "3) australia-southeast1-c"

read region

if [ $region == 1 ]; then
  export export GCP_ZONE=australia-southeast1-a
elif [ $region == 2 ]; then
  export export GCP_ZONE=australia-southeast1-b
elif [ $region == 3 ]; then
  export export GCP_ZONE=australia-southeast1-c
else 
  echo "Use current set up $GCP_ZONE"
  exit 1
fi

echo "Your region is set to $GCP_ZONE"