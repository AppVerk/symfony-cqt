#!/usr/bin/env bash
echo "PHP CS FIXER START..."
vendor/bin/php-cs-fixer --diff --using-cache=no --config=vendor/appverk/symfony-cqt/.php_cs.dist --verbose --show-progress=estimating fix
echo "...PHP CS FIXER DONE"
echo "PHPSTAN START..."
vendor/bin/phpstan analyse --configuration=vendor/appverk/symfony-cqt/phpstan.neon --level=max --memory-limit=512M src tests
echo "...PHPSTAN DONE"
