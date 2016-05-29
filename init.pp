class users {
  user { 'mina':
    ensure     => present,
    shell      => '/bin/bash',
    home       => '/home/mina',
    managehome => true
  }
  ssh_authorized_key { 'minasoft@MinaSoft-NB':
  user => 'mina',
  type => 'rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJHnBYz7l7PDPpqj/j8VJMtNgbG7bZuSKYlDaDCitBT5VkohA6vA4SsE7FBmDjjG9IFk9zkDn3ckd+IE2Yr6W5r/y1cxWUX8UMXJ2uiumqKZgC8EgInb/UyM0Secsl6wPQfEVD5iwC78KorVIhNc7lb8JGdDSno5dnVK5xKG5U/ybZs/QeodPBKws1hrvhV1Tk3045dQ9F3gz8TiMc//QZaUf4UOvXlsBV+QJ7uLrnh+SziV7LeXd3CdbVohoxIgEqHv68Zqu2csBKCoy3R8UeAJKizaFpPKWwMC205XQmpJkF9+TpdlxRT9Ic+oc9K8gAE5kMIsEZq68rc6qECeuF',
  }

  file_line { 'Append a line to /etc/sudoers':
  path => '/etc/sudoers',
  line => 'mina  ALL=(ALL)  NOPASSWD:ALL',
  }

}

