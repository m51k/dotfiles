function claude-work
    set -Ux ANTHROPIC_API_KEY $ANTHROPIC_API_KEY_WORK
    echo "Switched to work Anthropic key"
end

function claude-personal
    set -Ux ANTHROPIC_API_KEY $ANTHROPIC_API_KEY_PERSONAL
    echo "Switched to personal Anthropic key"
end
