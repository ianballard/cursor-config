#!/bin/bash

# Read JSON input from stdin
input=$(cat)

# Parse the status and loop_count from the input
status=$(echo "$input" | jq -r '.status // "completed"')
loop_count=$(echo "$input" | jq -r '.loop_count // 0')

# Only trigger followup on completed status and if we haven't looped too many times
if [[ "$status" == "completed" && "$loop_count" -lt 0 ]]; then
    # Return followup message as JSON
    cat << EOF
{
  "followup_message": "If code changes were made, review the changes using the @review skill. Please alert the user if any issues are found and fix them. If code changes were made and reviewed by the @review skill, please run the tests and fix any failures using the @test skill. Additionally, create any new tests that are necessary to cover the new functionality."
}
EOF
else
    # No followup message
    echo "{}"
fi
