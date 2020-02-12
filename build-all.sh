set -eu

projects=( image1 image2 )

echo "Projects: ${projects[@]}"

for project in "${projects[@]}"
do
  ./build-single.sh $project
done


for project in "${projects[@]}"
do
  ./push-single.sh $project
done

