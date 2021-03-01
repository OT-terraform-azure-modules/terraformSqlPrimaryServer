Azure SQL Primary Server Terraform module
=====================================

[![Opstree Solutions][opstree_avatar]][opstree_homepage]

[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

Terraform module which creates SQL Primary Server on Azure.

These types of resources are supported:

* [SQLServerPrimary](https://github.com/OT-terraform-azure-modules/terraformSqlPrimaryServer)

Terraform versions
------------------

Terraform 0.13.

Usage
------

```hcl
module "rgSqlServerPrimary" {
  source                   = "git::https://github.com/OT-terraform-azure-modules/terraformSqlPrimaryServer.git"
  sqlserverprimaryrgname   = module.azurerg.rgName
  sqlserverprimarylocation = module.azurerg.rgLocation
  sqlServerPrimary_Tag = {
    Name : "SqlServerPrimary"
  }
}
```

Tags
----
* Tags are assigned to resources with name variable as prefix.
* Additial tags can be assigned by tags variables as defined above.

Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| sql_Server_Primary_RG_Name | Name of the Resource Group | `string` | `"opstree"` | yes |
| sql_Server_Primary_Location | Location in which the SQL Primary Database would be created | `string` | `"eastus"` | yes |
| sqlServerPrimary_Tag | Tag to associate with te SQL Primary Server | `string` | `"sqlServerPrimary"` | no |

Output
------
| Name | Description |
|------|-------------|
| sql_Server_Primary_ID | It will fetch the ID of SQL Primary Server |
| sqlserverprimaryname | It will fetch the name of SQL Primary Server |

## Related Projects

Check out these related projects. 

### Contributors

|  [![Mehul Sharma][mehul_avatar]][mehul_homepage]<br/>[Mehul Sharma][mehul_homepage] |
|---|

  [mehul_homepage]: https://gitlab.com/mehulsharma2010
  [mehul_avatar]: https://gitlab.com/uploads/-/system/user/avatar/7039343/avatar.png?width=400
