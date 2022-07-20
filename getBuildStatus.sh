aws codepipeline list-pipelines --profile=$1 | jq -r '.pipelines[].name' > pipelines.txt
echo "let pipelineNames = []" > pipelines.js
echo "let pipelines = [];" >> pipelines.js
while read line; do
varName=$(echo $line | sed -e 's/-//g')
echo "let $varName = " > $varName.js
aws codepipeline get-pipeline-state --name $line --profile $1 >> $varName.js
echo "pipelineNames.push('$varName');" >> pipelines.js
done < pipelines.txt