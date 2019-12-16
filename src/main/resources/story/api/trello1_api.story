Scenario: create board

Given request body: {
}
When I send HTTP POST to the relative URL '/1/boards/?name=name&defaultLabels=true&defaultLists=true&keepFromSource=none&prefs_permissionLevel=private&prefs_voting=disabled&prefs_comments=members&prefs_invitations=members&prefs_selfJoin=true&prefs_cardCovers=true&prefs_background=blue&prefs_cardAging=regular&key=dca2a073a2881cf5f20f387d79bb0e58&token=9aeada898057d25b6f8881d6682e4f91b21a088985760479720cea351af672e7'
Then the response code is equal to '200'


