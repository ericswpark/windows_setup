# From: https://superuser.com/a/1310638
# Limitations: does not remove pending applications (such as Spotify and Disney+, ugh)

(New-Object -Com Shell.Application).
    NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').
    Items() |
  %{ $_.Verbs() } |
  ?{$_.Name -match 'Un.*pin from Start'} |
  %{$_.DoIt()}