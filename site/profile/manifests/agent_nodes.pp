class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':
    include profile::ssh_server
  }
  dockeragent::node {'db.puppet.vm':
    include profile::ssh_server
  }
}
