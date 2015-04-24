#!/bin/bash
echo $1
MYUID=$1

echo -n -e "\xEF\xBB\xBF" > ${MYUID}.utf8.txt

mysql -h 192.168.90.50 -u jabberd2 -p jabberd2 --default-character-set=utf8 >> ${MYUID}.utf8.txt <<ECHO

select \`collection-owner\`,\`with\`,from_unixtime(\`time\`),\`message\` from (
select \`object-sequence\`,\`collection-owner\`,\`with\`,\`time\`,\`message\` from archive 
where \`collection-owner\`='${MYUID}@hcim.b2b.hc360.com' and \`time\`>=unix_timestamp('2014-01-01') 
union all
select \`object-sequence\`,\`collection-owner\`,\`with\`,\`time\`,\`message\` from archive 
where \`with\`='${MYUID}@hcim.b2b.hc360.com' and \`time\`>=unix_timestamp('2014-01-01') ) as a
order by \`object-sequence\` ;

ECHO

