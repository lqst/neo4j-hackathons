##############################
# Search phrases
##############################

# Colluding vendors and agents
match (a:Agent)-[:assigned_to]->(:Claim)<-[:involved_in]-(v:Vendor)
with a, v, count(*) as numberOfClaims order by numberOfClaims desc
match paths=  (a)-[:assigned_to]->(:Claim)<-[:involved_in]-(v)
return paths, numberOfClaims limit 10


##############################
# Scene actions
##############################