rsync -h --progress --stats -r -tgo -p -l -D --update \
--exclude=**/.** \
--exclude=/db/schema.rb \
--exclude=/log/ \
--exclude=/tmp/ \
--exclude=/help/ \
--exclude=/nbproject/ \
--exclude=/public/assets/ \
--protect-args \
-e "ssh -p 10022" /home/phil/Documents/NetBeansProjects/ConsectedWeb/www/ philayres@tc1.consected.net:/home/philayres/www

#-e "ssh -p 10022" /home/phil/Documents/NetBeansProjects/ConsectedWeb/www/ philayres@consected.net:/home/consect/www

ssh -p 10022 philayres@consected.net 2>&1 << EOF
cd /home/consect/www
bundle update
bundle exec rake assets:precompile RAILS_ENV=production
touch tmp/restart.txt
EOF
