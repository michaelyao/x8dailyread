#!/bin/bash
# Fix: rename _posts to posts to avoid Jekyll special handling

cd /Users/baibai/dev/git/x8dailyread

# Create posts folder and move files
mkdir -p posts
mv _posts/*.md posts/ 2>/dev/null || true
rmdir _posts 2>/dev/null || true

# Update index.md links
sed -i '' 's|_posts/|posts/|g' index.md

# Update _config.yml
# (already done)

echo "Done! Now commit and push:"
echo "  git add ."
echo "  git commit -m 'Rename _posts to posts for static serving'"
echo "  git push origin main"
